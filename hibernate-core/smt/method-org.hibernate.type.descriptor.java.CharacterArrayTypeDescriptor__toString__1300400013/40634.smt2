(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var26 0)
(declare-sort var2751 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun unwrapChars/1961221972 (var26 (Array Int var2751)) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var26 var26)
(declare-const null-__Array__Int__var2751__ (Array Int var2751))
(declare-const var1338 var26) ; Statement: r1 := @this: org.hibernate.type.descriptor.java.CharacterArrayTypeDescriptor 
(assert (not (= var1338 null-var26)))
(declare-const var782 (Array Int var2751)) ; Statement: r2 := @parameter0: java.lang.Character[] 
(assert (not (= var782 null-__Array__Int__var2751__)))
(define-const var1267 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
(define-const var970 (Array Int Int) (unwrapChars/1961221972 var1338 var782)) ; Statement: $r3 = specialinvoke r1.<org.hibernate.type.descriptor.java.CharacterArrayTypeDescriptor: char[] unwrapChars(java.lang.Character[])>(r2) 
(assert true)
;(assert (<init>/-915723298 var1267 var970)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[])>($r3) 

(declare-const var1267!1 String)
(declare-const var970!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), unwrapChars/1961221972=([org.hibernate.type.descriptor.java.CharacterArrayTypeDescriptor, java.lang.Character[]], char[]), <init>/-915723298=([java.lang.String, char[]], void)}
; {var26=org.hibernate.type.descriptor.java.CharacterArrayTypeDescriptor, var1338=r1, var2751=java.lang.Character, var782=r2, var1267=$r0, var970=$r3}
; {org.hibernate.type.descriptor.java.CharacterArrayTypeDescriptor=var26, r1=var1338, java.lang.Character=var2751, r2=var782, $r0=var1267, $r3=var970}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r1 := @this: org.hibernate.type.descriptor.java.CharacterArrayTypeDescriptor;	r2 := @parameter0: java.lang.Character[];	$r0 = new java.lang.String;	$r3 = specialinvoke r1.<org.hibernate.type.descriptor.java.CharacterArrayTypeDescriptor: char[] unwrapChars(java.lang.Character[])>(r2);	specialinvoke $r0.<java.lang.String: void <init>(char[])>($r3);	return $r0
;block_num 1