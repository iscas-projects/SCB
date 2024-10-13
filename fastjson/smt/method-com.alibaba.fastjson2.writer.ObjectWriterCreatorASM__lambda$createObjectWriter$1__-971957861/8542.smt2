(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1285 0)
(declare-sort var2711 0)
(declare-sort var1335 0)
(declare-sort var1453 0)
(declare-sort var2108 0)
(declare-sort var2172 0)
(declare-sort var1918 0)
(declare-sort var328 0)
(declare-sort var1615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun init/-1434057860 (var2711) void)
(declare-fun features/1719669521 (var2711) Int)
(declare-fun format/1474396437 (var1335) String)
(declare-fun format/1719669521 (var2711) String)
(declare-fun getFieldInfo/1978329090 (var1453 var1335 var2711 ClassObject var2172) void)
(declare-fun ignore/1719669521 (var2711) Bool)
(declare-fun var1918_getFieldName/1962972702 (ClassObject var1453 var1335 Bool var2711 var2172) String)
(declare-fun orders/1474396437 (var1335) (Array Int String))
(declare-fun includes/1474396437 (var1335) (Array Int String))
(declare-fun writerFeatures/1474396437 (var1335) Int)
(declare-fun mask/-2077367092 (var328) Int)
(declare-fun typeKey/1474396437 (var1335) String)
(declare-fun getReturnType/-1494237887 (var2172) ClassObject)
(declare-fun var1615_isFunction/-1443200169 (ClassObject) Bool)
(declare-const null-var1285 var1285)
(declare-const null-var2711 var2711)
(declare-const null-Int Int)
(declare-const null-var1335 var1335)
(declare-const null-var1453 var1453)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-var2108 var2108)
(declare-const null-var2172 var2172)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var328-WriteClassName var328)
(declare-const var2186 var1285) ; Statement: r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2186 null-var1285)))
(declare-const var425 var2711) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo 
(assert (not (= var425 null-var2711)))
(declare-const var3580 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var3580 null-Int)))
(declare-const var2769 var1335) ; Statement: r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2769 null-var1335)))
(declare-const var37 var1453) ; Statement: r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var37 null-var1453)))
(declare-const var1494 ClassObject) ; Statement: r4 := @parameter4: java.lang.Class 
(assert (not (= var1494 null-ClassObject)))
(declare-const var1460 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var1460 null-Bool)))
(declare-const var238 var2108) ; Statement: r10 := @parameter6: java.util.Map 
(assert (not (= var238 null-var2108)))
(declare-const var1801 var2172) ; Statement: r5 := @parameter7: java.lang.reflect.Method 
(assert (not (= var1801 null-var2172)))
(assert true)
;(assert (init/-1434057860 var425)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>() 

(declare-const var425!1 var2711)
(define-const var1861 Int (features/1719669521 var425!1)) ; Statement: $l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> 
(define-const var3254 Int (bv2nat (bvor ((_ int2bv 64) var1861) ((_ int2bv 64) var3580)))) ; Statement: $l2 = $l1 | l0 
(declare-const var425!2 var2711)
(assert (not (= var425!2 null-var2711)))
(assert (= (features/1719669521 var425!2) var3254)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2 
(define-const var2033 String (format/1474396437 var2769)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format> 
(declare-const var425!3 var2711)
(assert (not (= var425!3 null-var2711)))
(assert (= (format/1719669521 var425!3) var2033)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2 
(assert true)
;(assert (getFieldInfo/1978329090 var37 var2769 var425!3 var1494 var1801)) ; Statement: virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5) 

(declare-const var37!1 var1453)
(declare-const var2769!1 var1335)
(declare-const var425!4 var2711)
(declare-const var1494!1 ClassObject)
(declare-const var1801!1 var2172)
(define-const var3049 Bool (ignore/1719669521 var425!4)) ; Statement: $z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore> 
 ; Statement: if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(assert (= (ite var3049 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1631 String (var1918_getFieldName/1962972702 var1494!1 var37!1 var2769!1 var1460 var425!4 var1801!1)) ; Statement: r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(define-const var646 (Array Int String) (orders/1474396437 var2769!1)) ; Statement: $r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders> 
 ; Statement: if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
(assert (= var646 null-__Array__Int__String__)) ; Cond: $r7 == null 
(define-const var1829 (Array Int String) (includes/1474396437 var2769!1)) ; Statement: $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
 ; Statement: if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(assert (= var1829 null-__Array__Int__String__)) ; Cond: $r43 == null 
(define-const var1464 Int (writerFeatures/1474396437 var2769!1)) ; Statement: $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(define-const var2912 var328 var328-WriteClassName) ; Statement: $r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName> 
(define-const var2061 Int (mask/-2077367092 var2912)) ; Statement: $l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3353 Int (bv2nat (bvand ((_ int2bv 64) var1464) ((_ int2bv 64) var2061)))) ; Statement: $l17 = $l15 & $l16 
(define-const var131 Int (ite (> var3353 0) 1 (ite (< var3353 0) (- 1) 0))) ; Statement: $b18 = $l17 cmp 0L 
 ; Statement: if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert (not (= var131 0))) ; Negate: Cond: $b18 == 0  
(define-const var620 String (typeKey/1474396437 var2769!1)) ; Statement: $r23 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String typeKey> 
(assert true)
(define-const var3612 Bool (= var1631 var620)) ; Statement: $z4 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>($r23) 
 ; Statement: if $z4 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert (= (ite var3612 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var1920 ClassObject (getReturnType/-1494237887 var1801!1)) ; Statement: $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var1067 Bool (var1615_isFunction/-1443200169 var1920)) ; Statement: $z2 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: boolean isFunction(java.lang.Class)>($r24) 
 ; Statement: if $z2 != 0 goto return 
(assert (not (= (ite var1067 1 0) 0))) ; Cond: $z2 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {init/-1434057860=([com.alibaba.fastjson2.codec.FieldInfo], void), features/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], long), format/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String), format/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], java.lang.String), getFieldInfo/1978329090=([com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, com.alibaba.fastjson2.codec.FieldInfo, java.lang.Class, java.lang.reflect.Method], void), ignore/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], boolean), var1918_getFieldName/1962972702=([java.lang.Class, com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, boolean, com.alibaba.fastjson2.codec.FieldInfo, java.lang.reflect.Method], java.lang.String), orders/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), includes/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), writerFeatures/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], long), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), typeKey/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), var1615_isFunction/-1443200169=([java.lang.Class], boolean)}
; {var1285=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2186=r12, var2711=com.alibaba.fastjson2.codec.FieldInfo, var425=r0, var3580=l0, var1335=com.alibaba.fastjson2.codec.BeanInfo, var2769=r1, var1453=com.alibaba.fastjson2.writer.ObjectWriterProvider, var37=r3, var1494=r4, var1460=z1, var2108=java.util.Map, var238=r10, var2172=java.lang.reflect.Method, var1801=r5, var1861=$l1, var3254=$l2, var2033=$r2, var3049=$z0, var1918=com.alibaba.fastjson2.writer.ObjectWriterCreator, var1631=r6, var646=$r7, var1829=$r43, var1464=$l15, var328=com.alibaba.fastjson2.JSONWriter$Feature, var2912=$r46, var2061=$l16, var3353=$l17, var131=$b18, var620=$r23, var3612=$z4, var1920=$r24, var1615=com.alibaba.fastjson2.util.TypeUtils, var1067=$z2}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1285, r12=var2186, com.alibaba.fastjson2.codec.FieldInfo=var2711, r0=var425, l0=var3580, com.alibaba.fastjson2.codec.BeanInfo=var1335, r1=var2769, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1453, r3=var37, r4=var1494, z1=var1460, java.util.Map=var2108, r10=var238, java.lang.reflect.Method=var2172, r5=var1801, $l1=var1861, $l2=var3254, $r2=var2033, $z0=var3049, com.alibaba.fastjson2.writer.ObjectWriterCreator=var1918, r6=var1631, $r7=var646, $r43=var1829, $l15=var1464, com.alibaba.fastjson2.JSONWriter$Feature=var328, $r46=var2912, $l16=var2061, $l17=var3353, $b18=var131, $r23=var620, $z4=var3612, $r24=var1920, com.alibaba.fastjson2.util.TypeUtils=var1615, $z2=var1067}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo;	l0 := @parameter1: long;	r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r4 := @parameter4: java.lang.Class;	z1 := @parameter5: boolean;	r10 := @parameter6: java.util.Map;	r5 := @parameter7: java.lang.reflect.Method;	virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>();	$l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features>;	$l2 = $l1 | l0;	r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2;	$r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format>;	r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2;	virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5);	$z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore>;	if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	$r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders>;	if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	$r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName>;	$l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l17 = $l15 & $l16;	$b18 = $l17 cmp 0L;	if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r23 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String typeKey>;	$z4 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>($r23);	if $z4 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$z2 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: boolean isFunction(java.lang.Class)>($r24);	if $z2 != 0 goto return;	return
;block_num 7