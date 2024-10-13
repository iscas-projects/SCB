(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3161 0)
(declare-sort var1964 0)
(declare-sort var1624 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3161 var3161)
(declare-const null-String String)
(declare-const null-var1624 var1624)
(declare-const var2073 var3161) ; Statement: r5 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType 
(assert (not (= var2073 null-var3161)))
(declare-const var3354 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3354 null-String)))
(declare-const var3212 var1624) ; Statement: r0 := @parameter1: javax.persistence.metamodel.Attribute 
(assert (not (= var3212 null-var1624)))
(declare-const var2972 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var2972 null-String)))
 ; Statement: if r0 != null goto return 
(assert (not (= var3212 null-var1624))) ; Cond: r0 != null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3161=org.hibernate.metamodel.model.domain.internal.AbstractManagedType, var2073=r5, var3354=r3, var1964=null_type, var1624=javax.persistence.metamodel.Attribute, var3212=r0, var2972=r4}
; {org.hibernate.metamodel.model.domain.internal.AbstractManagedType=var3161, r5=var2073, r3=var3354, null_type=var1964, javax.persistence.metamodel.Attribute=var1624, r0=var3212, r4=var2972}
;seq 
;cnt {}
;stmts r5 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: javax.persistence.metamodel.Attribute;	r4 := @parameter2: java.lang.String;	if r0 != null goto return;	return
;block_num 2