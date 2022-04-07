import os

folders = ['h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'custom']
for x in folders:
	if not os.path.isdir(x):
		os.mkdir('./' + x)