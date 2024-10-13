(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2036 0)
(declare-sort var975 0)
(declare-sort var1680 0)
(declare-sort var555 0)
(declare-sort var2978 0)
(declare-sort var937 0)
(declare-sort var150 0)
(declare-sort var2572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIdentifierGetterMethodName/-450156955 (var2036) String)
(declare-fun var555-init () var555)
(declare-fun arr-var937-init () (Array Int var937))
(declare-fun getEntityName/108063703 (var2036) String)
(declare-fun cast-from-String-to-var937 (String) var937)
(declare-fun getId/1240708404 (var2036) var150)
(declare-fun cast-from-var150-to-var937 (var150) var937)
(declare-fun getIdentifierGetterMethodClass/116402487 (var2036) ClassObject)
(declare-fun cast-from-ClassObject-to-var937 (ClassObject) var937)
(declare-fun String_format/-647569892 (var2978 String (Array Int var937)) String)
(declare-fun <init>/-790357943 (var555 String) void)
(declare-fun cast-from-var555-to-var2572 (var555) var2572)
(declare-const null-var2036 var2036)
(declare-const null-String String)
(declare-const null-var1680 var1680)
(declare-const var2978-ENGLISH var2978)
(declare-const null-__Array__Int__var937__ (Array Int var937))
(declare-const var3657 var2036) ; Statement: r0 := @parameter0: org.hibernate.proxy.pojo.bytebuddy.SerializableProxy 
(assert (not (= var3657 null-var2036)))
(assert true)
(define-const var1116 String (getIdentifierGetterMethodName/-450156955 var3657)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.String getIdentifierGetterMethodName()>() 
 ; Statement: if $r1 != null goto $r4 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.Class getIdentifierGetterMethodClass()>() 
(assert (not (not (= var1116 null-String)))) ; Negate: Cond: $r1 != null  
(declare-const var2876 var1680) ; Statement: $r6 := @caughtexception 
(assert (not (= var2876 null-var1680)))
(define-const var3891 var555 var555-init) ; Statement: $r15 = new org.hibernate.HibernateException 
(define-const var875 var2978 var2978-ENGLISH) ; Statement: $r9 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var274 (Array Int var937) arr-var937-init) ; Statement: $r8 = newarray (java.lang.Object)[4] 
(assert true)
(define-const var188 String (getEntityName/108063703 var3657)) ; Statement: $r10 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.String getEntityName()>() 
(declare-const var274!1 (Array Int var937))
(assert (not (= var274!1 null-__Array__Int__var937__)))
(assert (= (select var274!1 0) (cast-from-String-to-var937 var188))) ; Statement: $r8[0] = $r10 
(assert true)
(define-const var2135 var150 (getId/1240708404 var3657)) ; Statement: $r11 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.io.Serializable getId()>() 
(declare-const var274!2 (Array Int var937))
(assert (not (= var274!2 null-__Array__Int__var937__)))
(assert (= (select var274!2 1) (cast-from-var150-to-var937 var2135))) ; Statement: $r8[1] = $r11 
(assert true)
(define-const var3944 String (getIdentifierGetterMethodName/-450156955 var3657)) ; Statement: $r12 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.String getIdentifierGetterMethodName()>() 
(declare-const var274!3 (Array Int var937))
(assert (not (= var274!3 null-__Array__Int__var937__)))
(assert (= (select var274!3 2) (cast-from-String-to-var937 var3944))) ; Statement: $r8[2] = $r12 
(assert true)
(define-const var3894 ClassObject (getIdentifierGetterMethodClass/116402487 var3657)) ; Statement: $r13 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.Class getIdentifierGetterMethodClass()>() 
(declare-const var274!4 (Array Int var937))
(assert (not (= var274!4 null-__Array__Int__var937__)))
(assert (= (select var274!4 3) (cast-from-ClassObject-to-var937 var3894))) ; Statement: $r8[3] = $r13 
(define-const var1493 String (String_format/-647569892 var875 "Unable to deserialize proxy [%s, %s]; could not locate id getter method [%s] on entity class [%s]" var274!4)) ; Statement: $r14 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r9, "Unable to deserialize proxy [%s, %s]; could not locate id getter method [%s] on entity class [%s]", $r8) 
(assert true)
;(assert (<init>/-790357943 var3891 var1493)) ; Statement: specialinvoke $r15.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r14) 

(declare-const var3891!1 var555)
(declare-const var1493!1 String)
(define-const var786 var2572 (cast-from-var555-to-var2572 var3891!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {getIdentifierGetterMethodName/-450156955=([org.hibernate.proxy.pojo.bytebuddy.SerializableProxy], java.lang.String), var555-init=([], org.hibernate.HibernateException), arr-var937-init=([], java.lang.Object[]), getEntityName/108063703=([org.hibernate.proxy.pojo.bytebuddy.SerializableProxy], java.lang.String), cast-from-String-to-var937=([java.lang.String], java.lang.Object), getId/1240708404=([org.hibernate.proxy.pojo.bytebuddy.SerializableProxy], java.io.Serializable), cast-from-var150-to-var937=([java.io.Serializable], java.lang.Object), getIdentifierGetterMethodClass/116402487=([org.hibernate.proxy.pojo.bytebuddy.SerializableProxy], java.lang.Class), cast-from-ClassObject-to-var937=([java.lang.Class], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var555-to-var2572=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2036=org.hibernate.proxy.pojo.bytebuddy.SerializableProxy, var3657=r0, var1116=$r1, var975=null_type, var1680=java.lang.NoSuchMethodException, var2876=$r6, var555=org.hibernate.HibernateException, var3891=$r15, var2978=java.util.Locale, var875=$r9, var937=java.lang.Object, var274=$r8, var188=$r10, var150=java.io.Serializable, var2135=$r11, var3944=$r12, var3894=$r13, var1493=$r14, var2572=java.lang.Throwable, var786=$r16}
; {org.hibernate.proxy.pojo.bytebuddy.SerializableProxy=var2036, r0=var3657, $r1=var1116, null_type=var975, java.lang.NoSuchMethodException=var1680, $r6=var2876, org.hibernate.HibernateException=var555, $r15=var3891, java.util.Locale=var2978, $r9=var875, java.lang.Object=var937, $r8=var274, $r10=var188, java.io.Serializable=var150, $r11=var2135, $r12=var3944, $r13=var3894, $r14=var1493, java.lang.Throwable=var2572, $r16=var786}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: org.hibernate.proxy.pojo.bytebuddy.SerializableProxy;	$r1 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.String getIdentifierGetterMethodName()>();	if $r1 != null goto $r4 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.Class getIdentifierGetterMethodClass()>();	$r6 := @caughtexception;	$r15 = new org.hibernate.HibernateException;	$r9 = <java.util.Locale: java.util.Locale ENGLISH>;	$r8 = newarray (java.lang.Object)[4];	$r10 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.String getEntityName()>();	$r8[0] = $r10;	$r11 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.io.Serializable getId()>();	$r8[1] = $r11;	$r12 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.String getIdentifierGetterMethodName()>();	$r8[2] = $r12;	$r13 = virtualinvoke r0.<org.hibernate.proxy.pojo.bytebuddy.SerializableProxy: java.lang.Class getIdentifierGetterMethodClass()>();	$r8[3] = $r13;	$r14 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r9, "Unable to deserialize proxy [%s, %s]; could not locate id getter method [%s] on entity class [%s]", $r8);	specialinvoke $r15.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r14);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 2