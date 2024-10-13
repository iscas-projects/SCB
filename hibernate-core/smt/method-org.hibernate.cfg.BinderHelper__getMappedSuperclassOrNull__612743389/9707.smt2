(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3603 0)
(declare-sort var3229 0)
(declare-sort var1252 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3603 var3603)
(declare-const null-var3229 var3229)
(declare-const null-var1252 var1252)
(declare-const var2552 var3603) ; Statement: r0 := @parameter0: org.hibernate.annotations.common.reflection.XClass 
(assert (not (= var2552 null-var3603)))
(declare-const var3481 var3229) ; Statement: r7 := @parameter1: java.util.Map 
(assert (not (= var3481 null-var3229)))
(declare-const var1397 var1252) ; Statement: r1 := @parameter2: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var1397 null-var1252)))
(define-const var74 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
 ; Statement: if r0 == null goto (branch) 
(assert (= var2552 null-var3603)) ; Cond: r0 == null 
 ; Statement: if z1 == 0 goto return null 
(assert (= (ite var74 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3603=org.hibernate.annotations.common.reflection.XClass, var2552=r0, var3229=java.util.Map, var3481=r7, var1252=org.hibernate.boot.spi.MetadataBuildingContext, var1397=r1, var74=z1}
; {org.hibernate.annotations.common.reflection.XClass=var3603, r0=var2552, java.util.Map=var3229, r7=var3481, org.hibernate.boot.spi.MetadataBuildingContext=var1252, r1=var1397, z1=var74}
;seq 
;cnt {}
;stmts r0 := @parameter0: org.hibernate.annotations.common.reflection.XClass;	r7 := @parameter1: java.util.Map;	r1 := @parameter2: org.hibernate.boot.spi.MetadataBuildingContext;	z1 = 0;	if r0 == null goto (branch);	if z1 == 0 goto return null;	return null
;block_num 3