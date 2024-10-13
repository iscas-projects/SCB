(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1239963277 (var2504) String)
(declare-const null-var2504 var2504)
(declare-const var3503 var2504) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.MethodInfo 
(assert (not (= var3503 null-var2504)))
(assert true)
(define-const var2001 String (getName/1239963277 var3503)) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getName()>() 
(assert true)
(define-const var900 Bool (= var2001 "<init>")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("<init>") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1239963277=([org.apache.ibatis.javassist.bytecode.MethodInfo], java.lang.String)}
; {var2504=org.apache.ibatis.javassist.bytecode.MethodInfo, var3503=r0, var2001=$r1, var900=$z0}
; {org.apache.ibatis.javassist.bytecode.MethodInfo=var2504, r0=var3503, $r1=var2001, $z0=var900}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.MethodInfo;	$r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("<init>");	return $z0
;block_num 1