# Python script Simple Intrest

# Get P, N, R as input from user
P = float(input('Please enter Principal in INR : '))
N = float(input('Please enter Period in Years : '))
R = float(input('Please enter Rate of Intrest in %p.a. : '))

# Calculate Simple Intrest
I = (P*N*R)/100

# Calculate amount
A = P + I

# Print the results
print(f'Simple Intrest is : {I:.2f} INR')
print(f'Total Amount is : {A:.2f} INR')