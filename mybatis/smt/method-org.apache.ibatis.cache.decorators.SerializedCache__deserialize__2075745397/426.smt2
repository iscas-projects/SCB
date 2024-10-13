(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var738 0)
(declare-sort var1572 0)
(declare-sort var2094 0)
(declare-sort var2918 0)
(declare-sort var2813 0)
(declare-sort var3567 0)
(declare-sort var2243 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1572_check/-1872445348 () void)
(declare-fun var2094-init () var2094)
(declare-fun var2813-init () var2813)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3567) String)
(declare-fun cast-from-var2918-to-var3567 (var2918) var3567)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1290385087 (var2813 String var2243) void)
(declare-fun cast-from-var2918-to-var2243 (var2918) var2243)
(declare-const null-var738 var738)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var2918 var2918)
(declare-const var2157 var738) ; Statement: r15 := @this: org.apache.ibatis.cache.decorators.SerializedCache 
(assert (not (= var2157 null-var738)))
(declare-const var3505 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var3505 null-__Array__Int__Int__)))
;(assert var1572_check/-1872445348) ; Statement: staticinvoke <org.apache.ibatis.io.SerialFilterChecker: void check()>() 
(define-const var1148 var2094 var2094-init) ; Statement: $r0 = new java.io.ByteArrayInputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2055 var2918) ; Statement: $r5 := @caughtexception 
(assert (not (= var2055 null-var2918)))
(define-const var1749 var2813 var2813-init) ; Statement: $r6 = new org.apache.ibatis.cache.CacheException 
(define-const var944 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var944)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var944!1 String)
(assert (= var944!1 ""))
(assert true)
(define-const var2939 String (append/672562846 var944!1 "Error deserializing object.  Cause: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error deserializing object.  Cause: ") 
(declare-const var944!2 String)
(assert (= var944!2 (str.++ var944!1 "Error deserializing object.  Cause: ")))
(assert true)
(define-const var3751 String (append/-1031950772 var2939 (cast-from-var2918-to-var3567 var2055))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2939!1 String)
(assert (str.prefixof var2939 var2939!1))
(assert true)
(define-const var2126 String (toString/-2075883882 var3751)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1290385087 var1749 var2126 (cast-from-var2918-to-var2243 var2055))) ; Statement: specialinvoke $r6.<org.apache.ibatis.cache.CacheException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r5) 

(declare-const var1749!1 var2813)
(declare-const var2126!1 String)
(declare-const var2055!1 var2918)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1572_check/-1872445348=([], void), var2094-init=([], java.io.ByteArrayInputStream), var2813-init=([], org.apache.ibatis.cache.CacheException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2918-to-var3567=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1290385087=([org.apache.ibatis.cache.CacheException, java.lang.String, java.lang.Throwable], void), cast-from-var2918-to-var2243=([java.lang.Exception], java.lang.Throwable)}
; {var738=org.apache.ibatis.cache.decorators.SerializedCache, var2157=r15, var3505=r1, var1572=org.apache.ibatis.io.SerialFilterChecker, var2094=java.io.ByteArrayInputStream, var1148=$r0, var2918=java.lang.Exception, var2055=$r5, var2813=org.apache.ibatis.cache.CacheException, var1749=$r6, var944=$r7, var2939=$r8, var3567=java.lang.Object, var3751=$r9, var2126=$r10, var2243=java.lang.Throwable}
; {org.apache.ibatis.cache.decorators.SerializedCache=var738, r15=var2157, r1=var3505, org.apache.ibatis.io.SerialFilterChecker=var1572, java.io.ByteArrayInputStream=var2094, $r0=var1148, java.lang.Exception=var2918, $r5=var2055, org.apache.ibatis.cache.CacheException=var2813, $r6=var1749, $r7=var944, $r8=var2939, java.lang.Object=var3567, $r9=var3751, $r10=var2126, java.lang.Throwable=var2243}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r15 := @this: org.apache.ibatis.cache.decorators.SerializedCache;	r1 := @parameter0: byte[];	staticinvoke <org.apache.ibatis.io.SerialFilterChecker: void check()>();	$r0 = new java.io.ByteArrayInputStream;	$r5 := @caughtexception;	$r6 = new org.apache.ibatis.cache.CacheException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error deserializing object.  Cause: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<org.apache.ibatis.cache.CacheException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r5);	throw $r6
;block_num 2