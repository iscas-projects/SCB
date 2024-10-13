(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2434 0)
(declare-sort var2245 0)
(declare-sort var3167 0)
(declare-sort var2814 0)
(declare-sort var2226 0)
(declare-sort var3018 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3167) String)
(declare-fun var2226-init () var2226)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2245) String)
(declare-fun cast-from-var3167-to-var2245 (var3167) var2245)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var2226 String var3018) void)
(declare-fun cast-from-var2814-to-var3018 (var2814) var3018)
(declare-fun cast-from-var2226-to-var3018 (var2226) var3018)
(declare-const null-var2434 var2434)
(declare-const null-var2245 var2245)
(declare-const null-var3167 var3167)
(declare-const null-__Array__Int__var2245__ (Array Int var2245))
(declare-const null-var2814 var2814)
(declare-const var972 var2434) ; Statement: r3 := @this: org.hibernate.engine.jdbc.SerializableBlobProxy 
(assert (not (= var972 null-var2434)))
(declare-const var3934 var2245) ; Statement: r16 := @parameter0: java.lang.Object 
(assert (not (= var3934 null-var2245)))
(declare-const var3344 var3167) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3344 null-var3167)))
(declare-const var3979 (Array Int var2245)) ; Statement: r4 := @parameter2: java.lang.Object[] 
(assert (not (= var3979 null-__Array__Int__var2245__)))
(define-const var1409 String "getWrappedBlob") ; Statement: $r2 = "getWrappedBlob" 
(assert true)
(define-const var1096 String (getName/1227988463 var3344)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var823 Bool (= var1409 var1096)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r3.<org.hibernate.engine.jdbc.SerializableBlobProxy: java.sql.Blob getWrappedBlob()>() 
(assert (not (= (ite var823 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var2798 var2814) ; Statement: $r10 := @caughtexception 
(assert (not (= var2798 null-var2814)))
(define-const var65 var2226 var2226-init) ; Statement: $r18 = new org.hibernate.HibernateException 
(define-const var2753 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2753)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2753!1 String)
(assert (= var2753!1 ""))
(assert true)
(define-const var3318 String (append/672562846 var2753!1 "The JDBC driver does not implement the method: ")) ; Statement: $r13 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The JDBC driver does not implement the method: ") 
(declare-const var2753!2 String)
(assert (= var2753!2 (str.++ var2753!1 "The JDBC driver does not implement the method: ")))
(assert true)
(define-const var495 String (append/-1031950772 var3318 (cast-from-var3167-to-var2245 var3344))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3318!1 String)
(assert (str.prefixof var3318 var3318!1))
(assert true)
(define-const var172 String (toString/-2075883882 var495)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var65 var172 (cast-from-var2814-to-var3018 var2798))) ; Statement: specialinvoke $r18.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r10) 

(declare-const var65!1 var2226)
(declare-const var172!1 String)
(declare-const var2798!1 var2814)
(define-const var2991 var3018 (cast-from-var2226-to-var3018 var65!1)) ; Statement: $r19 = (java.lang.Throwable) $r18 
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), var2226-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3167-to-var2245=([java.lang.reflect.Method], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var2814-to-var3018=([java.lang.AbstractMethodError], java.lang.Throwable), cast-from-var2226-to-var3018=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2434=org.hibernate.engine.jdbc.SerializableBlobProxy, var972=r3, var2245=java.lang.Object, var3934=r16, var3167=java.lang.reflect.Method, var3344=r0, var3979=r4, var1409=$r2, var1096=$r1, var823=$z0, var2814=java.lang.AbstractMethodError, var2798=$r10, var2226=org.hibernate.HibernateException, var65=$r18, var2753=$r17, var3318=$r13, var495=$r14, var172=$r15, var3018=java.lang.Throwable, var2991=$r19}
; {org.hibernate.engine.jdbc.SerializableBlobProxy=var2434, r3=var972, java.lang.Object=var2245, r16=var3934, java.lang.reflect.Method=var3167, r0=var3344, r4=var3979, $r2=var1409, $r1=var1096, $z0=var823, java.lang.AbstractMethodError=var2814, $r10=var2798, org.hibernate.HibernateException=var2226, $r18=var65, $r17=var2753, $r13=var3318, $r14=var495, $r15=var172, java.lang.Throwable=var3018, $r19=var2991}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.engine.jdbc.SerializableBlobProxy;	r16 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r4 := @parameter2: java.lang.Object[];	$r2 = "getWrappedBlob";	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r5 = virtualinvoke r3.<org.hibernate.engine.jdbc.SerializableBlobProxy: java.sql.Blob getWrappedBlob()>();	$r10 := @caughtexception;	$r18 = new org.hibernate.HibernateException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The JDBC driver does not implement the method: ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r10);	$r19 = (java.lang.Throwable) $r18;	throw $r19
;block_num 2