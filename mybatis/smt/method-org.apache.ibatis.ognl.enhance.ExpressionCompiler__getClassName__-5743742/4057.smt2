(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2106 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const Iterator!class ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var2106 var2106)
(declare-const null-ClassObject ClassObject)
(declare-const var1665 var2106) ; Statement: r2 := @this: org.apache.ibatis.ognl.enhance.ExpressionCompiler 
(assert (not (= var1665 null-var2106)))
(declare-const var1623 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1623 null-ClassObject)))
(assert true)
(define-const var348 String (getName/-1958580599 var1623)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3249 Bool (= var348 "java.util.AbstractList$Itr")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("java.util.AbstractList$Itr") 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.Class: int getModifiers()>() 
(assert (not (= (ite var3249 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var839 ClassObject Iterator!class) ; Statement: $r6 = class "Ljava/util/Iterator;" 
(assert true)
(define-const var2161 String (getName/-1958580599 var839)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var2106=org.apache.ibatis.ognl.enhance.ExpressionCompiler, var1665=r2, var1623=r0, var348=$r1, var3249=$z0, var839=$r6, var2161=$r7}
; {org.apache.ibatis.ognl.enhance.ExpressionCompiler=var2106, r2=var1665, r0=var1623, $r1=var348, $z0=var3249, $r6=var839, $r7=var2161}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.ognl.enhance.ExpressionCompiler;	r0 := @parameter0: java.lang.Class;	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("java.util.AbstractList$Itr");	if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.Class: int getModifiers()>();	$r6 = class "Ljava/util/Iterator;";	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	return $r7
;block_num 2