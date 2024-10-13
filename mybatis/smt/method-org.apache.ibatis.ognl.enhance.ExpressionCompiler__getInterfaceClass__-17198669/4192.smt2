(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var844 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var844 var844)
(declare-const null-ClassObject ClassObject)
(declare-const var3464 var844) ; Statement: r2 := @this: org.apache.ibatis.ognl.enhance.ExpressionCompiler 
(assert (not (= var3464 null-var844)))
(declare-const var898 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var898 null-ClassObject)))
(assert true)
(define-const var2465 String (getName/-1958580599 var898)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1738 Bool (= var2465 "java.util.AbstractList$Itr")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("java.util.AbstractList$Itr") 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.Class: int getModifiers()>() 
(assert (not (= (ite var1738 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return class "Ljava/util/Iterator;" 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var844=org.apache.ibatis.ognl.enhance.ExpressionCompiler, var3464=r2, var898=r0, var2465=$r1, var1738=$z0}
; {org.apache.ibatis.ognl.enhance.ExpressionCompiler=var844, r2=var3464, r0=var898, $r1=var2465, $z0=var1738}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.ognl.enhance.ExpressionCompiler;	r0 := @parameter0: java.lang.Class;	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("java.util.AbstractList$Itr");	if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.Class: int getModifiers()>();	return class "Ljava/util/Iterator;"
;block_num 2