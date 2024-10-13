(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1918 0)
(declare-sort var3892 0)
(declare-sort var1432 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun list/1458469088 (var3892) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun delete/2092983584 (var3892) Bool)
(declare-fun var1432-init () var1432)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAbsolutePath/-802773300 (var3892) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var1432 String) void)
(declare-const null-var1918 var1918)
(declare-const null-var3892 var3892)
(declare-const var468 var1918) ; Statement: r16 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Deltree 
(assert (not (= var468 null-var1918)))
(declare-const var188 var3892) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var188 null-var3892)))
(assert true)
(define-const var1177 (Array Int String) (list/1458469088 var188)) ; Statement: r1 = virtualinvoke r0.<java.io.File: java.lang.String[] list()>() 
(define-const var2262 Int (getLength-Arr-String-1 var1177)) ; Statement: i0 = lengthof r1 
(define-const var1216 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $z0 = virtualinvoke r0.<java.io.File: boolean delete()>() 
(assert (>= var1216 var2262)) ; Cond: i1 >= i0 
(assert true)
(define-const var1292 Bool (delete/2092983584 var188)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean delete()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var1292 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1873 var1432 var1432-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3028 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3028)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3028!1 String)
(assert (= var3028!1 ""))
(assert true)
(define-const var3493 String (append/672562846 var3028!1 "Unable to delete directory ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to delete directory ") 
(declare-const var3028!2 String)
(assert (= var3028!2 (str.++ var3028!1 "Unable to delete directory ")))
(assert true)
(define-const var629 String (getAbsolutePath/-802773300 var188)) ; Statement: $r4 = virtualinvoke r0.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var1963 String (append/672562846 var3493 var629)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3493!1 String)
(assert (= var3493!1 (str.++ var3493 var629)))
(assert true)
(define-const var3703 String (toString/-2075883882 var1963)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var1873 var3703)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r7) 

(declare-const var1873!1 var1432)
(declare-const var3703!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {list/1458469088=([java.io.File], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), delete/2092983584=([java.io.File], boolean), var1432-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAbsolutePath/-802773300=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1918=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Deltree, var468=r16, var3892=java.io.File, var188=r0, var1177=r1, var2262=i0, var1216=i1, var1292=$z0, var1432=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1873=$r2, var3028=$r3, var3493=$r5, var629=$r4, var1963=$r6, var3703=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Deltree=var1918, r16=var468, java.io.File=var3892, r0=var188, r1=var1177, i0=var2262, i1=var1216, $z0=var1292, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1432, $r2=var1873, $r3=var3028, $r5=var3493, $r4=var629, $r6=var1963, $r7=var3703}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r16 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Deltree;	r0 := @parameter0: java.io.File;	r1 = virtualinvoke r0.<java.io.File: java.lang.String[] list()>();	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto $z0 = virtualinvoke r0.<java.io.File: boolean delete()>();	$z0 = virtualinvoke r0.<java.io.File: boolean delete()>();	if $z0 != 0 goto return;	$r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to delete directory ");	$r4 = virtualinvoke r0.<java.io.File: java.lang.String getAbsolutePath()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r7);	throw $r2
;block_num 4