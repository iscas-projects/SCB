(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var21 0)
(declare-sort var3554 0)
(declare-sort var907 0)
(declare-sort var3566 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classname/619857159 (var21) String)
(declare-const null-var21 var21)
(declare-const null-String String)
(declare-const null-var907 var907)
(declare-const null-var3566 var3566)
(declare-const var3177 var21) ; Statement: r0 := @this: org.apache.ibatis.javassist.convert.TransformCall 
(assert (not (= var3177 null-var21)))
(declare-const var2643 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2643 null-String)))
(declare-const var1061 var907) ; Statement: r3 := @parameter1: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var1061 null-var907)))
(define-const var357 String (classname/619857159 var3177)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.convert.TransformCall: java.lang.String classname> 
(assert true)
(define-const var3627 Bool (= var357 var2643)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto r13 = virtualinvoke r3.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass get(java.lang.String)>(r1) 
(assert (not (= (ite var3627 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var3809 var3566) ; Statement: $r11 := @caughtexception 
(assert (not (= var3809 null-var3566)))
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {classname/619857159=([org.apache.ibatis.javassist.convert.TransformCall], java.lang.String)}
; {var21=org.apache.ibatis.javassist.convert.TransformCall, var3177=r0, var2643=r1, var3554=null_type, var907=org.apache.ibatis.javassist.ClassPool, var1061=r3, var357=$r2, var3627=$z0, var3566=org.apache.ibatis.javassist.NotFoundException, var3809=$r11}
; {org.apache.ibatis.javassist.convert.TransformCall=var21, r0=var3177, r1=var2643, null_type=var3554, org.apache.ibatis.javassist.ClassPool=var907, r3=var1061, $r2=var357, $z0=var3627, org.apache.ibatis.javassist.NotFoundException=var3566, $r11=var3809}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.convert.TransformCall;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: org.apache.ibatis.javassist.ClassPool;	$r2 = r0.<org.apache.ibatis.javassist.convert.TransformCall: java.lang.String classname>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto r13 = virtualinvoke r3.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass get(java.lang.String)>(r1);	$r11 := @caughtexception;	return 0
;block_num 2