(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var430 0)
(declare-sort var2989 0)
(declare-sort var3711 0)
(declare-sort var2233 0)
(declare-sort var822 0)
(declare-sort var1785 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var2989) Bool)
(declare-fun var3711-init () var3711)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2233) String)
(declare-fun cast-from-var2989-to-var2233 (var2989) var2233)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var1785) var822)
(declare-fun cast-from-var430-to-var1785 (var430) var1785)
(declare-fun <init>/-469549130 (var3711 String var822) void)
(declare-const null-var430 var430)
(declare-const null-var2989 var2989)
(declare-const var2543 var430) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar 
(assert (not (= var2543 null-var430)))
(declare-const var2621 var2989) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var2621 null-var2989)))
(assert true)
(define-const var417 Bool (exists/1072868559 var2621)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: java.io.File manifestFile> = r0 
(assert (not (not (= (ite var417 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3790 var3711 var3711-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3992 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3992)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3992!1 String)
(assert (= var3992!1 ""))
(assert true)
(define-const var3885 String (append/672562846 var3992!1 "Manifest file: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Manifest file: ") 
(declare-const var3992!2 String)
(assert (= var3992!2 (str.++ var3992!1 "Manifest file: ")))
(assert true)
(define-const var3541 String (append/-1031950772 var3885 (cast-from-var2989-to-var2233 var2621))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3885!1 String)
(assert (str.prefixof var3885 var3885!1))
(assert true)
(define-const var618 String (append/672562846 var3541 " does not exist.")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not exist.") 
(declare-const var3541!1 String)
(assert (= var3541!1 (str.++ var3541 " does not exist.")))
(assert true)
(define-const var3325 String (toString/-2075883882 var618)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1101 var822 (getLocation/851674571 (cast-from-var430-to-var1785 var2543))) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var3790 var3325 var1101)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r8, $r7) 

(declare-const var3790!1 var3711)
(declare-const var3325!1 String)
(declare-const var1101!1 var822)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), var3711-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2989-to-var2233=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var430-to-var1785=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var430=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar, var2543=r1, var2989=java.io.File, var2621=r0, var417=$z0, var3711=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3790=$r2, var3992=$r3, var3885=$r4, var2233=java.lang.Object, var3541=$r5, var618=$r6, var3325=$r8, var822=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1785=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1101=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar=var430, r1=var2543, java.io.File=var2989, r0=var2621, $z0=var417, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3711, $r2=var3790, $r3=var3992, $r4=var3885, java.lang.Object=var2233, $r5=var3541, $r6=var618, $r8=var3325, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var822, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1785, $r7=var1101}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar;	r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: java.io.File manifestFile> = r0;	$r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Manifest file: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not exist.");	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r8, $r7);	throw $r2
;block_num 2