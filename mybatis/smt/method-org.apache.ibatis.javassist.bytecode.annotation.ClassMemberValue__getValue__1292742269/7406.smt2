(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2086 0)
(declare-sort var1615 0)
(declare-sort var2280 0)
(declare-sort var1519 0)
(declare-sort var2899 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/-1753983052 (var2086) String)
(declare-const null-var2086 var2086)
(declare-const null-var1615 var1615)
(declare-const null-var2280 var2280)
(declare-const null-var1519 var1519)
(declare-const var2899-TYPE ClassObject)
(declare-const var565 var2086) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.annotation.ClassMemberValue 
(assert (not (= var565 null-var2086)))
(declare-const var165 var1615) ; Statement: r2 := @parameter0: java.lang.ClassLoader 
(assert (not (= var165 null-var1615)))
(declare-const var2240 var2280) ; Statement: r13 := @parameter1: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var2240 null-var2280)))
(declare-const var2076 var1519) ; Statement: r14 := @parameter2: java.lang.reflect.Method 
(assert (not (= var2076 null-var1519)))
(assert true)
(define-const var83 String (getValue/-1753983052 var565)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.'annotation'.ClassMemberValue: java.lang.String getValue()>() 
(assert true)
(define-const var751 Bool (= var83 "void")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("void") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("int") 
(assert (not (= (ite var751 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var987 ClassObject var2899-TYPE) ; Statement: $r12 = <java.lang.Void: java.lang.Class TYPE> 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/-1753983052=([org.apache.ibatis.javassist.bytecode.annotation.ClassMemberValue], java.lang.String)}
; {var2086=org.apache.ibatis.javassist.bytecode.annotation.ClassMemberValue, var565=r0, var1615=java.lang.ClassLoader, var165=r2, var2280=org.apache.ibatis.javassist.ClassPool, var2240=r13, var1519=java.lang.reflect.Method, var2076=r14, var83=r1, var751=$z0, var2899=java.lang.Void, var987=$r12}
; {org.apache.ibatis.javassist.bytecode.annotation.ClassMemberValue=var2086, r0=var565, java.lang.ClassLoader=var1615, r2=var165, org.apache.ibatis.javassist.ClassPool=var2280, r13=var2240, java.lang.reflect.Method=var1519, r14=var2076, r1=var83, $z0=var751, java.lang.Void=var2899, $r12=var987}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.annotation.ClassMemberValue;	r2 := @parameter0: java.lang.ClassLoader;	r13 := @parameter1: org.apache.ibatis.javassist.ClassPool;	r14 := @parameter2: java.lang.reflect.Method;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.'annotation'.ClassMemberValue: java.lang.String getValue()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("void");	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("int");	$r12 = <java.lang.Void: java.lang.Class TYPE>;	return $r12
;block_num 2