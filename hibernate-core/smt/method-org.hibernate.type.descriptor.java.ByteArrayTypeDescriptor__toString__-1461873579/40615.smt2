(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1044 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1044 var1044)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2321 var1044) ; Statement: r5 := @this: org.hibernate.type.descriptor.java.ByteArrayTypeDescriptor 
(assert (not (= var2321 null-var1044)))
(declare-const var2323 (Array Int Int)) ; Statement: r1 := @parameter0: java.lang.Byte[] 
(assert (not (= var2323 null-__Array__Int__Int__)))
(define-const var802 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var802)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var802!1 String)
(assert (= var802!1 ""))
(define-const var313 Int (getLength-Arr-Int-1 var2323)) ; Statement: i0 = lengthof r1 
(define-const var1467 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1467 var313)) ; Cond: i4 >= i0 
(assert true)
(define-const var474 String (toString/-2075883882 var802!1)) ; Statement: $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-Int-1=([java.lang.Byte[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1044=org.hibernate.type.descriptor.java.ByteArrayTypeDescriptor, var2321=r5, var2323=r1, var802=$r6, var313=i0, var1467=i4, var474=$r2}
; {org.hibernate.type.descriptor.java.ByteArrayTypeDescriptor=var1044, r5=var2321, r1=var2323, $r6=var802, i0=var313, i4=var1467, $r2=var474}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.type.descriptor.java.ByteArrayTypeDescriptor;	r1 := @parameter0: java.lang.Byte[];	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	i0 = lengthof r1;	i4 = 0;	if i4 >= i0 goto $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3