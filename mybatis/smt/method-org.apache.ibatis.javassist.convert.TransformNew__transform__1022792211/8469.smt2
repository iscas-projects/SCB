(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var774 0)
(declare-sort var1093 0)
(declare-sort var375 0)
(declare-sort var2948 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun byteAt/822625918 (var375 Int) Int)
(declare-fun u16bitAt/1097213481 (var375 Int) Int)
(declare-fun getClassInfo/1878292087 (var2948 Int) String)
(declare-fun classname/297100759 (var774) String)
(declare-const null-var774 var774)
(declare-const null-var1093 var1093)
(declare-const null-Int Int)
(declare-const null-var375 var375)
(declare-const null-var2948 var2948)
(declare-const var1313 var774) ; Statement: r2 := @this: org.apache.ibatis.javassist.convert.TransformNew 
(assert (not (= var1313 null-var774)))
(declare-const var1345 var1093) ; Statement: r12 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var1345 null-var1093)))
(declare-const var3359 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3359 null-Int)))
(declare-const var2788 var375) ; Statement: r0 := @parameter2: org.apache.ibatis.javassist.bytecode.CodeIterator 
(assert (not (= var2788 null-var375)))
(declare-const var2628 var2948) ; Statement: r1 := @parameter3: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var2628 null-var2948)))
(assert true)
(define-const var750 Int (byteAt/822625918 var2788 var3359)) ; Statement: i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>(i0) 
 ; Statement: if i1 != 187 goto (branch) 
(assert (not (not (= var750 187)))) ; Negate: Cond: i1 != 187  
(define-const var1046 Int (+ var3359 1)) ; Statement: $i7 = i0 + 1 
(assert true)
(define-const var3553 Int (u16bitAt/1097213481 var2788 var1046)) ; Statement: i15 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int u16bitAt(int)>($i7) 
(assert true)
(define-const var1856 String (getClassInfo/1878292087 var2628 var3553)) ; Statement: $r5 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getClassInfo(int)>(i15) 
(define-const var837 String (classname/297100759 var1313)) ; Statement: $r4 = r2.<org.apache.ibatis.javassist.convert.TransformNew: java.lang.String classname> 
(assert true)
(define-const var1081 Bool (= var1856 var837)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto return i0 
(assert (= (ite var1081 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {byteAt/822625918=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), u16bitAt/1097213481=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), getClassInfo/1878292087=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String), classname/297100759=([org.apache.ibatis.javassist.convert.TransformNew], java.lang.String)}
; {var774=org.apache.ibatis.javassist.convert.TransformNew, var1313=r2, var1093=org.apache.ibatis.javassist.CtClass, var1345=r12, var3359=i0, var375=org.apache.ibatis.javassist.bytecode.CodeIterator, var2788=r0, var2948=org.apache.ibatis.javassist.bytecode.ConstPool, var2628=r1, var750=i1, var1046=$i7, var3553=i15, var1856=$r5, var837=$r4, var1081=$z0}
; {org.apache.ibatis.javassist.convert.TransformNew=var774, r2=var1313, org.apache.ibatis.javassist.CtClass=var1093, r12=var1345, i0=var3359, org.apache.ibatis.javassist.bytecode.CodeIterator=var375, r0=var2788, org.apache.ibatis.javassist.bytecode.ConstPool=var2948, r1=var2628, i1=var750, $i7=var1046, i15=var3553, $r5=var1856, $r4=var837, $z0=var1081}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.convert.TransformNew;	r12 := @parameter0: org.apache.ibatis.javassist.CtClass;	i0 := @parameter1: int;	r0 := @parameter2: org.apache.ibatis.javassist.bytecode.CodeIterator;	r1 := @parameter3: org.apache.ibatis.javassist.bytecode.ConstPool;	i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>(i0);	if i1 != 187 goto (branch);	$i7 = i0 + 1;	i15 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int u16bitAt(int)>($i7);	$r5 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getClassInfo(int)>(i15);	$r4 = r2.<org.apache.ibatis.javassist.convert.TransformNew: java.lang.String classname>;	$z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto return i0;	return i0
;block_num 3