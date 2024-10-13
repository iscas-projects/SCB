(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var285 0)
(declare-sort var1461 0)
(declare-sort var2883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2883-init () var2883)
(declare-fun <init>/750527633 (var2883) void)
(declare-const null-var285 var285)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2807 var285) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.ByteVector 
(assert (not (= var2807 null-var285)))
(declare-const var1655 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1655 null-String)))
(declare-const var2634 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2634 null-Int)))
(declare-const var1662 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1662 null-Int)))
(assert true)
(define-const var120 Int (length/-134980193 var1655)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2452 Int var2634) ; Statement: i34 = i1 
(define-const var3615 Int var2634) ; Statement: i35 = i1 
(assert true) ; Non Conditional
 ; Statement: if i35 >= i0 goto (branch) 
(assert (>= var3615 var120)) ; Cond: i35 >= i0 
 ; Statement: if i34 <= i2 goto $i3 = r1.<jdk.internal.org.objectweb.asm.ByteVector: int length> 
(assert (not (<= var2452 var1662))) ; Negate: Cond: i34 <= i2  
(define-const var593 var2883 var2883-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/750527633 var593)) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>()>() 

(declare-const var593!1 var2883)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2883-init=([], java.lang.IllegalArgumentException), <init>/750527633=([java.lang.IllegalArgumentException], void)}
; {var285=jdk.internal.org.objectweb.asm.ByteVector, var2807=r1, var1655=r0, var1461=null_type, var2634=i1, var1662=i2, var120=i0, var2452=i34, var3615=i35, var2883=java.lang.IllegalArgumentException, var593=$r12}
; {jdk.internal.org.objectweb.asm.ByteVector=var285, r1=var2807, r0=var1655, null_type=var1461, i1=var2634, i2=var1662, i0=var120, i34=var2452, i35=var3615, java.lang.IllegalArgumentException=var2883, $r12=var593}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.ByteVector;	r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i2 := @parameter2: int;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i34 = i1;	i35 = i1;	if i35 >= i0 goto (branch);	if i34 <= i2 goto $i3 = r1.<jdk.internal.org.objectweb.asm.ByteVector: int length>;	$r12 = new java.lang.IllegalArgumentException;	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>()>();	throw $r12
;block_num 4