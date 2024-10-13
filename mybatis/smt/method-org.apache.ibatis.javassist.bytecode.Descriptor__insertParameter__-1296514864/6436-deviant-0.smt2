(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2495 0)
(declare-sort var1237 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2495 var2495)
(declare-const null-String String)
(declare-const var1148 var2495) ; Statement: r2 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var1148 null-var2495)))
(declare-const var1037 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1037 null-String)))
(assert (not (and true (and (> (str.len var1037) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var2495=org.apache.ibatis.javassist.CtClass, var1148=r2, var1037=r0, var1237=null_type, var2027=$c0, var3473=$i1}
; {org.apache.ibatis.javassist.CtClass=var2495, r2=var1148, r0=var1037, null_type=var1237, $c0=var2027, $i1=var3473}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r2 := @parameter0: org.apache.ibatis.javassist.CtClass;	r0 := @parameter1: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i1 = (int) $c0;	if $i1 == 40 goto $r9 = new java.lang.StringBuilder;	return r0
;block_num 2