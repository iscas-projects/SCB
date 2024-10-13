(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var981 0)
(declare-sort var3357 0)
(declare-sort var109 0)
(declare-sort var3319 0)
(declare-sort var3800 0)
(declare-sort var2414 0)
(declare-sort var3335 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCacheDecoratorConstructor/-1255891676 (var981 ClassObject) var109)
(declare-fun arr-var3319-init () (Array Int var3319))
(declare-fun var2414-init () var2414)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3319) String)
(declare-fun cast-from-ClassObject-to-var3319 (ClassObject) var3319)
(declare-fun cast-from-var3800-to-var3319 (var3800) var3319)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1290385087 (var2414 String var3335) void)
(declare-fun cast-from-var3800-to-var3335 (var3800) var3335)
(declare-const null-var981 var981)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3357 var3357)
(declare-const null-var3800 var3800)
(declare-const var1690 var981) ; Statement: r0 := @this: org.apache.ibatis.mapping.CacheBuilder 
(assert (not (= var1690 null-var981)))
(declare-const var461 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var461 null-ClassObject)))
(declare-const var2050 var3357) ; Statement: r4 := @parameter1: org.apache.ibatis.cache.Cache 
(assert (not (= var2050 null-var3357)))
(assert true)
(define-const var593 var109 (getCacheDecoratorConstructor/-1255891676 var1690 var461)) ; Statement: r2 = specialinvoke r0.<org.apache.ibatis.mapping.CacheBuilder: java.lang.reflect.Constructor getCacheDecoratorConstructor(java.lang.Class)>(r1) 
(define-const var2441 (Array Int var3319) arr-var3319-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var363 var3800) ; Statement: $r7 := @caughtexception 
(assert (not (= var363 null-var3800)))
(define-const var2043 var2414 var2414-init) ; Statement: $r8 = new org.apache.ibatis.cache.CacheException 
(define-const var2779 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2779)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2779!1 String)
(assert (= var2779!1 ""))
(assert true)
(define-const var58 String (append/672562846 var2779!1 "Could not instantiate cache decorator (")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate cache decorator (") 
(declare-const var2779!2 String)
(assert (= var2779!2 (str.++ var2779!1 "Could not instantiate cache decorator (")))
(assert true)
(define-const var2353 String (append/-1031950772 var58 (cast-from-ClassObject-to-var3319 var461))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var58!1 String)
(assert (str.prefixof var58 var58!1))
(assert true)
(define-const var1104 String (append/672562846 var2353 "). Cause: ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("). Cause: ") 
(declare-const var2353!1 String)
(assert (= var2353!1 (str.++ var2353 "). Cause: ")))
(assert true)
(define-const var1357 String (append/-1031950772 var1104 (cast-from-var3800-to-var3319 var363))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var1104!1 String)
(assert (str.prefixof var1104 var1104!1))
(assert true)
(define-const var2214 String (toString/-2075883882 var1357)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1290385087 var2043 var2214 (cast-from-var3800-to-var3335 var363))) ; Statement: specialinvoke $r8.<org.apache.ibatis.cache.CacheException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var2043!1 var2414)
(declare-const var2214!1 String)
(declare-const var363!1 var3800)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getCacheDecoratorConstructor/-1255891676=([org.apache.ibatis.mapping.CacheBuilder, java.lang.Class], java.lang.reflect.Constructor), arr-var3319-init=([], java.lang.Object[]), var2414-init=([], org.apache.ibatis.cache.CacheException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3319=([java.lang.Class], java.lang.Object), cast-from-var3800-to-var3319=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1290385087=([org.apache.ibatis.cache.CacheException, java.lang.String, java.lang.Throwable], void), cast-from-var3800-to-var3335=([java.lang.Exception], java.lang.Throwable)}
; {var981=org.apache.ibatis.mapping.CacheBuilder, var1690=r0, var461=r1, var3357=org.apache.ibatis.cache.Cache, var2050=r4, var109=java.lang.reflect.Constructor, var593=r2, var3319=java.lang.Object, var2441=$r3, var3800=java.lang.Exception, var363=$r7, var2414=org.apache.ibatis.cache.CacheException, var2043=$r8, var2779=$r9, var58=$r10, var2353=$r11, var1104=$r12, var1357=$r13, var2214=$r14, var3335=java.lang.Throwable}
; {org.apache.ibatis.mapping.CacheBuilder=var981, r0=var1690, r1=var461, org.apache.ibatis.cache.Cache=var3357, r4=var2050, java.lang.reflect.Constructor=var109, r2=var593, java.lang.Object=var3319, $r3=var2441, java.lang.Exception=var3800, $r7=var363, org.apache.ibatis.cache.CacheException=var2414, $r8=var2043, $r9=var2779, $r10=var58, $r11=var2353, $r12=var1104, $r13=var1357, $r14=var2214, java.lang.Throwable=var3335}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.mapping.CacheBuilder;	r1 := @parameter0: java.lang.Class;	r4 := @parameter1: org.apache.ibatis.cache.Cache;	r2 = specialinvoke r0.<org.apache.ibatis.mapping.CacheBuilder: java.lang.reflect.Constructor getCacheDecoratorConstructor(java.lang.Class)>(r1);	$r3 = newarray (java.lang.Object)[1];	$r7 := @caughtexception;	$r8 = new org.apache.ibatis.cache.CacheException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate cache decorator (");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("). Cause: ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<org.apache.ibatis.cache.CacheException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2