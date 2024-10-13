(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1740 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1239963277 (var1740) String)
(declare-const null-var1740 var1740)
(declare-const var2562 var1740) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.MethodInfo 
(assert (not (= var2562 null-var1740)))
(assert true)
(define-const var560 String (getName/1239963277 var2562)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getName()>() 
(assert true)
(define-const var2137 Bool (= var560 "<init>")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("<init>") 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var2137 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1455 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1239963277=([org.apache.ibatis.javassist.bytecode.MethodInfo], java.lang.String)}
; {var1740=org.apache.ibatis.javassist.bytecode.MethodInfo, var2562=r0, var560=r1, var2137=$z0, var1455=$z2}
; {org.apache.ibatis.javassist.bytecode.MethodInfo=var1740, r0=var2562, r1=var560, $z0=var2137, $z2=var1455}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.MethodInfo;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("<init>");	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3