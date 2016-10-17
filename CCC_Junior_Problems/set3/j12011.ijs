NB. Solution
j12011=:4 :0
    p=.0$0
    if. (x>2)*.y<5 do. p=.p,1 end.
    if. (x<7)*.y>1 do. p=.p,2 end.
    if. (x<3)*.y<4 do. p=.p,3 end.
    if. 0=#p do. p=.p,0 end.
    >p{;:'None TroyMartian VladSaturnian GraemeMercurian'
)

NB. Test data
a1a=:4
a1b=:5

a2a=:2
a2b=:3

a3a=:8
a3b=:6

NB. Test Execution
a1a j12011 a1b    NB. VladSaturnian
a2a j12011 a2b    NB. VladSaturnian GraemeMercurian
a3a j12011 a3b    NB. None