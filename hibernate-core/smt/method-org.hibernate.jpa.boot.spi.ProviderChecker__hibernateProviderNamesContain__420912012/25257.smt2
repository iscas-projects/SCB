(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2842 0)
(declare-sort var2954 0)
(declare-sort var1520 0)
(declare-sort var3071 0)
(declare-sort var3395 0)
(declare-sort var1251 0)
(declare-sort var1562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1520!class ClassObject)
(declare-const var1562!class ClassObject)
(declare-fun tracef/426392658 (var2954 String var3071) void)
(declare-fun cast-from-String-to-var3071 (String) var3071)
(declare-fun var1251_messageLogger/-1613113860 (ClassObject) var3395)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var3395_deprecatedPersistenceProvider/-1503563828 (var3395 String String) void)
(declare-const null-String String)
(declare-const var1520-log var2954)
(declare-const var3779 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3779 null-String)))
(define-const var1153 var2954 var1520-log) ; Statement: $r1 = <org.hibernate.jpa.boot.spi.ProviderChecker: org.jboss.logging.Logger log> 
(assert true)
;(assert (tracef/426392658 var1153 "Checking requested PersistenceProvider name [%s] against Hibernate provider names" (cast-from-String-to-var3071 var3779))) ; Statement: virtualinvoke $r1.<org.jboss.logging.Logger: void tracef(java.lang.String,java.lang.Object)>("Checking requested PersistenceProvider name [%s] against Hibernate provider names", r0) 

(declare-const var1153!1 var2954)
(declare-const var1505 String)
(declare-const var3779!1 String)
(define-const var832 String "org.hibernate.ejb.HibernatePersistence") ; Statement: $r2 = "org.hibernate.ejb.HibernatePersistence" 
(assert true)
(define-const var1042 Bool (= var832 var3779!1)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = class "Lorg/hibernate/jpa/HibernatePersistenceProvider;" 
(assert (not (= (ite var1042 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3267 var3395 (var1251_messageLogger/-1613113860 var1520!class)) ; Statement: $r7 = staticinvoke <org.hibernate.internal.HEMLogging: org.hibernate.internal.EntityManagerMessageLogger messageLogger(java.lang.Class)>(class "Lorg/hibernate/jpa/boot/spi/ProviderChecker;") 
(define-const var3989 ClassObject var1562!class) ; Statement: $r5 = class "Lorg/hibernate/jpa/HibernatePersistenceProvider;" 
(assert true)
(define-const var2834 String (getName/-1958580599 var3989)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
;(assert (var3395_deprecatedPersistenceProvider/-1503563828 var3267 "org.hibernate.ejb.HibernatePersistence" var2834)) ; Statement: interfaceinvoke $r7.<org.hibernate.internal.EntityManagerMessageLogger: void deprecatedPersistenceProvider(java.lang.String,java.lang.String)>("org.hibernate.ejb.HibernatePersistence", $r6) 

(declare-const var3267!1 var3395)
(declare-const var1746 String)
(declare-const var2834!1 String)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {tracef/426392658=([org.jboss.logging.Logger, java.lang.String, java.lang.Object], void), cast-from-String-to-var3071=([java.lang.String], java.lang.Object), var1251_messageLogger/-1613113860=([java.lang.Class], org.hibernate.internal.EntityManagerMessageLogger), getName/-1958580599=([java.lang.Class], java.lang.String), var3395_deprecatedPersistenceProvider/-1503563828=([org.hibernate.internal.EntityManagerMessageLogger, java.lang.String, java.lang.String], void)}
; {var3779=r0, var2842=null_type, var2954=org.jboss.logging.Logger, var1520=org.hibernate.jpa.boot.spi.ProviderChecker, var1153=$r1, var3071=java.lang.Object, var1505="Checking requested PersistenceProvider name [%s] against Hibernate provider names", var832=$r2, var1042=$z0, var3395=org.hibernate.internal.EntityManagerMessageLogger, var1251=org.hibernate.internal.HEMLogging, var3267=$r7, var1562=org.hibernate.jpa.HibernatePersistenceProvider, var3989=$r5, var2834=$r6, var1746="org.hibernate.ejb.HibernatePersistence"}
; {r0=var3779, null_type=var2842, org.jboss.logging.Logger=var2954, org.hibernate.jpa.boot.spi.ProviderChecker=var1520, $r1=var1153, java.lang.Object=var3071, "Checking requested PersistenceProvider name [%s] against Hibernate provider names"=var1505, $r2=var832, $z0=var1042, org.hibernate.internal.EntityManagerMessageLogger=var3395, org.hibernate.internal.HEMLogging=var1251, $r7=var3267, org.hibernate.jpa.HibernatePersistenceProvider=var1562, $r5=var3989, $r6=var2834, "org.hibernate.ejb.HibernatePersistence"=var1746}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <org.hibernate.jpa.boot.spi.ProviderChecker: org.jboss.logging.Logger log>;	virtualinvoke $r1.<org.jboss.logging.Logger: void tracef(java.lang.String,java.lang.Object)>("Checking requested PersistenceProvider name [%s] against Hibernate provider names", r0);	$r2 = "org.hibernate.ejb.HibernatePersistence";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = class "Lorg/hibernate/jpa/HibernatePersistenceProvider;";	$r7 = staticinvoke <org.hibernate.internal.HEMLogging: org.hibernate.internal.EntityManagerMessageLogger messageLogger(java.lang.Class)>(class "Lorg/hibernate/jpa/boot/spi/ProviderChecker;");	$r5 = class "Lorg/hibernate/jpa/HibernatePersistenceProvider;";	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	interfaceinvoke $r7.<org.hibernate.internal.EntityManagerMessageLogger: void deprecatedPersistenceProvider(java.lang.String,java.lang.String)>("org.hibernate.ejb.HibernatePersistence", $r6);	return 1
;block_num 2