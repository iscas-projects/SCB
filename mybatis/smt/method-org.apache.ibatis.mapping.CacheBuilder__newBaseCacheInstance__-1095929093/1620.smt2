(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3813 0)
(declare-sort var1774 0)
(declare-sort var2501 0)
(declare-sort var274 0)
(declare-sort var2995 0)
(declare-sort var2193 0)
(declare-sort var1013 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBaseCacheConstructor/1125927912 (var3813 ClassObject) var2501)
(declare-fun arr-var274-init () (Array Int var274))
(declare-fun var2193-init () var2193)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var274) String)
(declare-fun cast-from-ClassObject-to-var274 (ClassObject) var274)
(declare-fun cast-from-var2995-to-var274 (var2995) var274)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1290385087 (var2193 String var1013) void)
(declare-fun cast-from-var2995-to-var1013 (var2995) var1013)
(declare-const null-var3813 var3813)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var2995 var2995)
(declare-const var3697 var3813) ; Statement: r0 := @this: org.apache.ibatis.mapping.CacheBuilder 
(assert (not (= var3697 null-var3813)))
(declare-const var844 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var844 null-ClassObject)))
(declare-const var746 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var746 null-String)))
(assert true)
(define-const var601 var2501 (getBaseCacheConstructor/1125927912 var3697 var844)) ; Statement: r2 = specialinvoke r0.<org.apache.ibatis.mapping.CacheBuilder: java.lang.reflect.Constructor getBaseCacheConstructor(java.lang.Class)>(r1) 
(define-const var2869 (Array Int var274) arr-var274-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var978 var2995) ; Statement: $r7 := @caughtexception 
(assert (not (= var978 null-var2995)))
(define-const var2743 var2193 var2193-init) ; Statement: $r8 = new org.apache.ibatis.cache.CacheException 
(define-const var928 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var928)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var928!1 String)
(assert (= var928!1 ""))
(assert true)
(define-const var703 String (append/672562846 var928!1 "Could not instantiate cache implementation (")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate cache implementation (") 
(declare-const var928!2 String)
(assert (= var928!2 (str.++ var928!1 "Could not instantiate cache implementation (")))
(assert true)
(define-const var3203 String (append/-1031950772 var703 (cast-from-ClassObject-to-var274 var844))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var703!1 String)
(assert (str.prefixof var703 var703!1))
(assert true)
(define-const var1862 String (append/672562846 var3203 "). Cause: ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("). Cause: ") 
(declare-const var3203!1 String)
(assert (= var3203!1 (str.++ var3203 "). Cause: ")))
(assert true)
(define-const var747 String (append/-1031950772 var1862 (cast-from-var2995-to-var274 var978))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var1862!1 String)
(assert (str.prefixof var1862 var1862!1))
(assert true)
(define-const var3692 String (toString/-2075883882 var747)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1290385087 var2743 var3692 (cast-from-var2995-to-var1013 var978))) ; Statement: specialinvoke $r8.<org.apache.ibatis.cache.CacheException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var2743!1 var2193)
(declare-const var3692!1 String)
(declare-const var978!1 var2995)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getBaseCacheConstructor/1125927912=([org.apache.ibatis.mapping.CacheBuilder, java.lang.Class], java.lang.reflect.Constructor), arr-var274-init=([], java.lang.Object[]), var2193-init=([], org.apache.ibatis.cache.CacheException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var274=([java.lang.Class], java.lang.Object), cast-from-var2995-to-var274=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1290385087=([org.apache.ibatis.cache.CacheException, java.lang.String, java.lang.Throwable], void), cast-from-var2995-to-var1013=([java.lang.Exception], java.lang.Throwable)}
; {var3813=org.apache.ibatis.mapping.CacheBuilder, var3697=r0, var844=r1, var746=r4, var1774=null_type, var2501=java.lang.reflect.Constructor, var601=r2, var274=java.lang.Object, var2869=$r3, var2995=java.lang.Exception, var978=$r7, var2193=org.apache.ibatis.cache.CacheException, var2743=$r8, var928=$r9, var703=$r10, var3203=$r11, var1862=$r12, var747=$r13, var3692=$r14, var1013=java.lang.Throwable}
; {org.apache.ibatis.mapping.CacheBuilder=var3813, r0=var3697, r1=var844, r4=var746, null_type=var1774, java.lang.reflect.Constructor=var2501, r2=var601, java.lang.Object=var274, $r3=var2869, java.lang.Exception=var2995, $r7=var978, org.apache.ibatis.cache.CacheException=var2193, $r8=var2743, $r9=var928, $r10=var703, $r11=var3203, $r12=var1862, $r13=var747, $r14=var3692, java.lang.Throwable=var1013}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.mapping.CacheBuilder;	r1 := @parameter0: java.lang.Class;	r4 := @parameter1: java.lang.String;	r2 = specialinvoke r0.<org.apache.ibatis.mapping.CacheBuilder: java.lang.reflect.Constructor getBaseCacheConstructor(java.lang.Class)>(r1);	$r3 = newarray (java.lang.Object)[1];	$r7 := @caughtexception;	$r8 = new org.apache.ibatis.cache.CacheException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate cache implementation (");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("). Cause: ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<org.apache.ibatis.cache.CacheException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2