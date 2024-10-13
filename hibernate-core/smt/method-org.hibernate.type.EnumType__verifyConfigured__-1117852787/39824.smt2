(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var908 0)
(declare-sort var2796 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun enumValueConverter/-275627383 (var908) var2796)
(declare-const null-var908 var908)
(declare-const null-var2796 var2796)
(declare-const var3275 var908) ; Statement: r0 := @this: org.hibernate.type.EnumType 
(assert (not (= var3275 null-var908)))
(define-const var179 var2796 (enumValueConverter/-275627383 var3275)) ; Statement: $r1 = r0.<org.hibernate.type.EnumType: org.hibernate.metamodel.model.convert.spi.EnumValueConverter enumValueConverter> 
 ; Statement: if $r1 != null goto return 
(assert (not (= var179 null-var2796))) ; Cond: $r1 != null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {enumValueConverter/-275627383=([org.hibernate.type.EnumType], org.hibernate.metamodel.model.convert.spi.EnumValueConverter)}
; {var908=org.hibernate.type.EnumType, var3275=r0, var2796=org.hibernate.metamodel.model.convert.spi.EnumValueConverter, var179=$r1}
; {org.hibernate.type.EnumType=var908, r0=var3275, org.hibernate.metamodel.model.convert.spi.EnumValueConverter=var2796, $r1=var179}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.type.EnumType;	$r1 = r0.<org.hibernate.type.EnumType: org.hibernate.metamodel.model.convert.spi.EnumValueConverter enumValueConverter>;	if $r1 != null goto return;	return
;block_num 2