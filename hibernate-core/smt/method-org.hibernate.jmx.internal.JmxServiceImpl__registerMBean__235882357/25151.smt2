(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2079 0)
(declare-sort var2376 0)
(declare-sort var2548 0)
(declare-sort var3015 0)
(declare-sort var684 0)
(declare-sort var3401 0)
(declare-sort var702 0)
(declare-sort var449 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var2548) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var3015_deprecatedJmxBeanRegistration/71115730 (var3015 String) void)
(declare-fun findServer/-1550654582 (var2079) var684)
(declare-fun var702-init () var702)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2548) String)
(declare-fun cast-from-var2376-to-var2548 (var2376) var2548)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var702 String var449) void)
(declare-fun cast-from-var3401-to-var449 (var3401) var449)
(declare-fun cast-from-var702-to-var449 (var702) var449)
(declare-const null-var2079 var2079)
(declare-const null-var2376 var2376)
(declare-const null-var2548 var2548)
(declare-const var3015-DEPRECATION_LOGGER var3015)
(declare-const null-var684 var684)
(declare-const null-var3401 var3401)
(declare-const var3156 var2079) ; Statement: r4 := @this: org.hibernate.jmx.internal.JmxServiceImpl 
(assert (not (= var3156 null-var2079)))
(declare-const var579 var2376) ; Statement: r5 := @parameter0: javax.management.ObjectName 
(assert (not (= var579 null-var2376)))
(declare-const var1145 var2548) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1145 null-var2548)))
(define-const var2198 var3015 var3015-DEPRECATION_LOGGER) ; Statement: $r1 = <org.hibernate.internal.log.DeprecationLogger: org.hibernate.internal.log.DeprecationLogger DEPRECATION_LOGGER> 
(assert true)
(define-const var1723 ClassObject (getClass/1258963082 var1145)) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1974 String (getName/-1958580599 var1723)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
;(assert (var3015_deprecatedJmxBeanRegistration/71115730 var2198 var1974)) ; Statement: interfaceinvoke $r1.<org.hibernate.internal.log.DeprecationLogger: void deprecatedJmxBeanRegistration(java.lang.String)>($r3) 

(declare-const var2198!1 var3015)
(declare-const var1974!1 String)
(assert true)
(define-const var1009 var684 (findServer/-1550654582 var3156)) ; Statement: r17 = specialinvoke r4.<org.hibernate.jmx.internal.JmxServiceImpl: javax.management.MBeanServer findServer()>() 
 ; Statement: if r17 != null goto interfaceinvoke r17.<javax.management.MBeanServer: javax.management.ObjectInstance registerMBean(java.lang.Object,javax.management.ObjectName)>(r0, r5) 
(assert (not (not (= var1009 null-var684)))) ; Negate: Cond: r17 != null  
(declare-const var966 var3401) ; Statement: $r10 := @caughtexception 
(assert (not (= var966 null-var3401)))
(define-const var1380 var702 var702-init) ; Statement: $r21 = new org.hibernate.HibernateException 
(define-const var1107 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1107)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1107!1 String)
(assert (= var1107!1 ""))
(assert true)
(define-const var1576 String (append/672562846 var1107!1 "Unable to register MBean [ON=")) ; Statement: $r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to register MBean [ON=") 
(declare-const var1107!2 String)
(assert (= var1107!2 (str.++ var1107!1 "Unable to register MBean [ON=")))
(assert true)
(define-const var1172 String (append/-1031950772 var1576 (cast-from-var2376-to-var2548 var579))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var1576!1 String)
(assert (str.prefixof var1576 var1576!1))
(assert true)
(define-const var2895 String (append/672562846 var1172 "]")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1172!1 String)
(assert (= var1172!1 (str.++ var1172 "]")))
(assert true)
(define-const var166 String (toString/-2075883882 var2895)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var1380 var166 (cast-from-var3401-to-var449 var966))) ; Statement: specialinvoke $r21.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r10) 

(declare-const var1380!1 var702)
(declare-const var166!1 String)
(declare-const var966!1 var3401)
(define-const var3774 var449 (cast-from-var702-to-var449 var1380!1)) ; Statement: $r23 = (java.lang.Throwable) $r21 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), var3015_deprecatedJmxBeanRegistration/71115730=([org.hibernate.internal.log.DeprecationLogger, java.lang.String], void), findServer/-1550654582=([org.hibernate.jmx.internal.JmxServiceImpl], javax.management.MBeanServer), var702-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2376-to-var2548=([javax.management.ObjectName], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var3401-to-var449=([java.lang.Exception], java.lang.Throwable), cast-from-var702-to-var449=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2079=org.hibernate.jmx.internal.JmxServiceImpl, var3156=r4, var2376=javax.management.ObjectName, var579=r5, var2548=java.lang.Object, var1145=r0, var3015=org.hibernate.internal.log.DeprecationLogger, var2198=$r1, var1723=$r2, var1974=$r3, var684=javax.management.MBeanServer, var1009=r17, var3401=java.lang.Exception, var966=$r10, var702=org.hibernate.HibernateException, var1380=$r21, var1107=$r20, var1576=$r13, var1172=$r14, var2895=$r15, var166=$r16, var449=java.lang.Throwable, var3774=$r23}
; {org.hibernate.jmx.internal.JmxServiceImpl=var2079, r4=var3156, javax.management.ObjectName=var2376, r5=var579, java.lang.Object=var2548, r0=var1145, org.hibernate.internal.log.DeprecationLogger=var3015, $r1=var2198, $r2=var1723, $r3=var1974, javax.management.MBeanServer=var684, r17=var1009, java.lang.Exception=var3401, $r10=var966, org.hibernate.HibernateException=var702, $r21=var1380, $r20=var1107, $r13=var1576, $r14=var1172, $r15=var2895, $r16=var166, java.lang.Throwable=var449, $r23=var3774}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.jmx.internal.JmxServiceImpl;	r5 := @parameter0: javax.management.ObjectName;	r0 := @parameter1: java.lang.Object;	$r1 = <org.hibernate.internal.log.DeprecationLogger: org.hibernate.internal.log.DeprecationLogger DEPRECATION_LOGGER>;	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	interfaceinvoke $r1.<org.hibernate.internal.log.DeprecationLogger: void deprecatedJmxBeanRegistration(java.lang.String)>($r3);	r17 = specialinvoke r4.<org.hibernate.jmx.internal.JmxServiceImpl: javax.management.MBeanServer findServer()>();	if r17 != null goto interfaceinvoke r17.<javax.management.MBeanServer: javax.management.ObjectInstance registerMBean(java.lang.Object,javax.management.ObjectName)>(r0, r5);	$r10 := @caughtexception;	$r21 = new org.hibernate.HibernateException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to register MBean [ON=");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r10);	$r23 = (java.lang.Throwable) $r21;	throw $r23
;block_num 2