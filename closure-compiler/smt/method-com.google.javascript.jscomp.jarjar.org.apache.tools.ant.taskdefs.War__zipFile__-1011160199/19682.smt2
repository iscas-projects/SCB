(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1229 0)
(declare-sort var2042 0)
(declare-sort var1315 0)
(declare-sort var3771 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var1229 var1229)
(declare-const null-var2042 var2042)
(declare-const null-var1315 var1315)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3633 var1229) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.War 
(assert (not (= var3633 null-var1229)))
(declare-const var999 var2042) ; Statement: r3 := @parameter0: java.io.File 
(assert (not (= var999 null-var2042)))
(declare-const var1682 var1315) ; Statement: r4 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream 
(assert (not (= var1682 null-var1315)))
(declare-const var3360 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3360 null-String)))
(declare-const var1822 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var1822 null-Int)))
(define-const var2751 Bool (ite (= 1 1) true false)) ; Statement: z2 = 1 
(define-const var3237 String "WEB-INF/web.xml") ; Statement: $r1 = "WEB-INF/web.xml" 
(assert true)
(define-const var442 Bool (equalsIgnoreCase/-92311102 var3237 var3360)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var442 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if z2 == 0 goto return 
(assert (= (ite var2751 1 0) 0)) ; Cond: z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var1229=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.War, var3633=r2, var2042=java.io.File, var999=r3, var1315=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream, var1682=r4, var3360=r0, var3771=null_type, var1822=i0, var2751=z2, var3237=$r1, var442=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.War=var1229, r2=var3633, java.io.File=var2042, r3=var999, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream=var1315, r4=var1682, r0=var3360, null_type=var3771, i0=var1822, z2=var2751, $r1=var3237, $z0=var442}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.War;	r3 := @parameter0: java.io.File;	r4 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream;	r0 := @parameter2: java.lang.String;	i0 := @parameter3: int;	z2 = 1;	$r1 = "WEB-INF/web.xml";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto (branch);	if z2 == 0 goto return;	return
;block_num 3