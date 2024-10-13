(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2180 0)
(declare-sort var1418 0)
(declare-sort var1428 0)
(declare-sort var1942 0)
(declare-sort var1544 0)
(declare-sort var3030 0)
(declare-sort var3461 0)
(declare-sort var415 0)
(declare-sort var2808 0)
(declare-sort var3094 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun init/-1434057860 (var1418) void)
(declare-fun features/1719669521 (var1418) Int)
(declare-fun format/1474396437 (var1428) String)
(declare-fun format/1719669521 (var1418) String)
(declare-fun getFieldInfo/1978329090 (var1942 var1428 var1418 ClassObject var3030) void)
(declare-fun ignore/1719669521 (var1418) Bool)
(declare-fun var3461_getFieldName/1962972702 (ClassObject var1942 var1428 Bool var1418 var3030) String)
(declare-fun orders/1474396437 (var1428) (Array Int String))
(declare-fun includes/1474396437 (var1428) (Array Int String))
(declare-fun writerFeatures/1474396437 (var1428) Int)
(declare-fun mask/-2077367092 (var415) Int)
(declare-fun getReturnType/-1494237887 (var3030) ClassObject)
(declare-fun var2808_isFunction/-1443200169 (ClassObject) Bool)
(declare-const null-var2180 var2180)
(declare-const null-var1418 var1418)
(declare-const null-Int Int)
(declare-const null-var1428 var1428)
(declare-const null-var1942 var1942)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-var1544 var1544)
(declare-const null-var3030 var3030)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var415-WriteClassName var415)
(declare-const var3094-TYPE ClassObject)
(declare-const var3632 var2180) ; Statement: r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3632 null-var2180)))
(declare-const var2260 var1418) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo 
(assert (not (= var2260 null-var1418)))
(declare-const var2709 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var2709 null-Int)))
(declare-const var1420 var1428) ; Statement: r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1420 null-var1428)))
(declare-const var1510 var1942) ; Statement: r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var1510 null-var1942)))
(declare-const var1923 ClassObject) ; Statement: r4 := @parameter4: java.lang.Class 
(assert (not (= var1923 null-ClassObject)))
(declare-const var1348 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var1348 null-Bool)))
(declare-const var232 var1544) ; Statement: r10 := @parameter6: java.util.Map 
(assert (not (= var232 null-var1544)))
(declare-const var401 var3030) ; Statement: r5 := @parameter7: java.lang.reflect.Method 
(assert (not (= var401 null-var3030)))
(assert true)
;(assert (init/-1434057860 var2260)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>() 

(declare-const var2260!1 var1418)
(define-const var2124 Int (features/1719669521 var2260!1)) ; Statement: $l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> 
(define-const var2007 Int (bv2nat (bvor ((_ int2bv 64) var2124) ((_ int2bv 64) var2709)))) ; Statement: $l2 = $l1 | l0 
(declare-const var2260!2 var1418)
(assert (not (= var2260!2 null-var1418)))
(assert (= (features/1719669521 var2260!2) var2007)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2 
(define-const var2101 String (format/1474396437 var1420)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format> 
(declare-const var2260!3 var1418)
(assert (not (= var2260!3 null-var1418)))
(assert (= (format/1719669521 var2260!3) var2101)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2 
(assert true)
;(assert (getFieldInfo/1978329090 var1510 var1420 var2260!3 var1923 var401)) ; Statement: virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5) 

(declare-const var1510!1 var1942)
(declare-const var1420!1 var1428)
(declare-const var2260!4 var1418)
(declare-const var1923!1 ClassObject)
(declare-const var401!1 var3030)
(define-const var1683 Bool (ignore/1719669521 var2260!4)) ; Statement: $z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore> 
 ; Statement: if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(assert (= (ite var1683 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2301 String (var3461_getFieldName/1962972702 var1923!1 var1510!1 var1420!1 var1348 var2260!4 var401!1)) ; Statement: r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(define-const var1343 (Array Int String) (orders/1474396437 var1420!1)) ; Statement: $r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders> 
 ; Statement: if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
(assert (= var1343 null-__Array__Int__String__)) ; Cond: $r7 == null 
(define-const var2539 (Array Int String) (includes/1474396437 var1420!1)) ; Statement: $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
 ; Statement: if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(assert (= var2539 null-__Array__Int__String__)) ; Cond: $r43 == null 
(define-const var1687 Int (writerFeatures/1474396437 var1420!1)) ; Statement: $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(define-const var71 var415 var415-WriteClassName) ; Statement: $r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName> 
(define-const var336 Int (mask/-2077367092 var71)) ; Statement: $l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3194 Int (bv2nat (bvand ((_ int2bv 64) var1687) ((_ int2bv 64) var336)))) ; Statement: $l17 = $l15 & $l16 
(define-const var2063 Int (ite (> var3194 0) 1 (ite (< var3194 0) (- 1) 0))) ; Statement: $b18 = $l17 cmp 0L 
 ; Statement: if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert (= var2063 0)) ; Cond: $b18 == 0 
(assert true)
(define-const var2226 ClassObject (getReturnType/-1494237887 var401!1)) ; Statement: $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var1021 Bool (var2808_isFunction/-1443200169 var2226)) ; Statement: $z2 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: boolean isFunction(java.lang.Class)>($r24) 
 ; Statement: if $z2 != 0 goto return 
(assert (not (not (= (ite var1021 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var2672 ClassObject var3094-TYPE) ; Statement: $r8 = <java.lang.Void: java.lang.Class TYPE> 
 ; Statement: if $r24 != $r8 goto virtualinvoke r5.<java.lang.reflect.Method: void setAccessible(boolean)>(1) 
(assert (not (not (= var2226 var2672)))) ; Negate: Cond: $r24 != $r8  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {init/-1434057860=([com.alibaba.fastjson2.codec.FieldInfo], void), features/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], long), format/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String), format/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], java.lang.String), getFieldInfo/1978329090=([com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, com.alibaba.fastjson2.codec.FieldInfo, java.lang.Class, java.lang.reflect.Method], void), ignore/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], boolean), var3461_getFieldName/1962972702=([java.lang.Class, com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, boolean, com.alibaba.fastjson2.codec.FieldInfo, java.lang.reflect.Method], java.lang.String), orders/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), includes/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), writerFeatures/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], long), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), var2808_isFunction/-1443200169=([java.lang.Class], boolean)}
; {var2180=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3632=r12, var1418=com.alibaba.fastjson2.codec.FieldInfo, var2260=r0, var2709=l0, var1428=com.alibaba.fastjson2.codec.BeanInfo, var1420=r1, var1942=com.alibaba.fastjson2.writer.ObjectWriterProvider, var1510=r3, var1923=r4, var1348=z1, var1544=java.util.Map, var232=r10, var3030=java.lang.reflect.Method, var401=r5, var2124=$l1, var2007=$l2, var2101=$r2, var1683=$z0, var3461=com.alibaba.fastjson2.writer.ObjectWriterCreator, var2301=r6, var1343=$r7, var2539=$r43, var1687=$l15, var415=com.alibaba.fastjson2.JSONWriter$Feature, var71=$r46, var336=$l16, var3194=$l17, var2063=$b18, var2226=$r24, var2808=com.alibaba.fastjson2.util.TypeUtils, var1021=$z2, var3094=java.lang.Void, var2672=$r8}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2180, r12=var3632, com.alibaba.fastjson2.codec.FieldInfo=var1418, r0=var2260, l0=var2709, com.alibaba.fastjson2.codec.BeanInfo=var1428, r1=var1420, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1942, r3=var1510, r4=var1923, z1=var1348, java.util.Map=var1544, r10=var232, java.lang.reflect.Method=var3030, r5=var401, $l1=var2124, $l2=var2007, $r2=var2101, $z0=var1683, com.alibaba.fastjson2.writer.ObjectWriterCreator=var3461, r6=var2301, $r7=var1343, $r43=var2539, $l15=var1687, com.alibaba.fastjson2.JSONWriter$Feature=var415, $r46=var71, $l16=var336, $l17=var3194, $b18=var2063, $r24=var2226, com.alibaba.fastjson2.util.TypeUtils=var2808, $z2=var1021, java.lang.Void=var3094, $r8=var2672}
;seq 
;cnt {}
;stmts r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo;	l0 := @parameter1: long;	r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r4 := @parameter4: java.lang.Class;	z1 := @parameter5: boolean;	r10 := @parameter6: java.util.Map;	r5 := @parameter7: java.lang.reflect.Method;	virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>();	$l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features>;	$l2 = $l1 | l0;	r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2;	$r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format>;	r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2;	virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5);	$z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore>;	if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	$r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders>;	if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	$r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName>;	$l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l17 = $l15 & $l16;	$b18 = $l17 cmp 0L;	if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$z2 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: boolean isFunction(java.lang.Class)>($r24);	if $z2 != 0 goto return;	$r8 = <java.lang.Void: java.lang.Class TYPE>;	if $r24 != $r8 goto virtualinvoke r5.<java.lang.reflect.Method: void setAccessible(boolean)>(1);	return
;block_num 7