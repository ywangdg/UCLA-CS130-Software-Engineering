#!/bin/bash

printf '%s\r\n%s\r\n%s\r\n\r\n'             \
    "GET /static/data1.dat HTTP/1.1"                        \
    "Host: www.example.com"                 \
    "Connection: close"                     \
    | nc 127.0.0.1 8080
