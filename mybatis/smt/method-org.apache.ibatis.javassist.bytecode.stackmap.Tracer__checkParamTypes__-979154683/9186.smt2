(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3144 0)
(declare-sort var2642 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3144 var3144)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3213 var3144) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer 
(assert (not (= var3213 null-var3144)))
(declare-const var1092 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1092 null-String)))
(declare-const var2154 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2154 null-Int)))
(assert (and true (and (> (str.len var1092) var2154) (<= 0 var2154))))
(define-const var1198 Int (charAt/698050440 var1092 var2154)) ; Statement: c10 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(define-const var3411 Int (cast-from-Int-to-Int var1198)) ; Statement: $i13 = (int) c10 
 ; Statement: if $i13 != 41 goto i11 = i0 
(assert (not (not (= var3411 41)))) ; Negate: Cond: $i13 != 41  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var3144=org.apache.ibatis.javassist.bytecode.stackmap.Tracer, var3213=r1, var1092=r0, var2642=null_type, var2154=i0, var1198=c10, var3411=$i13}
; {org.apache.ibatis.javassist.bytecode.stackmap.Tracer=var3144, r1=var3213, r0=var1092, null_type=var2642, i0=var2154, c10=var1198, $i13=var3411}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.Tracer;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	c10 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i13 = (int) c10;	if $i13 != 41 goto i11 = i0;	return
;block_num 2