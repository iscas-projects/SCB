(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2116 0)
(declare-sort var494 0)
(declare-sort var544 0)
(declare-sort var1497 0)
(declare-sort var3935 0)
(declare-sort var1007 0)
(declare-sort var1668 0)
(declare-sort var3105 0)
(declare-sort var1240 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun init/-1434057860 (var494) void)
(declare-fun features/1719669521 (var494) Int)
(declare-fun format/1474396437 (var544) String)
(declare-fun format/1719669521 (var494) String)
(declare-fun getFieldInfo/1978329090 (var1497 var544 var494 ClassObject var1007) void)
(declare-fun ignore/1719669521 (var494) Bool)
(declare-fun var1668_getFieldName/1962972702 (ClassObject var1497 var544 Bool var494 var1007) String)
(declare-fun orders/1474396437 (var544) (Array Int String))
(declare-fun includes/1474396437 (var544) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun writerFeatures/1474396437 (var544) Int)
(declare-fun mask/-2077367092 (var3105) Int)
(declare-fun typeKey/1474396437 (var544) String)
(declare-fun getReturnType/-1494237887 (var1007) ClassObject)
(declare-fun var1240_isFunction/-1443200169 (ClassObject) Bool)
(declare-const null-var2116 var2116)
(declare-const null-var494 var494)
(declare-const null-Int Int)
(declare-const null-var544 var544)
(declare-const null-var1497 var1497)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-var3935 var3935)
(declare-const null-var1007 var1007)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3105-WriteClassName var3105)
(declare-const var1884 var2116) ; Statement: r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1884 null-var2116)))
(declare-const var2815 var494) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo 
(assert (not (= var2815 null-var494)))
(declare-const var2833 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var2833 null-Int)))
(declare-const var3494 var544) ; Statement: r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var3494 null-var544)))
(declare-const var1978 var1497) ; Statement: r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var1978 null-var1497)))
(declare-const var2838 ClassObject) ; Statement: r4 := @parameter4: java.lang.Class 
(assert (not (= var2838 null-ClassObject)))
(declare-const var386 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var386 null-Bool)))
(declare-const var2802 var3935) ; Statement: r10 := @parameter6: java.util.Map 
(assert (not (= var2802 null-var3935)))
(declare-const var3330 var1007) ; Statement: r5 := @parameter7: java.lang.reflect.Method 
(assert (not (= var3330 null-var1007)))
(assert true)
;(assert (init/-1434057860 var2815)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>() 

(declare-const var2815!1 var494)
(define-const var1489 Int (features/1719669521 var2815!1)) ; Statement: $l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> 
(define-const var3999 Int (bv2nat (bvor ((_ int2bv 64) var1489) ((_ int2bv 64) var2833)))) ; Statement: $l2 = $l1 | l0 
(declare-const var2815!2 var494)
(assert (not (= var2815!2 null-var494)))
(assert (= (features/1719669521 var2815!2) var3999)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2 
(define-const var1873 String (format/1474396437 var3494)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format> 
(declare-const var2815!3 var494)
(assert (not (= var2815!3 null-var494)))
(assert (= (format/1719669521 var2815!3) var1873)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2 
(assert true)
;(assert (getFieldInfo/1978329090 var1978 var3494 var2815!3 var2838 var3330)) ; Statement: virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5) 

(declare-const var1978!1 var1497)
(declare-const var3494!1 var544)
(declare-const var2815!4 var494)
(declare-const var2838!1 ClassObject)
(declare-const var3330!1 var1007)
(define-const var2498 Bool (ignore/1719669521 var2815!4)) ; Statement: $z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore> 
 ; Statement: if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(assert (= (ite var2498 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3766 String (var1668_getFieldName/1962972702 var2838!1 var1978!1 var3494!1 var386 var2815!4 var3330!1)) ; Statement: r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(define-const var3866 (Array Int String) (orders/1474396437 var3494!1)) ; Statement: $r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders> 
 ; Statement: if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
(assert (= var3866 null-__Array__Int__String__)) ; Cond: $r7 == null 
(define-const var2493 (Array Int String) (includes/1474396437 var3494!1)) ; Statement: $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
 ; Statement: if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(assert (not (= var2493 null-__Array__Int__String__))) ; Negate: Cond: $r43 == null  
(define-const var1342 (Array Int String) (includes/1474396437 var3494!1)) ; Statement: $r25 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
(define-const var864 Int (getLength-Arr-String-1 var1342)) ; Statement: $i8 = lengthof $r25 
 ; Statement: if $i8 <= 0 goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(assert (<= var864 0)) ; Cond: $i8 <= 0 
(define-const var3115 Int (writerFeatures/1474396437 var3494!1)) ; Statement: $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(define-const var2106 var3105 var3105-WriteClassName) ; Statement: $r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName> 
(define-const var1002 Int (mask/-2077367092 var2106)) ; Statement: $l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var106 Int (bv2nat (bvand ((_ int2bv 64) var3115) ((_ int2bv 64) var1002)))) ; Statement: $l17 = $l15 & $l16 
(define-const var405 Int (ite (> var106 0) 1 (ite (< var106 0) (- 1) 0))) ; Statement: $b18 = $l17 cmp 0L 
 ; Statement: if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert (not (= var405 0))) ; Negate: Cond: $b18 == 0  
(define-const var2967 String (typeKey/1474396437 var3494!1)) ; Statement: $r23 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String typeKey> 
(assert true)
(define-const var3282 Bool (= var3766 var2967)) ; Statement: $z4 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>($r23) 
 ; Statement: if $z4 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert (= (ite var3282 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var35 ClassObject (getReturnType/-1494237887 var3330!1)) ; Statement: $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var217 Bool (var1240_isFunction/-1443200169 var35)) ; Statement: $z2 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: boolean isFunction(java.lang.Class)>($r24) 
 ; Statement: if $z2 != 0 goto return 
(assert (not (= (ite var217 1 0) 0))) ; Cond: $z2 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {init/-1434057860=([com.alibaba.fastjson2.codec.FieldInfo], void), features/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], long), format/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String), format/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], java.lang.String), getFieldInfo/1978329090=([com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, com.alibaba.fastjson2.codec.FieldInfo, java.lang.Class, java.lang.reflect.Method], void), ignore/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], boolean), var1668_getFieldName/1962972702=([java.lang.Class, com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, boolean, com.alibaba.fastjson2.codec.FieldInfo, java.lang.reflect.Method], java.lang.String), orders/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), includes/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), writerFeatures/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], long), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), typeKey/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), var1240_isFunction/-1443200169=([java.lang.Class], boolean)}
; {var2116=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1884=r12, var494=com.alibaba.fastjson2.codec.FieldInfo, var2815=r0, var2833=l0, var544=com.alibaba.fastjson2.codec.BeanInfo, var3494=r1, var1497=com.alibaba.fastjson2.writer.ObjectWriterProvider, var1978=r3, var2838=r4, var386=z1, var3935=java.util.Map, var2802=r10, var1007=java.lang.reflect.Method, var3330=r5, var1489=$l1, var3999=$l2, var1873=$r2, var2498=$z0, var1668=com.alibaba.fastjson2.writer.ObjectWriterCreator, var3766=r6, var3866=$r7, var2493=$r43, var1342=$r25, var864=$i8, var3115=$l15, var3105=com.alibaba.fastjson2.JSONWriter$Feature, var2106=$r46, var1002=$l16, var106=$l17, var405=$b18, var2967=$r23, var3282=$z4, var35=$r24, var1240=com.alibaba.fastjson2.util.TypeUtils, var217=$z2}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2116, r12=var1884, com.alibaba.fastjson2.codec.FieldInfo=var494, r0=var2815, l0=var2833, com.alibaba.fastjson2.codec.BeanInfo=var544, r1=var3494, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1497, r3=var1978, r4=var2838, z1=var386, java.util.Map=var3935, r10=var2802, java.lang.reflect.Method=var1007, r5=var3330, $l1=var1489, $l2=var3999, $r2=var1873, $z0=var2498, com.alibaba.fastjson2.writer.ObjectWriterCreator=var1668, r6=var3766, $r7=var3866, $r43=var2493, $r25=var1342, $i8=var864, $l15=var3115, com.alibaba.fastjson2.JSONWriter$Feature=var3105, $r46=var2106, $l16=var1002, $l17=var106, $b18=var405, $r23=var2967, $z4=var3282, $r24=var35, com.alibaba.fastjson2.util.TypeUtils=var1240, $z2=var217}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo;	l0 := @parameter1: long;	r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r4 := @parameter4: java.lang.Class;	z1 := @parameter5: boolean;	r10 := @parameter6: java.util.Map;	r5 := @parameter7: java.lang.reflect.Method;	virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>();	$l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features>;	$l2 = $l1 | l0;	r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2;	$r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format>;	r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2;	virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5);	$z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore>;	if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	$r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders>;	if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	$r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$r25 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	$i8 = lengthof $r25;	if $i8 <= 0 goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName>;	$l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l17 = $l15 & $l16;	$b18 = $l17 cmp 0L;	if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r23 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String typeKey>;	$z4 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>($r23);	if $z4 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$z2 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: boolean isFunction(java.lang.Class)>($r24);	if $z2 != 0 goto return;	return
;block_num 8