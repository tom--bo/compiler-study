#!/bin/bash

try() {
	expected="$1"
	input="$2"

	./9cc "$input" > tmp.s
	gcc -o tmp tmp.s
	./tmp
	actual="$?"

	if [ "$actual" = "$expected" ]; then
		echo "$input => $actual"
	else
		echo "$expected expected, but got $actual"
		exit 1
	fi
}

try 2 '1+1'
try 42 '10+40-8'
try 2 '1     + 1 '
try 42 '10   + 40  -8 '
try 62 '2+4*3*5'
try 74 '2+4*3*5 + 6+2*3'
try 102 '(2+4)*3*5 + 6+2*3'

echo ok
