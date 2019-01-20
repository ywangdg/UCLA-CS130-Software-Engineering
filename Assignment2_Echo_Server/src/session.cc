#include <cstdlib>
#include <iostream>
#include <boost/bind.hpp>
#include <boost/asio.hpp>

#include "session.h"
#include "http/request_parser.h"
#include "http/reply.h"

using boost::asio::ip::tcp;
session::session(boost::asio::io_service& io_service):socket_(io_service){}

tcp::socket& session::socket() {
    return socket_;
}

reply session::echo_reply(const char *data_, int bytes_transferred) {
    reply reply_;
    reply_.status = reply::ok;     // 200
    reply_.content = std::string(data_, bytes_transferred);
    reply_.headers.resize(2);
    reply_.headers[0].name = "Content-Length";
    reply_.headers[0].value = std::to_string(bytes_transferred);
    reply_.headers[1].name = "Content-Type";
    reply_.headers[1].value = "text/plain";
    return reply_;
}

void session::start() {
    handle_read();
}

void session::handle_read() {
    auto self(shared_from_this());
    socket_.async_read_some(boost::asio::buffer(data_),
      [this, self](boost::system::error_code error, std::size_t bytes_transferred) {
        if (!error) {
            request_parser::result_type result;
            std::tie(result, std::ignore) = request_parser_.parse(
                request_, data_, data_ + bytes_transferred);
            if (result == request_parser::good) {
                reply_ = echo_reply(data_, bytes_transferred);  // Echo reply
                handle_write();
            } else if (result == request_parser::bad) {
                reply_ = reply::stock_reply(reply::bad_request);// Bad request
                handle_write();            
            } else {
                handle_read();
            }
        }
      });
}

void session::handle_write() {
    auto self(shared_from_this());
    boost::asio::async_write(socket_, reply_.to_buffers(),
      [this, self](boost::system::error_code error, std::size_t) {
        if (!error) {
            // Initiate graceful connection closure.
            boost::system::error_code ignored_ec;
            socket_.shutdown(boost::asio::ip::tcp::socket::shutdown_both,
                             ignored_ec);
        }
      });
}