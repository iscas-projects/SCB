(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2100 0)
(declare-sort var1331 0)
(declare-sort var1916 0)
(declare-sort var3390 0)
(declare-sort var1085 0)
(declare-sort var3109 0)
(declare-sort var871 0)
(declare-sort var3056 0)
(declare-sort var3639 0)
(declare-sort var2366 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun init/-1434057860 (var1331) void)
(declare-fun features/1719669521 (var1331) Int)
(declare-fun format/1474396437 (var1916) String)
(declare-fun format/1719669521 (var1331) String)
(declare-fun getFieldInfo/1978329090 (var3390 var1916 var1331 ClassObject var3109) void)
(declare-fun ignore/1719669521 (var1331) Bool)
(declare-fun var871_getFieldName/1962972702 (ClassObject var3390 var1916 Bool var1331 var3109) String)
(declare-fun orders/1474396437 (var1916) (Array Int String))
(declare-fun includes/1474396437 (var1916) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun writerFeatures/1474396437 (var1916) Int)
(declare-fun mask/-2077367092 (var3056) Int)
(declare-fun getReturnType/-1494237887 (var3109) ClassObject)
(declare-fun var3639_isFunction/-1443200169 (ClassObject) Bool)
(declare-const null-var2100 var2100)
(declare-const null-var1331 var1331)
(declare-const null-Int Int)
(declare-const null-var1916 var1916)
(declare-const null-var3390 var3390)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-var1085 var1085)
(declare-const null-var3109 var3109)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3056-WriteClassName var3056)
(declare-const var2366-TYPE ClassObject)
(declare-const var733 var2100) ; Statement: r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var733 null-var2100)))
(declare-const var170 var1331) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo 
(assert (not (= var170 null-var1331)))
(declare-const var2575 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var2575 null-Int)))
(declare-const var2488 var1916) ; Statement: r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2488 null-var1916)))
(declare-const var453 var3390) ; Statement: r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var453 null-var3390)))
(declare-const var534 ClassObject) ; Statement: r4 := @parameter4: java.lang.Class 
(assert (not (= var534 null-ClassObject)))
(declare-const var1839 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var1839 null-Bool)))
(declare-const var396 var1085) ; Statement: r10 := @parameter6: java.util.Map 
(assert (not (= var396 null-var1085)))
(declare-const var3512 var3109) ; Statement: r5 := @parameter7: java.lang.reflect.Method 
(assert (not (= var3512 null-var3109)))
(assert true)
;(assert (init/-1434057860 var170)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>() 

(declare-const var170!1 var1331)
(define-const var3552 Int (features/1719669521 var170!1)) ; Statement: $l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> 
(define-const var3653 Int (bv2nat (bvor ((_ int2bv 64) var3552) ((_ int2bv 64) var2575)))) ; Statement: $l2 = $l1 | l0 
(declare-const var170!2 var1331)
(assert (not (= var170!2 null-var1331)))
(assert (= (features/1719669521 var170!2) var3653)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2 
(define-const var3192 String (format/1474396437 var2488)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format> 
(declare-const var170!3 var1331)
(assert (not (= var170!3 null-var1331)))
(assert (= (format/1719669521 var170!3) var3192)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2 
(assert true)
;(assert (getFieldInfo/1978329090 var453 var2488 var170!3 var534 var3512)) ; Statement: virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5) 

(declare-const var453!1 var3390)
(declare-const var2488!1 var1916)
(declare-const var170!4 var1331)
(declare-const var534!1 ClassObject)
(declare-const var3512!1 var3109)
(define-const var892 Bool (ignore/1719669521 var170!4)) ; Statement: $z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore> 
 ; Statement: if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(assert (= (ite var892 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3358 String (var871_getFieldName/1962972702 var534!1 var453!1 var2488!1 var1839 var170!4 var3512!1)) ; Statement: r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(define-const var492 (Array Int String) (orders/1474396437 var2488!1)) ; Statement: $r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders> 
 ; Statement: if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
(assert (= var492 null-__Array__Int__String__)) ; Cond: $r7 == null 
(define-const var3321 (Array Int String) (includes/1474396437 var2488!1)) ; Statement: $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
 ; Statement: if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(assert (not (= var3321 null-__Array__Int__String__))) ; Negate: Cond: $r43 == null  
(define-const var1472 (Array Int String) (includes/1474396437 var2488!1)) ; Statement: $r25 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
(define-const var3032 Int (getLength-Arr-String-1 var1472)) ; Statement: $i8 = lengthof $r25 
 ; Statement: if $i8 <= 0 goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(assert (<= var3032 0)) ; Cond: $i8 <= 0 
(define-const var1673 Int (writerFeatures/1474396437 var2488!1)) ; Statement: $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(define-const var791 var3056 var3056-WriteClassName) ; Statement: $r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName> 
(define-const var1319 Int (mask/-2077367092 var791)) ; Statement: $l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1504 Int (bv2nat (bvand ((_ int2bv 64) var1673) ((_ int2bv 64) var1319)))) ; Statement: $l17 = $l15 & $l16 
(define-const var309 Int (ite (> var1504 0) 1 (ite (< var1504 0) (- 1) 0))) ; Statement: $b18 = $l17 cmp 0L 
 ; Statement: if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert (= var309 0)) ; Cond: $b18 == 0 
(assert true)
(define-const var3900 ClassObject (getReturnType/-1494237887 var3512!1)) ; Statement: $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var760 Bool (var3639_isFunction/-1443200169 var3900)) ; Statement: $z2 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: boolean isFunction(java.lang.Class)>($r24) 
 ; Statement: if $z2 != 0 goto return 
(assert (not (not (= (ite var760 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var2822 ClassObject var2366-TYPE) ; Statement: $r8 = <java.lang.Void: java.lang.Class TYPE> 
 ; Statement: if $r24 != $r8 goto virtualinvoke r5.<java.lang.reflect.Method: void setAccessible(boolean)>(1) 
(assert (not (not (= var3900 var2822)))) ; Negate: Cond: $r24 != $r8  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {init/-1434057860=([com.alibaba.fastjson2.codec.FieldInfo], void), features/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], long), format/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String), format/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], java.lang.String), getFieldInfo/1978329090=([com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, com.alibaba.fastjson2.codec.FieldInfo, java.lang.Class, java.lang.reflect.Method], void), ignore/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], boolean), var871_getFieldName/1962972702=([java.lang.Class, com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, boolean, com.alibaba.fastjson2.codec.FieldInfo, java.lang.reflect.Method], java.lang.String), orders/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), includes/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), writerFeatures/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], long), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), var3639_isFunction/-1443200169=([java.lang.Class], boolean)}
; {var2100=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var733=r12, var1331=com.alibaba.fastjson2.codec.FieldInfo, var170=r0, var2575=l0, var1916=com.alibaba.fastjson2.codec.BeanInfo, var2488=r1, var3390=com.alibaba.fastjson2.writer.ObjectWriterProvider, var453=r3, var534=r4, var1839=z1, var1085=java.util.Map, var396=r10, var3109=java.lang.reflect.Method, var3512=r5, var3552=$l1, var3653=$l2, var3192=$r2, var892=$z0, var871=com.alibaba.fastjson2.writer.ObjectWriterCreator, var3358=r6, var492=$r7, var3321=$r43, var1472=$r25, var3032=$i8, var1673=$l15, var3056=com.alibaba.fastjson2.JSONWriter$Feature, var791=$r46, var1319=$l16, var1504=$l17, var309=$b18, var3900=$r24, var3639=com.alibaba.fastjson2.util.TypeUtils, var760=$z2, var2366=java.lang.Void, var2822=$r8}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2100, r12=var733, com.alibaba.fastjson2.codec.FieldInfo=var1331, r0=var170, l0=var2575, com.alibaba.fastjson2.codec.BeanInfo=var1916, r1=var2488, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3390, r3=var453, r4=var534, z1=var1839, java.util.Map=var1085, r10=var396, java.lang.reflect.Method=var3109, r5=var3512, $l1=var3552, $l2=var3653, $r2=var3192, $z0=var892, com.alibaba.fastjson2.writer.ObjectWriterCreator=var871, r6=var3358, $r7=var492, $r43=var3321, $r25=var1472, $i8=var3032, $l15=var1673, com.alibaba.fastjson2.JSONWriter$Feature=var3056, $r46=var791, $l16=var1319, $l17=var1504, $b18=var309, $r24=var3900, com.alibaba.fastjson2.util.TypeUtils=var3639, $z2=var760, java.lang.Void=var2366, $r8=var2822}
;seq 
;cnt {}
;stmts r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo;	l0 := @parameter1: long;	r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r4 := @parameter4: java.lang.Class;	z1 := @parameter5: boolean;	r10 := @parameter6: java.util.Map;	r5 := @parameter7: java.lang.reflect.Method;	virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>();	$l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features>;	$l2 = $l1 | l0;	r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2;	$r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format>;	r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2;	virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5);	$z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore>;	if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	$r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders>;	if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	$r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$r25 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	$i8 = lengthof $r25;	if $i8 <= 0 goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName>;	$l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l17 = $l15 & $l16;	$b18 = $l17 cmp 0L;	if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$z2 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: boolean isFunction(java.lang.Class)>($r24);	if $z2 != 0 goto return;	$r8 = <java.lang.Void: java.lang.Class TYPE>;	if $r24 != $r8 goto virtualinvoke r5.<java.lang.reflect.Method: void setAccessible(boolean)>(1);	return
;block_num 8