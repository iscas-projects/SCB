(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1261 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1239963277 (var1261) String)
(declare-const null-var1261 var1261)
(declare-const var1417 var1261) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.MethodInfo 
(assert (not (= var1417 null-var1261)))
(assert true)
(define-const var2392 String (getName/1239963277 var1417)) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getName()>() 
(assert true)
(define-const var937 Bool (= var2392 "<clinit>")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("<clinit>") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1239963277=([org.apache.ibatis.javassist.bytecode.MethodInfo], java.lang.String)}
; {var1261=org.apache.ibatis.javassist.bytecode.MethodInfo, var1417=r0, var2392=$r1, var937=$z0}
; {org.apache.ibatis.javassist.bytecode.MethodInfo=var1261, r0=var1417, $r1=var2392, $z0=var937}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.MethodInfo;	$r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("<clinit>");	return $z0
;block_num 1