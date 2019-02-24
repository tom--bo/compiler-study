#/bin/bash

for i in `seq 1 7`; do
	echo -n "samples/sl1-${i}: "
	cat samples/sl1-${i}.txt | ./parser 
done
