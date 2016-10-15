NB. Solution
j32013=:3 :0
    possible=.(i.10001) }.~ 1+y
    tester=.3 :'4=#~.":y'
    possible {~ {. I.>tester each possible
)

NB. Test data
a1=:1987
a2=:999

NB. Test Execution
j32013 a1    NB. 2013
j32013 a2    NB. 1023