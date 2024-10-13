(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var667 0)
(declare-sort var1251 0)
(declare-sort var3713 0)
(declare-sort var3080 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var667_getMetamodel/-448631894 (var667) var3713)
(declare-fun var3713_getEntityTypeByName/-1119869897 (var3713 String) var3080)
(declare-const null-var667 var667)
(declare-const null-String String)
(declare-const null-var3080 var3080)
(declare-const var343 var667) ; Statement: r0 := @this: org.hibernate.jpa.HibernateEntityManagerFactory 
(assert (not (= var343 null-var667)))
(declare-const var2041 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2041 null-String)))
(define-const var286 var3713 (var667_getMetamodel/-448631894 var343)) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.jpa.HibernateEntityManagerFactory: org.hibernate.Metamodel getMetamodel()>() 
(define-const var3508 var3080 (var3713_getEntityTypeByName/-1119869897 var286 var2041)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.Metamodel: javax.persistence.metamodel.EntityType getEntityTypeByName(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var3508 null-var3080))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var667_getMetamodel/-448631894=([org.hibernate.jpa.HibernateEntityManagerFactory], org.hibernate.Metamodel), var3713_getEntityTypeByName/-1119869897=([org.hibernate.Metamodel, java.lang.String], javax.persistence.metamodel.EntityType)}
; {var667=org.hibernate.jpa.HibernateEntityManagerFactory, var343=r0, var2041=r1, var1251=null_type, var3713=org.hibernate.Metamodel, var286=$r2, var3080=javax.persistence.metamodel.EntityType, var3508=r3}
; {org.hibernate.jpa.HibernateEntityManagerFactory=var667, r0=var343, r1=var2041, null_type=var1251, org.hibernate.Metamodel=var3713, $r2=var286, javax.persistence.metamodel.EntityType=var3080, r3=var3508}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.jpa.HibernateEntityManagerFactory;	r1 := @parameter0: java.lang.String;	$r2 = interfaceinvoke r0.<org.hibernate.jpa.HibernateEntityManagerFactory: org.hibernate.Metamodel getMetamodel()>();	r3 = interfaceinvoke $r2.<org.hibernate.Metamodel: javax.persistence.metamodel.EntityType getEntityTypeByName(java.lang.String)>(r1);	if r3 != null goto return r3;	return r3
;block_num 2