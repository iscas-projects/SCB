(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var868 0)
(declare-sort var889 0)
(declare-sort var2123 0)
(declare-sort var3520 0)
(declare-sort var3892 0)
(declare-sort var931 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ejbdescriptor/-1609807671 (var868) var889)
(declare-fun exists/1072868559 (var889) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2123) String)
(declare-fun cast-from-var889-to-var2123 (var889) var2123)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3520-init () var3520)
(declare-fun getLocation/851674571 (var931) var3892)
(declare-fun cast-from-var868-to-var931 (var868) var931)
(declare-fun <init>/-469549130 (var3520 String var3892) void)
(declare-const null-var868 var868)
(declare-const null-var889 var889)
(declare-const var463 var868) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask 
(assert (not (= var463 null-var868)))
(define-const var3380 var889 (ejbdescriptor/-1609807671 var463)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File ejbdescriptor> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File ejbdescriptor> 
(assert (not (= var3380 null-var889))) ; Cond: $r1 != null 
(define-const var3528 var889 (ejbdescriptor/-1609807671 var463)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File ejbdescriptor> 
(assert true)
(define-const var1169 Bool (exists/1072868559 var3528)) ; Statement: $z0 = virtualinvoke $r2.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var1169 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2466 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2466)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2466!1 String)
(assert (= var2466!1 ""))
(assert true)
(define-const var3476 String (append/672562846 var2466!1 "The standard EJB descriptor (")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The standard EJB descriptor (") 
(declare-const var2466!2 String)
(assert (= var2466!2 (str.++ var2466!1 "The standard EJB descriptor (")))
(define-const var1175 var889 (ejbdescriptor/-1609807671 var463)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File ejbdescriptor> 
(assert true)
(define-const var2769 String (append/-1031950772 var3476 (cast-from-var889-to-var2123 var1175))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var3476!1 String)
(assert (str.prefixof var3476 var3476!1))
(assert true)
(define-const var3381 String (append/672562846 var2769 ") was not found or isn\u0027t a file.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") was not found or isn\'t a file.") 
(declare-const var2769!1 String)
(assert (= var2769!1 (str.++ var2769 ") was not found or isn\u0027t a file.")))
(assert true)
(define-const var144 String (toString/-2075883882 var3381)) ; Statement: $r46 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1181 var3520 var3520-init) ; Statement: $r8 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
(define-const var2653 var3892 (getLocation/851674571 (cast-from-var868-to-var931 var463))) ; Statement: $r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var1181 var144 var2653)) ; Statement: specialinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r46, $r9) 

(declare-const var1181!1 var3520)
(declare-const var144!1 String)
(declare-const var2653!1 var3892)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {ejbdescriptor/-1609807671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], java.io.File), exists/1072868559=([java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var889-to-var2123=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3520-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var868-to-var931=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var868=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask, var463=r0, var889=java.io.File, var3380=$r1, var3528=$r2, var1169=$z0, var2466=$r3, var3476=$r5, var1175=$r4, var2123=java.lang.Object, var2769=$r6, var3381=$r7, var144=$r46, var3520=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1181=$r8, var3892=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var931=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2653=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask=var868, r0=var463, java.io.File=var889, $r1=var3380, $r2=var3528, $z0=var1169, $r3=var2466, $r5=var3476, $r4=var1175, java.lang.Object=var2123, $r6=var2769, $r7=var3381, $r46=var144, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3520, $r8=var1181, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3892, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var931, $r9=var2653}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File ejbdescriptor>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File ejbdescriptor>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File ejbdescriptor>;	$z0 = virtualinvoke $r2.<java.io.File: boolean exists()>();	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The standard EJB descriptor (");	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: java.io.File ejbdescriptor>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") was not found or isn\'t a file.");	$r46 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbcTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r46, $r9);	throw $r8
;block_num 3