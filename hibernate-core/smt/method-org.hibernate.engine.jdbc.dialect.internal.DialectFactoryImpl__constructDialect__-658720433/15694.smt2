(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2762 0)
(declare-sort var3955 0)
(declare-sort var2777 0)
(declare-sort var3766 0)
(declare-sort var554 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3766-init () var3766)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3955) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var3766 String var554) void)
(declare-fun cast-from-var2777-to-var554 (var2777) var554)
(declare-fun cast-from-var3766-to-var554 (var3766) var554)
(declare-const null-var2762 var2762)
(declare-const null-var3955 var3955)
(declare-const null-var2777 var2777)
(declare-const var1270 var2762) ; Statement: r0 := @this: org.hibernate.engine.jdbc.dialect.internal.DialectFactoryImpl 
(assert (not (= var1270 null-var2762)))
(declare-const var1868 var3955) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1868 null-var3955)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1549 var2777) ; Statement: $r11 := @caughtexception 
(assert (not (= var1549 null-var2777)))
(define-const var2117 var3766 var3766-init) ; Statement: $r21 = new org.hibernate.HibernateException 
(define-const var3830 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3830)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3830!1 String)
(assert (= var3830!1 ""))
(assert true)
(define-const var168 String (append/672562846 var3830!1 "Unable to construct requested dialect [")) ; Statement: $r14 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to construct requested dialect [") 
(declare-const var3830!2 String)
(assert (= var3830!2 (str.++ var3830!1 "Unable to construct requested dialect [")))
(assert true)
(define-const var147 String (append/-1031950772 var168 var1868)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var168!1 String)
(assert (str.prefixof var168 var168!1))
(assert true)
(define-const var2733 String (append/672562846 var147 "]")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var147!1 String)
(assert (= var147!1 (str.++ var147 "]")))
(assert true)
(define-const var3639 String (toString/-2075883882 var2733)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var2117 var3639 (cast-from-var2777-to-var554 var1549))) ; Statement: specialinvoke $r21.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r11) 

(declare-const var2117!1 var3766)
(declare-const var3639!1 String)
(declare-const var1549!1 var2777)
(define-const var1641 var554 (cast-from-var3766-to-var554 var2117!1)) ; Statement: $r23 = (java.lang.Throwable) $r21 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {var3766-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var2777-to-var554=([java.lang.Exception], java.lang.Throwable), cast-from-var3766-to-var554=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2762=org.hibernate.engine.jdbc.dialect.internal.DialectFactoryImpl, var1270=r0, var3955=java.lang.Object, var1868=r1, var2777=java.lang.Exception, var1549=$r11, var3766=org.hibernate.HibernateException, var2117=$r21, var3830=$r20, var168=$r14, var147=$r15, var2733=$r16, var3639=$r17, var554=java.lang.Throwable, var1641=$r23}
; {org.hibernate.engine.jdbc.dialect.internal.DialectFactoryImpl=var2762, r0=var1270, java.lang.Object=var3955, r1=var1868, java.lang.Exception=var2777, $r11=var1549, org.hibernate.HibernateException=var3766, $r21=var2117, $r20=var3830, $r14=var168, $r15=var147, $r16=var2733, $r17=var3639, java.lang.Throwable=var554, $r23=var1641}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.jdbc.dialect.internal.DialectFactoryImpl;	r1 := @parameter0: java.lang.Object;	$r11 := @caughtexception;	$r21 = new org.hibernate.HibernateException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to construct requested dialect [");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r11);	$r23 = (java.lang.Throwable) $r21;	throw $r23
;block_num 2