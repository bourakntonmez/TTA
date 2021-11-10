#week3 

#1Create a 1D array of numbers from 0 to 9
import numpy as np
x = np.arange(10)
print("Create a 1D array of numbers from 0 to 9:")
print(x)

#2 Create a 3×3 NumPy array of all Boolean value Trues
sample_arr = [True, False]

bool_arr = np.random.choice(sample_arr, size=(3,3))
print('2D Numpy Array: ')
print(bool_arr)

#3 Extract all odd numbers from array of 1-10

import numpy as np
a = np.array([1,2,3,4,5,6,6,7,7,8,9])
a[a % 2 == 1]

#4 Replace all odd numbers in an array of 1-10 with the value -1

import numpy as np 
 
a = np.array([ 1,  2,  3,  4,  5,  6,  7,  8,  9, 10]) 
 
odd_values = (a%2 == 1) 
a[odd_values] = -1 
# array([-1,  2, -1,  4, -1,  6, -1,  8, -1, 10]) 
 
##a[a%2 == 1] = -1 



#5 Convert a 1D array to a 2D array with 2 rows

import numpy as np

import numpy as np

arr = np.array([1, 2, 3, 4, 5, 6])

n = arr.reshape(3, 2)

print(n)


#6 Create two arrays a and b, stack these two arrays vertically use the np.dot and  np.sum to calculate totals

import numpy as np
a = np.arange (10,20) 
b = np.arange (20,29)  
c = np.dot(a, b)
sum = np.sum(c) 
print(sum)
print(c)


import pandas as pd

vetdata = pd.read_csv("ddd.csv")


df = pd.DataFrame(result_data, index = None)
  

rows = len(df.axes[0])
  

cols = len(df.axes[1])
  
print(df)
print("Number of Rows: ", rows)
print("Number of Columns: ", cols)


vetdata = pd.read_csv("ddd.csv", index_col="Destinations")
print(vetdata.loc[["Spain","South Korea","Turkey","Japan","United States","Greece"]]

myfilter =data["Score"] > 8

highscore = data[myfilter]
highscore.head()
data[(data.score >8) & (data.platform == "Score")]