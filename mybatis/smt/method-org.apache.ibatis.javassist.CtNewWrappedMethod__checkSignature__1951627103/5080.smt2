(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2555 0)
(declare-sort var2319 0)
(declare-sort var3882 0)
(declare-sort var1342 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMethodInfo2/-1623269181 (var1342) var3882)
(declare-fun cast-from-var2555-to-var1342 (var2555) var1342)
(declare-fun getDescriptor/241025769 (var3882) String)
(declare-const null-var2555 var2555)
(declare-const null-String String)
(declare-const var3772 var2555) ; Statement: r1 := @parameter0: org.apache.ibatis.javassist.CtMethod 
(assert (not (= var3772 null-var2555)))
(declare-const var391 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var391 null-String)))
(assert true)
(define-const var1654 var3882 (getMethodInfo2/-1623269181 (cast-from-var2555-to-var1342 var3772))) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtMethod: org.apache.ibatis.javassist.bytecode.MethodInfo getMethodInfo2()>() 
(assert true)
(define-const var3645 String (getDescriptor/241025769 var1654)) ; Statement: $r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>() 
(assert true)
(define-const var1388 Bool (= var391 var3645)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1388 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getMethodInfo2/-1623269181=([org.apache.ibatis.javassist.CtBehavior], org.apache.ibatis.javassist.bytecode.MethodInfo), cast-from-var2555-to-var1342=([org.apache.ibatis.javassist.CtMethod], org.apache.ibatis.javassist.CtBehavior), getDescriptor/241025769=([org.apache.ibatis.javassist.bytecode.MethodInfo], java.lang.String)}
; {var2555=org.apache.ibatis.javassist.CtMethod, var3772=r1, var391=r0, var2319=null_type, var3882=org.apache.ibatis.javassist.bytecode.MethodInfo, var1342=org.apache.ibatis.javassist.CtBehavior, var1654=$r2, var3645=$r3, var1388=$z0}
; {org.apache.ibatis.javassist.CtMethod=var2555, r1=var3772, r0=var391, null_type=var2319, org.apache.ibatis.javassist.bytecode.MethodInfo=var3882, org.apache.ibatis.javassist.CtBehavior=var1342, $r2=var1654, $r3=var3645, $z0=var1388}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: org.apache.ibatis.javassist.CtMethod;	r0 := @parameter1: java.lang.String;	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtMethod: org.apache.ibatis.javassist.bytecode.MethodInfo getMethodInfo2()>();	$r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 != 0 goto return;	return
;block_num 2