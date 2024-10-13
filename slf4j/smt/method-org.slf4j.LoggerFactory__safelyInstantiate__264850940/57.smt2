(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var308 0)
(declare-sort var1805 0)
(declare-sort var1957 0)
(declare-sort var1360 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var1957) String)
(declare-fun cast-from-var1805-to-var1957 (var1805) var1957)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1360_error/1293771269 (String) void)
(declare-const null-var308 var308)
(declare-const null-Iterator Iterator)
(declare-const null-var1805 var1805)
(declare-const var2513 var308) ; Statement: r2 := @parameter0: java.util.List 
(assert (not (= var2513 null-var308)))
(declare-const var2281 Iterator) ; Statement: r0 := @parameter1: java.util.Iterator 
(assert (not (= var2281 null-Iterator)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1810 var1805) ; Statement: $r3 := @caughtexception 
(assert (not (= var1810 null-var1805)))
(define-const var1136 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1136)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1136!1 String)
(assert (= var1136!1 ""))
(assert true)
(define-const var685 String (append/672562846 var1136!1 "A service provider failed to instantiate:\n")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A service provider failed to instantiate:\n") 
(declare-const var1136!2 String)
(assert (= var1136!2 (str.++ var1136!1 "A service provider failed to instantiate:\n")))
(assert true)
(define-const var1322 String (getMessage/849299655 (cast-from-var1805-to-var1957 var1810))) ; Statement: $r5 = virtualinvoke $r3.<java.util.ServiceConfigurationError: java.lang.String getMessage()>() 
(assert true)
(define-const var2052 String (append/672562846 var685 var1322)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var685!1 String)
(assert (= var685!1 (str.++ var685 var1322)))
(assert true)
(define-const var2848 String (toString/-2075883882 var2052)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1360_error/1293771269 var2848)) ; Statement: staticinvoke <org.slf4j.helpers.Reporter: void error(java.lang.String)>($r8) 

(declare-const var2848!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1805-to-var1957=([java.util.ServiceConfigurationError], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1360_error/1293771269=([java.lang.String], void)}
; {var308=java.util.List, var2513=r2, var2281=r0, var1805=java.util.ServiceConfigurationError, var1810=$r3, var1136=$r4, var685=$r6, var1957=java.lang.Throwable, var1322=$r5, var2052=$r7, var2848=$r8, var1360=org.slf4j.helpers.Reporter}
; {java.util.List=var308, r2=var2513, r0=var2281, java.util.ServiceConfigurationError=var1805, $r3=var1810, $r4=var1136, $r6=var685, java.lang.Throwable=var1957, $r5=var1322, $r7=var2052, $r8=var2848, org.slf4j.helpers.Reporter=var1360}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.util.List;	r0 := @parameter1: java.util.Iterator;	$r3 := @caughtexception;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A service provider failed to instantiate:\n");	$r5 = virtualinvoke $r3.<java.util.ServiceConfigurationError: java.lang.String getMessage()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.slf4j.helpers.Reporter: void error(java.lang.String)>($r8);	return
;block_num 3