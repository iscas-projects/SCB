(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var456 0)
(declare-sort var3130 0)
(declare-sort var3700 0)
(declare-sort var653 0)
(declare-sort var3536 0)
(declare-sort var3412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3536) ClassObject)
(declare-fun cast-from-var3130-to-var3536 (var3130) var3536)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getMessage/849299655 (var3412) String)
(declare-fun cast-from-var3130-to-var3412 (var3130) var3412)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3700 String) void)
(declare-const null-var456 var456)
(declare-const null-var3130 var3130)
(declare-const var653-err var3700)
(declare-const var456-DEBUG Bool)
(declare-const var2696 var456) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry 
(assert (not (= var2696 null-var456)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3082 var3130) ; Statement: $r8 := @caughtexception 
(assert (not (= var3082 null-var3130)))
(define-const var3242 var3700 var653-err) ; Statement: $r10 = <java.lang.System: java.io.PrintStream err> 
(define-const var1090 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1090)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1090!1 String)
(assert (= var1090!1 ""))
(assert true)
(define-const var2909 String (append/672562846 var1090!1 "Unable to load ArgumentProcessor from service META-INF/services/org.apache.tools.ant.ArgumentProcessor (")) ; Statement: $r13 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to load ArgumentProcessor from service META-INF/services/org.apache.tools.ant.ArgumentProcessor (") 
(declare-const var1090!2 String)
(assert (= var1090!2 (str.++ var1090!1 "Unable to load ArgumentProcessor from service META-INF/services/org.apache.tools.ant.ArgumentProcessor (")))
(assert true)
(define-const var3344 ClassObject (getClass/1258963082 (cast-from-var3130-to-var3536 var3082))) ; Statement: $r11 = virtualinvoke $r8.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1397 String (getName/-1958580599 var3344)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var477 String (append/672562846 var2909 var1397)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2909!1 String)
(assert (= var2909!1 (str.++ var2909 var1397)))
(assert true)
(define-const var2327 String (append/672562846 var477 ": ")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var477!1 String)
(assert (= var477!1 (str.++ var477 ": ")))
(assert true)
(define-const var2109 String (getMessage/849299655 (cast-from-var3130-to-var3412 var3082))) ; Statement: $r15 = virtualinvoke $r8.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var2819 String (append/672562846 var2327 var2109)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2327!1 String)
(assert (= var2327!1 (str.++ var2327 var2109)))
(assert true)
(define-const var3007 String (append/672562846 var2819 ")")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2819!1 String)
(assert (= var2819!1 (str.++ var2819 ")")))
(assert true)
(define-const var61 String (toString/-2075883882 var3007)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3242 var61)) ; Statement: virtualinvoke $r10.<java.io.PrintStream: void println(java.lang.String)>($r19) 

(declare-const var3242!1 var3700)
(declare-const var61!1 String)
(define-const var1294 Bool var456-DEBUG) ; Statement: $z1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry: boolean DEBUG> 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var1294 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3130-to-var3536=([java.lang.Exception], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3130-to-var3412=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var456=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry, var2696=r0, var3130=java.lang.Exception, var3082=$r8, var3700=java.io.PrintStream, var653=java.lang.System, var3242=$r10, var1090=$r9, var2909=$r13, var3536=java.lang.Object, var3344=$r11, var1397=$r12, var477=$r14, var2327=$r16, var3412=java.lang.Throwable, var2109=$r15, var2819=$r17, var3007=$r18, var61=$r19, var1294=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry=var456, r0=var2696, java.lang.Exception=var3130, $r8=var3082, java.io.PrintStream=var3700, java.lang.System=var653, $r10=var3242, $r9=var1090, $r13=var2909, java.lang.Object=var3536, $r11=var3344, $r12=var1397, $r14=var477, $r16=var2327, java.lang.Throwable=var3412, $r15=var2109, $r17=var2819, $r18=var3007, $r19=var61, $z1=var1294}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry;	$r8 := @caughtexception;	$r10 = <java.lang.System: java.io.PrintStream err>;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to load ArgumentProcessor from service META-INF/services/org.apache.tools.ant.ArgumentProcessor (");	$r11 = virtualinvoke $r8.<java.lang.Object: java.lang.Class getClass()>();	$r12 = virtualinvoke $r11.<java.lang.Class: java.lang.String getName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r15 = virtualinvoke $r8.<java.lang.Exception: java.lang.String getMessage()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r10.<java.io.PrintStream: void println(java.lang.String)>($r19);	$z1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry: boolean DEBUG>;	if $z1 == 0 goto return;	return
;block_num 3