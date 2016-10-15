NB. Solution
j22014=:3 :0
    s=.(+/'A' E. y),+/'B' E. y
    >(;:'A B Tie') {~ +/(=/s),I. (>./s) E. s
)

NB. Test data
a1=:'ABBABB'
a2=:'ABBABA'

NB. Test Execution
j22014 a1    NB. B
j22014 a2    NB. Tie