(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2839 0)
(declare-sort var2797 0)
(declare-sort var3171 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var2797-init () var2797)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var3171) String)
(declare-fun cast-from-ClassObject-to-var3171 (ClassObject) var3171)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2797 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2839 var2839)
(declare-const var3964 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3964 null-ClassObject)))
(define-const var2033 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var574 var2839) ; Statement: $r21 := @caughtexception 
(assert (not (= var574 null-var2839)))
(define-const var2406 var2797 var2797-init) ; Statement: $r22 = new java.lang.RuntimeException 
(define-const var2236 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2236)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2236!1 String)
(assert (= var2236!1 ""))
(assert true)
(define-const var872 String (append/-1031950772 var2236!1 (cast-from-ClassObject-to-var3171 var3964))) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2236!2 String)
(assert (str.prefixof var2236!1 var2236!2))
(assert true)
(define-const var1179 String (append/672562846 var872 "\u0027s no-arg constructor is not public")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'s no-arg constructor is not public") 
(declare-const var872!1 String)
(assert (= var872!1 (str.++ var872 "\u0027s no-arg constructor is not public")))
(assert true)
(define-const var541 String (toString/-2075883882 var1179)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2406 var541)) ; Statement: specialinvoke $r22.<java.lang.RuntimeException: void <init>(java.lang.String)>($r26) 

(declare-const var2406!1 var2797)
(declare-const var541!1 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var2797-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3171=([java.lang.Class], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3964=r0, var2033=$r1, var2839=java.lang.IllegalAccessException, var574=$r21, var2797=java.lang.RuntimeException, var2406=$r22, var2236=$r23, var3171=java.lang.Object, var872=$r24, var1179=$r25, var541=$r26}
; {r0=var3964, $r1=var2033, java.lang.IllegalAccessException=var2839, $r21=var574, java.lang.RuntimeException=var2797, $r22=var2406, $r23=var2236, java.lang.Object=var3171, $r24=var872, $r25=var1179, $r26=var541}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = newarray (java.lang.Class)[0];	$r21 := @caughtexception;	$r22 = new java.lang.RuntimeException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'s no-arg constructor is not public");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<java.lang.RuntimeException: void <init>(java.lang.String)>($r26);	throw $r22
;block_num 2