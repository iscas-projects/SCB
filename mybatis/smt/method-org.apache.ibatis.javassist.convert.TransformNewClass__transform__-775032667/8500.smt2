(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1182 0)
(declare-sort var2577 0)
(declare-sort var1696 0)
(declare-sort var2214 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun byteAt/822625918 (var1696 Int) Int)
(declare-const null-var1182 var1182)
(declare-const null-var2577 var2577)
(declare-const null-Int Int)
(declare-const null-var1696 var1696)
(declare-const null-var2214 var2214)
(declare-const var1064 var1182) ; Statement: r2 := @this: org.apache.ibatis.javassist.convert.TransformNewClass 
(assert (not (= var1064 null-var1182)))
(declare-const var1802 var2577) ; Statement: r7 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var1802 null-var2577)))
(declare-const var3975 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3975 null-Int)))
(declare-const var2952 var1696) ; Statement: r0 := @parameter2: org.apache.ibatis.javassist.bytecode.CodeIterator 
(assert (not (= var2952 null-var1696)))
(declare-const var2412 var2214) ; Statement: r1 := @parameter3: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var2412 null-var2214)))
(assert true)
(define-const var2561 Int (byteAt/822625918 var2952 var3975)) ; Statement: i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>(i0) 
 ; Statement: if i1 != 187 goto (branch) 
(assert (not (= var2561 187))) ; Cond: i1 != 187 
 ; Statement: if i1 != 183 goto return i0 
(assert (not (= var2561 183))) ; Cond: i1 != 183 
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {byteAt/822625918=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int)}
; {var1182=org.apache.ibatis.javassist.convert.TransformNewClass, var1064=r2, var2577=org.apache.ibatis.javassist.CtClass, var1802=r7, var3975=i0, var1696=org.apache.ibatis.javassist.bytecode.CodeIterator, var2952=r0, var2214=org.apache.ibatis.javassist.bytecode.ConstPool, var2412=r1, var2561=i1}
; {org.apache.ibatis.javassist.convert.TransformNewClass=var1182, r2=var1064, org.apache.ibatis.javassist.CtClass=var2577, r7=var1802, i0=var3975, org.apache.ibatis.javassist.bytecode.CodeIterator=var1696, r0=var2952, org.apache.ibatis.javassist.bytecode.ConstPool=var2214, r1=var2412, i1=var2561}
;seq 
;cnt {}
;stmts r2 := @this: org.apache.ibatis.javassist.convert.TransformNewClass;	r7 := @parameter0: org.apache.ibatis.javassist.CtClass;	i0 := @parameter1: int;	r0 := @parameter2: org.apache.ibatis.javassist.bytecode.CodeIterator;	r1 := @parameter3: org.apache.ibatis.javassist.bytecode.ConstPool;	i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>(i0);	if i1 != 187 goto (branch);	if i1 != 183 goto return i0;	return i0
;block_num 3