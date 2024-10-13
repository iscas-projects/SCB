(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3078 0)
(declare-sort var3944 0)
(declare-sort var3277 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var3944-init () var3944)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var3277) String)
(declare-fun cast-from-ClassObject-to-var3277 (ClassObject) var3277)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3944 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3078 var3078)
(declare-const var2129 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2129 null-ClassObject)))
(define-const var1632 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var160 var3078) ; Statement: $r27 := @caughtexception 
(assert (not (= var160 null-var3078)))
(define-const var580 var3944 var3944-init) ; Statement: $r28 = new java.lang.RuntimeException 
(define-const var2980 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2980)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2980!1 String)
(assert (= var2980!1 ""))
(assert true)
(define-const var1617 String (append/-1031950772 var2980!1 (cast-from-ClassObject-to-var3277 var2129))) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2980!2 String)
(assert (str.prefixof var2980!1 var2980!2))
(assert true)
(define-const var1849 String (append/672562846 var1617 " is not a concrete class")) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a concrete class") 
(declare-const var1617!1 String)
(assert (= var1617!1 (str.++ var1617 " is not a concrete class")))
(assert true)
(define-const var410 String (toString/-2075883882 var1849)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var580 var410)) ; Statement: specialinvoke $r28.<java.lang.RuntimeException: void <init>(java.lang.String)>($r32) 

(declare-const var580!1 var3944)
(declare-const var410!1 String)
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var3944-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3277=([java.lang.Class], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2129=r0, var1632=$r1, var3078=java.lang.InstantiationException, var160=$r27, var3944=java.lang.RuntimeException, var580=$r28, var2980=$r29, var3277=java.lang.Object, var1617=$r30, var1849=$r31, var410=$r32}
; {r0=var2129, $r1=var1632, java.lang.InstantiationException=var3078, $r27=var160, java.lang.RuntimeException=var3944, $r28=var580, $r29=var2980, java.lang.Object=var3277, $r30=var1617, $r31=var1849, $r32=var410}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = newarray (java.lang.Class)[0];	$r27 := @caughtexception;	$r28 = new java.lang.RuntimeException;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a concrete class");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r28.<java.lang.RuntimeException: void <init>(java.lang.String)>($r32);	throw $r28
;block_num 2