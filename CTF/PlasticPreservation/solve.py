#!/usr/bin/env python3

import string


def solve_char(start_b, end_b):
	c = '100000001B3'
	for i in string.printable:
		b = start_b ^ ord(str(i)) * int(c, 16)
		if b == end_b:
			return i

def main():
	password = ''
	old_b = None
	with open('plastic_preservation/.log') as log_file:
		for line in log_file:
			line_split = line.strip().split()
			if len(line_split) == 4:
				start_b = int(line_split[-1])
				if old_b is not None:
					password += str(solve_char(start_b, old_b))
				old_b = start_b
	print(password + 'l')


if __name__ == '__main__':
	main()
