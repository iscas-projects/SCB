(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2280 0)
(declare-sort var622 0)
(declare-sort var2490 0)
(declare-sort var2879 0)
(declare-sort var3012 0)
(declare-sort var3741 0)
(declare-sort var2860 0)
(declare-sort var227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIdentifierSetterMethodName/-1993884815 (var2280) String)
(declare-fun var2879-init () var2879)
(declare-fun arr-var3741-init () (Array Int var3741))
(declare-fun getEntityName/108063703 (var2280) String)
(declare-fun cast-from-String-to-var3741 (String) var3741)
(declare-fun getId/1240708404 (var2280) var2860)
(declare-fun cast-from-var2860-to-var3741 (var2860) var3741)
(declare-fun getIdentifierSetterMethodClass/-494520917 (var2280) ClassObject)
(declare-fun cast-from-ClassObject-to-var3741 (ClassObject) var3741)
(declare-fun String_format/-647569892 (var3012 String (Array Int var3741)) String)
(declare-fun <init>/-790357943 (var2879 String) void)
(declare-fun cast-from-var2879-to-var227 (var2879) var227)
(declare-const null-var2280 var2280)
(declare-const null-String String)
(declare-const null-var2490 var2490)
(declare-const var3012-ENGLISH var3012)
(declare-const null-__Array__Int__var3741__ (Array Int var3741))
(declare-const var2127 var2280) ; Statement: r0 := @parameter0: org.hibernate.proxy.pojo.bytebuddy.SerializableProxy 
(assert (not (= var2127 null-var2280)))
(assert true)
(define-const var2327 String (getIdentifierSetterMethodName/-1993884815 var2127)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.String getIdentifierSetterMethodName()>() 
 ; Statement: if $r1 != null goto $r4 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.Class getIdentifierSetterMethodClass()>() 
(assert (not (not (= var2327 null-String)))) ; Negate: Cond: $r1 != null  
(declare-const var1744 var2490) ; Statement: $r6 := @caughtexception 
(assert (not (= var1744 null-var2490)))
(define-const var2445 var2879 var2879-init) ; Statement: $r15 = new org.hibernate.HibernateException 
(define-const var3276 var3012 var3012-ENGLISH) ; Statement: $r9 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var3635 (Array Int var3741) arr-var3741-init) ; Statement: $r8 = newarray (java.lang.Object)[4] 
(assert true)
(define-const var510 String (getEntityName/108063703 var2127)) ; Statement: $r10 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.String getEntityName()>() 
(declare-const var3635!1 (Array Int var3741))
(assert (not (= var3635!1 null-__Array__Int__var3741__)))
(assert (= (select var3635!1 0) (cast-from-String-to-var3741 var510))) ; Statement: $r8[0] = $r10 
(assert true)
(define-const var3197 var2860 (getId/1240708404 var2127)) ; Statement: $r11 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.io.Serializable getId()>() 
(declare-const var3635!2 (Array Int var3741))
(assert (not (= var3635!2 null-__Array__Int__var3741__)))
(assert (= (select var3635!2 1) (cast-from-var2860-to-var3741 var3197))) ; Statement: $r8[1] = $r11 
(assert true)
(define-const var1113 String (getIdentifierSetterMethodName/-1993884815 var2127)) ; Statement: $r12 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.String getIdentifierSetterMethodName()>() 
(declare-const var3635!3 (Array Int var3741))
(assert (not (= var3635!3 null-__Array__Int__var3741__)))
(assert (= (select var3635!3 2) (cast-from-String-to-var3741 var1113))) ; Statement: $r8[2] = $r12 
(assert true)
(define-const var3515 ClassObject (getIdentifierSetterMethodClass/-494520917 var2127)) ; Statement: $r13 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.Class getIdentifierSetterMethodClass()>() 
(declare-const var3635!4 (Array Int var3741))
(assert (not (= var3635!4 null-__Array__Int__var3741__)))
(assert (= (select var3635!4 3) (cast-from-ClassObject-to-var3741 var3515))) ; Statement: $r8[3] = $r13 
(define-const var2670 String (String_format/-647569892 var3276 "Unable to deserialize proxy [%s, %s]; could not locate id setter method [%s] on entity class [%s]" var3635!4)) ; Statement: $r14 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r9, "Unable to deserialize proxy [%s, %s]; could not locate id setter method [%s] on entity class [%s]", $r8) 
(assert true)
;(assert (<init>/-790357943 var2445 var2670)) ; Statement: specialinvoke $r15.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r14) 

(declare-const var2445!1 var2879)
(declare-const var2670!1 String)
(define-const var2681 var227 (cast-from-var2879-to-var227 var2445!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {getIdentifierSetterMethodName/-1993884815=([org.hibernate.proxy.pojo.bytebuddy.SerializableProxy], java.lang.String), var2879-init=([], org.hibernate.HibernateException), arr-var3741-init=([], java.lang.Object[]), getEntityName/108063703=([org.hibernate.proxy.pojo.bytebuddy.SerializableProxy], java.lang.String), cast-from-String-to-var3741=([java.lang.String], java.lang.Object), getId/1240708404=([org.hibernate.proxy.pojo.bytebuddy.SerializableProxy], java.io.Serializable), cast-from-var2860-to-var3741=([java.io.Serializable], java.lang.Object), getIdentifierSetterMethodClass/-494520917=([org.hibernate.proxy.pojo.bytebuddy.SerializableProxy], java.lang.Class), cast-from-ClassObject-to-var3741=([java.lang.Class], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var2879-to-var227=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2280=org.hibernate.proxy.pojo.bytebuddy.SerializableProxy, var2127=r0, var2327=$r1, var622=null_type, var2490=java.lang.NoSuchMethodException, var1744=$r6, var2879=org.hibernate.HibernateException, var2445=$r15, var3012=java.util.Locale, var3276=$r9, var3741=java.lang.Object, var3635=$r8, var510=$r10, var2860=java.io.Serializable, var3197=$r11, var1113=$r12, var3515=$r13, var2670=$r14, var227=java.lang.Throwable, var2681=$r16}
; {org.hibernate.proxy.pojo.bytebuddy.SerializableProxy=var2280, r0=var2127, $r1=var2327, null_type=var622, java.lang.NoSuchMethodException=var2490, $r6=var1744, org.hibernate.HibernateException=var2879, $r15=var2445, java.util.Locale=var3012, $r9=var3276, java.lang.Object=var3741, $r8=var3635, $r10=var510, java.io.Serializable=var2860, $r11=var3197, $r12=var1113, $r13=var3515, $r14=var2670, java.lang.Throwable=var227, $r16=var2681}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: org.hibernate.proxy.pojo.bytebuddy.SerializableProxy;	$r1 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.String getIdentifierSetterMethodName()>();	if $r1 != null goto $r4 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.Class getIdentifierSetterMethodClass()>();	$r6 := @caughtexception;	$r15 = new org.hibernate.HibernateException;	$r9 = <java.util.Locale: java.util.Locale ENGLISH>;	$r8 = newarray (java.lang.Object)[4];	$r10 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.String getEntityName()>();	$r8[0] = $r10;	$r11 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.io.Serializable getId()>();	$r8[1] = $r11;	$r12 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.String getIdentifierSetterMethodName()>();	$r8[2] = $r12;	$r13 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.Class getIdentifierSetterMethodClass()>();	$r8[3] = $r13;	$r14 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r9, "Unable to deserialize proxy [%s, %s]; could not locate id setter method [%s] on entity class [%s]", $r8);	specialinvoke $r15.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r14);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 2