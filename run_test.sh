#!/bin/sh

#export FASTLY_TEST_BASE_URL=184.106.83.217
#export FASTLY_TEST_BASE_PORT=80


#export FASTLY_TEST_BASE_URL=localhost
export FASTLY_TEST_BASE_URL="app-1-$USER"
export FASTLY_TEST_BASE_PORT=5500

export FASTLY_TEST_USER=testowner@example.com
export FASTLY_TEST_PASSWORD=password
export FASTLY_TEST_API_KEY=TESTAPIKEY


for f in `ls test/*_test.rb`; 
#for f in `ls test/full_login_test.rb`; 
do
    bundle exec ruby "$f" $*
done
