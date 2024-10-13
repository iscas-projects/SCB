(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3524 0)
(declare-sort var1678 0)
(declare-sort var1338 0)
(declare-sort var2179 0)
(declare-sort var3462 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-68463819 (var3524) Int)
(declare-fun getUtf8Info/465512870 (var1678 Int) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1338_get/1088891777 (var1338 var3462) var3462)
(declare-fun cast-from-String-to-var3462 (String) var3462)
(declare-fun cast-from-var3462-to-String (var3462) String)
(declare-const null-var3524 var3524)
(declare-const null-var1678 var1678)
(declare-const null-var1338 var1338)
(declare-const null-String String)
(declare-const var3066 var3524) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.ClassInfo 
(assert (not (= var3066 null-var3524)))
(declare-const var2101 var1678) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var2101 null-var1678)))
(declare-const var1236 var1338) ; Statement: r3 := @parameter1: java.util.Map 
(assert (not (= var1236 null-var1338)))
(declare-const var2206 var1338) ; Statement: r5 := @parameter2: java.util.Map 
(assert (not (= var2206 null-var1338)))
(define-const var1578 Int (name/-68463819 var3066)) ; Statement: $i0 = r1.<org.apache.ibatis.javassist.bytecode.ClassInfo: int name> 
(assert true)
(define-const var1014 String (getUtf8Info/465512870 var2101 var1578)) ; Statement: r2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getUtf8Info(int)>($i0) 
(define-const var1436 String null-String) ; Statement: r6 = null 
(assert (not (and true (and (> (str.len var1014) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {name/-68463819=([org.apache.ibatis.javassist.bytecode.ClassInfo], int), getUtf8Info/465512870=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var1338_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3462=([java.lang.String], java.lang.Object), cast-from-var3462-to-String=([java.lang.Object], java.lang.String)}
; {var3524=org.apache.ibatis.javassist.bytecode.ClassInfo, var3066=r1, var1678=org.apache.ibatis.javassist.bytecode.ConstPool, var2101=r0, var1338=java.util.Map, var1236=r3, var2206=r5, var1578=$i0, var1014=r2, var2179=null_type, var1436=r6, var3490=$c1, var105=$i4, var3462=java.lang.Object, var1840=$r4, var2785=r8}
; {org.apache.ibatis.javassist.bytecode.ClassInfo=var3524, r1=var3066, org.apache.ibatis.javassist.bytecode.ConstPool=var1678, r0=var2101, java.util.Map=var1338, r3=var1236, r5=var2206, $i0=var1578, r2=var1014, null_type=var2179, r6=var1436, $c1=var3490, $i4=var105, java.lang.Object=var3462, $r4=var1840, r8=var2785}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.ClassInfo;	r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool;	r3 := @parameter1: java.util.Map;	r5 := @parameter2: java.util.Map;	$i0 = r1.<org.apache.ibatis.javassist.bytecode.ClassInfo: int name>;	r2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getUtf8Info(int)>($i0);	r6 = null;	$c1 = virtualinvoke r2.<java.lang.String: char charAt(int)>(0);	$i4 = (int) $c1;	if $i4 != 91 goto $r4 = interfaceinvoke r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2);	$r4 = interfaceinvoke r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2);	r8 = (java.lang.String) $r4;	if r8 == null goto (branch);	if r6 == null goto return;	return
;block_num 4