(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2027 0)
(declare-sort var2002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isAssignableFrom/-1149007002 (var2002 var2002) Bool)
(declare-const null-var2027 var2027)
(declare-const null-var2002 var2002)
(declare-const var1174 var2027) ; Statement: r8 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor 
(assert (not (= var1174 null-var2027)))
(declare-const var532 var2002) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.analysis.Type 
(assert (not (= var532 null-var2002)))
(declare-const var1762 var2002) ; Statement: r1 := @parameter1: org.apache.ibatis.javassist.bytecode.analysis.Type 
(assert (not (= var1762 null-var2002)))
(assert true)
(define-const var139 Bool (isAssignableFrom/-1149007002 var532 var1762)) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Type: boolean isAssignableFrom(org.apache.ibatis.javassist.bytecode.analysis.Type)>(r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var139 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isAssignableFrom/-1149007002=([org.apache.ibatis.javassist.bytecode.analysis.Type, org.apache.ibatis.javassist.bytecode.analysis.Type], boolean)}
; {var2027=org.apache.ibatis.javassist.bytecode.analysis.Executor, var1174=r8, var2002=org.apache.ibatis.javassist.bytecode.analysis.Type, var532=r0, var1762=r1, var139=$z0}
; {org.apache.ibatis.javassist.bytecode.analysis.Executor=var2027, r8=var1174, org.apache.ibatis.javassist.bytecode.analysis.Type=var2002, r0=var532, r1=var1762, $z0=var139}
;seq 
;cnt {}
;stmts r8 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor;	r0 := @parameter0: org.apache.ibatis.javassist.bytecode.analysis.Type;	r1 := @parameter1: org.apache.ibatis.javassist.bytecode.analysis.Type;	$z0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Type: boolean isAssignableFrom(org.apache.ibatis.javassist.bytecode.analysis.Type)>(r1);	if $z0 != 0 goto return;	return
;block_num 2