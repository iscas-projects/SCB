(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3405 0)
(declare-sort var1157 0)
(declare-sort var3230 0)
(declare-sort var1936 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1936-init () var1936)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3230) ClassObject)
(declare-fun cast-from-var3405-to-var3230 (var3405) var3230)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var1936 String) void)
(declare-const null-var3405 var3405)
(declare-const null-var1157 var1157)
(declare-const null-var3230 var3230)
(declare-const var2273 var3405) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper 
(assert (not (= var2273 null-var3405)))
(declare-const var2864 var1157) ; Statement: r8 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var2864 null-var1157)))
(declare-const var2199 var3230) ; Statement: r9 := @parameter1: java.lang.Object 
(assert (not (= var2199 null-var3230)))
(define-const var885 var1936 var1936-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1923 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1923)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1923!1 String)
(assert (= var1923!1 ""))
(assert true)
(define-const var442 String (append/672562846 var1923!1 "ProjectHelper.parse() must be implemented in a helper plugin ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ProjectHelper.parse() must be implemented in a helper plugin ") 
(declare-const var1923!2 String)
(assert (= var1923!2 (str.++ var1923!1 "ProjectHelper.parse() must be implemented in a helper plugin ")))
(assert true)
(define-const var2996 ClassObject (getClass/1258963082 (cast-from-var3405-to-var3230 var2273))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3132 String (getName/-1958580599 var2996)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1455 String (append/672562846 var442 var3132)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var442!1 String)
(assert (= var442!1 (str.++ var442 var3132)))
(assert true)
(define-const var1130 String (toString/-2075883882 var1455)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var885 var1130)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r7) 

(declare-const var885!1 var1936)
(declare-const var1130!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1936-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3405-to-var3230=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3405=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper, var2273=r2, var1157=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2864=r8, var3230=java.lang.Object, var2199=r9, var1936=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var885=$r0, var1923=$r1, var442=$r5, var2996=$r3, var3132=$r4, var1455=$r6, var1130=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper=var3405, r2=var2273, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1157, r8=var2864, java.lang.Object=var3230, r9=var2199, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1936, $r0=var885, $r1=var1923, $r5=var442, $r3=var2996, $r4=var3132, $r6=var1455, $r7=var1130}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper;	r8 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r9 := @parameter1: java.lang.Object;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ProjectHelper.parse() must be implemented in a helper plugin ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1