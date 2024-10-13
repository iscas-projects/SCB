(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var937 0)
(declare-sort var2946 0)
(declare-sort var3163 0)
(declare-sort var3774 0)
(declare-sort var2670 0)
(declare-sort var3743 0)
(declare-sort var2888 0)
(declare-sort var2902 0)
(declare-sort var2708 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2888!class ClassObject)
(declare-fun var2670_getAnnotations/-1744520292 (var3743) (Array Int var3774))
(declare-fun cast-from-var2946-to-var3743 (var2946) var3743)
(declare-fun getLength-Arr-var3774-1 ((Array Int var3774)) Int)
(declare-fun var3774_annotationType/-1467926858 (var3774) ClassObject)
(declare-fun var2670_findAnnotation/-1802172989 (var3774 ClassObject) var3774)
(declare-fun cast-from-var3774-to-var2888 (var3774) var2888)
(declare-fun var2902_nonNull/-1380871950 (var2708) Bool)
(declare-fun cast-from-var2888-to-var2708 (var2888) var2708)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var937 var937)
(declare-const null-var2946 var2946)
(declare-const null-String String)
(declare-const var3522 var937) ; Statement: r10 := @this: com.alibaba.fastjson2.JSONObject 
(assert (not (= var3522 null-var937)))
(declare-const var1852 var2946) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var1852 null-var2946)))
(define-const var2316 String null-String) ; Statement: r11 = null 
(define-const var1355 (Array Int var3774) (var2670_getAnnotations/-1744520292 (cast-from-var2946-to-var3743 var1852))) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.'annotation'.Annotation[] getAnnotations(java.lang.reflect.AnnotatedElement)>(r0) 
(define-const var2007 Int (getLength-Arr-var3774-1 var1355)) ; Statement: i0 = lengthof r1 
(define-const var2252 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return r11 
(assert (not (>= var2252 var2007))) ; Negate: Cond: i1 >= i0  
(define-const var2626 var3774 (select var1355 var2252)) ; Statement: r2 = r1[i1] 
(define-const var590 ClassObject (var3774_annotationType/-1467926858 var2626)) ; Statement: r3 = interfaceinvoke r2.<java.lang.'annotation'.Annotation: java.lang.Class annotationType()>() 
(define-const var2415 var3774 (var2670_findAnnotation/-1802172989 var2626 var2888!class)) ; Statement: $r4 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.'annotation'.Annotation findAnnotation(java.lang.'annotation'.Annotation,java.lang.Class)>(r2, class "Lcom/alibaba/fastjson2/annotation/JSONField;") 
(define-const var731 var2888 (cast-from-var3774-to-var2888 var2415)) ; Statement: r5 = (com.alibaba.fastjson2.annotation.JSONField) $r4 
(define-const var2781 Bool (var2902_nonNull/-1380871950 (cast-from-var2888-to-var2708 var731))) ; Statement: $z0 = staticinvoke <java.util.Objects: boolean nonNull(java.lang.Object)>(r5) 
 ; Statement: if $z0 == 0 goto $r7 = "com.alibaba.fastjson.annotation.JSONField" 
(assert (= (ite var2781 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1763 String "com.alibaba.fastjson.annotation.JSONField") ; Statement: $r7 = "com.alibaba.fastjson.annotation.JSONField" 
(assert true)
(define-const var607 String (getName/-1958580599 var590)) ; Statement: $r6 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var564 Bool (= var1763 var607)) ; Statement: $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z1 == 0 goto i1 = i1 + 1 
(assert (= (ite var564 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2252!1 Int (+ var2252 1)) ; Statement: i1 = i1 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return r11 
(assert (>= var2252!1 var2007)) ; Cond: i1 >= i0 
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2670_getAnnotations/-1744520292=([java.lang.reflect.AnnotatedElement], java.lang.annotation.Annotation[]), cast-from-var2946-to-var3743=([java.lang.reflect.Method], java.lang.reflect.AnnotatedElement), getLength-Arr-var3774-1=([java.lang.annotation.Annotation[]], int), var3774_annotationType/-1467926858=([java.lang.annotation.Annotation], java.lang.Class), var2670_findAnnotation/-1802172989=([java.lang.annotation.Annotation, java.lang.Class], java.lang.annotation.Annotation), cast-from-var3774-to-var2888=([java.lang.annotation.Annotation], com.alibaba.fastjson2.annotation.JSONField), var2902_nonNull/-1380871950=([java.lang.Object], boolean), cast-from-var2888-to-var2708=([com.alibaba.fastjson2.annotation.JSONField], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var937=com.alibaba.fastjson2.JSONObject, var3522=r10, var2946=java.lang.reflect.Method, var1852=r0, var3163=null_type, var2316=r11, var3774=java.lang.annotation.Annotation, var2670=com.alibaba.fastjson2.util.BeanUtils, var3743=java.lang.reflect.AnnotatedElement, var1355=r1, var2007=i0, var2252=i1, var2626=r2, var590=r3, var2888=com.alibaba.fastjson2.annotation.JSONField, var2415=$r4, var731=r5, var2902=java.util.Objects, var2708=java.lang.Object, var2781=$z0, var1763=$r7, var607=$r6, var564=$z1}
; {com.alibaba.fastjson2.JSONObject=var937, r10=var3522, java.lang.reflect.Method=var2946, r0=var1852, null_type=var3163, r11=var2316, java.lang.annotation.Annotation=var3774, com.alibaba.fastjson2.util.BeanUtils=var2670, java.lang.reflect.AnnotatedElement=var3743, r1=var1355, i0=var2007, i1=var2252, r2=var2626, r3=var590, com.alibaba.fastjson2.annotation.JSONField=var2888, $r4=var2415, r5=var731, java.util.Objects=var2902, java.lang.Object=var2708, $z0=var2781, $r7=var1763, $r6=var607, $z1=var564}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r10 := @this: com.alibaba.fastjson2.JSONObject;	r0 := @parameter0: java.lang.reflect.Method;	r11 = null;	r1 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.'annotation'.Annotation[] getAnnotations(java.lang.reflect.AnnotatedElement)>(r0);	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto return r11;	r2 = r1[i1];	r3 = interfaceinvoke r2.<java.lang.'annotation'.Annotation: java.lang.Class annotationType()>();	$r4 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.'annotation'.Annotation findAnnotation(java.lang.'annotation'.Annotation,java.lang.Class)>(r2, class "Lcom/alibaba/fastjson2/annotation/JSONField;");	r5 = (com.alibaba.fastjson2.annotation.JSONField) $r4;	$z0 = staticinvoke <java.util.Objects: boolean nonNull(java.lang.Object)>(r5);	if $z0 == 0 goto $r7 = "com.alibaba.fastjson.annotation.JSONField";	$r7 = "com.alibaba.fastjson.annotation.JSONField";	$r6 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>();	$z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z1 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	goto [?= (branch)];	if i1 >= i0 goto return r11;	return r11
;block_num 7