(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1917 0)
(declare-sort var2391 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getGenericSuperclass/-1469059380 (ClassObject) ClassObject)
(declare-fun cast-from-ClassObject-to-var2391 (ClassObject) var2391)
(declare-fun var2391_getActualTypeArguments/-973063842 (var2391) (Array Int ClassObject))
(declare-const null-var1917 var1917)
(declare-const null-ClassObject ClassObject)
(declare-const var2477 var1917) ; Statement: r7 := @this: org.apache.ibatis.type.TypeReference 
(assert (not (= var2477 null-var1917)))
(declare-const var2978 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2978 null-ClassObject)))
(assert true)
(define-const var3292 ClassObject (getGenericSuperclass/-1469059380 var2978)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Type getGenericSuperclass()>() 
(define-const var3266 Bool true) ; Statement: $z0 = r1 instanceof java.lang.Class 
 ; Statement: if $z0 == 0 goto $r2 = (java.lang.reflect.ParameterizedType) r1 
(assert (= (ite var3266 1 0) 0)) ; Cond: $z0 == 0 
(define-const var25 var2391 (cast-from-ClassObject-to-var2391 var3292)) ; Statement: $r2 = (java.lang.reflect.ParameterizedType) r1 
(define-const var2027 (Array Int ClassObject) (var2391_getActualTypeArguments/-973063842 var25)) ; Statement: $r3 = interfaceinvoke $r2.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type[] getActualTypeArguments()>() 
(define-const var2079 ClassObject (select var2027 0)) ; Statement: r15 = $r3[0] 
(define-const var2702 Bool true) ; Statement: $z1 = r15 instanceof java.lang.reflect.ParameterizedType 
 ; Statement: if $z1 == 0 goto return r15 
(assert (= (ite var2702 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getGenericSuperclass/-1469059380=([java.lang.Class], java.lang.reflect.Type), cast-from-ClassObject-to-var2391=([java.lang.reflect.Type], java.lang.reflect.ParameterizedType), var2391_getActualTypeArguments/-973063842=([java.lang.reflect.ParameterizedType], java.lang.reflect.Type[])}
; {var1917=org.apache.ibatis.type.TypeReference, var2477=r7, var2978=r0, var3292=r1, var3266=$z0, var2391=java.lang.reflect.ParameterizedType, var25=$r2, var2027=$r3, var2079=r15, var2702=$z1}
; {org.apache.ibatis.type.TypeReference=var1917, r7=var2477, r0=var2978, r1=var3292, $z0=var3266, java.lang.reflect.ParameterizedType=var2391, $r2=var25, $r3=var2027, r15=var2079, $z1=var2702}
;seq 
;cnt {}
;stmts r7 := @this: org.apache.ibatis.type.TypeReference;	r0 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Type getGenericSuperclass()>();	$z0 = r1 instanceof java.lang.Class;	if $z0 == 0 goto $r2 = (java.lang.reflect.ParameterizedType) r1;	$r2 = (java.lang.reflect.ParameterizedType) r1;	$r3 = interfaceinvoke $r2.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type[] getActualTypeArguments()>();	r15 = $r3[0];	$z1 = r15 instanceof java.lang.reflect.ParameterizedType;	if $z1 == 0 goto return r15;	return r15
;block_num 3