#! /usr/bin/env python

import sys

last_key = None 
count = 0 
sum = 1

for line in sys.stdin: 
	line = line.strip() key, 
	value = line.split("\t")

	if value =="NA": 
		continue 
	value = int(value)
	if not last_key: 
		last_key = key 
		count = 1 
		sum = value

	elif key == last_key: 
		count = count + 1 
		sum = sum + value
	else: 
		result = [last_key, sum/count] 
		print("\t".join(str(v) for v in result)) 
		last_key = key 
		count = 1 
		sum = value

print("\t".join(str(v) for v in [last_key, sum/count]))

