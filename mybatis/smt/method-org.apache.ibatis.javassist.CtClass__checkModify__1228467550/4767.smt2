(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1746 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isFrozen/-850649134 (var1746) Bool)
(declare-const null-var1746 var1746)
(declare-const var121 var1746) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtClass 
(assert (not (= var121 null-var1746)))
(assert true)
(define-const var2667 Bool (isFrozen/-850649134 var121)) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isFrozen()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2667 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isFrozen/-850649134=([org.apache.ibatis.javassist.CtClass], boolean)}
; {var1746=org.apache.ibatis.javassist.CtClass, var121=r0, var2667=$z0}
; {org.apache.ibatis.javassist.CtClass=var1746, r0=var121, $z0=var2667}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.javassist.CtClass;	$z0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isFrozen()>();	if $z0 == 0 goto return;	return
;block_num 2