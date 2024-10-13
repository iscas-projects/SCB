(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var317 0)
(declare-sort var733 0)
(declare-sort var3999 0)
(declare-sort var3711 0)
(declare-sort var3692 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var3999-init () var3999)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3711) String)
(declare-fun cast-from-ClassObject-to-var3711 (ClassObject) var3711)
(declare-fun cast-from-var733-to-var3711 (var733) var3711)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1290385087 (var3999 String var3692) void)
(declare-fun cast-from-var733-to-var3692 (var733) var3692)
(declare-const null-var317 var317)
(declare-const null-ClassObject ClassObject)
(declare-const null-var733 var733)
(declare-const var2425 var317) ; Statement: r11 := @this: org.apache.ibatis.mapping.CacheBuilder 
(assert (not (= var2425 null-var317)))
(declare-const var3044 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3044 null-ClassObject)))
(define-const var3607 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[1] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2165 var733) ; Statement: $r3 := @caughtexception 
(assert (not (= var2165 null-var733)))
(define-const var1629 var3999 var3999-init) ; Statement: $r4 = new org.apache.ibatis.cache.CacheException 
(define-const var1253 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1253)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1253!1 String)
(assert (= var1253!1 ""))
(assert true)
(define-const var1395 String (append/672562846 var1253!1 "Invalid base cache implementation (")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid base cache implementation (") 
(declare-const var1253!2 String)
(assert (= var1253!2 (str.++ var1253!1 "Invalid base cache implementation (")))
(assert true)
(define-const var3581 String (append/-1031950772 var1395 (cast-from-ClassObject-to-var3711 var3044))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1395!1 String)
(assert (str.prefixof var1395 var1395!1))
(assert true)
(define-const var2912 String (append/672562846 var3581 ").  Base cache implementations must have a constructor that takes a String id as a parameter.  Cause: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(").  Base cache implementations must have a constructor that takes a String id as a parameter.  Cause: ") 
(declare-const var3581!1 String)
(assert (= var3581!1 (str.++ var3581 ").  Base cache implementations must have a constructor that takes a String id as a parameter.  Cause: ")))
(assert true)
(define-const var939 String (append/-1031950772 var2912 (cast-from-var733-to-var3711 var2165))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var2912!1 String)
(assert (str.prefixof var2912 var2912!1))
(assert true)
(define-const var3298 String (toString/-2075883882 var939)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1290385087 var1629 var3298 (cast-from-var733-to-var3692 var2165))) ; Statement: specialinvoke $r4.<org.apache.ibatis.cache.CacheException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3) 

(declare-const var1629!1 var3999)
(declare-const var3298!1 String)
(declare-const var2165!1 var733)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var3999-init=([], org.apache.ibatis.cache.CacheException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3711=([java.lang.Class], java.lang.Object), cast-from-var733-to-var3711=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1290385087=([org.apache.ibatis.cache.CacheException, java.lang.String, java.lang.Throwable], void), cast-from-var733-to-var3692=([java.lang.Exception], java.lang.Throwable)}
; {var317=org.apache.ibatis.mapping.CacheBuilder, var2425=r11, var3044=r0, var3607=$r1, var733=java.lang.Exception, var2165=$r3, var3999=org.apache.ibatis.cache.CacheException, var1629=$r4, var1253=$r5, var1395=$r6, var3711=java.lang.Object, var3581=$r7, var2912=$r8, var939=$r9, var3298=$r10, var3692=java.lang.Throwable}
; {org.apache.ibatis.mapping.CacheBuilder=var317, r11=var2425, r0=var3044, $r1=var3607, java.lang.Exception=var733, $r3=var2165, org.apache.ibatis.cache.CacheException=var3999, $r4=var1629, $r5=var1253, $r6=var1395, java.lang.Object=var3711, $r7=var3581, $r8=var2912, $r9=var939, $r10=var3298, java.lang.Throwable=var3692}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.apache.ibatis.mapping.CacheBuilder;	r0 := @parameter0: java.lang.Class;	$r1 = newarray (java.lang.Class)[1];	$r3 := @caughtexception;	$r4 = new org.apache.ibatis.cache.CacheException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid base cache implementation (");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(").  Base cache implementations must have a constructor that takes a String id as a parameter.  Cause: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<org.apache.ibatis.cache.CacheException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3);	throw $r4
;block_num 2