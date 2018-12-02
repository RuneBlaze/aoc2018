#!/Applications/j64/bin/jconsole

strsplit=: #@[ }.each [ (E. <;.1 ]) ,
texts =: > LF strsplit }: stdin ''
varies0  =:  ] {~ ,/@:((i.@:!@:[ A."0 1/ comb0) #)
seed     =:  [: i.@(,&0)&.> <:@- {. 1:  NB. Due to Hui on the  !  Vocab page
cf       =:  i.@# ,.&.> ,&.>/\.@:(>:&.>)
comb0    =:  [: ; [ cf@[&0 seed

NB. pairs =. 2 varies0 texts

for_eg=: verb define
 for_p. (2 varies0 texts) do.
    fst =. 0 { p
    snd =. 1 { p
    res =. +/ (1 - fst = snd)
    if. res = 1 do.
        echo fst
        echo snd
        echo fst = snd
    end.
 end.
 0
)

for_eg ''