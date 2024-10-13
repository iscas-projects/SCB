(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1502 0)
(declare-sort var301 0)
(declare-sort var3640 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun wrapChars/-400371639 (var1502 (Array Int Int)) (Array Int var3640))
(declare-const null-var1502 var1502)
(declare-const null-String String)
(declare-const var3205 var1502) ; Statement: r0 := @this: org.hibernate.type.descriptor.java.CharacterArrayTypeDescriptor 
(assert (not (= var3205 null-var1502)))
(declare-const var3840 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3840 null-String)))
(assert true)
(define-const var1230 (Array Int Int) (toCharArray/415275702 var3840)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(assert true)
(define-const var2215 (Array Int var3640) (wrapChars/-400371639 var3205 var1230)) ; Statement: $r3 = specialinvoke r0.<org.hibernate.type.descriptor.java.CharacterArrayTypeDescriptor: java.lang.Character[] wrapChars(char[])>($r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), wrapChars/-400371639=([org.hibernate.type.descriptor.java.CharacterArrayTypeDescriptor, char[]], java.lang.Character[])}
; {var1502=org.hibernate.type.descriptor.java.CharacterArrayTypeDescriptor, var3205=r0, var3840=r1, var301=null_type, var1230=$r2, var3640=java.lang.Character, var2215=$r3}
; {org.hibernate.type.descriptor.java.CharacterArrayTypeDescriptor=var1502, r0=var3205, r1=var3840, null_type=var301, $r2=var1230, java.lang.Character=var3640, $r3=var2215}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: org.hibernate.type.descriptor.java.CharacterArrayTypeDescriptor;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	$r3 = specialinvoke r0.<org.hibernate.type.descriptor.java.CharacterArrayTypeDescriptor: java.lang.Character[] wrapChars(char[])>($r2);	return $r3
;block_num 1