(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2786 0)
(declare-sort var3310 0)
(declare-sort var1839 0)
(declare-sort var2459 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var2459_create/-1652528885 (var2786 String var1839) var2459)
(declare-const null-var2786 var2786)
(declare-const null-String String)
(declare-const null-var1839 var1839)
(declare-const var1092 var2786) ; Statement: r2 := @parameter0: java.nio.charset.Charset 
(assert (not (= var1092 null-var2786)))
(declare-const var2096 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2096 null-String)))
(declare-const var1783 var1839) ; Statement: r3 := @parameter2: java.io.OutputStream 
(assert (not (= var1783 null-var1839)))
(define-const var2337 String "7z") ; Statement: $r1 = "7z" 
(assert true)
(define-const var3342 Bool (equalsIgnoreCase/-92311102 var2337 var2096)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r4 = staticinvoke <cn.hutool.extra.compress.archiver.StreamArchiver: cn.hutool.extra.compress.archiver.StreamArchiver create(java.nio.charset.Charset,java.lang.String,java.io.OutputStream)>(r2, r0, r3) 
(assert (= (ite var3342 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3746 var2459 (var2459_create/-1652528885 var1092 var2096 var1783)) ; Statement: $r4 = staticinvoke <cn.hutool.extra.compress.archiver.StreamArchiver: cn.hutool.extra.compress.archiver.StreamArchiver create(java.nio.charset.Charset,java.lang.String,java.io.OutputStream)>(r2, r0, r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var2459_create/-1652528885=([java.nio.charset.Charset, java.lang.String, java.io.OutputStream], cn.hutool.extra.compress.archiver.StreamArchiver)}
; {var2786=java.nio.charset.Charset, var1092=r2, var2096=r0, var3310=null_type, var1839=java.io.OutputStream, var1783=r3, var2337=$r1, var3342=$z0, var2459=cn.hutool.extra.compress.archiver.StreamArchiver, var3746=$r4}
; {java.nio.charset.Charset=var2786, r2=var1092, r0=var2096, null_type=var3310, java.io.OutputStream=var1839, r3=var1783, $r1=var2337, $z0=var3342, cn.hutool.extra.compress.archiver.StreamArchiver=var2459, $r4=var3746}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r2 := @parameter0: java.nio.charset.Charset;	r0 := @parameter1: java.lang.String;	r3 := @parameter2: java.io.OutputStream;	$r1 = "7z";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto $r4 = staticinvoke <cn.hutool.extra.compress.archiver.StreamArchiver: cn.hutool.extra.compress.archiver.StreamArchiver create(java.nio.charset.Charset,java.lang.String,java.io.OutputStream)>(r2, r0, r3);	$r4 = staticinvoke <cn.hutool.extra.compress.archiver.StreamArchiver: cn.hutool.extra.compress.archiver.StreamArchiver create(java.nio.charset.Charset,java.lang.String,java.io.OutputStream)>(r2, r0, r3);	return $r4
;block_num 2