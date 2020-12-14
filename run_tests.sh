#!/usr/bin/env bash

demo_files="demo/*.sthy"
ran=0
success=0

Compare() {
	diff -bq "$1" "$2" && { 
		(( success++ ))
		echo "PASS"
	} || {
		cat "$1"
		echo "FAILED: does not match expected output"
	}
}


for f in $demo_files
do
	(( ran++ ))
	name=${f%.sthy}			# remove .sthy from the end
	name=${name#demo/}	# remove ./demo/ from the beginning
	exp=${f%$name.sthy}"expected/$name.out"		# insert expected/ into file path
	echo "===================="
	echo "Testing: $name"
	./stoichy "$f" > "demo/$name.out" 2>&1 && {
	Compare "demo/$name.out" "$exp"
	} || {
		cat "demo/$name.out"
		echo "FAILED: did not compile"
	}
done

echo "===================="
echo "SUMMARY"
echo "Number of tests run: $ran"
echo "Number Passed: $success"
