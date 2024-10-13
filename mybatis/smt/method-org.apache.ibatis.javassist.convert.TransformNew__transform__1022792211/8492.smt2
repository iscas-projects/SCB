(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var695 0)
(declare-sort var3145 0)
(declare-sort var165 0)
(declare-sort var1844 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun byteAt/822625918 (var165 Int) Int)
(declare-const null-var695 var695)
(declare-const null-var3145 var3145)
(declare-const null-Int Int)
(declare-const null-var165 var165)
(declare-const null-var1844 var1844)
(declare-const var3690 var695) ; Statement: r2 := @this: org.apache.ibatis.javassist.convert.TransformNew 
(assert (not (= var3690 null-var695)))
(declare-const var979 var3145) ; Statement: r12 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var979 null-var3145)))
(declare-const var2400 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2400 null-Int)))
(declare-const var2313 var165) ; Statement: r0 := @parameter2: org.apache.ibatis.javassist.bytecode.CodeIterator 
(assert (not (= var2313 null-var165)))
(declare-const var2211 var1844) ; Statement: r1 := @parameter3: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var2211 null-var1844)))
(assert true)
(define-const var527 Int (byteAt/822625918 var2313 var2400)) ; Statement: i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>(i0) 
 ; Statement: if i1 != 187 goto (branch) 
(assert (not (= var527 187))) ; Cond: i1 != 187 
 ; Statement: if i1 != 183 goto return i0 
(assert (not (= var527 183))) ; Cond: i1 != 183 
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {byteAt/822625918=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int)}
; {var695=org.apache.ibatis.javassist.convert.TransformNew, var3690=r2, var3145=org.apache.ibatis.javassist.CtClass, var979=r12, var2400=i0, var165=org.apache.ibatis.javassist.bytecode.CodeIterator, var2313=r0, var1844=org.apache.ibatis.javassist.bytecode.ConstPool, var2211=r1, var527=i1}
; {org.apache.ibatis.javassist.convert.TransformNew=var695, r2=var3690, org.apache.ibatis.javassist.CtClass=var3145, r12=var979, i0=var2400, org.apache.ibatis.javassist.bytecode.CodeIterator=var165, r0=var2313, org.apache.ibatis.javassist.bytecode.ConstPool=var1844, r1=var2211, i1=var527}
;seq 
;cnt {}
;stmts r2 := @this: org.apache.ibatis.javassist.convert.TransformNew;	r12 := @parameter0: org.apache.ibatis.javassist.CtClass;	i0 := @parameter1: int;	r0 := @parameter2: org.apache.ibatis.javassist.bytecode.CodeIterator;	r1 := @parameter3: org.apache.ibatis.javassist.bytecode.ConstPool;	i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>(i0);	if i1 != 187 goto (branch);	if i1 != 183 goto return i0;	return i0
;block_num 3