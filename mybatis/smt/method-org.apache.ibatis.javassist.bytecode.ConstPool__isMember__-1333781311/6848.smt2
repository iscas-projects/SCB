(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3132 0)
(declare-sort var2784 0)
(declare-sort var3492 0)
(declare-sort var1691 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getItem/-1391914635 (var3132 Int) var3492)
(declare-fun cast-from-var3492-to-var1691 (var3492) var1691)
(declare-fun classIndex/-655785610 (var1691) Int)
(declare-fun getClassInfo/1878292087 (var3132 Int) String)
(declare-const null-var3132 var3132)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var200 var3132) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var200 null-var3132)))
(declare-const var884 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var884 null-String)))
(declare-const var3911 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var3911 null-String)))
(declare-const var3653 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3653 null-Int)))
(assert true)
(define-const var3257 var3492 (getItem/-1391914635 var200 var3653)) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: org.apache.ibatis.javassist.bytecode.ConstInfo getItem(int)>(i0) 
(define-const var1436 var1691 (cast-from-var3492-to-var1691 var3257)) ; Statement: r2 = (org.apache.ibatis.javassist.bytecode.MemberrefInfo) $r1 
(define-const var1577 Int (classIndex/-655785610 var1436)) ; Statement: $i1 = r2.<org.apache.ibatis.javassist.bytecode.MemberrefInfo: int classIndex> 
(assert true)
(define-const var2830 String (getClassInfo/1878292087 var200 var1577)) ; Statement: $r4 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getClassInfo(int)>($i1) 
(assert true)
(define-const var3611 Bool (= var2830 var884)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var3611 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getItem/-1391914635=([org.apache.ibatis.javassist.bytecode.ConstPool, int], org.apache.ibatis.javassist.bytecode.ConstInfo), cast-from-var3492-to-var1691=([org.apache.ibatis.javassist.bytecode.ConstInfo], org.apache.ibatis.javassist.bytecode.MemberrefInfo), classIndex/-655785610=([org.apache.ibatis.javassist.bytecode.MemberrefInfo], int), getClassInfo/1878292087=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String)}
; {var3132=org.apache.ibatis.javassist.bytecode.ConstPool, var200=r0, var884=r3, var2784=null_type, var3911=r7, var3653=i0, var3492=org.apache.ibatis.javassist.bytecode.ConstInfo, var3257=$r1, var1691=org.apache.ibatis.javassist.bytecode.MemberrefInfo, var1436=r2, var1577=$i1, var2830=$r4, var3611=$z0}
; {org.apache.ibatis.javassist.bytecode.ConstPool=var3132, r0=var200, r3=var884, null_type=var2784, r7=var3911, i0=var3653, org.apache.ibatis.javassist.bytecode.ConstInfo=var3492, $r1=var3257, org.apache.ibatis.javassist.bytecode.MemberrefInfo=var1691, r2=var1436, $i1=var1577, $r4=var2830, $z0=var3611}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.ConstPool;	r3 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.String;	i0 := @parameter2: int;	$r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: org.apache.ibatis.javassist.bytecode.ConstInfo getItem(int)>(i0);	r2 = (org.apache.ibatis.javassist.bytecode.MemberrefInfo) $r1;	$i1 = r2.<org.apache.ibatis.javassist.bytecode.MemberrefInfo: int classIndex>;	$r4 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getClassInfo(int)>($i1);	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto return 0;	return 0
;block_num 2