(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3380 0)
(declare-sort var3353 0)
(declare-sort var3321 0)
(declare-sort var3540 0)
(declare-sort var2711 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-31181592 (var3321) void)
(declare-fun cast-from-var3380-to-var3321 (var3380) var3321)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2711) String)
(declare-fun cast-from-var3353-to-var2711 (var3353) var2711)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-var2711-init () (Array Int var2711))
(declare-fun debugf/766413606 (var3540 String (Array Int var2711)) void)
(declare-fun beanManager/-1415948979 (var3380) var3353)
(declare-const null-var3380 var3380)
(declare-const null-var3353 var3353)
(declare-const var3380-log var3540)
(declare-const var891 var3380) ; Statement: r0 := @this: org.hibernate.resource.beans.container.internal.CdiBeanContainerImmediateAccessImpl 
(assert (not (= var891 null-var3380)))
(declare-const var272 var3353) ; Statement: r3 := @parameter0: javax.enterprise.inject.spi.BeanManager 
(assert (not (= var272 null-var3353)))
(assert true)
;(assert (<init>/-31181592 (cast-from-var3380-to-var3321 var891))) ; Statement: specialinvoke r0.<org.hibernate.resource.beans.container.spi.AbstractCdiBeanContainer: void <init>()>() 

(declare-const var891!1 var3380)
(define-const var3419 var3540 var3380-log) ; Statement: $r2 = <org.hibernate.resource.beans.container.internal.CdiBeanContainerImmediateAccessImpl: org.jboss.logging.Logger log> 
(define-const var1389 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1389)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1389!1 String)
(assert (= var1389!1 ""))
(assert true)
(define-const var1234 String (append/672562846 var1389!1 "Standard access requested to CDI BeanManager : ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Standard access requested to CDI BeanManager : ") 
(declare-const var1389!2 String)
(assert (= var1389!2 (str.++ var1389!1 "Standard access requested to CDI BeanManager : ")))
(assert true)
(define-const var2608 String (append/-1031950772 var1234 (cast-from-var3353-to-var2711 var272))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var1234!1 String)
(assert (str.prefixof var1234 var1234!1))
(assert true)
(define-const var2353 String (toString/-2075883882 var2608)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2798 (Array Int var2711) arr-var2711-init) ; Statement: $r6 = newarray (java.lang.Object)[0] 
(assert true)
;(assert (debugf/766413606 var3419 var2353 var2798)) ; Statement: virtualinvoke $r2.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object[])>($r7, $r6) 

(declare-const var3419!1 var3540)
(declare-const var2353!1 String)
(declare-const var2798!1 (Array Int var2711))
(declare-const var891!2 var3380)
(assert (not (= var891!2 null-var3380)))
(assert (= (beanManager/-1415948979 var891!2) var272)) ; Statement: r0.<org.hibernate.resource.beans.container.internal.CdiBeanContainerImmediateAccessImpl: javax.enterprise.inject.spi.BeanManager beanManager> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-31181592=([org.hibernate.resource.beans.container.spi.AbstractCdiBeanContainer], void), cast-from-var3380-to-var3321=([org.hibernate.resource.beans.container.internal.CdiBeanContainerImmediateAccessImpl], org.hibernate.resource.beans.container.spi.AbstractCdiBeanContainer), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3353-to-var2711=([javax.enterprise.inject.spi.BeanManager], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-var2711-init=([], java.lang.Object[]), debugf/766413606=([org.jboss.logging.Logger, java.lang.String, java.lang.Object[]], void), beanManager/-1415948979=([org.hibernate.resource.beans.container.internal.CdiBeanContainerImmediateAccessImpl], javax.enterprise.inject.spi.BeanManager)}
; {var3380=org.hibernate.resource.beans.container.internal.CdiBeanContainerImmediateAccessImpl, var891=r0, var3353=javax.enterprise.inject.spi.BeanManager, var272=r3, var3321=org.hibernate.resource.beans.container.spi.AbstractCdiBeanContainer, var3540=org.jboss.logging.Logger, var3419=$r2, var1389=$r1, var1234=$r4, var2711=java.lang.Object, var2608=$r5, var2353=$r7, var2798=$r6}
; {org.hibernate.resource.beans.container.internal.CdiBeanContainerImmediateAccessImpl=var3380, r0=var891, javax.enterprise.inject.spi.BeanManager=var3353, r3=var272, org.hibernate.resource.beans.container.spi.AbstractCdiBeanContainer=var3321, org.jboss.logging.Logger=var3540, $r2=var3419, $r1=var1389, $r4=var1234, java.lang.Object=var2711, $r5=var2608, $r7=var2353, $r6=var2798}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.resource.beans.container.internal.CdiBeanContainerImmediateAccessImpl;	r3 := @parameter0: javax.enterprise.inject.spi.BeanManager;	specialinvoke r0.<org.hibernate.resource.beans.container.spi.AbstractCdiBeanContainer: void <init>()>();	$r2 = <org.hibernate.resource.beans.container.internal.CdiBeanContainerImmediateAccessImpl: org.jboss.logging.Logger log>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Standard access requested to CDI BeanManager : ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = newarray (java.lang.Object)[0];	virtualinvoke $r2.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object[])>($r7, $r6);	r0.<org.hibernate.resource.beans.container.internal.CdiBeanContainerImmediateAccessImpl: javax.enterprise.inject.spi.BeanManager beanManager> = r3;	return
;block_num 1