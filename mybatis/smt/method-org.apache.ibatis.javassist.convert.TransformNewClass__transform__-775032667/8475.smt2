(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var486 0)
(declare-sort var1546 0)
(declare-sort var60 0)
(declare-sort var2155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun byteAt/822625918 (var60 Int) Int)
(declare-fun u16bitAt/1097213481 (var60 Int) Int)
(declare-fun getClassInfo/1878292087 (var2155 Int) String)
(declare-fun classname/-2086247967 (var486) String)
(declare-const null-var486 var486)
(declare-const null-var1546 var1546)
(declare-const null-Int Int)
(declare-const null-var60 var60)
(declare-const null-var2155 var2155)
(declare-const var336 var486) ; Statement: r2 := @this: org.apache.ibatis.javassist.convert.TransformNewClass 
(assert (not (= var336 null-var486)))
(declare-const var583 var1546) ; Statement: r7 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var583 null-var1546)))
(declare-const var2655 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2655 null-Int)))
(declare-const var2557 var60) ; Statement: r0 := @parameter2: org.apache.ibatis.javassist.bytecode.CodeIterator 
(assert (not (= var2557 null-var60)))
(declare-const var3878 var2155) ; Statement: r1 := @parameter3: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var3878 null-var2155)))
(assert true)
(define-const var928 Int (byteAt/822625918 var2557 var2655)) ; Statement: i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>(i0) 
 ; Statement: if i1 != 187 goto (branch) 
(assert (not (not (= var928 187)))) ; Negate: Cond: i1 != 187  
(define-const var3308 Int (+ var2655 1)) ; Statement: $i13 = i0 + 1 
(assert true)
(define-const var3942 Int (u16bitAt/1097213481 var2557 var3308)) ; Statement: i20 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int u16bitAt(int)>($i13) 
(assert true)
(define-const var1571 String (getClassInfo/1878292087 var3878 var3942)) ; Statement: $r5 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getClassInfo(int)>(i20) 
(define-const var2574 String (classname/-2086247967 var336)) ; Statement: $r4 = r2.<org.apache.ibatis.javassist.convert.TransformNewClass: java.lang.String classname> 
(assert true)
(define-const var1200 Bool (= var1571 var2574)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto return i0 
(assert (= (ite var1200 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {byteAt/822625918=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), u16bitAt/1097213481=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), getClassInfo/1878292087=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String), classname/-2086247967=([org.apache.ibatis.javassist.convert.TransformNewClass], java.lang.String)}
; {var486=org.apache.ibatis.javassist.convert.TransformNewClass, var336=r2, var1546=org.apache.ibatis.javassist.CtClass, var583=r7, var2655=i0, var60=org.apache.ibatis.javassist.bytecode.CodeIterator, var2557=r0, var2155=org.apache.ibatis.javassist.bytecode.ConstPool, var3878=r1, var928=i1, var3308=$i13, var3942=i20, var1571=$r5, var2574=$r4, var1200=$z0}
; {org.apache.ibatis.javassist.convert.TransformNewClass=var486, r2=var336, org.apache.ibatis.javassist.CtClass=var1546, r7=var583, i0=var2655, org.apache.ibatis.javassist.bytecode.CodeIterator=var60, r0=var2557, org.apache.ibatis.javassist.bytecode.ConstPool=var2155, r1=var3878, i1=var928, $i13=var3308, i20=var3942, $r5=var1571, $r4=var2574, $z0=var1200}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.convert.TransformNewClass;	r7 := @parameter0: org.apache.ibatis.javassist.CtClass;	i0 := @parameter1: int;	r0 := @parameter2: org.apache.ibatis.javassist.bytecode.CodeIterator;	r1 := @parameter3: org.apache.ibatis.javassist.bytecode.ConstPool;	i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>(i0);	if i1 != 187 goto (branch);	$i13 = i0 + 1;	i20 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int u16bitAt(int)>($i13);	$r5 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getClassInfo(int)>(i20);	$r4 = r2.<org.apache.ibatis.javassist.convert.TransformNewClass: java.lang.String classname>;	$z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z0 == 0 goto return i0;	return i0
;block_num 3