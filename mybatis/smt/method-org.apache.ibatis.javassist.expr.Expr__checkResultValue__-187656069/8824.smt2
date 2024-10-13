(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2785 0)
(declare-sort var1664 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-var2785 var2785)
(declare-const null-String String)
(declare-const var456 var2785) ; Statement: r1 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var456 null-var2785)))
(declare-const var3278 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3278 null-String)))
(assert true)
(define-const var2407 Int (indexOf/-1209756239 var3278 "$_")) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("$_") 
 ; Statement: if $i0 < 0 goto $z3 = 0 
(assert (< var2407 0)) ; Cond: $i0 < 0 
(define-const var2060 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(define-const var2313 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var1852 Bool var2313) ; Statement: z0 = $z2 
 ; Statement: if $z3 != 0 goto return z0 
(assert (not (= (ite var2060 1 0) 0))) ; Cond: $z3 != 0 
 ; Statement: return z0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var2785=org.apache.ibatis.javassist.CtClass, var456=r1, var3278=r0, var1664=null_type, var2407=$i0, var2060=$z3, var2313=$z2, var1852=z0}
; {org.apache.ibatis.javassist.CtClass=var2785, r1=var456, r0=var3278, null_type=var1664, $i0=var2407, $z3=var2060, $z2=var2313, z0=var1852}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @parameter0: org.apache.ibatis.javassist.CtClass;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("$_");	if $i0 < 0 goto $z3 = 0;	$z3 = 0;	$z2 = 0;	z0 = $z2;	if $z3 != 0 goto return z0;	return z0
;block_num 4