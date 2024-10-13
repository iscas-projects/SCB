(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1444 0)
(declare-sort var3308 0)
(declare-sort var2979 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var3308-init () var3308)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var2979) String)
(declare-fun cast-from-ClassObject-to-var2979 (ClassObject) var2979)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3308 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1444 var1444)
(declare-const var2061 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2061 null-ClassObject)))
(define-const var112 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3876 var1444) ; Statement: $r15 := @caughtexception 
(assert (not (= var3876 null-var1444)))
(define-const var2327 var3308 var3308-init) ; Statement: $r16 = new java.lang.RuntimeException 
(define-const var2971 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2971)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2971!1 String)
(assert (= var2971!1 ""))
(assert true)
(define-const var1572 String (append/-1031950772 var2971!1 (cast-from-ClassObject-to-var2979 var2061))) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2971!2 String)
(assert (str.prefixof var2971!1 var2971!2))
(assert true)
(define-const var1845 String (append/672562846 var1572 "\u0027s no-arg constructor not found")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'s no-arg constructor not found") 
(declare-const var1572!1 String)
(assert (= var1572!1 (str.++ var1572 "\u0027s no-arg constructor not found")))
(assert true)
(define-const var3265 String (toString/-2075883882 var1845)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2327 var3265)) ; Statement: specialinvoke $r16.<java.lang.RuntimeException: void <init>(java.lang.String)>($r20) 

(declare-const var2327!1 var3308)
(declare-const var3265!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var3308-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2979=([java.lang.Class], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2061=r0, var112=$r1, var1444=java.lang.NoSuchMethodException, var3876=$r15, var3308=java.lang.RuntimeException, var2327=$r16, var2971=$r17, var2979=java.lang.Object, var1572=$r18, var1845=$r19, var3265=$r20}
; {r0=var2061, $r1=var112, java.lang.NoSuchMethodException=var1444, $r15=var3876, java.lang.RuntimeException=var3308, $r16=var2327, $r17=var2971, java.lang.Object=var2979, $r18=var1572, $r19=var1845, $r20=var3265}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = newarray (java.lang.Class)[0];	$r15 := @caughtexception;	$r16 = new java.lang.RuntimeException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'s no-arg constructor not found");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.RuntimeException: void <init>(java.lang.String)>($r20);	throw $r16
;block_num 2