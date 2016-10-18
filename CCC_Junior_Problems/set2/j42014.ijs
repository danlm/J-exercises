NB. Solution
j42014=:4 :0
    full=:1+i.x   NB. generate index list of friends
    y drop full  NB. recursive helper function
)

drop=:4 :0
    list=.y
    if. 0<#x do.
        mod=.y{~I.(#y)$((1-~{.x)#1),0
        list=. mod drop~ }.x	
    end.
    list
)

NB. Test data
a1a=:10
a1b=:2 3

NB. Test Execution
a1a j42014 a1b    NB. 1 3 7 9