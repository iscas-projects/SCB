(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1803 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var1803 var1803)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3764 var1803) ; Statement: r2 := @this: org.hibernate.type.descriptor.java.PrimitiveCharacterArrayTypeDescriptor 
(assert (not (= var3764 null-var1803)))
(declare-const var1681 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var1681 null-__Array__Int__Int__)))
(define-const var1585 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var1585 var1681)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var1585!1 String)
(declare-const var1681!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var1803=org.hibernate.type.descriptor.java.PrimitiveCharacterArrayTypeDescriptor, var3764=r2, var1681=r1, var1585=$r0}
; {org.hibernate.type.descriptor.java.PrimitiveCharacterArrayTypeDescriptor=var1803, r2=var3764, r1=var1681, $r0=var1585}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r2 := @this: org.hibernate.type.descriptor.java.PrimitiveCharacterArrayTypeDescriptor;	r1 := @parameter0: char[];	$r0 = new java.lang.String;	specialinvoke $r0.<java.lang.String: void <init>(char[])>(r1);	return $r0
;block_num 1