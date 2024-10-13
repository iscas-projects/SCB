(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var784 0)
(declare-sort var3890 0)
(declare-sort var2382 0)
(declare-sort var1825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFieldrefName/994231339 (var3890 Int) String)
(declare-const null-var784 var784)
(declare-const null-var3890 var3890)
(declare-const null-var2382 var2382)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const var3074 var784) ; Statement: r3 := @parameter0: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var3074 null-var784)))
(declare-const var1988 var3890) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var1988 null-var3890)))
(declare-const var2570 var2382) ; Statement: r5 := @parameter2: org.apache.ibatis.javassist.CtClass 
(assert (not (= var2570 null-var2382)))
(declare-const var713 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var713 null-String)))
(declare-const var410 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var410 null-Bool)))
(declare-const var2953 Int) ; Statement: i0 := @parameter5: int 
(assert (not (= var2953 null-Int)))
(assert true)
(define-const var924 String (getFieldrefName/994231339 var1988 var2953)) ; Statement: $r2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getFieldrefName(int)>(i0) 
(assert true)
(define-const var850 Bool (= var924 var713)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r4 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getFieldrefClassName(int)>(i0) 
(assert (not (not (= (ite var850 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getFieldrefName/994231339=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String)}
; {var784=org.apache.ibatis.javassist.ClassPool, var3074=r3, var3890=org.apache.ibatis.javassist.bytecode.ConstPool, var1988=r0, var2382=org.apache.ibatis.javassist.CtClass, var2570=r5, var713=r1, var1825=null_type, var410=z1, var2953=i0, var924=$r2, var850=$z0}
; {org.apache.ibatis.javassist.ClassPool=var784, r3=var3074, org.apache.ibatis.javassist.bytecode.ConstPool=var3890, r0=var1988, org.apache.ibatis.javassist.CtClass=var2382, r5=var2570, r1=var713, null_type=var1825, z1=var410, i0=var2953, $r2=var924, $z0=var850}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @parameter0: org.apache.ibatis.javassist.ClassPool;	r0 := @parameter1: org.apache.ibatis.javassist.bytecode.ConstPool;	r5 := @parameter2: org.apache.ibatis.javassist.CtClass;	r1 := @parameter3: java.lang.String;	z1 := @parameter4: boolean;	i0 := @parameter5: int;	$r2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getFieldrefName(int)>(i0);	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto $r4 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getFieldrefClassName(int)>(i0);	return null
;block_num 2