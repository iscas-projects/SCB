(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3201 0)
(declare-sort var3339 0)
(declare-sort var1134 0)
(declare-sort var1150 0)
(declare-sort var1329 0)
(declare-sort var417 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var1134) String)
(declare-fun var1329-init () var1329)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3339) String)
(declare-fun cast-from-var1134-to-var3339 (var1134) var3339)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var1329 String var417) void)
(declare-fun cast-from-var1150-to-var417 (var1150) var417)
(declare-fun cast-from-var1329-to-var417 (var1329) var417)
(declare-const null-var3201 var3201)
(declare-const null-var3339 var3339)
(declare-const null-var1134 var1134)
(declare-const null-__Array__Int__var3339__ (Array Int var3339))
(declare-const null-var1150 var1150)
(declare-const var2634 var3201) ; Statement: r3 := @this: org.hibernate.engine.jdbc.SerializableClobProxy 
(assert (not (= var2634 null-var3201)))
(declare-const var3587 var3339) ; Statement: r16 := @parameter0: java.lang.Object 
(assert (not (= var3587 null-var3339)))
(declare-const var3216 var1134) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3216 null-var1134)))
(declare-const var3188 (Array Int var3339)) ; Statement: r4 := @parameter2: java.lang.Object[] 
(assert (not (= var3188 null-__Array__Int__var3339__)))
(define-const var3758 String "getWrappedClob") ; Statement: $r2 = "getWrappedClob" 
(assert true)
(define-const var501 String (getName/1227988463 var3216)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3896 Bool (= var3758 var501)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r3.<org.hibernate.engine.jdbc.SerializableClobProxy: java.sql.Clob getWrappedClob()>() 
(assert (not (= (ite var3896 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var183 var1150) ; Statement: $r10 := @caughtexception 
(assert (not (= var183 null-var1150)))
(define-const var1160 var1329 var1329-init) ; Statement: $r18 = new org.hibernate.HibernateException 
(define-const var2972 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2972)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2972!1 String)
(assert (= var2972!1 ""))
(assert true)
(define-const var3026 String (append/672562846 var2972!1 "The JDBC driver does not implement the method: ")) ; Statement: $r13 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The JDBC driver does not implement the method: ") 
(declare-const var2972!2 String)
(assert (= var2972!2 (str.++ var2972!1 "The JDBC driver does not implement the method: ")))
(assert true)
(define-const var3570 String (append/-1031950772 var3026 (cast-from-var1134-to-var3339 var3216))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3026!1 String)
(assert (str.prefixof var3026 var3026!1))
(assert true)
(define-const var2950 String (toString/-2075883882 var3570)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var1160 var2950 (cast-from-var1150-to-var417 var183))) ; Statement: specialinvoke $r18.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r10) 

(declare-const var1160!1 var1329)
(declare-const var2950!1 String)
(declare-const var183!1 var1150)
(define-const var2623 var417 (cast-from-var1329-to-var417 var1160!1)) ; Statement: $r19 = (java.lang.Throwable) $r18 
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), var1329-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1134-to-var3339=([java.lang.reflect.Method], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var1150-to-var417=([java.lang.AbstractMethodError], java.lang.Throwable), cast-from-var1329-to-var417=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3201=org.hibernate.engine.jdbc.SerializableClobProxy, var2634=r3, var3339=java.lang.Object, var3587=r16, var1134=java.lang.reflect.Method, var3216=r0, var3188=r4, var3758=$r2, var501=$r1, var3896=$z0, var1150=java.lang.AbstractMethodError, var183=$r10, var1329=org.hibernate.HibernateException, var1160=$r18, var2972=$r17, var3026=$r13, var3570=$r14, var2950=$r15, var417=java.lang.Throwable, var2623=$r19}
; {org.hibernate.engine.jdbc.SerializableClobProxy=var3201, r3=var2634, java.lang.Object=var3339, r16=var3587, java.lang.reflect.Method=var1134, r0=var3216, r4=var3188, $r2=var3758, $r1=var501, $z0=var3896, java.lang.AbstractMethodError=var1150, $r10=var183, org.hibernate.HibernateException=var1329, $r18=var1160, $r17=var2972, $r13=var3026, $r14=var3570, $r15=var2950, java.lang.Throwable=var417, $r19=var2623}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.engine.jdbc.SerializableClobProxy;	r16 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r4 := @parameter2: java.lang.Object[];	$r2 = "getWrappedClob";	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r5 = virtualinvoke r3.<org.hibernate.engine.jdbc.SerializableClobProxy: java.sql.Clob getWrappedClob()>();	$r10 := @caughtexception;	$r18 = new org.hibernate.HibernateException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The JDBC driver does not implement the method: ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r10);	$r19 = (java.lang.Throwable) $r18;	throw $r19
;block_num 2