(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1827 0)
(declare-sort var2419 0)
(declare-sort var2985 0)
(declare-sort var3521 0)
(declare-sort var1262 0)
(declare-sort var1446 0)
(declare-sort var3420 0)
(declare-sort var1718 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-31181592 (var2985) void)
(declare-fun cast-from-var1827-to-var2985 (var1827) var2985)
(declare-fun var3521-init () var3521)
(declare-fun <init>/-1531019048 (var3521 var1827) void)
(declare-fun cast-from-var3521-to-var1262 (var3521) var1262)
(declare-fun DUMMY_BEAN_CONTAINER/1614797733 (var1827) var1262)
(declare-fun var2419_registerLifecycleListener/224947078 (var2419 var1446) void)
(declare-fun cast-from-var1827-to-var1446 (var1827) var1446)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1718) String)
(declare-fun cast-from-var2419-to-var1718 (var2419) var1718)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-var1718-init () (Array Int var1718))
(declare-fun debugf/766413606 (var3420 String (Array Int var1718)) void)
(declare-const null-var1827 var1827)
(declare-const null-var2419 var2419)
(declare-const var1827-log var3420)
(declare-const var1797 var1827) ; Statement: r0 := @this: org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl 
(assert (not (= var1797 null-var1827)))
(declare-const var3915 var2419) ; Statement: r2 := @parameter0: org.hibernate.resource.beans.container.spi.ExtendedBeanManager 
(assert (not (= var3915 null-var2419)))
(assert true)
;(assert (<init>/-31181592 (cast-from-var1827-to-var2985 var1797))) ; Statement: specialinvoke r0.<org.hibernate.resource.beans.container.spi.AbstractCdiBeanContainer: void <init>()>() 

(declare-const var1797!1 var1827)
(define-const var2615 var3521 var3521-init) ; Statement: $r1 = new org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl$1 
(assert true)
;(assert (<init>/-1531019048 var2615 var1797!1)) ; Statement: specialinvoke $r1.<org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl$1: void <init>(org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl)>(r0) 

(declare-const var2615!1 var3521)
(declare-const var1797!2 var1827)
(declare-const var1797!3 var1827)
(assert (not (= var1797!3 null-var1827)))
(assert (= (DUMMY_BEAN_CONTAINER/1614797733 var1797!3) (cast-from-var3521-to-var1262 var2615!1))) ; Statement: r0.<org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl: org.hibernate.resource.beans.container.internal.CdiBasedBeanContainer DUMMY_BEAN_CONTAINER> = $r1 
;(assert (var2419_registerLifecycleListener/224947078 var3915 (cast-from-var1827-to-var1446 var1797!3))) ; Statement: interfaceinvoke r2.<org.hibernate.resource.beans.container.spi.ExtendedBeanManager: void registerLifecycleListener(org.hibernate.resource.beans.container.spi.ExtendedBeanManager$LifecycleListener)>(r0) 

(declare-const var3915!1 var2419)
(declare-const var1797!4 var1827)
(define-const var3264 var3420 var1827-log) ; Statement: $r4 = <org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl: org.jboss.logging.Logger log> 
(define-const var1685 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1685)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1685!1 String)
(assert (= var1685!1 ""))
(assert true)
(define-const var1152 String (append/672562846 var1685!1 "Extended access requested to CDI BeanManager : ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Extended access requested to CDI BeanManager : ") 
(declare-const var1685!2 String)
(assert (= var1685!2 (str.++ var1685!1 "Extended access requested to CDI BeanManager : ")))
(assert true)
(define-const var3799 String (append/-1031950772 var1152 (cast-from-var2419-to-var1718 var3915!1))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1152!1 String)
(assert (str.prefixof var1152 var1152!1))
(assert true)
(define-const var911 String (toString/-2075883882 var3799)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3701 (Array Int var1718) arr-var1718-init) ; Statement: $r7 = newarray (java.lang.Object)[0] 
(assert true)
;(assert (debugf/766413606 var3264 var911 var3701)) ; Statement: virtualinvoke $r4.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object[])>($r8, $r7) 

(declare-const var3264!1 var3420)
(declare-const var911!1 String)
(declare-const var3701!1 (Array Int var1718))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-31181592=([org.hibernate.resource.beans.container.spi.AbstractCdiBeanContainer], void), cast-from-var1827-to-var2985=([org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl], org.hibernate.resource.beans.container.spi.AbstractCdiBeanContainer), var3521-init=([], org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl$1), <init>/-1531019048=([org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl$1, org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl], void), cast-from-var3521-to-var1262=([org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl$1], org.hibernate.resource.beans.container.internal.CdiBasedBeanContainer), DUMMY_BEAN_CONTAINER/1614797733=([org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl], org.hibernate.resource.beans.container.internal.CdiBasedBeanContainer), var2419_registerLifecycleListener/224947078=([org.hibernate.resource.beans.container.spi.ExtendedBeanManager, org.hibernate.resource.beans.container.spi.ExtendedBeanManager$LifecycleListener], void), cast-from-var1827-to-var1446=([org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl], org.hibernate.resource.beans.container.spi.ExtendedBeanManager$LifecycleListener), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2419-to-var1718=([org.hibernate.resource.beans.container.spi.ExtendedBeanManager], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-var1718-init=([], java.lang.Object[]), debugf/766413606=([org.jboss.logging.Logger, java.lang.String, java.lang.Object[]], void)}
; {var1827=org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl, var1797=r0, var2419=org.hibernate.resource.beans.container.spi.ExtendedBeanManager, var3915=r2, var2985=org.hibernate.resource.beans.container.spi.AbstractCdiBeanContainer, var3521=org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl$1, var2615=$r1, var1262=org.hibernate.resource.beans.container.internal.CdiBasedBeanContainer, var1446=org.hibernate.resource.beans.container.spi.ExtendedBeanManager$LifecycleListener, var3420=org.jboss.logging.Logger, var3264=$r4, var1685=$r3, var1152=$r5, var1718=java.lang.Object, var3799=$r6, var911=$r8, var3701=$r7}
; {org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl=var1827, r0=var1797, org.hibernate.resource.beans.container.spi.ExtendedBeanManager=var2419, r2=var3915, org.hibernate.resource.beans.container.spi.AbstractCdiBeanContainer=var2985, org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl$1=var3521, $r1=var2615, org.hibernate.resource.beans.container.internal.CdiBasedBeanContainer=var1262, org.hibernate.resource.beans.container.spi.ExtendedBeanManager$LifecycleListener=var1446, org.jboss.logging.Logger=var3420, $r4=var3264, $r3=var1685, $r5=var1152, java.lang.Object=var1718, $r6=var3799, $r8=var911, $r7=var3701}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl;	r2 := @parameter0: org.hibernate.resource.beans.container.spi.ExtendedBeanManager;	specialinvoke r0.<org.hibernate.resource.beans.container.spi.AbstractCdiBeanContainer: void <init>()>();	$r1 = new org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl$1;	specialinvoke $r1.<org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl$1: void <init>(org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl)>(r0);	r0.<org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl: org.hibernate.resource.beans.container.internal.CdiBasedBeanContainer DUMMY_BEAN_CONTAINER> = $r1;	interfaceinvoke r2.<org.hibernate.resource.beans.container.spi.ExtendedBeanManager: void registerLifecycleListener(org.hibernate.resource.beans.container.spi.ExtendedBeanManager$LifecycleListener)>(r0);	$r4 = <org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl: org.jboss.logging.Logger log>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Extended access requested to CDI BeanManager : ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = newarray (java.lang.Object)[0];	virtualinvoke $r4.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object[])>($r8, $r7);	return
;block_num 1