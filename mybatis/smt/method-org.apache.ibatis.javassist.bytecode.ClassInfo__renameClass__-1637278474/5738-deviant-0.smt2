(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var454 0)
(declare-sort var1733 0)
(declare-sort var456 0)
(declare-sort var2342 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-68463819 (var454) Int)
(declare-fun getUtf8Info/465512870 (var1733 Int) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var454 var454)
(declare-const null-var1733 var1733)
(declare-const null-String String)
(declare-const null-var2342 var2342)
(declare-const var2162 var454) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.ClassInfo 
(assert (not (= var2162 null-var454)))
(declare-const var2409 var1733) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var2409 null-var1733)))
(declare-const var597 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var597 null-String)))
(declare-const var2646 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var2646 null-String)))
(declare-const var531 var2342) ; Statement: r4 := @parameter3: java.util.Map 
(assert (not (= var531 null-var2342)))
(define-const var940 Int (name/-68463819 var2162)) ; Statement: $i0 = r1.<org.apache.ibatis.javassist.bytecode.ClassInfo: int name> 
(assert true)
(define-const var781 String (getUtf8Info/465512870 var2409 var940)) ; Statement: r2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getUtf8Info(int)>($i0) 
(define-const var1171 String null-String) ; Statement: r7 = null 
(assert true)
(define-const var2494 Bool (= var781 var597)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto $c1 = virtualinvoke r2.<java.lang.String: char charAt(int)>(0) 
(assert (= (ite var2494 1 0) 0)) ; Cond: $z0 == 0 
(assert (not (and true (and (> (str.len var781) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {name/-68463819=([org.apache.ibatis.javassist.bytecode.ClassInfo], int), getUtf8Info/465512870=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var454=org.apache.ibatis.javassist.bytecode.ClassInfo, var2162=r1, var1733=org.apache.ibatis.javassist.bytecode.ConstPool, var2409=r0, var597=r3, var456=null_type, var2646=r5, var2342=java.util.Map, var531=r4, var940=$i0, var781=r2, var1171=r7, var2494=$z0, var3291=$c1, var2083=$i4}
; {org.apache.ibatis.javassist.bytecode.ClassInfo=var454, r1=var2162, org.apache.ibatis.javassist.bytecode.ConstPool=var1733, r0=var2409, r3=var597, null_type=var456, r5=var2646, java.util.Map=var2342, r4=var531, $i0=var940, r2=var781, r7=var1171, $z0=var2494, $c1=var3291, $i4=var2083}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.ClassInfo;	r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool;	r3 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	r4 := @parameter3: java.util.Map;	$i0 = r1.<org.apache.ibatis.javassist.bytecode.ClassInfo: int name>;	r2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getUtf8Info(int)>($i0);	r7 = null;	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto $c1 = virtualinvoke r2.<java.lang.String: char charAt(int)>(0);	$c1 = virtualinvoke r2.<java.lang.String: char charAt(int)>(0);	$i4 = (int) $c1;	if $i4 != 91 goto (branch);	if r7 == null goto return;	return
;block_num 4