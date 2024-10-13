(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2335 0)
(declare-sort var2187 0)
(declare-sort var2612 0)
(declare-sort var2092 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var2092-init () var2092)
(declare-fun <init>/649519148 (var2092 var2612) void)
(declare-const null-var2335 var2335)
(declare-const null-String String)
(declare-const null-var2612 var2612)
(declare-const var3940 var2335) ; Statement: r2 := @parameter0: java.nio.charset.Charset 
(assert (not (= var3940 null-var2335)))
(declare-const var778 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var778 null-String)))
(declare-const var1918 var2612) ; Statement: r3 := @parameter2: java.io.File 
(assert (not (= var1918 null-var2612)))
(define-const var715 String "7z") ; Statement: $r1 = "7z" 
(assert true)
(define-const var3699 Bool (equalsIgnoreCase/-92311102 var715 var778)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r4 = staticinvoke <cn.hutool.extra.compress.archiver.StreamArchiver: cn.hutool.extra.compress.archiver.StreamArchiver create(java.nio.charset.Charset,java.lang.String,java.io.File)>(r2, r0, r3) 
(assert (not (= (ite var3699 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1052 var2092 var2092-init) ; Statement: $r5 = new cn.hutool.extra.compress.archiver.SevenZArchiver 
(assert true)
;(assert (<init>/649519148 var1052 var1918)) ; Statement: specialinvoke $r5.<cn.hutool.extra.compress.archiver.SevenZArchiver: void <init>(java.io.File)>(r3) 

(declare-const var1052!1 var2092)
(declare-const var1918!1 var2612)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var2092-init=([], cn.hutool.extra.compress.archiver.SevenZArchiver), <init>/649519148=([cn.hutool.extra.compress.archiver.SevenZArchiver, java.io.File], void)}
; {var2335=java.nio.charset.Charset, var3940=r2, var778=r0, var2187=null_type, var2612=java.io.File, var1918=r3, var715=$r1, var3699=$z0, var2092=cn.hutool.extra.compress.archiver.SevenZArchiver, var1052=$r5}
; {java.nio.charset.Charset=var2335, r2=var3940, r0=var778, null_type=var2187, java.io.File=var2612, r3=var1918, $r1=var715, $z0=var3699, cn.hutool.extra.compress.archiver.SevenZArchiver=var2092, $r5=var1052}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r2 := @parameter0: java.nio.charset.Charset;	r0 := @parameter1: java.lang.String;	r3 := @parameter2: java.io.File;	$r1 = "7z";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto $r4 = staticinvoke <cn.hutool.extra.compress.archiver.StreamArchiver: cn.hutool.extra.compress.archiver.StreamArchiver create(java.nio.charset.Charset,java.lang.String,java.io.File)>(r2, r0, r3);	$r5 = new cn.hutool.extra.compress.archiver.SevenZArchiver;	specialinvoke $r5.<cn.hutool.extra.compress.archiver.SevenZArchiver: void <init>(java.io.File)>(r3);	return $r5
;block_num 2