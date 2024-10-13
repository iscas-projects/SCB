(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var169 0)
(declare-sort var913 0)
(declare-sort var3614 0)
(declare-sort var1660 0)
(declare-sort var2891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getItem/-1391914635 (var169 Int) var3614)
(declare-fun cast-from-var3614-to-var1660 (var3614) var1660)
(declare-fun nameAndTypeIndex/-655785610 (var1660) Int)
(declare-fun cast-from-var3614-to-var2891 (var3614) var2891)
(declare-fun memberName/-1709266909 (var2891) Int)
(declare-fun getUtf8Info/465512870 (var169 Int) String)
(declare-const null-var169 var169)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2857 var169) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var2857 null-var169)))
(declare-const var3474 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3474 null-String)))
(declare-const var2383 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var2383 null-String)))
(declare-const var842 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var842 null-Int)))
(assert true)
(define-const var2222 var3614 (getItem/-1391914635 var2857 var842)) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: org.apache.ibatis.javassist.bytecode.ConstInfo getItem(int)>(i0) 
(define-const var1035 var1660 (cast-from-var3614-to-var1660 var2222)) ; Statement: r2 = (org.apache.ibatis.javassist.bytecode.MemberrefInfo) $r1 
(define-const var817 Int (nameAndTypeIndex/-655785610 var1035)) ; Statement: $i1 = r2.<org.apache.ibatis.javassist.bytecode.MemberrefInfo: int nameAndTypeIndex> 
(assert true)
(define-const var478 var3614 (getItem/-1391914635 var2857 var817)) ; Statement: $r3 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: org.apache.ibatis.javassist.bytecode.ConstInfo getItem(int)>($i1) 
(define-const var248 var2891 (cast-from-var3614-to-var2891 var478)) ; Statement: r4 = (org.apache.ibatis.javassist.bytecode.NameAndTypeInfo) $r3 
(define-const var2543 Int (memberName/-1709266909 var248)) ; Statement: $i2 = r4.<org.apache.ibatis.javassist.bytecode.NameAndTypeInfo: int memberName> 
(assert true)
(define-const var88 String (getUtf8Info/465512870 var2857 var2543)) ; Statement: $r6 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getUtf8Info(int)>($i2) 
(assert true)
(define-const var558 Bool (= var88 var3474)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var558 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getItem/-1391914635=([org.apache.ibatis.javassist.bytecode.ConstPool, int], org.apache.ibatis.javassist.bytecode.ConstInfo), cast-from-var3614-to-var1660=([org.apache.ibatis.javassist.bytecode.ConstInfo], org.apache.ibatis.javassist.bytecode.MemberrefInfo), nameAndTypeIndex/-655785610=([org.apache.ibatis.javassist.bytecode.MemberrefInfo], int), cast-from-var3614-to-var2891=([org.apache.ibatis.javassist.bytecode.ConstInfo], org.apache.ibatis.javassist.bytecode.NameAndTypeInfo), memberName/-1709266909=([org.apache.ibatis.javassist.bytecode.NameAndTypeInfo], int), getUtf8Info/465512870=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String)}
; {var169=org.apache.ibatis.javassist.bytecode.ConstPool, var2857=r0, var3474=r5, var913=null_type, var2383=r7, var842=i0, var3614=org.apache.ibatis.javassist.bytecode.ConstInfo, var2222=$r1, var1660=org.apache.ibatis.javassist.bytecode.MemberrefInfo, var1035=r2, var817=$i1, var478=$r3, var2891=org.apache.ibatis.javassist.bytecode.NameAndTypeInfo, var248=r4, var2543=$i2, var88=$r6, var558=$z0}
; {org.apache.ibatis.javassist.bytecode.ConstPool=var169, r0=var2857, r5=var3474, null_type=var913, r7=var2383, i0=var842, org.apache.ibatis.javassist.bytecode.ConstInfo=var3614, $r1=var2222, org.apache.ibatis.javassist.bytecode.MemberrefInfo=var1660, r2=var1035, $i1=var817, $r3=var478, org.apache.ibatis.javassist.bytecode.NameAndTypeInfo=var2891, r4=var248, $i2=var2543, $r6=var88, $z0=var558}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.ConstPool;	r5 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.String;	i0 := @parameter2: int;	$r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: org.apache.ibatis.javassist.bytecode.ConstInfo getItem(int)>(i0);	r2 = (org.apache.ibatis.javassist.bytecode.MemberrefInfo) $r1;	$i1 = r2.<org.apache.ibatis.javassist.bytecode.MemberrefInfo: int nameAndTypeIndex>;	$r3 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: org.apache.ibatis.javassist.bytecode.ConstInfo getItem(int)>($i1);	r4 = (org.apache.ibatis.javassist.bytecode.NameAndTypeInfo) $r3;	$i2 = r4.<org.apache.ibatis.javassist.bytecode.NameAndTypeInfo: int memberName>;	$r6 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getUtf8Info(int)>($i2);	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5);	if $z0 == 0 goto return null;	return null
;block_num 2