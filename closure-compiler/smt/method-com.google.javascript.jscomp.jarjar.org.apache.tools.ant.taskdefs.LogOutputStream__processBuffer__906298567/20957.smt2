(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2435 0)
(declare-sort var456 0)
(declare-sort var2128 0)
(declare-sort var3844 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2128-init () var2128)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3844) String)
(declare-fun cast-from-var456-to-var3844 (var456) var3844)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2128 String) void)
(declare-const null-var2435 var2435)
(declare-const null-var456 var456)
(declare-const var2837 var2435) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream 
(assert (not (= var2837 null-var2435)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var435 var456) ; Statement: $r1 := @caughtexception 
(assert (not (= var435 null-var456)))
(define-const var3415 var2128 var2128-init) ; Statement: $r2 = new java.lang.RuntimeException 
(define-const var639 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var639)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var639!1 String)
(assert (= var639!1 ""))
(assert true)
(define-const var298 String (append/672562846 var639!1 "Impossible IOException caught: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Impossible IOException caught: ") 
(declare-const var639!2 String)
(assert (= var639!2 (str.++ var639!1 "Impossible IOException caught: ")))
(assert true)
(define-const var2522 String (append/-1031950772 var298 (cast-from-var456-to-var3844 var435))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r1) 
(declare-const var298!1 String)
(assert (str.prefixof var298 var298!1))
(assert true)
(define-const var3484 String (toString/-2075883882 var2522)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3415 var3484)) ; Statement: specialinvoke $r2.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6) 

(declare-const var3415!1 var2128)
(declare-const var3484!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2128-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var456-to-var3844=([java.io.IOException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2435=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream, var2837=r0, var456=java.io.IOException, var435=$r1, var2128=java.lang.RuntimeException, var3415=$r2, var639=$r3, var298=$r4, var3844=java.lang.Object, var2522=$r5, var3484=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream=var2435, r0=var2837, java.io.IOException=var456, $r1=var435, java.lang.RuntimeException=var2128, $r2=var3415, $r3=var639, $r4=var298, java.lang.Object=var3844, $r5=var2522, $r6=var3484}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream;	$r1 := @caughtexception;	$r2 = new java.lang.RuntimeException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Impossible IOException caught: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 2