(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1265 0)
(declare-sort var1010 0)
(declare-sort var1407 0)
(declare-sort var323 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun persistentClass/72383657 (var1265) var323)
(declare-fun addProperty/-523771511 (var323 var1010) void)
(declare-const null-var1265 var1265)
(declare-const null-var1010 var1010)
(declare-const null-var1407 var1407)
(declare-const var1951 var1265) ; Statement: r1 := @this: org.hibernate.cfg.ClassPropertyHolder 
(assert (not (= var1951 null-var1265)))
(declare-const var1234 var1010) ; Statement: r2 := @parameter0: org.hibernate.mapping.Property 
(assert (not (= var1234 null-var1010)))
(declare-const var1308 var1407) ; Statement: r0 := @parameter1: org.hibernate.annotations.common.reflection.XClass 
(assert (not (= var1308 null-var1407)))
 ; Statement: if r0 == null goto $r3 = r1.<org.hibernate.cfg.ClassPropertyHolder: org.hibernate.mapping.PersistentClass persistentClass> 
(assert (= var1308 null-var1407)) ; Cond: r0 == null 
(define-const var515 var323 (persistentClass/72383657 var1951)) ; Statement: $r3 = r1.<org.hibernate.cfg.ClassPropertyHolder: org.hibernate.mapping.PersistentClass persistentClass> 
(assert true)
;(assert (addProperty/-523771511 var515 var1234)) ; Statement: virtualinvoke $r3.<org.hibernate.mapping.PersistentClass: void addProperty(org.hibernate.mapping.Property)>(r2) 

(declare-const var515!1 var323)
(declare-const var1234!1 var1010)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {persistentClass/72383657=([org.hibernate.cfg.ClassPropertyHolder], org.hibernate.mapping.PersistentClass), addProperty/-523771511=([org.hibernate.mapping.PersistentClass, org.hibernate.mapping.Property], void)}
; {var1265=org.hibernate.cfg.ClassPropertyHolder, var1951=r1, var1010=org.hibernate.mapping.Property, var1234=r2, var1407=org.hibernate.annotations.common.reflection.XClass, var1308=r0, var323=org.hibernate.mapping.PersistentClass, var515=$r3}
; {org.hibernate.cfg.ClassPropertyHolder=var1265, r1=var1951, org.hibernate.mapping.Property=var1010, r2=var1234, org.hibernate.annotations.common.reflection.XClass=var1407, r0=var1308, org.hibernate.mapping.PersistentClass=var323, $r3=var515}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.cfg.ClassPropertyHolder;	r2 := @parameter0: org.hibernate.mapping.Property;	r0 := @parameter1: org.hibernate.annotations.common.reflection.XClass;	if r0 == null goto $r3 = r1.<org.hibernate.cfg.ClassPropertyHolder: org.hibernate.mapping.PersistentClass persistentClass>;	$r3 = r1.<org.hibernate.cfg.ClassPropertyHolder: org.hibernate.mapping.PersistentClass persistentClass>;	virtualinvoke $r3.<org.hibernate.mapping.PersistentClass: void addProperty(org.hibernate.mapping.Property)>(r2);	return
;block_num 3