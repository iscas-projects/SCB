(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2810 0)
(declare-sort var678 0)
(declare-sort var1591 0)
(declare-sort var2221 0)
(declare-sort var1774 0)
(declare-sort var183 0)
(declare-sort var2266 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1591-init () var1591)
(declare-fun var1774-init () var1774)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var183) String)
(declare-fun cast-from-var2221-to-var183 (var2221) var183)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1290385087 (var1774 String var2266) void)
(declare-fun cast-from-var2221-to-var2266 (var2221) var2266)
(declare-const null-var2810 var2810)
(declare-const null-var678 var678)
(declare-const null-var2221 var2221)
(declare-const var872 var2810) ; Statement: r13 := @this: org.apache.ibatis.cache.decorators.SerializedCache 
(assert (not (= var872 null-var2810)))
(declare-const var2547 var678) ; Statement: r2 := @parameter0: java.io.Serializable 
(assert (not (= var2547 null-var678)))
(define-const var2196 var1591 var1591-init) ; Statement: $r0 = new java.io.ByteArrayOutputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var992 var2221) ; Statement: $r3 := @caughtexception 
(assert (not (= var992 null-var2221)))
(define-const var2765 var1774 var1774-init) ; Statement: $r4 = new org.apache.ibatis.cache.CacheException 
(define-const var478 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var478)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var478!1 String)
(assert (= var478!1 ""))
(assert true)
(define-const var1945 String (append/672562846 var478!1 "Error serializing object.  Cause: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error serializing object.  Cause: ") 
(declare-const var478!2 String)
(assert (= var478!2 (str.++ var478!1 "Error serializing object.  Cause: ")))
(assert true)
(define-const var2027 String (append/-1031950772 var1945 (cast-from-var2221-to-var183 var992))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var1945!1 String)
(assert (str.prefixof var1945 var1945!1))
(assert true)
(define-const var3580 String (toString/-2075883882 var2027)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1290385087 var2765 var3580 (cast-from-var2221-to-var2266 var992))) ; Statement: specialinvoke $r4.<org.apache.ibatis.cache.CacheException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r3) 

(declare-const var2765!1 var1774)
(declare-const var3580!1 String)
(declare-const var992!1 var2221)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1591-init=([], java.io.ByteArrayOutputStream), var1774-init=([], org.apache.ibatis.cache.CacheException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2221-to-var183=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1290385087=([org.apache.ibatis.cache.CacheException, java.lang.String, java.lang.Throwable], void), cast-from-var2221-to-var2266=([java.lang.Exception], java.lang.Throwable)}
; {var2810=org.apache.ibatis.cache.decorators.SerializedCache, var872=r13, var678=java.io.Serializable, var2547=r2, var1591=java.io.ByteArrayOutputStream, var2196=$r0, var2221=java.lang.Exception, var992=$r3, var1774=org.apache.ibatis.cache.CacheException, var2765=$r4, var478=$r5, var1945=$r6, var183=java.lang.Object, var2027=$r7, var3580=$r8, var2266=java.lang.Throwable}
; {org.apache.ibatis.cache.decorators.SerializedCache=var2810, r13=var872, java.io.Serializable=var678, r2=var2547, java.io.ByteArrayOutputStream=var1591, $r0=var2196, java.lang.Exception=var2221, $r3=var992, org.apache.ibatis.cache.CacheException=var1774, $r4=var2765, $r5=var478, $r6=var1945, java.lang.Object=var183, $r7=var2027, $r8=var3580, java.lang.Throwable=var2266}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: org.apache.ibatis.cache.decorators.SerializedCache;	r2 := @parameter0: java.io.Serializable;	$r0 = new java.io.ByteArrayOutputStream;	$r3 := @caughtexception;	$r4 = new org.apache.ibatis.cache.CacheException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error serializing object.  Cause: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<org.apache.ibatis.cache.CacheException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r3);	throw $r4
;block_num 2