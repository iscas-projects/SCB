(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1130 0)
(declare-sort var3858 0)
(declare-sort var2131 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classname/619857159 (var1130) String)
(declare-const null-var1130 var1130)
(declare-const null-String String)
(declare-const null-var2131 var2131)
(declare-const var3546 var1130) ; Statement: r0 := @this: org.apache.ibatis.javassist.convert.TransformCall 
(assert (not (= var3546 null-var1130)))
(declare-const var509 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var509 null-String)))
(declare-const var2080 var2131) ; Statement: r3 := @parameter1: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var2080 null-var2131)))
(define-const var2125 String (classname/619857159 var3546)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.convert.TransformCall: java.lang.String classname> 
(assert true)
(define-const var1690 Bool (= var2125 var509)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto r13 = virtualinvoke r3.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass get(java.lang.String)>(r1) 
(assert (not (= (ite var1690 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {classname/619857159=([org.apache.ibatis.javassist.convert.TransformCall], java.lang.String)}
; {var1130=org.apache.ibatis.javassist.convert.TransformCall, var3546=r0, var509=r1, var3858=null_type, var2131=org.apache.ibatis.javassist.ClassPool, var2080=r3, var2125=$r2, var1690=$z0}
; {org.apache.ibatis.javassist.convert.TransformCall=var1130, r0=var3546, r1=var509, null_type=var3858, org.apache.ibatis.javassist.ClassPool=var2131, r3=var2080, $r2=var2125, $z0=var1690}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.convert.TransformCall;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: org.apache.ibatis.javassist.ClassPool;	$r2 = r0.<org.apache.ibatis.javassist.convert.TransformCall: java.lang.String classname>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto r13 = virtualinvoke r3.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass get(java.lang.String)>(r1);	return 1
;block_num 2