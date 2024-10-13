(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1684 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1684 var1684)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2474 var1684) ; Statement: r4 := @this: org.hibernate.type.descriptor.java.PrimitiveByteArrayTypeDescriptor 
(assert (not (= var2474 null-var1684)))
(declare-const var2398 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var2398 null-__Array__Int__Int__)))
(define-const var3687 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(define-const var2422 Int (getLength-Arr-Int-1 var2398)) ; Statement: $i0 = lengthof r1 
(define-const var2404 Int (* var2422 2)) ; Statement: $i1 = $i0 * 2 
(assert true)
;(assert (<init>/543593434 var3687 var2404)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3687!1 String)
(declare-const var2404!1 Int)
(define-const var2905 Int (getLength-Arr-Int-1 var2398)) ; Statement: i2 = lengthof r1 
(define-const var135 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i2 goto $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var135 var2905)) ; Cond: i6 >= i2 
(assert true)
(define-const var339 String (toString/-2075883882 var3687!1)) ; Statement: $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), getLength-Arr-Int-1=([byte[]], int), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1684=org.hibernate.type.descriptor.java.PrimitiveByteArrayTypeDescriptor, var2474=r4, var2398=r1, var3687=$r5, var2422=$i0, var2404=$i1, var2905=i2, var135=i6, var339=$r2}
; {org.hibernate.type.descriptor.java.PrimitiveByteArrayTypeDescriptor=var1684, r4=var2474, r1=var2398, $r5=var3687, $i0=var2422, $i1=var2404, i2=var2905, i6=var135, $r2=var339}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.type.descriptor.java.PrimitiveByteArrayTypeDescriptor;	r1 := @parameter0: byte[];	$r5 = new java.lang.StringBuilder;	$i0 = lengthof r1;	$i1 = $i0 * 2;	specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>($i1);	i2 = lengthof r1;	i6 = 0;	if i6 >= i2 goto $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3