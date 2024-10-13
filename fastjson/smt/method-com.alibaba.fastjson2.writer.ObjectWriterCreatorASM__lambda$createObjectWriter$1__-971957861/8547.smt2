(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1100 0)
(declare-sort var3069 0)
(declare-sort var1637 0)
(declare-sort var1941 0)
(declare-sort var2021 0)
(declare-sort var1400 0)
(declare-sort var2919 0)
(declare-sort var2892 0)
(declare-sort var2245 0)
(declare-sort var2718 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun init/-1434057860 (var3069) void)
(declare-fun features/1719669521 (var3069) Int)
(declare-fun format/1474396437 (var1637) String)
(declare-fun format/1719669521 (var3069) String)
(declare-fun getFieldInfo/1978329090 (var1941 var1637 var3069 ClassObject var1400) void)
(declare-fun ignore/1719669521 (var3069) Bool)
(declare-fun var2919_getFieldName/1962972702 (ClassObject var1941 var1637 Bool var3069 var1400) String)
(declare-fun orders/1474396437 (var1637) (Array Int String))
(declare-fun includes/1474396437 (var1637) (Array Int String))
(declare-fun writerFeatures/1474396437 (var1637) Int)
(declare-fun mask/-2077367092 (var2892) Int)
(declare-fun typeKey/1474396437 (var1637) String)
(declare-fun getReturnType/-1494237887 (var1400) ClassObject)
(declare-fun var2245_isFunction/-1443200169 (ClassObject) Bool)
(declare-const null-var1100 var1100)
(declare-const null-var3069 var3069)
(declare-const null-Int Int)
(declare-const null-var1637 var1637)
(declare-const null-var1941 var1941)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-var2021 var2021)
(declare-const null-var1400 var1400)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2892-WriteClassName var2892)
(declare-const var2718-TYPE ClassObject)
(declare-const var2157 var1100) ; Statement: r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2157 null-var1100)))
(declare-const var3187 var3069) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo 
(assert (not (= var3187 null-var3069)))
(declare-const var2900 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var2900 null-Int)))
(declare-const var3344 var1637) ; Statement: r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var3344 null-var1637)))
(declare-const var411 var1941) ; Statement: r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var411 null-var1941)))
(declare-const var3404 ClassObject) ; Statement: r4 := @parameter4: java.lang.Class 
(assert (not (= var3404 null-ClassObject)))
(declare-const var5 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var5 null-Bool)))
(declare-const var3232 var2021) ; Statement: r10 := @parameter6: java.util.Map 
(assert (not (= var3232 null-var2021)))
(declare-const var709 var1400) ; Statement: r5 := @parameter7: java.lang.reflect.Method 
(assert (not (= var709 null-var1400)))
(assert true)
;(assert (init/-1434057860 var3187)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>() 

(declare-const var3187!1 var3069)
(define-const var3222 Int (features/1719669521 var3187!1)) ; Statement: $l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> 
(define-const var3725 Int (bv2nat (bvor ((_ int2bv 64) var3222) ((_ int2bv 64) var2900)))) ; Statement: $l2 = $l1 | l0 
(declare-const var3187!2 var3069)
(assert (not (= var3187!2 null-var3069)))
(assert (= (features/1719669521 var3187!2) var3725)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2 
(define-const var3271 String (format/1474396437 var3344)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format> 
(declare-const var3187!3 var3069)
(assert (not (= var3187!3 null-var3069)))
(assert (= (format/1719669521 var3187!3) var3271)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2 
(assert true)
;(assert (getFieldInfo/1978329090 var411 var3344 var3187!3 var3404 var709)) ; Statement: virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5) 

(declare-const var411!1 var1941)
(declare-const var3344!1 var1637)
(declare-const var3187!4 var3069)
(declare-const var3404!1 ClassObject)
(declare-const var709!1 var1400)
(define-const var1752 Bool (ignore/1719669521 var3187!4)) ; Statement: $z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore> 
 ; Statement: if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(assert (= (ite var1752 1 0) 0)) ; Cond: $z0 == 0 
(define-const var885 String (var2919_getFieldName/1962972702 var3404!1 var411!1 var3344!1 var5 var3187!4 var709!1)) ; Statement: r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(define-const var1393 (Array Int String) (orders/1474396437 var3344!1)) ; Statement: $r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders> 
 ; Statement: if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
(assert (= var1393 null-__Array__Int__String__)) ; Cond: $r7 == null 
(define-const var264 (Array Int String) (includes/1474396437 var3344!1)) ; Statement: $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
 ; Statement: if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(assert (= var264 null-__Array__Int__String__)) ; Cond: $r43 == null 
(define-const var3886 Int (writerFeatures/1474396437 var3344!1)) ; Statement: $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(define-const var3126 var2892 var2892-WriteClassName) ; Statement: $r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName> 
(define-const var3428 Int (mask/-2077367092 var3126)) ; Statement: $l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3123 Int (bv2nat (bvand ((_ int2bv 64) var3886) ((_ int2bv 64) var3428)))) ; Statement: $l17 = $l15 & $l16 
(define-const var2262 Int (ite (> var3123 0) 1 (ite (< var3123 0) (- 1) 0))) ; Statement: $b18 = $l17 cmp 0L 
 ; Statement: if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert (not (= var2262 0))) ; Negate: Cond: $b18 == 0  
(define-const var3265 String (typeKey/1474396437 var3344!1)) ; Statement: $r23 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String typeKey> 
(assert true)
(define-const var506 Bool (= var885 var3265)) ; Statement: $z4 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>($r23) 
 ; Statement: if $z4 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert (= (ite var506 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var1447 ClassObject (getReturnType/-1494237887 var709!1)) ; Statement: $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var3485 Bool (var2245_isFunction/-1443200169 var1447)) ; Statement: $z2 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: boolean isFunction(java.lang.Class)>($r24) 
 ; Statement: if $z2 != 0 goto return 
(assert (not (not (= (ite var3485 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var526 ClassObject var2718-TYPE) ; Statement: $r8 = <java.lang.Void: java.lang.Class TYPE> 
 ; Statement: if $r24 != $r8 goto virtualinvoke r5.<java.lang.reflect.Method: void setAccessible(boolean)>(1) 
(assert (not (not (= var1447 var526)))) ; Negate: Cond: $r24 != $r8  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {init/-1434057860=([com.alibaba.fastjson2.codec.FieldInfo], void), features/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], long), format/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String), format/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], java.lang.String), getFieldInfo/1978329090=([com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, com.alibaba.fastjson2.codec.FieldInfo, java.lang.Class, java.lang.reflect.Method], void), ignore/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], boolean), var2919_getFieldName/1962972702=([java.lang.Class, com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, boolean, com.alibaba.fastjson2.codec.FieldInfo, java.lang.reflect.Method], java.lang.String), orders/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), includes/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), writerFeatures/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], long), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), typeKey/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), var2245_isFunction/-1443200169=([java.lang.Class], boolean)}
; {var1100=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2157=r12, var3069=com.alibaba.fastjson2.codec.FieldInfo, var3187=r0, var2900=l0, var1637=com.alibaba.fastjson2.codec.BeanInfo, var3344=r1, var1941=com.alibaba.fastjson2.writer.ObjectWriterProvider, var411=r3, var3404=r4, var5=z1, var2021=java.util.Map, var3232=r10, var1400=java.lang.reflect.Method, var709=r5, var3222=$l1, var3725=$l2, var3271=$r2, var1752=$z0, var2919=com.alibaba.fastjson2.writer.ObjectWriterCreator, var885=r6, var1393=$r7, var264=$r43, var3886=$l15, var2892=com.alibaba.fastjson2.JSONWriter$Feature, var3126=$r46, var3428=$l16, var3123=$l17, var2262=$b18, var3265=$r23, var506=$z4, var1447=$r24, var2245=com.alibaba.fastjson2.util.TypeUtils, var3485=$z2, var2718=java.lang.Void, var526=$r8}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1100, r12=var2157, com.alibaba.fastjson2.codec.FieldInfo=var3069, r0=var3187, l0=var2900, com.alibaba.fastjson2.codec.BeanInfo=var1637, r1=var3344, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1941, r3=var411, r4=var3404, z1=var5, java.util.Map=var2021, r10=var3232, java.lang.reflect.Method=var1400, r5=var709, $l1=var3222, $l2=var3725, $r2=var3271, $z0=var1752, com.alibaba.fastjson2.writer.ObjectWriterCreator=var2919, r6=var885, $r7=var1393, $r43=var264, $l15=var3886, com.alibaba.fastjson2.JSONWriter$Feature=var2892, $r46=var3126, $l16=var3428, $l17=var3123, $b18=var2262, $r23=var3265, $z4=var506, $r24=var1447, com.alibaba.fastjson2.util.TypeUtils=var2245, $z2=var3485, java.lang.Void=var2718, $r8=var526}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo;	l0 := @parameter1: long;	r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r4 := @parameter4: java.lang.Class;	z1 := @parameter5: boolean;	r10 := @parameter6: java.util.Map;	r5 := @parameter7: java.lang.reflect.Method;	virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>();	$l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features>;	$l2 = $l1 | l0;	r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2;	$r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format>;	r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2;	virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5);	$z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore>;	if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	$r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders>;	if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	$r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName>;	$l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l17 = $l15 & $l16;	$b18 = $l17 cmp 0L;	if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r23 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String typeKey>;	$z4 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>($r23);	if $z4 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$z2 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: boolean isFunction(java.lang.Class)>($r24);	if $z2 != 0 goto return;	$r8 = <java.lang.Void: java.lang.Class TYPE>;	if $r24 != $r8 goto virtualinvoke r5.<java.lang.reflect.Method: void setAccessible(boolean)>(1);	return
;block_num 8