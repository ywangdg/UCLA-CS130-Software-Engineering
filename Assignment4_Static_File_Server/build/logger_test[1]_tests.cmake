add_test( LoggerTest.logServerInitialization /usr/src/projects/rubberduck/build/bin/logger_test [==[--gtest_filter=LoggerTest.logServerInitialization]==] --gtest_also_run_disabled_tests)
set_tests_properties( LoggerTest.logServerInitialization PROPERTIES WORKING_DIRECTORY /usr/src/projects/rubberduck/tests)
add_test( LoggerTest.TraceFile /usr/src/projects/rubberduck/build/bin/logger_test [==[--gtest_filter=LoggerTest.TraceFile]==] --gtest_also_run_disabled_tests)
set_tests_properties( LoggerTest.TraceFile PROPERTIES WORKING_DIRECTORY /usr/src/projects/rubberduck/tests)
add_test( LoggerTest.logErrorFile /usr/src/projects/rubberduck/build/bin/logger_test [==[--gtest_filter=LoggerTest.logErrorFile]==] --gtest_also_run_disabled_tests)
set_tests_properties( LoggerTest.logErrorFile PROPERTIES WORKING_DIRECTORY /usr/src/projects/rubberduck/tests)
add_test( LoggerTest.logDebugFile /usr/src/projects/rubberduck/build/bin/logger_test [==[--gtest_filter=LoggerTest.logDebugFile]==] --gtest_also_run_disabled_tests)
set_tests_properties( LoggerTest.logDebugFile PROPERTIES WORKING_DIRECTORY /usr/src/projects/rubberduck/tests)
add_test( LoggerTest.logWarningFile /usr/src/projects/rubberduck/build/bin/logger_test [==[--gtest_filter=LoggerTest.logWarningFile]==] --gtest_also_run_disabled_tests)
set_tests_properties( LoggerTest.logWarningFile PROPERTIES WORKING_DIRECTORY /usr/src/projects/rubberduck/tests)
add_test( LoggerTest.logSig /usr/src/projects/rubberduck/build/bin/logger_test [==[--gtest_filter=LoggerTest.logSig]==] --gtest_also_run_disabled_tests)
set_tests_properties( LoggerTest.logSig PROPERTIES WORKING_DIRECTORY /usr/src/projects/rubberduck/tests)
set( logger_test_TESTS LoggerTest.logServerInitialization LoggerTest.TraceFile LoggerTest.logErrorFile LoggerTest.logDebugFile LoggerTest.logWarningFile LoggerTest.logSig)
