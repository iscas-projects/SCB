(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getSuperclass/1296282036 (ClassObject) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var1324 var1324)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var29 var1324) ; Statement: r3 := @this: org.apache.ibatis.ognl.enhance.ExpressionCompiler 
(assert (not (= var29 null-var1324)))
(declare-const var2534 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2534 null-ClassObject)))
(declare-const var2249 (Array Int ClassObject)) ; Statement: r0 := @parameter1: java.lang.Class[] 
(assert (not (= var2249 null-__Array__Int__ClassObject__)))
(define-const var1831 Int (getLength-Arr-ClassObject-1 var2249)) ; Statement: i3 = lengthof r0 
(define-const var1310 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i3 goto r10 = virtualinvoke r1.<java.lang.Class: java.lang.Class getSuperclass()>() 
(assert (>= var1310 var1831)) ; Cond: i4 >= i3 
(assert true)
(define-const var3060 ClassObject (getSuperclass/1296282036 var2534)) ; Statement: r10 = virtualinvoke r1.<java.lang.Class: java.lang.Class getSuperclass()>() 
 ; Statement: if r10 == null goto $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert (= var3060 null-ClassObject)) ; Cond: r10 == null 
(assert true)
(define-const var1288 String (getName/-1958580599 var2534)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getSuperclass/1296282036=([java.lang.Class], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var1324=org.apache.ibatis.ognl.enhance.ExpressionCompiler, var29=r3, var2534=r1, var2249=r0, var1831=i3, var1310=i4, var3060=r10, var1288=$r2}
; {org.apache.ibatis.ognl.enhance.ExpressionCompiler=var1324, r3=var29, r1=var2534, r0=var2249, i3=var1831, i4=var1310, r10=var3060, $r2=var1288}
;seq 
;cnt {}
;stmts r3 := @this: org.apache.ibatis.ognl.enhance.ExpressionCompiler;	r1 := @parameter0: java.lang.Class;	r0 := @parameter1: java.lang.Class[];	i3 = lengthof r0;	i4 = 0;	if i4 >= i3 goto r10 = virtualinvoke r1.<java.lang.Class: java.lang.Class getSuperclass()>();	r10 = virtualinvoke r1.<java.lang.Class: java.lang.Class getSuperclass()>();	if r10 == null goto $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	return $r2
;block_num 4