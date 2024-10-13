(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3962 0)
(declare-sort var2275 0)
(declare-sort var1470 0)
(declare-sort var166 0)
(declare-sort var97 0)
(declare-sort var3480 0)
(declare-sort var1027 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var1470) Bool)
(declare-fun var166-init () var166)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var97) String)
(declare-fun cast-from-var1470-to-var97 (var1470) var97)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var1027) var3480)
(declare-fun cast-from-var3962-to-var1027 (var3962) var1027)
(declare-fun <init>/-469549130 (var166 String var3480) void)
(declare-const null-var3962 var3962)
(declare-const null-var2275 var2275)
(declare-const null-var1470 var1470)
(declare-const var945 var3962) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar 
(assert (not (= var945 null-var3962)))
(declare-const var1634 var2275) ; Statement: r26 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils 
(assert (not (= var1634 null-var2275)))
(declare-const var1372 var1470) ; Statement: r0 := @parameter1: java.io.File 
(assert (not (= var1372 null-var1470)))
(declare-const var586 var1470) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var586 null-var1470)))
(assert true)
(define-const var3133 Bool (exists/1072868559 var1372)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>() 
(assert (not (not (= (ite var3133 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1894 var166 var166-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3714 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3714)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3714!1 String)
(assert (= var3714!1 ""))
(assert true)
(define-const var2994 String (append/672562846 var3714!1 "Unable to untar ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to untar ") 
(declare-const var3714!2 String)
(assert (= var3714!2 (str.++ var3714!1 "Unable to untar ")))
(assert true)
(define-const var3258 String (append/-1031950772 var2994 (cast-from-var1470-to-var97 var1372))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2994!1 String)
(assert (str.prefixof var2994 var2994!1))
(assert true)
(define-const var925 String (append/672562846 var3258 " as the file does not exist")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as the file does not exist") 
(declare-const var3258!1 String)
(assert (= var3258!1 (str.++ var3258 " as the file does not exist")))
(assert true)
(define-const var1513 String (toString/-2075883882 var925)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3426 var3480 (getLocation/851674571 (cast-from-var3962-to-var1027 var945))) ; Statement: $r11 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var1894 var1513 var3426)) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r12, $r11) 

(declare-const var1894!1 var166)
(declare-const var1513!1 String)
(declare-const var3426!1 var3480)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), var166-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1470-to-var97=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var3962-to-var1027=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var3962=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar, var945=r3, var2275=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var1634=r26, var1470=java.io.File, var1372=r0, var586=r4, var3133=$z0, var166=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1894=$r6, var3714=$r7, var2994=$r8, var97=java.lang.Object, var3258=$r9, var925=$r10, var1513=$r12, var3480=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1027=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3426=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar=var3962, r3=var945, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var2275, r26=var1634, java.io.File=var1470, r0=var1372, r4=var586, $z0=var3133, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var166, $r6=var1894, $r7=var3714, $r8=var2994, java.lang.Object=var97, $r9=var3258, $r10=var925, $r12=var1513, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3480, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1027, $r11=var3426}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar;	r26 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils;	r0 := @parameter1: java.io.File;	r4 := @parameter2: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r2 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>();	$r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to untar ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as the file does not exist");	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r12, $r11);	throw $r6
;block_num 2