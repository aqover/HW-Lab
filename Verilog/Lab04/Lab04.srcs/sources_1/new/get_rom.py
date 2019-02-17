bit = 8;
addr = 5;
count = 0;
out = ''
def gen(b, i):
	global count, out

	if count >= 2**addr: return
	if b == bit: return
	out += str(i)
	gen(b+1, 0)
	gen(b+1, 1)

	if b == bit - 1:
		print (out)
		with open("rom.data", "a") as fd:
			fd.write(out + " //addr = " + str(count) + "\n")
		count += 1;
	
	out = out[0:-1]

def gen2():
	for i in range(2**addr):
		tmp = "{:04b}{:04b}".format(i//10, i%10);
		with open("rom.data", "a") as fd:
			fd.write(tmp + " //addr = " + str(i) + "\n")


def main():
	with open("rom.data", "w") as fd:
		pass

	# gen(0, 0);
	# gen(0, 1);
	gen2();
	print (count)
	

if __name__ == '__main__':
	main()