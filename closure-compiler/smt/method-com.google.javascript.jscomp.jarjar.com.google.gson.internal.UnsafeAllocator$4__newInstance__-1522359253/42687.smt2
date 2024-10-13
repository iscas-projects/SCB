(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var923 0)
(declare-sort var3378 0)
(declare-sort var123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3378-init () var3378)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var123) String)
(declare-fun cast-from-ClassObject-to-var123 (ClassObject) var123)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var3378 String) void)
(declare-const null-var923 var923)
(declare-const null-ClassObject ClassObject)
(declare-const var3671 var923) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.UnsafeAllocator$4 
(assert (not (= var3671 null-var923)))
(declare-const var1811 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var1811 null-ClassObject)))
(define-const var3171 var3378 var3378-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var252 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var252)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var252!1 String)
(assert (= var252!1 ""))
(assert true)
(define-const var3044 String (append/672562846 var252!1 "Cannot allocate ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot allocate ") 
(declare-const var252!2 String)
(assert (= var252!2 (str.++ var252!1 "Cannot allocate ")))
(assert true)
(define-const var2980 String (append/-1031950772 var3044 (cast-from-ClassObject-to-var123 var1811))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3044!1 String)
(assert (str.prefixof var3044 var3044!1))
(assert true)
(define-const var990 String (append/672562846 var2980 ". Usage of JDK sun.misc.Unsafe is enabled, but it could not be used. Make sure your runtime is configured correctly.")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Usage of JDK sun.misc.Unsafe is enabled, but it could not be used. Make sure your runtime is configured correctly.") 
(declare-const var2980!1 String)
(assert (= var2980!1 (str.++ var2980 ". Usage of JDK sun.misc.Unsafe is enabled, but it could not be used. Make sure your runtime is configured correctly.")))
(assert true)
(define-const var2159 String (toString/-2075883882 var990)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var3171 var2159)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r6) 

(declare-const var3171!1 var3378)
(declare-const var2159!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3378-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var123=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var923=com.google.javascript.jscomp.jarjar.com.google.gson.internal.UnsafeAllocator$4, var3671=r7, var1811=r2, var3378=java.lang.UnsupportedOperationException, var3171=$r0, var252=$r1, var3044=$r3, var123=java.lang.Object, var2980=$r4, var990=$r5, var2159=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.UnsafeAllocator$4=var923, r7=var3671, r2=var1811, java.lang.UnsupportedOperationException=var3378, $r0=var3171, $r1=var252, $r3=var3044, java.lang.Object=var123, $r4=var2980, $r5=var990, $r6=var2159}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.UnsafeAllocator$4;	r2 := @parameter0: java.lang.Class;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot allocate ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Usage of JDK sun.misc.Unsafe is enabled, but it could not be used. Make sure your runtime is configured correctly.");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1