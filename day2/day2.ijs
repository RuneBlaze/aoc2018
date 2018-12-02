#!/Applications/j64/bin/jconsole

strsplit=: #@[ }.each [ (E. <;.1 ]) ,
texts =: > LF strsplit }: stdin ''
varies0  =:  ] {~ ,/@:((i.@:!@:[ A."0 1/ comb0) #)
seed     =:  [: i.@(,&0)&.> <:@- {. 1:  NB. Due to Hui on the  !  Vocab page
cf       =:  i.@# ,.&.> ,&.>/\.@:(>:&.>)
comb0    =:  [: ; [ cf@[&0 seed

pairs =. 2 varies0 texts

for_eg=: verb define
 twos =. 0
 threes =. 0
 for_j. texts do.
    u =. ~. j
    istwo =. 0
    isthree =. 0
    for_k. u do.
        cnt =. +/ k = j
        if. cnt = 2 do.
            istwo =. 1
        end.

        if. cnt = 3 do.
            isthree =. 1
        end.
    end.

    twos =. twos + istwo
    threes =. threes + isthree
 end.
 twos * threes
)

echo for_eg ''