(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1687 0)
(declare-sort var449 0)
(declare-sort var2976 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var449_getKeyJavaType/347819913 (var449) ClassObject)
(declare-const null-var1687 var1687)
(declare-const null-var449 var449)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var2866 var1687) ; Statement: r11 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType 
(assert (not (= var2866 null-var1687)))
(declare-const var1843 var449) ; Statement: r0 := @parameter0: javax.persistence.metamodel.MapAttribute 
(assert (not (= var1843 null-var449)))
(declare-const var3220 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3220 null-String)))
(declare-const var413 ClassObject) ; Statement: r1 := @parameter2: java.lang.Class 
(assert (not (= var413 null-ClassObject)))
(define-const var486 ClassObject (var449_getKeyJavaType/347819913 var1843)) ; Statement: $r2 = interfaceinvoke r0.<javax.persistence.metamodel.MapAttribute: java.lang.Class getKeyJavaType()>() 
 ; Statement: if $r2 == r1 goto return 
(assert (= var486 var413)) ; Cond: $r2 == r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var449_getKeyJavaType/347819913=([javax.persistence.metamodel.MapAttribute], java.lang.Class)}
; {var1687=org.hibernate.metamodel.model.domain.internal.AbstractManagedType, var2866=r11, var449=javax.persistence.metamodel.MapAttribute, var1843=r0, var3220=r5, var2976=null_type, var413=r1, var486=$r2}
; {org.hibernate.metamodel.model.domain.internal.AbstractManagedType=var1687, r11=var2866, javax.persistence.metamodel.MapAttribute=var449, r0=var1843, r5=var3220, null_type=var2976, r1=var413, $r2=var486}
;seq 
;cnt {}
;stmts r11 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType;	r0 := @parameter0: javax.persistence.metamodel.MapAttribute;	r5 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.Class;	$r2 = interfaceinvoke r0.<javax.persistence.metamodel.MapAttribute: java.lang.Class getKeyJavaType()>();	if $r2 == r1 goto return;	return
;block_num 2