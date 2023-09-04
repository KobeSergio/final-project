#!/bin/sh

ab -n 100 -c 10 -p posta -T "application/x-www-form-urlencoded" http://vote:5000/
ab -n 100 -c 10 -p postb -T "application/x-www-form-urlencoded" http://vote:5000/
ab -n 100 -c 10 -p posta -T "application/x-www-form-urlencoded" http://vote:5000/
ab -n 50 -c 10 -p postc -T "application/x-www-form-urlencoded" http://vote:5000/
ab -n 25 -c 10 -p posta -T "application/x-www-form-urlencoded" http://vote:5000/
ab -n 25 -c 10 -p postc -T "application/x-www-form-urlencoded" http://vote:5000/
ab -n 20 -c 10 -p posta -T "application/x-www-form-urlencoded" http://vote:5000/
