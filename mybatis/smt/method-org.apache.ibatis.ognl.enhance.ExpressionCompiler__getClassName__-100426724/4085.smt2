(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1716 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-var1716 var1716)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var2427 var1716) ; Statement: r3 := @this: org.apache.ibatis.ognl.enhance.ExpressionCompiler 
(assert (not (= var2427 null-var1716)))
(declare-const var80 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var80 null-ClassObject)))
(declare-const var2053 (Array Int ClassObject)) ; Statement: r0 := @parameter1: java.lang.Class[] 
(assert (not (= var2053 null-__Array__Int__ClassObject__)))
(define-const var798 Int (getLength-Arr-ClassObject-1 var2053)) ; Statement: i3 = lengthof r0 
(define-const var306 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i3 goto r10 = virtualinvoke r1.<java.lang.Class: java.lang.Class getSuperclass()>() 
(assert (not (>= var306 var798))) ; Negate: Cond: i4 >= i3  
(define-const var1967 ClassObject (select var2053 var306)) ; Statement: r5 = r0[i4] 
(assert true)
(define-const var282 String (getName/-1958580599 var1967)) ; Statement: $r6 = virtualinvoke r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1762 Int (indexOf/-1209756239 var282 "util.List")) ; Statement: $i1 = virtualinvoke $r6.<java.lang.String: int indexOf(java.lang.String)>("util.List") 
 ; Statement: if $i1 <= 0 goto $r7 = virtualinvoke r5.<java.lang.Class: java.lang.String getName()>() 
(assert (not (<= var1762 0))) ; Negate: Cond: $i1 <= 0  
(assert true)
(define-const var2347 String (getName/-1958580599 var1967)) ; Statement: $r9 = virtualinvoke r5.<java.lang.Class: java.lang.String getName()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getName/-1958580599=([java.lang.Class], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var1716=org.apache.ibatis.ognl.enhance.ExpressionCompiler, var2427=r3, var80=r1, var2053=r0, var798=i3, var306=i4, var1967=r5, var282=$r6, var1762=$i1, var2347=$r9}
; {org.apache.ibatis.ognl.enhance.ExpressionCompiler=var1716, r3=var2427, r1=var80, r0=var2053, i3=var798, i4=var306, r5=var1967, $r6=var282, $i1=var1762, $r9=var2347}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.ibatis.ognl.enhance.ExpressionCompiler;	r1 := @parameter0: java.lang.Class;	r0 := @parameter1: java.lang.Class[];	i3 = lengthof r0;	i4 = 0;	if i4 >= i3 goto r10 = virtualinvoke r1.<java.lang.Class: java.lang.Class getSuperclass()>();	r5 = r0[i4];	$r6 = virtualinvoke r5.<java.lang.Class: java.lang.String getName()>();	$i1 = virtualinvoke $r6.<java.lang.String: int indexOf(java.lang.String)>("util.List");	if $i1 <= 0 goto $r7 = virtualinvoke r5.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke r5.<java.lang.Class: java.lang.String getName()>();	return $r9
;block_num 4