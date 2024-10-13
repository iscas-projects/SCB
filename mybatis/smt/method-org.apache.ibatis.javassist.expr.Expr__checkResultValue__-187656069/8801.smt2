(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2365 0)
(declare-sort var2134 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-var2365 var2365)
(declare-const null-String String)
(declare-const var2948 var2365) ; Statement: r1 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var2948 null-var2365)))
(declare-const var1863 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1863 null-String)))
(assert true)
(define-const var2208 Int (indexOf/-1209756239 var1863 "$_")) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("$_") 
 ; Statement: if $i0 < 0 goto $z3 = 0 
(assert (not (< var2208 0))) ; Negate: Cond: $i0 < 0  
(define-const var3067 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
(define-const var3852 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= z0 = $z2] 
(assert true) ; Non Conditional
(define-const var996 Bool var3852) ; Statement: z0 = $z2 
 ; Statement: if $z3 != 0 goto return z0 
(assert (not (= (ite var3067 1 0) 0))) ; Cond: $z3 != 0 
 ; Statement: return z0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var2365=org.apache.ibatis.javassist.CtClass, var2948=r1, var1863=r0, var2134=null_type, var2208=$i0, var3067=$z3, var3852=$z2, var996=z0}
; {org.apache.ibatis.javassist.CtClass=var2365, r1=var2948, r0=var1863, null_type=var2134, $i0=var2208, $z3=var3067, $z2=var3852, z0=var996}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @parameter0: org.apache.ibatis.javassist.CtClass;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("$_");	if $i0 < 0 goto $z3 = 0;	$z3 = 1;	$z2 = 1;	goto [?= z0 = $z2];	z0 = $z2;	if $z3 != 0 goto return z0;	return z0
;block_num 4