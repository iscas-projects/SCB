(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var361 0)
(declare-sort var2320 0)
(declare-sort var3768 0)
(declare-sort var3102 0)
(declare-sort var1531 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1531!class ClassObject)
(declare-fun tracef/426392658 (var2320 String var3102) void)
(declare-fun cast-from-String-to-var3102 (String) var3102)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-String String)
(declare-const var3768-log var2320)
(declare-const var3095 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3095 null-String)))
(define-const var2714 var2320 var3768-log) ; Statement: $r1 = <org.hibernate.jpa.boot.spi.ProviderChecker: org.jboss.logging.Logger log> 
(assert true)
;(assert (tracef/426392658 var2714 "Checking requested PersistenceProvider name [%s] against Hibernate provider names" (cast-from-String-to-var3102 var3095))) ; Statement: virtualinvoke $r1.<org.jboss.logging.Logger: void tracef(java.lang.String,java.lang.Object)>("Checking requested PersistenceProvider name [%s] against Hibernate provider names", r0) 

(declare-const var2714!1 var2320)
(declare-const var3615 String)
(declare-const var3095!1 String)
(define-const var322 String "org.hibernate.ejb.HibernatePersistence") ; Statement: $r2 = "org.hibernate.ejb.HibernatePersistence" 
(assert true)
(define-const var1692 Bool (= var322 var3095!1)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = class "Lorg/hibernate/jpa/HibernatePersistenceProvider;" 
(assert (= (ite var1692 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3506 ClassObject var1531!class) ; Statement: $r3 = class "Lorg/hibernate/jpa/HibernatePersistenceProvider;" 
(assert true)
(define-const var1783 String (getName/-1958580599 var3506)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2846 Bool (= var1783 var3095!1)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {tracef/426392658=([org.jboss.logging.Logger, java.lang.String, java.lang.Object], void), cast-from-String-to-var3102=([java.lang.String], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var3095=r0, var361=null_type, var2320=org.jboss.logging.Logger, var3768=org.hibernate.jpa.boot.spi.ProviderChecker, var2714=$r1, var3102=java.lang.Object, var3615="Checking requested PersistenceProvider name [%s] against Hibernate provider names", var322=$r2, var1692=$z0, var1531=org.hibernate.jpa.HibernatePersistenceProvider, var3506=$r3, var1783=$r4, var2846=$z1}
; {r0=var3095, null_type=var361, org.jboss.logging.Logger=var2320, org.hibernate.jpa.boot.spi.ProviderChecker=var3768, $r1=var2714, java.lang.Object=var3102, "Checking requested PersistenceProvider name [%s] against Hibernate provider names"=var3615, $r2=var322, $z0=var1692, org.hibernate.jpa.HibernatePersistenceProvider=var1531, $r3=var3506, $r4=var1783, $z1=var2846}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <org.hibernate.jpa.boot.spi.ProviderChecker: org.jboss.logging.Logger log>;	virtualinvoke $r1.<org.jboss.logging.Logger: void tracef(java.lang.String,java.lang.Object)>("Checking requested PersistenceProvider name [%s] against Hibernate provider names", r0);	$r2 = "org.hibernate.ejb.HibernatePersistence";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = class "Lorg/hibernate/jpa/HibernatePersistenceProvider;";	$r3 = class "Lorg/hibernate/jpa/HibernatePersistenceProvider;";	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r0);	return $z1
;block_num 2