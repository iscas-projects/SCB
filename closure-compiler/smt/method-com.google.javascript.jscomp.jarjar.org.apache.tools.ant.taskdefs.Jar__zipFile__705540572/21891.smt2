(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2664 0)
(declare-sort var889 0)
(declare-sort var1746 0)
(declare-sort var1837 0)
(declare-sort var165 0)
(declare-sort var1621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun isFirstPass/927114061 (var1621) Bool)
(declare-fun cast-from-var2664-to-var1621 (var2664) var1621)
(declare-const null-var2664 var2664)
(declare-const null-var889 var889)
(declare-const null-var1746 var1746)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var165 var165)
(declare-const var657 var2664) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar 
(assert (not (= var657 null-var2664)))
(declare-const var248 var889) ; Statement: r4 := @parameter0: java.io.InputStream 
(assert (not (= var248 null-var889)))
(declare-const var3984 var1746) ; Statement: r5 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream 
(assert (not (= var3984 null-var1746)))
(declare-const var3641 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3641 null-String)))
(declare-const var937 Int) ; Statement: l0 := @parameter3: long 
(assert (not (= var937 null-Int)))
(declare-const var329 var165) ; Statement: r6 := @parameter4: java.io.File 
(assert (not (= var329 null-var165)))
(declare-const var1578 Int) ; Statement: i1 := @parameter5: int 
(assert (not (= var1578 null-Int)))
(define-const var2564 String "META-INF/MANIFEST.MF") ; Statement: $r1 = "META-INF/MANIFEST.MF" 
(assert true)
(define-const var8 Bool (equalsIgnoreCase/-92311102 var2564 var3641)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "META-INF/INDEX.LIST" 
(assert (not (= (ite var8 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2420 Bool (isFirstPass/927114061 (cast-from-var2664-to-var1621 var657))) ; Statement: $z5 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: boolean isFirstPass()>() 
 ; Statement: if $z5 == 0 goto return 
(assert (= (ite var2420 1 0) 0)) ; Cond: $z5 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), isFirstPass/927114061=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip], boolean), cast-from-var2664-to-var1621=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip)}
; {var2664=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar, var657=r3, var889=java.io.InputStream, var248=r4, var1746=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream, var3984=r5, var3641=r0, var1837=null_type, var937=l0, var165=java.io.File, var329=r6, var1578=i1, var2564=$r1, var8=$z0, var1621=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip, var2420=$z5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar=var2664, r3=var657, java.io.InputStream=var889, r4=var248, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream=var1746, r5=var3984, r0=var3641, null_type=var1837, l0=var937, java.io.File=var165, r6=var329, i1=var1578, $r1=var2564, $z0=var8, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip=var1621, $z5=var2420}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar;	r4 := @parameter0: java.io.InputStream;	r5 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream;	r0 := @parameter2: java.lang.String;	l0 := @parameter3: long;	r6 := @parameter4: java.io.File;	i1 := @parameter5: int;	$r1 = "META-INF/MANIFEST.MF";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto $r2 = "META-INF/INDEX.LIST";	$z5 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: boolean isFirstPass()>();	if $z5 == 0 goto return;	return
;block_num 3