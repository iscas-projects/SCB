(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3187 0)
(declare-sort var2959 0)
(declare-sort var3759 0)
(declare-sort var507 0)
(declare-sort var3076 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun zipFile/-1134104672 (var3076 var2959 var3759 String Int) void)
(declare-fun cast-from-var3187-to-var3076 (var3187) var3076)
(declare-const null-var3187 var3187)
(declare-const null-var2959 var2959)
(declare-const null-var3759 var3759)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1740 var3187) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ear 
(assert (not (= var1740 null-var3187)))
(declare-const var1104 var2959) ; Statement: r3 := @parameter0: java.io.File 
(assert (not (= var1104 null-var2959)))
(declare-const var1606 var3759) ; Statement: r4 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream 
(assert (not (= var1606 null-var3759)))
(declare-const var3126 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3126 null-String)))
(declare-const var82 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var82 null-Int)))
(define-const var2683 String "META-INF/application.xml") ; Statement: $r1 = "META-INF/application.xml" 
(assert true)
(define-const var3833 Bool (equalsIgnoreCase/-92311102 var2683 var3126)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: void zipFile(java.io.File,com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream,java.lang.String,int)>(r3, r4, r0, i0) 
(assert (= (ite var3833 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (zipFile/-1134104672 (cast-from-var3187-to-var3076 var1740) var1104 var1606 var3126 var82)) ; Statement: specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: void zipFile(java.io.File,com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream,java.lang.String,int)>(r3, r4, r0, i0) 

(declare-const var1740!1 var3187)
(declare-const var1104!1 var2959)
(declare-const var1606!1 var3759)
(declare-const var3126!1 String)
(declare-const var82!1 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), zipFile/-1134104672=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip, java.io.File, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream, java.lang.String, int], void), cast-from-var3187-to-var3076=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ear], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip)}
; {var3187=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ear, var1740=r2, var2959=java.io.File, var1104=r3, var3759=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream, var1606=r4, var3126=r0, var507=null_type, var82=i0, var2683=$r1, var3833=$z0, var3076=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ear=var3187, r2=var1740, java.io.File=var2959, r3=var1104, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream=var3759, r4=var1606, r0=var3126, null_type=var507, i0=var82, $r1=var2683, $z0=var3833, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip=var3076}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ear;	r3 := @parameter0: java.io.File;	r4 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream;	r0 := @parameter2: java.lang.String;	i0 := @parameter3: int;	$r1 = "META-INF/application.xml";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: void zipFile(java.io.File,com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream,java.lang.String,int)>(r3, r4, r0, i0);	specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: void zipFile(java.io.File,com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream,java.lang.String,int)>(r3, r4, r0, i0);	return
;block_num 3