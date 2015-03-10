f = open('scilab_input')
input = f.read()

i = 0
total = 0
for i in range(0,len(input)):
	if input[i] == '(':
		total+=1
	else:
		pass

print total

start_index = 1
j = 0
frequency = []
time = []
for j in range(0,total):
	frequency.append(int(input[start_index + 9*j:start_index + 9*j + 3]))
	time.append(int(input[start_index + 9*j + 4 :start_index + 9*j + 7]))

print frequency
print time