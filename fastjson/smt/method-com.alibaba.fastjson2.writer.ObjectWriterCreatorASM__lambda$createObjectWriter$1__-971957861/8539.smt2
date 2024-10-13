(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2642 0)
(declare-sort var1729 0)
(declare-sort var2968 0)
(declare-sort var2751 0)
(declare-sort var1962 0)
(declare-sort var1284 0)
(declare-sort var3339 0)
(declare-sort var1851 0)
(declare-sort var1224 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun init/-1434057860 (var1729) void)
(declare-fun features/1719669521 (var1729) Int)
(declare-fun format/1474396437 (var2968) String)
(declare-fun format/1719669521 (var1729) String)
(declare-fun getFieldInfo/1978329090 (var2751 var2968 var1729 ClassObject var1284) void)
(declare-fun ignore/1719669521 (var1729) Bool)
(declare-fun var3339_getFieldName/1962972702 (ClassObject var2751 var2968 Bool var1729 var1284) String)
(declare-fun orders/1474396437 (var2968) (Array Int String))
(declare-fun includes/1474396437 (var2968) (Array Int String))
(declare-fun writerFeatures/1474396437 (var2968) Int)
(declare-fun mask/-2077367092 (var1851) Int)
(declare-fun getReturnType/-1494237887 (var1284) ClassObject)
(declare-fun var1224_isFunction/-1443200169 (ClassObject) Bool)
(declare-const null-var2642 var2642)
(declare-const null-var1729 var1729)
(declare-const null-Int Int)
(declare-const null-var2968 var2968)
(declare-const null-var2751 var2751)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-var1962 var1962)
(declare-const null-var1284 var1284)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1851-WriteClassName var1851)
(declare-const var2544 var2642) ; Statement: r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2544 null-var2642)))
(declare-const var2609 var1729) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo 
(assert (not (= var2609 null-var1729)))
(declare-const var3154 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var3154 null-Int)))
(declare-const var2828 var2968) ; Statement: r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2828 null-var2968)))
(declare-const var748 var2751) ; Statement: r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var748 null-var2751)))
(declare-const var1519 ClassObject) ; Statement: r4 := @parameter4: java.lang.Class 
(assert (not (= var1519 null-ClassObject)))
(declare-const var528 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var528 null-Bool)))
(declare-const var1211 var1962) ; Statement: r10 := @parameter6: java.util.Map 
(assert (not (= var1211 null-var1962)))
(declare-const var630 var1284) ; Statement: r5 := @parameter7: java.lang.reflect.Method 
(assert (not (= var630 null-var1284)))
(assert true)
;(assert (init/-1434057860 var2609)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>() 

(declare-const var2609!1 var1729)
(define-const var1459 Int (features/1719669521 var2609!1)) ; Statement: $l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> 
(define-const var1151 Int (bv2nat (bvor ((_ int2bv 64) var1459) ((_ int2bv 64) var3154)))) ; Statement: $l2 = $l1 | l0 
(declare-const var2609!2 var1729)
(assert (not (= var2609!2 null-var1729)))
(assert (= (features/1719669521 var2609!2) var1151)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2 
(define-const var2000 String (format/1474396437 var2828)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format> 
(declare-const var2609!3 var1729)
(assert (not (= var2609!3 null-var1729)))
(assert (= (format/1719669521 var2609!3) var2000)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2 
(assert true)
;(assert (getFieldInfo/1978329090 var748 var2828 var2609!3 var1519 var630)) ; Statement: virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5) 

(declare-const var748!1 var2751)
(declare-const var2828!1 var2968)
(declare-const var2609!4 var1729)
(declare-const var1519!1 ClassObject)
(declare-const var630!1 var1284)
(define-const var1538 Bool (ignore/1719669521 var2609!4)) ; Statement: $z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore> 
 ; Statement: if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(assert (= (ite var1538 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3915 String (var3339_getFieldName/1962972702 var1519!1 var748!1 var2828!1 var528 var2609!4 var630!1)) ; Statement: r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(define-const var2420 (Array Int String) (orders/1474396437 var2828!1)) ; Statement: $r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders> 
 ; Statement: if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
(assert (= var2420 null-__Array__Int__String__)) ; Cond: $r7 == null 
(define-const var3875 (Array Int String) (includes/1474396437 var2828!1)) ; Statement: $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
 ; Statement: if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(assert (= var3875 null-__Array__Int__String__)) ; Cond: $r43 == null 
(define-const var3898 Int (writerFeatures/1474396437 var2828!1)) ; Statement: $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(define-const var1670 var1851 var1851-WriteClassName) ; Statement: $r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName> 
(define-const var476 Int (mask/-2077367092 var1670)) ; Statement: $l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2557 Int (bv2nat (bvand ((_ int2bv 64) var3898) ((_ int2bv 64) var476)))) ; Statement: $l17 = $l15 & $l16 
(define-const var3161 Int (ite (> var2557 0) 1 (ite (< var2557 0) (- 1) 0))) ; Statement: $b18 = $l17 cmp 0L 
 ; Statement: if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert (= var3161 0)) ; Cond: $b18 == 0 
(assert true)
(define-const var3407 ClassObject (getReturnType/-1494237887 var630!1)) ; Statement: $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var3834 Bool (var1224_isFunction/-1443200169 var3407)) ; Statement: $z2 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: boolean isFunction(java.lang.Class)>($r24) 
 ; Statement: if $z2 != 0 goto return 
(assert (not (= (ite var3834 1 0) 0))) ; Cond: $z2 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {init/-1434057860=([com.alibaba.fastjson2.codec.FieldInfo], void), features/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], long), format/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String), format/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], java.lang.String), getFieldInfo/1978329090=([com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, com.alibaba.fastjson2.codec.FieldInfo, java.lang.Class, java.lang.reflect.Method], void), ignore/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], boolean), var3339_getFieldName/1962972702=([java.lang.Class, com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, boolean, com.alibaba.fastjson2.codec.FieldInfo, java.lang.reflect.Method], java.lang.String), orders/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), includes/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), writerFeatures/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], long), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), var1224_isFunction/-1443200169=([java.lang.Class], boolean)}
; {var2642=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2544=r12, var1729=com.alibaba.fastjson2.codec.FieldInfo, var2609=r0, var3154=l0, var2968=com.alibaba.fastjson2.codec.BeanInfo, var2828=r1, var2751=com.alibaba.fastjson2.writer.ObjectWriterProvider, var748=r3, var1519=r4, var528=z1, var1962=java.util.Map, var1211=r10, var1284=java.lang.reflect.Method, var630=r5, var1459=$l1, var1151=$l2, var2000=$r2, var1538=$z0, var3339=com.alibaba.fastjson2.writer.ObjectWriterCreator, var3915=r6, var2420=$r7, var3875=$r43, var3898=$l15, var1851=com.alibaba.fastjson2.JSONWriter$Feature, var1670=$r46, var476=$l16, var2557=$l17, var3161=$b18, var3407=$r24, var1224=com.alibaba.fastjson2.util.TypeUtils, var3834=$z2}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2642, r12=var2544, com.alibaba.fastjson2.codec.FieldInfo=var1729, r0=var2609, l0=var3154, com.alibaba.fastjson2.codec.BeanInfo=var2968, r1=var2828, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2751, r3=var748, r4=var1519, z1=var528, java.util.Map=var1962, r10=var1211, java.lang.reflect.Method=var1284, r5=var630, $l1=var1459, $l2=var1151, $r2=var2000, $z0=var1538, com.alibaba.fastjson2.writer.ObjectWriterCreator=var3339, r6=var3915, $r7=var2420, $r43=var3875, $l15=var3898, com.alibaba.fastjson2.JSONWriter$Feature=var1851, $r46=var1670, $l16=var476, $l17=var2557, $b18=var3161, $r24=var3407, com.alibaba.fastjson2.util.TypeUtils=var1224, $z2=var3834}
;seq 
;cnt {}
;stmts r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo;	l0 := @parameter1: long;	r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r4 := @parameter4: java.lang.Class;	z1 := @parameter5: boolean;	r10 := @parameter6: java.util.Map;	r5 := @parameter7: java.lang.reflect.Method;	virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>();	$l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features>;	$l2 = $l1 | l0;	r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2;	$r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format>;	r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2;	virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5);	$z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore>;	if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	$r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders>;	if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	$r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName>;	$l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l17 = $l15 & $l16;	$b18 = $l17 cmp 0L;	if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$z2 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: boolean isFunction(java.lang.Class)>($r24);	if $z2 != 0 goto return;	return
;block_num 6