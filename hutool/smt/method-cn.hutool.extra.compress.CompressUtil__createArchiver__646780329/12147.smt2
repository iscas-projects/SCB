(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var49 0)
(declare-sort var2509 0)
(declare-sort var1850 0)
(declare-sort var3825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var3825-init () var3825)
(declare-fun <init>/1791101521 (var3825 var1850) void)
(declare-const null-var49 var49)
(declare-const null-String String)
(declare-const null-var1850 var1850)
(declare-const var1553 var49) ; Statement: r2 := @parameter0: java.nio.charset.Charset 
(assert (not (= var1553 null-var49)))
(declare-const var3401 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3401 null-String)))
(declare-const var737 var1850) ; Statement: r3 := @parameter2: java.io.OutputStream 
(assert (not (= var737 null-var1850)))
(define-const var1769 String "7z") ; Statement: $r1 = "7z" 
(assert true)
(define-const var1810 Bool (equalsIgnoreCase/-92311102 var1769 var3401)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r4 = staticinvoke <cn.hutool.extra.compress.archiver.StreamArchiver: cn.hutool.extra.compress.archiver.StreamArchiver create(java.nio.charset.Charset,java.lang.String,java.io.OutputStream)>(r2, r0, r3) 
(assert (not (= (ite var1810 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var317 var3825 var3825-init) ; Statement: $r5 = new cn.hutool.extra.compress.archiver.SevenZArchiver 
(assert true)
;(assert (<init>/1791101521 var317 var737)) ; Statement: specialinvoke $r5.<cn.hutool.extra.compress.archiver.SevenZArchiver: void <init>(java.io.OutputStream)>(r3) 

(declare-const var317!1 var3825)
(declare-const var737!1 var1850)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var3825-init=([], cn.hutool.extra.compress.archiver.SevenZArchiver), <init>/1791101521=([cn.hutool.extra.compress.archiver.SevenZArchiver, java.io.OutputStream], void)}
; {var49=java.nio.charset.Charset, var1553=r2, var3401=r0, var2509=null_type, var1850=java.io.OutputStream, var737=r3, var1769=$r1, var1810=$z0, var3825=cn.hutool.extra.compress.archiver.SevenZArchiver, var317=$r5}
; {java.nio.charset.Charset=var49, r2=var1553, r0=var3401, null_type=var2509, java.io.OutputStream=var1850, r3=var737, $r1=var1769, $z0=var1810, cn.hutool.extra.compress.archiver.SevenZArchiver=var3825, $r5=var317}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r2 := @parameter0: java.nio.charset.Charset;	r0 := @parameter1: java.lang.String;	r3 := @parameter2: java.io.OutputStream;	$r1 = "7z";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto $r4 = staticinvoke <cn.hutool.extra.compress.archiver.StreamArchiver: cn.hutool.extra.compress.archiver.StreamArchiver create(java.nio.charset.Charset,java.lang.String,java.io.OutputStream)>(r2, r0, r3);	$r5 = new cn.hutool.extra.compress.archiver.SevenZArchiver;	specialinvoke $r5.<cn.hutool.extra.compress.archiver.SevenZArchiver: void <init>(java.io.OutputStream)>(r3);	return $r5
;block_num 2