NB. Solution
j52013=: 4 : 0
    all=.;/1+2 comb 4
    if. 1=#y do. 
        remaining=.all-.;/2({.L:0)y
        points=.scoring >y
    else. 
        remaining=.all-.;/2({.S:0)y 
        points=.+/>scoring each y
    end.
    order=.;/(3&#.^:_1 i.3^#remaining)
    NB. (3&#.^:_1 i.*/>#&.>a)
    scenarios=.order permute remaining
    finals=.points+"1 >+/each >&.>scenarios
    filtered=.finals{~I.|:1=+/"1 finals=(x-1){"1 finals
    +/"2 (x-1)={:"1 /:"1 filtered
)

comb=: 4 : 0        NB. All size x combinations of i.y
 k=. i.>:d=.y-x
 z=. (d$<i.0 0),<i.1 0
 for. i.x do. z=. k ,.&.> ,&.>/\. >:&.> z end.
 ; z
)

scoring=: 3 :'>((1(1-~2{.y)}4#0);(3(1-~0}y)}4#0);3(1-~1}y)}4#0){~(-.=/2}.y)*1+{.\:2}.y'

possib=: 3 :'(2#3 1)((0  1, each y-1), 2, each y-1)}3 4$0'

knit=: 4 :'>x({S:2) each ;/&.> possib each y'

permute=: 4 : 0
    result=.<(>{:x) knit y
    times=.}:x
    for. i.#times do.
        result=.((>{:times) knit y);result
        times=.}:times
    end.
    result
)
NB.if. 1=#x do.
NB.        result=.<(>x) knit y
NB.    else.
NB.        result=.((>{.x) knit y);((}.x) permute y)
NB.    end.

NB. Test data
a1a=:3
a1b=:1 3 7 5;3 4 0 8;2 4 2 2

a2a=:3
a2b=:1 3 5 7;3 4 8 0;2 4 2 2;1 2 5 5

NB. Test Execution
a1a j52013 a1b    NB. 0
a2a j52013 a2b    NB. 9
3 j52013 (<1 2 0 0)    NB. 58
