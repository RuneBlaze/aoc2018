#!/Applications/j64/bin/jconsole

strsplit=: #@[ }.each [ (E. <;.1 ]) ,
strjoin=: #@[ }. <@[ ;@,. ]
texts =: ' ' strjoin LF strsplit }: stdin ''
nums =: 0 &". texts
NB. nums =: 3 3 4 _2 _4
seen =: 0

NB. echo nums

for_eg=: verb define
 a=. 0
 for_j. i.(100000 * #nums) do.
   a =. a + (((# nums )| j) { nums)
   if. ((# nums )| j) = 0 do.
    echo a
    echo #seen
    end.
   if. (a e. seen) do.
    echo a
    echo 'found'
    break.
   end.
   seen =. a ~.@, seen
NB.    echo a
 end.
 a
)

for_eg ''