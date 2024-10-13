(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1188 0)
(declare-sort var1335 0)
(declare-sort var3008 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun beanClass/1832807750 (var1188) ClassObject)
(declare-fun getInterfaces/-1280103563 (ClassObject) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var3008_newInstanceIfPossible/-513069811 (ClassObject) var1335)
(declare-fun arr-var1335-init () (Array Int var1335))
(declare-fun var3008_invoke/-461579807 (var1335 String (Array Int var1335)) var1335)
(declare-const null-var1188 var1188)
(declare-const null-var1335 var1335)
(declare-const null-__Array__Int__var1335__ (Array Int var1335))
(declare-const var3200 var1188) ; Statement: r0 := @this: cn.hutool.core.convert.impl.BeanConverter 
(assert (not (= var3200 null-var1188)))
(declare-const var2796 var1335) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var2796 null-var1335)))
(define-const var834 ClassObject (beanClass/1832807750 var3200)) ; Statement: $r1 = r0.<cn.hutool.core.convert.impl.BeanConverter: java.lang.Class beanClass> 
(assert true)
(define-const var837 (Array Int ClassObject) (getInterfaces/-1280103563 var834)) ; Statement: r2 = virtualinvoke $r1.<java.lang.Class: java.lang.Class[] getInterfaces()>() 
(define-const var52 Int (getLength-Arr-ClassObject-1 var837)) ; Statement: i0 = lengthof r2 
(define-const var3232 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $z0 = r3 instanceof java.util.Map 
(assert (not (>= var3232 var52))) ; Negate: Cond: i1 >= i0  
(define-const var38 ClassObject (select var837 var3232)) ; Statement: r23 = r2[i1] 
(define-const var2327 String "cn.hutool.json.JSONBeanParser") ; Statement: $r25 = "cn.hutool.json.JSONBeanParser" 
(assert true)
(define-const var386 String (getName/-1958580599 var38)) ; Statement: $r24 = virtualinvoke r23.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1959 Bool (= var2327 var386)) ; Statement: $z6 = virtualinvoke $r25.<java.lang.String: boolean equals(java.lang.Object)>($r24) 
 ; Statement: if $z6 == 0 goto i1 = i1 + 1 
(assert (not (= (ite var1959 1 0) 0))) ; Negate: Cond: $z6 == 0  
(define-const var2079 ClassObject (beanClass/1832807750 var3200)) ; Statement: $r26 = r0.<cn.hutool.core.convert.impl.BeanConverter: java.lang.Class beanClass> 
(define-const var1018 var1335 (var3008_newInstanceIfPossible/-513069811 var2079)) ; Statement: r27 = staticinvoke <cn.hutool.core.util.ReflectUtil: java.lang.Object newInstanceIfPossible(java.lang.Class)>($r26) 
(define-const var373 (Array Int var1335) arr-var1335-init) ; Statement: $r28 = newarray (java.lang.Object)[1] 
(declare-const var373!1 (Array Int var1335))
(assert (not (= var373!1 null-__Array__Int__var1335__)))
(assert (= (select var373!1 0) var2796)) ; Statement: $r28[0] = r3 
;(assert (var3008_invoke/-461579807 var1018 "parse" var373!1)) ; Statement: staticinvoke <cn.hutool.core.util.ReflectUtil: java.lang.Object invoke(java.lang.Object,java.lang.String,java.lang.Object[])>(r27, "parse", $r28) 

(declare-const var1018!1 var1335)
(declare-const var686 String)
(declare-const var373!2 (Array Int var1335))
 ; Statement: return r27 
(check-sat)
(get-model)
(get-unsat-core)
; {beanClass/1832807750=([cn.hutool.core.convert.impl.BeanConverter], java.lang.Class), getInterfaces/-1280103563=([java.lang.Class], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getName/-1958580599=([java.lang.Class], java.lang.String), var3008_newInstanceIfPossible/-513069811=([java.lang.Class], java.lang.Object), arr-var1335-init=([], java.lang.Object[]), var3008_invoke/-461579807=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object)}
; {var1188=cn.hutool.core.convert.impl.BeanConverter, var3200=r0, var1335=java.lang.Object, var2796=r3, var834=$r1, var837=r2, var52=i0, var3232=i1, var38=r23, var2327=$r25, var386=$r24, var1959=$z6, var2079=$r26, var3008=cn.hutool.core.util.ReflectUtil, var1018=r27, var373=$r28, var686="parse"}
; {cn.hutool.core.convert.impl.BeanConverter=var1188, r0=var3200, java.lang.Object=var1335, r3=var2796, $r1=var834, r2=var837, i0=var52, i1=var3232, r23=var38, $r25=var2327, $r24=var386, $z6=var1959, $r26=var2079, cn.hutool.core.util.ReflectUtil=var3008, r27=var1018, $r28=var373, "parse"=var686}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: cn.hutool.core.convert.impl.BeanConverter;	r3 := @parameter0: java.lang.Object;	$r1 = r0.<cn.hutool.core.convert.impl.BeanConverter: java.lang.Class beanClass>;	r2 = virtualinvoke $r1.<java.lang.Class: java.lang.Class[] getInterfaces()>();	i0 = lengthof r2;	i1 = 0;	if i1 >= i0 goto $z0 = r3 instanceof java.util.Map;	r23 = r2[i1];	$r25 = "cn.hutool.json.JSONBeanParser";	$r24 = virtualinvoke r23.<java.lang.Class: java.lang.String getName()>();	$z6 = virtualinvoke $r25.<java.lang.String: boolean equals(java.lang.Object)>($r24);	if $z6 == 0 goto i1 = i1 + 1;	$r26 = r0.<cn.hutool.core.convert.impl.BeanConverter: java.lang.Class beanClass>;	r27 = staticinvoke <cn.hutool.core.util.ReflectUtil: java.lang.Object newInstanceIfPossible(java.lang.Class)>($r26);	$r28 = newarray (java.lang.Object)[1];	$r28[0] = r3;	staticinvoke <cn.hutool.core.util.ReflectUtil: java.lang.Object invoke(java.lang.Object,java.lang.String,java.lang.Object[])>(r27, "parse", $r28);	return r27
;block_num 4