(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1286 0)
(declare-sort var2236 0)
(declare-sort var1770 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2236-init () var2236)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1770) String)
(declare-fun cast-from-ClassObject-to-var1770 (ClassObject) var1770)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var2236 String) void)
(declare-const null-var1286 var1286)
(declare-const null-ClassObject ClassObject)
(declare-const var1999 var1286) ; Statement: r7 := @this: com.google.gson.internal.UnsafeAllocator$4 
(assert (not (= var1999 null-var1286)))
(declare-const var3240 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var3240 null-ClassObject)))
(define-const var3072 var2236 var2236-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var2871 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2871)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2871!1 String)
(assert (= var2871!1 ""))
(assert true)
(define-const var612 String (append/672562846 var2871!1 "Cannot allocate ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot allocate ") 
(declare-const var2871!2 String)
(assert (= var2871!2 (str.++ var2871!1 "Cannot allocate ")))
(assert true)
(define-const var1721 String (append/-1031950772 var612 (cast-from-ClassObject-to-var1770 var3240))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var612!1 String)
(assert (str.prefixof var612 var612!1))
(assert true)
(define-const var1005 String (append/672562846 var1721 ". Usage of JDK sun.misc.Unsafe is enabled, but it could not be used. Make sure your runtime is configured correctly.")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Usage of JDK sun.misc.Unsafe is enabled, but it could not be used. Make sure your runtime is configured correctly.") 
(declare-const var1721!1 String)
(assert (= var1721!1 (str.++ var1721 ". Usage of JDK sun.misc.Unsafe is enabled, but it could not be used. Make sure your runtime is configured correctly.")))
(assert true)
(define-const var1758 String (toString/-2075883882 var1005)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var3072 var1758)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r6) 

(declare-const var3072!1 var2236)
(declare-const var1758!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2236-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1770=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var1286=com.google.gson.internal.UnsafeAllocator$4, var1999=r7, var3240=r2, var2236=java.lang.UnsupportedOperationException, var3072=$r0, var2871=$r1, var612=$r3, var1770=java.lang.Object, var1721=$r4, var1005=$r5, var1758=$r6}
; {com.google.gson.internal.UnsafeAllocator$4=var1286, r7=var1999, r2=var3240, java.lang.UnsupportedOperationException=var2236, $r0=var3072, $r1=var2871, $r3=var612, java.lang.Object=var1770, $r4=var1721, $r5=var1005, $r6=var1758}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.google.gson.internal.UnsafeAllocator$4;	r2 := @parameter0: java.lang.Class;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot allocate ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Usage of JDK sun.misc.Unsafe is enabled, but it could not be used. Make sure your runtime is configured correctly.");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1