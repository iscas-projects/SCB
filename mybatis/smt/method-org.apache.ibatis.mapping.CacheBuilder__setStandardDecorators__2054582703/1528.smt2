(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1863 0)
(declare-sort var1047 0)
(declare-sort var687 0)
(declare-sort var2278 0)
(declare-sort var1979 0)
(declare-sort var3131 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2278-init () var2278)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1979) String)
(declare-fun cast-from-var687-to-var1979 (var687) var1979)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1290385087 (var2278 String var3131) void)
(declare-fun cast-from-var687-to-var3131 (var687) var3131)
(declare-const null-var1863 var1863)
(declare-const null-var1047 var1047)
(declare-const null-var687 var687)
(declare-const var3038 var1863) ; Statement: r0 := @this: org.apache.ibatis.mapping.CacheBuilder 
(assert (not (= var3038 null-var1863)))
(declare-const var1887 var1047) ; Statement: r16 := @parameter0: org.apache.ibatis.cache.Cache 
(assert (not (= var1887 null-var1047)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3036 var687) ; Statement: $r10 := @caughtexception 
(assert (not (= var3036 null-var687)))
(define-const var1849 var2278 var2278-init) ; Statement: $r11 = new org.apache.ibatis.cache.CacheException 
(define-const var1611 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1611)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1611!1 String)
(assert (= var1611!1 ""))
(assert true)
(define-const var3093 String (append/672562846 var1611!1 "Error building standard cache decorators.  Cause: ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error building standard cache decorators.  Cause: ") 
(declare-const var1611!2 String)
(assert (= var1611!2 (str.++ var1611!1 "Error building standard cache decorators.  Cause: ")))
(assert true)
(define-const var1740 String (append/-1031950772 var3093 (cast-from-var687-to-var1979 var3036))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var3093!1 String)
(assert (str.prefixof var3093 var3093!1))
(assert true)
(define-const var2638 String (toString/-2075883882 var1740)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1290385087 var1849 var2638 (cast-from-var687-to-var3131 var3036))) ; Statement: specialinvoke $r11.<org.apache.ibatis.cache.CacheException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r10) 

(declare-const var1849!1 var2278)
(declare-const var2638!1 String)
(declare-const var3036!1 var687)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2278-init=([], org.apache.ibatis.cache.CacheException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var687-to-var1979=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1290385087=([org.apache.ibatis.cache.CacheException, java.lang.String, java.lang.Throwable], void), cast-from-var687-to-var3131=([java.lang.Exception], java.lang.Throwable)}
; {var1863=org.apache.ibatis.mapping.CacheBuilder, var3038=r0, var1047=org.apache.ibatis.cache.Cache, var1887=r16, var687=java.lang.Exception, var3036=$r10, var2278=org.apache.ibatis.cache.CacheException, var1849=$r11, var1611=$r12, var3093=$r13, var1979=java.lang.Object, var1740=$r14, var2638=$r15, var3131=java.lang.Throwable}
; {org.apache.ibatis.mapping.CacheBuilder=var1863, r0=var3038, org.apache.ibatis.cache.Cache=var1047, r16=var1887, java.lang.Exception=var687, $r10=var3036, org.apache.ibatis.cache.CacheException=var2278, $r11=var1849, $r12=var1611, $r13=var3093, java.lang.Object=var1979, $r14=var1740, $r15=var2638, java.lang.Throwable=var3131}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.mapping.CacheBuilder;	r16 := @parameter0: org.apache.ibatis.cache.Cache;	$r10 := @caughtexception;	$r11 = new org.apache.ibatis.cache.CacheException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error building standard cache decorators.  Cause: ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.apache.ibatis.cache.CacheException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r10);	throw $r11
;block_num 2