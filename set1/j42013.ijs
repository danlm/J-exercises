NB. Solution
j42013=:4 :'(x > {./:y)*1+ 0 i:~x<+/"1 +\y/:y'

NB. Test data
a1T=:6
a1C=:3 6 3

a2T=:6
a2C=:5 4 3 2 1

NB. Test Execution
a1T j42013 a1C    NB. 2
a2T j42013 a2C    NB. 3