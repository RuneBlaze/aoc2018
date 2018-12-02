#!/Applications/j64/bin/jconsole
strsplit=: #@[ }.each [ (E. <;.1 ]) ,
strjoin=: #@[ }. <@[ ;@,. ]
i =: ' ' strjoin LF strsplit }: stdin ''
nums =: 0 &". i
echo +/ nums
exit''