NB. Solution
j52014=: 4 :0
    c=.x, each y
    >(;:'bad good') {~ *./(|. each c) e. c
)

NB. Test data
a1a=:s:' Ada Alan Grace John'
a1b=:s:' John Grace Alan Ada'

a2a=:s:' Rich Graeme Michelle Sandy Vlado Ron Jacob'
a2b=:s:' Ron Vlado Sandy Michelle Rich Graeme Jacob'

NB. Test Execution
a1a j52014 a1b    NB. good
a2a j52014 a2b    NB. bad