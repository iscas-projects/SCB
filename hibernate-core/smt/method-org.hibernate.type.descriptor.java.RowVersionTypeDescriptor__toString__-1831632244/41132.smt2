(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var826 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var826 var826)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2682 var826) ; Statement: r4 := @this: org.hibernate.type.descriptor.java.RowVersionTypeDescriptor 
(assert (not (= var2682 null-var826)))
(declare-const var2064 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var2064 null-__Array__Int__Int__)))
(define-const var2603 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(define-const var2227 Int (getLength-Arr-Int-1 var2064)) ; Statement: $i0 = lengthof r1 
(define-const var1438 Int (* var2227 2)) ; Statement: $i1 = $i0 * 2 
(assert true)
;(assert (<init>/543593434 var2603 var1438)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var2603!1 String)
(declare-const var1438!1 Int)
(define-const var2832 Int (getLength-Arr-Int-1 var2064)) ; Statement: i2 = lengthof r1 
(define-const var3941 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i2 goto $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3941 var2832)) ; Cond: i6 >= i2 
(assert true)
(define-const var1360 String (toString/-2075883882 var2603!1)) ; Statement: $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), getLength-Arr-Int-1=([byte[]], int), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var826=org.hibernate.type.descriptor.java.RowVersionTypeDescriptor, var2682=r4, var2064=r1, var2603=$r5, var2227=$i0, var1438=$i1, var2832=i2, var3941=i6, var1360=$r2}
; {org.hibernate.type.descriptor.java.RowVersionTypeDescriptor=var826, r4=var2682, r1=var2064, $r5=var2603, $i0=var2227, $i1=var1438, i2=var2832, i6=var3941, $r2=var1360}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.type.descriptor.java.RowVersionTypeDescriptor;	r1 := @parameter0: byte[];	$r5 = new java.lang.StringBuilder;	$i0 = lengthof r1;	$i1 = $i0 * 2;	specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>($i1);	i2 = lengthof r1;	i6 = 0;	if i6 >= i2 goto $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3