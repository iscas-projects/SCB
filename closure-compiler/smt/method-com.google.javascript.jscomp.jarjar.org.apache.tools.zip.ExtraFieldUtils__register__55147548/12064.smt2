(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var571 0)
(declare-sort var1672 0)
(declare-sort var3678 0)
(declare-sort var2327 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1672-init () var1672)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var3678) String)
(declare-fun cast-from-ClassObject-to-var3678 (ClassObject) var3678)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2327) String)
(declare-fun cast-from-var571-to-var2327 (var571) var2327)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var1672 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var571 var571)
(declare-const var3808 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3808 null-ClassObject)))
(define-const var3296 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var643 var571) ; Statement: $r7 := @caughtexception 
(assert (not (= var643 null-var571)))
(define-const var2574 var1672 var1672-init) ; Statement: $r8 = new java.lang.RuntimeException 
(define-const var1650 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1650)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1650!1 String)
(assert (= var1650!1 ""))
(assert true)
(define-const var3600 String (append/-1031950772 var1650!1 (cast-from-ClassObject-to-var3678 var3808))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1650!2 String)
(assert (str.prefixof var1650!1 var1650!2))
(assert true)
(define-const var25 String (append/672562846 var3600 "\u0027s no-arg constructor threw an exception:")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'s no-arg constructor threw an exception:") 
(declare-const var3600!1 String)
(assert (= var3600!1 (str.++ var3600 "\u0027s no-arg constructor threw an exception:")))
(assert true)
(define-const var188 String (getMessage/849299655 (cast-from-var571-to-var2327 var643))) ; Statement: $r11 = virtualinvoke $r7.<java.lang.reflect.InvocationTargetException: java.lang.String getMessage()>() 
(assert true)
(define-const var2895 String (append/672562846 var25 var188)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var25!1 String)
(assert (= var25!1 (str.++ var25 var188)))
(assert true)
(define-const var3859 String (toString/-2075883882 var2895)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2574 var3859)) ; Statement: specialinvoke $r8.<java.lang.RuntimeException: void <init>(java.lang.String)>($r14) 

(declare-const var2574!1 var1672)
(declare-const var3859!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var1672-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3678=([java.lang.Class], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var571-to-var2327=([java.lang.reflect.InvocationTargetException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3808=r0, var3296=$r1, var571=java.lang.reflect.InvocationTargetException, var643=$r7, var1672=java.lang.RuntimeException, var2574=$r8, var1650=$r9, var3678=java.lang.Object, var3600=$r10, var25=$r12, var2327=java.lang.Throwable, var188=$r11, var2895=$r13, var3859=$r14}
; {r0=var3808, $r1=var3296, java.lang.reflect.InvocationTargetException=var571, $r7=var643, java.lang.RuntimeException=var1672, $r8=var2574, $r9=var1650, java.lang.Object=var3678, $r10=var3600, $r12=var25, java.lang.Throwable=var2327, $r11=var188, $r13=var2895, $r14=var3859}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = newarray (java.lang.Class)[0];	$r7 := @caughtexception;	$r8 = new java.lang.RuntimeException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'s no-arg constructor threw an exception:");	$r11 = virtualinvoke $r7.<java.lang.reflect.InvocationTargetException: java.lang.String getMessage()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.RuntimeException: void <init>(java.lang.String)>($r14);	throw $r8
;block_num 2