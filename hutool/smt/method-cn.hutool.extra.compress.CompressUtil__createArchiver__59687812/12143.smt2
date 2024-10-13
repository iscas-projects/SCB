(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2592 0)
(declare-sort var381 0)
(declare-sort var3701 0)
(declare-sort var1155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var1155_create/-51078938 (var2592 String var3701) var1155)
(declare-const null-var2592 var2592)
(declare-const null-String String)
(declare-const null-var3701 var3701)
(declare-const var3697 var2592) ; Statement: r2 := @parameter0: java.nio.charset.Charset 
(assert (not (= var3697 null-var2592)))
(declare-const var2730 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2730 null-String)))
(declare-const var682 var3701) ; Statement: r3 := @parameter2: java.io.File 
(assert (not (= var682 null-var3701)))
(define-const var1115 String "7z") ; Statement: $r1 = "7z" 
(assert true)
(define-const var2238 Bool (equalsIgnoreCase/-92311102 var1115 var2730)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r4 = staticinvoke <cn.hutool.extra.compress.archiver.StreamArchiver: cn.hutool.extra.compress.archiver.StreamArchiver create(java.nio.charset.Charset,java.lang.String,java.io.File)>(r2, r0, r3) 
(assert (= (ite var2238 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3240 var1155 (var1155_create/-51078938 var3697 var2730 var682)) ; Statement: $r4 = staticinvoke <cn.hutool.extra.compress.archiver.StreamArchiver: cn.hutool.extra.compress.archiver.StreamArchiver create(java.nio.charset.Charset,java.lang.String,java.io.File)>(r2, r0, r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var1155_create/-51078938=([java.nio.charset.Charset, java.lang.String, java.io.File], cn.hutool.extra.compress.archiver.StreamArchiver)}
; {var2592=java.nio.charset.Charset, var3697=r2, var2730=r0, var381=null_type, var3701=java.io.File, var682=r3, var1115=$r1, var2238=$z0, var1155=cn.hutool.extra.compress.archiver.StreamArchiver, var3240=$r4}
; {java.nio.charset.Charset=var2592, r2=var3697, r0=var2730, null_type=var381, java.io.File=var3701, r3=var682, $r1=var1115, $z0=var2238, cn.hutool.extra.compress.archiver.StreamArchiver=var1155, $r4=var3240}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r2 := @parameter0: java.nio.charset.Charset;	r0 := @parameter1: java.lang.String;	r3 := @parameter2: java.io.File;	$r1 = "7z";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto $r4 = staticinvoke <cn.hutool.extra.compress.archiver.StreamArchiver: cn.hutool.extra.compress.archiver.StreamArchiver create(java.nio.charset.Charset,java.lang.String,java.io.File)>(r2, r0, r3);	$r4 = staticinvoke <cn.hutool.extra.compress.archiver.StreamArchiver: cn.hutool.extra.compress.archiver.StreamArchiver create(java.nio.charset.Charset,java.lang.String,java.io.File)>(r2, r0, r3);	return $r4
;block_num 2