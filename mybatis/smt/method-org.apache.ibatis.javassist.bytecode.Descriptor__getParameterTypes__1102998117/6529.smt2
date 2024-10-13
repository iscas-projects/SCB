(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2341 0)
(declare-sort var2536 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-var2536 var2536)
(declare-const var2930 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2930 null-String)))
(declare-const var1340 var2536) ; Statement: r2 := @parameter1: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var1340 null-var2536)))
(assert (and true (and (> (str.len var2930) 0) (<= 0 0))))
(define-const var3244 Int (charAt/698050440 var2930 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var1281 Int (cast-from-Int-to-Int var3244)) ; Statement: $i6 = (int) $c0 
 ; Statement: if $i6 == 40 goto i1 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: int numOfParameters(java.lang.String)>(r0) 
(assert (not (= var1281 40))) ; Negate: Cond: $i6 == 40  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var2930=r0, var2341=null_type, var2536=org.apache.ibatis.javassist.ClassPool, var1340=r2, var3244=$c0, var1281=$i6}
; {r0=var2930, null_type=var2341, org.apache.ibatis.javassist.ClassPool=var2536, r2=var1340, $c0=var3244, $i6=var1281}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: org.apache.ibatis.javassist.ClassPool;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i6 = (int) $c0;	if $i6 == 40 goto i1 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: int numOfParameters(java.lang.String)>(r0);	return null
;block_num 2