(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3877 0)
(declare-sort var3959 0)
(declare-sort var2572 0)
(declare-sort var3077 0)
(declare-sort var1091 0)
(declare-sort var1045 0)
(declare-sort var2470 0)
(declare-sort var2171 0)
(declare-sort var3477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2470!class ClassObject)
(declare-fun var1091_getAnnotations/-1744520292 (var1045) (Array Int var3077))
(declare-fun cast-from-var3959-to-var1045 (var3959) var1045)
(declare-fun getLength-Arr-var3077-1 ((Array Int var3077)) Int)
(declare-fun var3077_annotationType/-1467926858 (var3077) ClassObject)
(declare-fun var1091_findAnnotation/-1802172989 (var3077 ClassObject) var3077)
(declare-fun cast-from-var3077-to-var2470 (var3077) var2470)
(declare-fun var2171_nonNull/-1380871950 (var3477) Bool)
(declare-fun cast-from-var2470-to-var3477 (var2470) var3477)
(declare-fun var2470_name/1582897101 (var2470) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3877 var3877)
(declare-const null-var3959 var3959)
(declare-const null-String String)
(declare-const var2175 var3877) ; Statement: r10 := @this: com.alibaba.fastjson2.JSONObject 
(assert (not (= var2175 null-var3877)))
(declare-const var3969 var3959) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var3969 null-var3959)))
(define-const var1837 String null-String) ; Statement: r11 = null 
(define-const var3792 (Array Int var3077) (var1091_getAnnotations/-1744520292 (cast-from-var3959-to-var1045 var3969))) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.'annotation'.Annotation[] getAnnotations(java.lang.reflect.AnnotatedElement)>(r0) 
(define-const var3796 Int (getLength-Arr-var3077-1 var3792)) ; Statement: i0 = lengthof r1 
(define-const var1442 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return r11 
(assert (not (>= var1442 var3796))) ; Negate: Cond: i1 >= i0  
(define-const var2073 var3077 (select var3792 var1442)) ; Statement: r2 = r1[i1] 
(define-const var3318 ClassObject (var3077_annotationType/-1467926858 var2073)) ; Statement: r3 = interfaceinvoke r2.<java.lang.'annotation'.Annotation: java.lang.Class annotationType()>() 
(define-const var2867 var3077 (var1091_findAnnotation/-1802172989 var2073 var2470!class)) ; Statement: $r4 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.'annotation'.Annotation findAnnotation(java.lang.'annotation'.Annotation,java.lang.Class)>(r2, class "Lcom/alibaba/fastjson2/annotation/JSONField;") 
(define-const var39 var2470 (cast-from-var3077-to-var2470 var2867)) ; Statement: r5 = (com.alibaba.fastjson2.annotation.JSONField) $r4 
(define-const var1244 Bool (var2171_nonNull/-1380871950 (cast-from-var2470-to-var3477 var39))) ; Statement: $z0 = staticinvoke <java.util.Objects: boolean nonNull(java.lang.Object)>(r5) 
 ; Statement: if $z0 == 0 goto $r7 = "com.alibaba.fastjson.annotation.JSONField" 
(assert (not (= (ite var1244 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1837!1 String (var2470_name/1582897101 var39)) ; Statement: r11 = interfaceinvoke r5.<com.alibaba.fastjson2.'annotation'.JSONField: java.lang.String name()>() 
(assert true)
(define-const var2544 Bool (isEmpty/-1285796103 var1837!1)) ; Statement: $z2 = virtualinvoke r11.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto i1 = i1 + 1 
(assert (= (ite var2544 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1442!1 Int (+ var1442 1)) ; Statement: i1 = i1 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return r11 
(assert (>= var1442!1 var3796)) ; Cond: i1 >= i0 
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1091_getAnnotations/-1744520292=([java.lang.reflect.AnnotatedElement], java.lang.annotation.Annotation[]), cast-from-var3959-to-var1045=([java.lang.reflect.Method], java.lang.reflect.AnnotatedElement), getLength-Arr-var3077-1=([java.lang.annotation.Annotation[]], int), var3077_annotationType/-1467926858=([java.lang.annotation.Annotation], java.lang.Class), var1091_findAnnotation/-1802172989=([java.lang.annotation.Annotation, java.lang.Class], java.lang.annotation.Annotation), cast-from-var3077-to-var2470=([java.lang.annotation.Annotation], com.alibaba.fastjson2.annotation.JSONField), var2171_nonNull/-1380871950=([java.lang.Object], boolean), cast-from-var2470-to-var3477=([com.alibaba.fastjson2.annotation.JSONField], java.lang.Object), var2470_name/1582897101=([com.alibaba.fastjson2.annotation.JSONField], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3877=com.alibaba.fastjson2.JSONObject, var2175=r10, var3959=java.lang.reflect.Method, var3969=r0, var2572=null_type, var1837=r11, var3077=java.lang.annotation.Annotation, var1091=com.alibaba.fastjson2.util.BeanUtils, var1045=java.lang.reflect.AnnotatedElement, var3792=r1, var3796=i0, var1442=i1, var2073=r2, var3318=r3, var2470=com.alibaba.fastjson2.annotation.JSONField, var2867=$r4, var39=r5, var2171=java.util.Objects, var3477=java.lang.Object, var1244=$z0, var2544=$z2}
; {com.alibaba.fastjson2.JSONObject=var3877, r10=var2175, java.lang.reflect.Method=var3959, r0=var3969, null_type=var2572, r11=var1837, java.lang.annotation.Annotation=var3077, com.alibaba.fastjson2.util.BeanUtils=var1091, java.lang.reflect.AnnotatedElement=var1045, r1=var3792, i0=var3796, i1=var1442, r2=var2073, r3=var3318, com.alibaba.fastjson2.annotation.JSONField=var2470, $r4=var2867, r5=var39, java.util.Objects=var2171, java.lang.Object=var3477, $z0=var1244, $z2=var2544}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r10 := @this: com.alibaba.fastjson2.JSONObject;	r0 := @parameter0: java.lang.reflect.Method;	r11 = null;	r1 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.'annotation'.Annotation[] getAnnotations(java.lang.reflect.AnnotatedElement)>(r0);	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto return r11;	r2 = r1[i1];	r3 = interfaceinvoke r2.<java.lang.'annotation'.Annotation: java.lang.Class annotationType()>();	$r4 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.'annotation'.Annotation findAnnotation(java.lang.'annotation'.Annotation,java.lang.Class)>(r2, class "Lcom/alibaba/fastjson2/annotation/JSONField;");	r5 = (com.alibaba.fastjson2.annotation.JSONField) $r4;	$z0 = staticinvoke <java.util.Objects: boolean nonNull(java.lang.Object)>(r5);	if $z0 == 0 goto $r7 = "com.alibaba.fastjson.annotation.JSONField";	r11 = interfaceinvoke r5.<com.alibaba.fastjson2.'annotation'.JSONField: java.lang.String name()>();	$z2 = virtualinvoke r11.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	goto [?= (branch)];	if i1 >= i0 goto return r11;	return r11
;block_num 7