(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var743 0)
(declare-sort var3655 0)
(declare-sort var1760 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1611768686 (var1760) String)
(declare-const null-var743 var743)
(declare-const null-var3655 var3655)
(declare-const null-var1760 var1760)
(declare-const var3322 var743) ; Statement: r3 := @this: org.apache.ibatis.javassist.CtField$StringInitializer 
(assert (not (= var3322 null-var743)))
(declare-const var1827 var3655) ; Statement: r2 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var1827 null-var3655)))
(declare-const var158 var1760) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.CtClass 
(assert (not (= var158 null-var1760)))
(assert true)
(define-const var2638 String (getName/1611768686 var158)) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var2399 Bool (= var2638 "java.lang.String")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String") 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var2399 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String)}
; {var743=org.apache.ibatis.javassist.CtField$StringInitializer, var3322=r3, var3655=org.apache.ibatis.javassist.bytecode.ConstPool, var1827=r2, var1760=org.apache.ibatis.javassist.CtClass, var158=r0, var2638=$r1, var2399=$z0}
; {org.apache.ibatis.javassist.CtField$StringInitializer=var743, r3=var3322, org.apache.ibatis.javassist.bytecode.ConstPool=var3655, r2=var1827, org.apache.ibatis.javassist.CtClass=var1760, r0=var158, $r1=var2638, $z0=var2399}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.apache.ibatis.javassist.CtField$StringInitializer;	r2 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool;	r0 := @parameter1: org.apache.ibatis.javassist.CtClass;	$r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");	if $z0 == 0 goto return 0;	return 0
;block_num 2