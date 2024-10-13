(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var375 0)
(declare-sort var2111 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-const null-var375 var375)
(declare-const null-String String)
(declare-const var3349 var375) ; Statement: r2 := @this: org.hibernate.type.descriptor.java.PrimitiveCharacterArrayTypeDescriptor 
(assert (not (= var3349 null-var375)))
(declare-const var1145 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1145 null-String)))
(assert true)
(define-const var2597 (Array Int Int) (toCharArray/415275702 var1145)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[])}
; {var375=org.hibernate.type.descriptor.java.PrimitiveCharacterArrayTypeDescriptor, var3349=r2, var1145=r0, var2111=null_type, var2597=$r1}
; {org.hibernate.type.descriptor.java.PrimitiveCharacterArrayTypeDescriptor=var375, r2=var3349, r0=var1145, null_type=var2111, $r1=var2597}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r2 := @this: org.hibernate.type.descriptor.java.PrimitiveCharacterArrayTypeDescriptor;	r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	return $r1
;block_num 1