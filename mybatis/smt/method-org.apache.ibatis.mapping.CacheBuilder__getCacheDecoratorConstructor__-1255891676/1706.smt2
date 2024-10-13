(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var973 0)
(declare-sort var2842 0)
(declare-sort var3761 0)
(declare-sort var3304 0)
(declare-sort var437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var3761-init () var3761)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3304) String)
(declare-fun cast-from-ClassObject-to-var3304 (ClassObject) var3304)
(declare-fun cast-from-var2842-to-var3304 (var2842) var3304)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1290385087 (var3761 String var437) void)
(declare-fun cast-from-var2842-to-var437 (var2842) var437)
(declare-const null-var973 var973)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2842 var2842)
(declare-const var2170 var973) ; Statement: r11 := @this: org.apache.ibatis.mapping.CacheBuilder 
(assert (not (= var2170 null-var973)))
(declare-const var1310 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1310 null-ClassObject)))
(define-const var2001 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[1] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2325 var2842) ; Statement: $r3 := @caughtexception 
(assert (not (= var2325 null-var2842)))
(define-const var277 var3761 var3761-init) ; Statement: $r4 = new org.apache.ibatis.cache.CacheException 
(define-const var3871 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3871)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3871!1 String)
(assert (= var3871!1 ""))
(assert true)
(define-const var2146 String (append/672562846 var3871!1 "Invalid cache decorator (")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid cache decorator (") 
(declare-const var3871!2 String)
(assert (= var3871!2 (str.++ var3871!1 "Invalid cache decorator (")))
(assert true)
(define-const var2056 String (append/-1031950772 var2146 (cast-from-ClassObject-to-var3304 var1310))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2146!1 String)
(assert (str.prefixof var2146 var2146!1))
(assert true)
(define-const var2364 String (append/672562846 var2056 ").  Cache decorators must have a constructor that takes a Cache instance as a parameter.  Cause: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(").  Cache decorators must have a constructor that takes a Cache instance as a parameter.  Cause: ") 
(declare-const var2056!1 String)
(assert (= var2056!1 (str.++ var2056 ").  Cache decorators must have a constructor that takes a Cache instance as a parameter.  Cause: ")))
(assert true)
(define-const var3325 String (append/-1031950772 var2364 (cast-from-var2842-to-var3304 var2325))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var2364!1 String)
(assert (str.prefixof var2364 var2364!1))
(assert true)
(define-const var316 String (toString/-2075883882 var3325)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1290385087 var277 var316 (cast-from-var2842-to-var437 var2325))) ; Statement: specialinvoke $r4.<org.apache.ibatis.cache.CacheException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3) 

(declare-const var277!1 var3761)
(declare-const var316!1 String)
(declare-const var2325!1 var2842)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var3761-init=([], org.apache.ibatis.cache.CacheException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3304=([java.lang.Class], java.lang.Object), cast-from-var2842-to-var3304=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1290385087=([org.apache.ibatis.cache.CacheException, java.lang.String, java.lang.Throwable], void), cast-from-var2842-to-var437=([java.lang.Exception], java.lang.Throwable)}
; {var973=org.apache.ibatis.mapping.CacheBuilder, var2170=r11, var1310=r0, var2001=$r1, var2842=java.lang.Exception, var2325=$r3, var3761=org.apache.ibatis.cache.CacheException, var277=$r4, var3871=$r5, var2146=$r6, var3304=java.lang.Object, var2056=$r7, var2364=$r8, var3325=$r9, var316=$r10, var437=java.lang.Throwable}
; {org.apache.ibatis.mapping.CacheBuilder=var973, r11=var2170, r0=var1310, $r1=var2001, java.lang.Exception=var2842, $r3=var2325, org.apache.ibatis.cache.CacheException=var3761, $r4=var277, $r5=var3871, $r6=var2146, java.lang.Object=var3304, $r7=var2056, $r8=var2364, $r9=var3325, $r10=var316, java.lang.Throwable=var437}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.apache.ibatis.mapping.CacheBuilder;	r0 := @parameter0: java.lang.Class;	$r1 = newarray (java.lang.Class)[1];	$r3 := @caughtexception;	$r4 = new org.apache.ibatis.cache.CacheException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid cache decorator (");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(").  Cache decorators must have a constructor that takes a Cache instance as a parameter.  Cause: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<org.apache.ibatis.cache.CacheException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3);	throw $r4
;block_num 2