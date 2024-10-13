(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var453 0)
(declare-sort var2188 0)
(declare-sort var3310 0)
(declare-sort var3347 0)
(declare-sort var1858 0)
(declare-sort var1685 0)
(declare-sort var3287 0)
(declare-sort var3038 0)
(declare-sort var1836 0)
(declare-sort var3165 0)
(declare-sort var2421 0)
(declare-sort var1520 0)
(declare-sort var1314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-524411273 (var453) var1858)
(declare-fun provider/-1144828085 (var1858) var1685)
(declare-fun mixInCache/1823518751 (var1685) var3287)
(declare-fun var1836_get/1088891777 (var1836 var3038) var3038)
(declare-fun cast-from-var3287-to-var1836 (var3287) var1836)
(declare-fun cast-from-ClassObject-to-var3038 (ClassObject) var3038)
(declare-fun cast-from-var3038-to-ClassObject (var3038) ClassObject)
(declare-fun getName/1227988463 (var3347) String)
(declare-fun getReturnType/-1494237887 (var3347) ClassObject)
(declare-fun var1520_getAnnotations/-1744520292 (var1314) (Array Int var2421))
(declare-fun cast-from-var3347-to-var1314 (var3347) var1314)
(declare-fun processAnnotations/639679468 (var453 var3310 (Array Int var2421)) void)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun kotlin/1474396437 (var2188) Bool)
(declare-const null-var453 var453)
(declare-const null-var2188 var2188)
(declare-const null-var3310 var3310)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3347 var3347)
(declare-const var3165-CLASS_TRANSIENT ClassObject)
(declare-const var2282 var453) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor 
(assert (not (= var2282 null-var453)))
(declare-const var1552 var2188) ; Statement: r13 := @parameter0: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1552 null-var2188)))
(declare-const var820 var3310) ; Statement: r11 := @parameter1: com.alibaba.fastjson2.codec.FieldInfo 
(assert (not (= var820 null-var3310)))
(declare-const var641 ClassObject) ; Statement: r3 := @parameter2: java.lang.Class 
(assert (not (= var641 null-ClassObject)))
(declare-const var2023 var3347) ; Statement: r7 := @parameter3: java.lang.reflect.Method 
(assert (not (= var2023 null-var3347)))
(define-const var424 var1858 (this$0/-524411273 var2282)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor: com.alibaba.fastjson2.writer.ObjectWriterBaseModule this$0> 
(define-const var161 var1685 (provider/-1144828085 var424)) ; Statement: $r2 = $r1.<com.alibaba.fastjson2.writer.ObjectWriterBaseModule: com.alibaba.fastjson2.writer.ObjectWriterProvider provider> 
(define-const var2691 var3287 (mixInCache/1823518751 var161)) ; Statement: $r4 = $r2.<com.alibaba.fastjson2.writer.ObjectWriterProvider: java.util.concurrent.ConcurrentMap mixInCache> 
(define-const var1445 var3038 (var1836_get/1088891777 (cast-from-var3287-to-var1836 var2691) (cast-from-ClassObject-to-var3038 var641))) ; Statement: $r5 = interfaceinvoke $r4.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>(r3) 
(define-const var93 ClassObject (cast-from-var3038-to-ClassObject var1445)) ; Statement: r6 = (java.lang.Class) $r5 
(assert true)
(define-const var806 String (getName/1227988463 var2023)) ; Statement: r8 = virtualinvoke r7.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var3214 String "getTargetSql") ; Statement: $r9 = "getTargetSql" 
(assert true)
(define-const var1050 Bool (= var3214 var806)) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>(r8) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var1050 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r6 == null goto $r30 = r0.<com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor: com.alibaba.fastjson2.writer.ObjectWriterBaseModule this$0> 
(assert (= var93 null-ClassObject)) ; Cond: r6 == null 
(define-const var1960 var1858 (this$0/-524411273 var2282)) ; Statement: $r30 = r0.<com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor: com.alibaba.fastjson2.writer.ObjectWriterBaseModule this$0> 
(define-const var1958 var1685 (provider/-1144828085 var1960)) ; Statement: $r31 = $r30.<com.alibaba.fastjson2.writer.ObjectWriterBaseModule: com.alibaba.fastjson2.writer.ObjectWriterProvider provider> 
(define-const var3759 var3287 (mixInCache/1823518751 var1958)) ; Statement: $r32 = $r31.<com.alibaba.fastjson2.writer.ObjectWriterProvider: java.util.concurrent.ConcurrentMap mixInCache> 
(assert true)
(define-const var3190 ClassObject (getReturnType/-1494237887 var2023)) ; Statement: $r33 = virtualinvoke r7.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var273 var3038 (var1836_get/1088891777 (cast-from-var3287-to-var1836 var3759) (cast-from-ClassObject-to-var3038 var3190))) ; Statement: $r34 = interfaceinvoke $r32.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>($r33) 
(define-const var2230 ClassObject (cast-from-var3038-to-ClassObject var273)) ; Statement: $r35 = (java.lang.Class) $r34 
 ; Statement: if $r35 == null goto $r10 = <com.alibaba.fastjson2.util.JDKUtils: java.lang.Class CLASS_TRANSIENT> 
(assert (= var2230 null-ClassObject)) ; Cond: $r35 == null 
(define-const var3101 ClassObject var3165-CLASS_TRANSIENT) ; Statement: $r10 = <com.alibaba.fastjson2.util.JDKUtils: java.lang.Class CLASS_TRANSIENT> 
 ; Statement: if $r10 == null goto (branch) 
(assert (= var3101 null-ClassObject)) ; Cond: $r10 == null 
 ; Statement: if r3 == null goto $r20 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.'annotation'.Annotation[] getAnnotations(java.lang.reflect.AnnotatedElement)>(r7) 
(assert (= var641 null-ClassObject)) ; Cond: r3 == null 
(define-const var3433 (Array Int var2421) (var1520_getAnnotations/-1744520292 (cast-from-var3347-to-var1314 var2023))) ; Statement: $r20 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.'annotation'.Annotation[] getAnnotations(java.lang.reflect.AnnotatedElement)>(r7) 
(assert true)
;(assert (processAnnotations/639679468 var2282 var820 var3433)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor: void processAnnotations(com.alibaba.fastjson2.codec.FieldInfo,java.lang.'annotation'.Annotation[])>(r11, $r20) 

(declare-const var2282!1 var453)
(declare-const var820!1 var3310)
(declare-const var3433!1 (Array Int var2421))
(assert true)
(define-const var693 String (getName/-1958580599 var641)) ; Statement: $r12 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var114 Bool (startsWith/-1785782452 var693 "java.lang")) ; Statement: $z1 = virtualinvoke $r12.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang") 
 ; Statement: if $z1 != 0 goto $z10 = r13.<com.alibaba.fastjson2.codec.BeanInfo: boolean kotlin> 
(assert (not (= (ite var114 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1180 Bool (kotlin/1474396437 var1552)) ; Statement: $z10 = r13.<com.alibaba.fastjson2.codec.BeanInfo: boolean kotlin> 
 ; Statement: if $z10 == 0 goto return 
(assert (= (ite var1180 1 0) 0)) ; Cond: $z10 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-524411273=([com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor], com.alibaba.fastjson2.writer.ObjectWriterBaseModule), provider/-1144828085=([com.alibaba.fastjson2.writer.ObjectWriterBaseModule], com.alibaba.fastjson2.writer.ObjectWriterProvider), mixInCache/1823518751=([com.alibaba.fastjson2.writer.ObjectWriterProvider], java.util.concurrent.ConcurrentMap), var1836_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var3287-to-var1836=([java.util.concurrent.ConcurrentMap], java.util.Map), cast-from-ClassObject-to-var3038=([java.lang.Class], java.lang.Object), cast-from-var3038-to-ClassObject=([java.lang.Object], java.lang.Class), getName/1227988463=([java.lang.reflect.Method], java.lang.String), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), var1520_getAnnotations/-1744520292=([java.lang.reflect.AnnotatedElement], java.lang.annotation.Annotation[]), cast-from-var3347-to-var1314=([java.lang.reflect.Method], java.lang.reflect.AnnotatedElement), processAnnotations/639679468=([com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor, com.alibaba.fastjson2.codec.FieldInfo, java.lang.annotation.Annotation[]], void), getName/-1958580599=([java.lang.Class], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), kotlin/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], boolean)}
; {var453=com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor, var2282=r0, var2188=com.alibaba.fastjson2.codec.BeanInfo, var1552=r13, var3310=com.alibaba.fastjson2.codec.FieldInfo, var820=r11, var641=r3, var3347=java.lang.reflect.Method, var2023=r7, var1858=com.alibaba.fastjson2.writer.ObjectWriterBaseModule, var424=$r1, var1685=com.alibaba.fastjson2.writer.ObjectWriterProvider, var161=$r2, var3287=java.util.concurrent.ConcurrentMap, var2691=$r4, var3038=java.lang.Object, var1836=java.util.Map, var1445=$r5, var93=r6, var806=r8, var3214=$r9, var1050=$z0, var1960=$r30, var1958=$r31, var3759=$r32, var3190=$r33, var273=$r34, var2230=$r35, var3165=com.alibaba.fastjson2.util.JDKUtils, var3101=$r10, var2421=java.lang.annotation.Annotation, var1520=com.alibaba.fastjson2.util.BeanUtils, var1314=java.lang.reflect.AnnotatedElement, var3433=$r20, var693=$r12, var114=$z1, var1180=$z10}
; {com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor=var453, r0=var2282, com.alibaba.fastjson2.codec.BeanInfo=var2188, r13=var1552, com.alibaba.fastjson2.codec.FieldInfo=var3310, r11=var820, r3=var641, java.lang.reflect.Method=var3347, r7=var2023, com.alibaba.fastjson2.writer.ObjectWriterBaseModule=var1858, $r1=var424, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1685, $r2=var161, java.util.concurrent.ConcurrentMap=var3287, $r4=var2691, java.lang.Object=var3038, java.util.Map=var1836, $r5=var1445, r6=var93, r8=var806, $r9=var3214, $z0=var1050, $r30=var1960, $r31=var1958, $r32=var3759, $r33=var3190, $r34=var273, $r35=var2230, com.alibaba.fastjson2.util.JDKUtils=var3165, $r10=var3101, java.lang.annotation.Annotation=var2421, com.alibaba.fastjson2.util.BeanUtils=var1520, java.lang.reflect.AnnotatedElement=var1314, $r20=var3433, $r12=var693, $z1=var114, $z10=var1180}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor;	r13 := @parameter0: com.alibaba.fastjson2.codec.BeanInfo;	r11 := @parameter1: com.alibaba.fastjson2.codec.FieldInfo;	r3 := @parameter2: java.lang.Class;	r7 := @parameter3: java.lang.reflect.Method;	$r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor: com.alibaba.fastjson2.writer.ObjectWriterBaseModule this$0>;	$r2 = $r1.<com.alibaba.fastjson2.writer.ObjectWriterBaseModule: com.alibaba.fastjson2.writer.ObjectWriterProvider provider>;	$r4 = $r2.<com.alibaba.fastjson2.writer.ObjectWriterProvider: java.util.concurrent.ConcurrentMap mixInCache>;	$r5 = interfaceinvoke $r4.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>(r3);	r6 = (java.lang.Class) $r5;	r8 = virtualinvoke r7.<java.lang.reflect.Method: java.lang.String getName()>();	$r9 = "getTargetSql";	$z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>(r8);	if $z0 == 0 goto (branch);	if r6 == null goto $r30 = r0.<com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor: com.alibaba.fastjson2.writer.ObjectWriterBaseModule this$0>;	$r30 = r0.<com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor: com.alibaba.fastjson2.writer.ObjectWriterBaseModule this$0>;	$r31 = $r30.<com.alibaba.fastjson2.writer.ObjectWriterBaseModule: com.alibaba.fastjson2.writer.ObjectWriterProvider provider>;	$r32 = $r31.<com.alibaba.fastjson2.writer.ObjectWriterProvider: java.util.concurrent.ConcurrentMap mixInCache>;	$r33 = virtualinvoke r7.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r34 = interfaceinvoke $r32.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>($r33);	$r35 = (java.lang.Class) $r34;	if $r35 == null goto $r10 = <com.alibaba.fastjson2.util.JDKUtils: java.lang.Class CLASS_TRANSIENT>;	$r10 = <com.alibaba.fastjson2.util.JDKUtils: java.lang.Class CLASS_TRANSIENT>;	if $r10 == null goto (branch);	if r3 == null goto $r20 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.'annotation'.Annotation[] getAnnotations(java.lang.reflect.AnnotatedElement)>(r7);	$r20 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.'annotation'.Annotation[] getAnnotations(java.lang.reflect.AnnotatedElement)>(r7);	specialinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor: void processAnnotations(com.alibaba.fastjson2.codec.FieldInfo,java.lang.'annotation'.Annotation[])>(r11, $r20);	$r12 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>();	$z1 = virtualinvoke $r12.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang");	if $z1 != 0 goto $z10 = r13.<com.alibaba.fastjson2.codec.BeanInfo: boolean kotlin>;	$z10 = r13.<com.alibaba.fastjson2.codec.BeanInfo: boolean kotlin>;	if $z10 == 0 goto return;	return
;block_num 8