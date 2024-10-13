(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2052 0)
(declare-sort var1380 0)
(declare-sort var2231 0)
(declare-sort var186 0)
(declare-sort var3449 0)
(declare-sort var2226 0)
(declare-sort var2325 0)
(declare-sort var869 0)
(declare-sort var3796 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun init/-1434057860 (var1380) void)
(declare-fun features/1719669521 (var1380) Int)
(declare-fun format/1474396437 (var2231) String)
(declare-fun format/1719669521 (var1380) String)
(declare-fun getFieldInfo/1978329090 (var186 var2231 var1380 ClassObject var2226) void)
(declare-fun ignore/1719669521 (var1380) Bool)
(declare-fun var2325_getFieldName/1962972702 (ClassObject var186 var2231 Bool var1380 var2226) String)
(declare-fun orders/1474396437 (var2231) (Array Int String))
(declare-fun includes/1474396437 (var2231) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun writerFeatures/1474396437 (var2231) Int)
(declare-fun mask/-2077367092 (var869) Int)
(declare-fun getReturnType/-1494237887 (var2226) ClassObject)
(declare-fun var3796_isFunction/-1443200169 (ClassObject) Bool)
(declare-const null-var2052 var2052)
(declare-const null-var1380 var1380)
(declare-const null-Int Int)
(declare-const null-var2231 var2231)
(declare-const null-var186 var186)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-var3449 var3449)
(declare-const null-var2226 var2226)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var869-WriteClassName var869)
(declare-const var42 var2052) ; Statement: r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var42 null-var2052)))
(declare-const var1168 var1380) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo 
(assert (not (= var1168 null-var1380)))
(declare-const var910 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var910 null-Int)))
(declare-const var3395 var2231) ; Statement: r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var3395 null-var2231)))
(declare-const var9 var186) ; Statement: r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var9 null-var186)))
(declare-const var3801 ClassObject) ; Statement: r4 := @parameter4: java.lang.Class 
(assert (not (= var3801 null-ClassObject)))
(declare-const var1482 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var1482 null-Bool)))
(declare-const var658 var3449) ; Statement: r10 := @parameter6: java.util.Map 
(assert (not (= var658 null-var3449)))
(declare-const var2071 var2226) ; Statement: r5 := @parameter7: java.lang.reflect.Method 
(assert (not (= var2071 null-var2226)))
(assert true)
;(assert (init/-1434057860 var1168)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>() 

(declare-const var1168!1 var1380)
(define-const var305 Int (features/1719669521 var1168!1)) ; Statement: $l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> 
(define-const var10 Int (bv2nat (bvor ((_ int2bv 64) var305) ((_ int2bv 64) var910)))) ; Statement: $l2 = $l1 | l0 
(declare-const var1168!2 var1380)
(assert (not (= var1168!2 null-var1380)))
(assert (= (features/1719669521 var1168!2) var10)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2 
(define-const var3049 String (format/1474396437 var3395)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format> 
(declare-const var1168!3 var1380)
(assert (not (= var1168!3 null-var1380)))
(assert (= (format/1719669521 var1168!3) var3049)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2 
(assert true)
;(assert (getFieldInfo/1978329090 var9 var3395 var1168!3 var3801 var2071)) ; Statement: virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5) 

(declare-const var9!1 var186)
(declare-const var3395!1 var2231)
(declare-const var1168!4 var1380)
(declare-const var3801!1 ClassObject)
(declare-const var2071!1 var2226)
(define-const var2363 Bool (ignore/1719669521 var1168!4)) ; Statement: $z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore> 
 ; Statement: if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(assert (= (ite var2363 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3679 String (var2325_getFieldName/1962972702 var3801!1 var9!1 var3395!1 var1482 var1168!4 var2071!1)) ; Statement: r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(define-const var3483 (Array Int String) (orders/1474396437 var3395!1)) ; Statement: $r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders> 
 ; Statement: if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
(assert (= var3483 null-__Array__Int__String__)) ; Cond: $r7 == null 
(define-const var313 (Array Int String) (includes/1474396437 var3395!1)) ; Statement: $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
 ; Statement: if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(assert (not (= var313 null-__Array__Int__String__))) ; Negate: Cond: $r43 == null  
(define-const var471 (Array Int String) (includes/1474396437 var3395!1)) ; Statement: $r25 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
(define-const var702 Int (getLength-Arr-String-1 var471)) ; Statement: $i8 = lengthof $r25 
 ; Statement: if $i8 <= 0 goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(assert (<= var702 0)) ; Cond: $i8 <= 0 
(define-const var2364 Int (writerFeatures/1474396437 var3395!1)) ; Statement: $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(define-const var3316 var869 var869-WriteClassName) ; Statement: $r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName> 
(define-const var3728 Int (mask/-2077367092 var3316)) ; Statement: $l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var415 Int (bv2nat (bvand ((_ int2bv 64) var2364) ((_ int2bv 64) var3728)))) ; Statement: $l17 = $l15 & $l16 
(define-const var3964 Int (ite (> var415 0) 1 (ite (< var415 0) (- 1) 0))) ; Statement: $b18 = $l17 cmp 0L 
 ; Statement: if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert (= var3964 0)) ; Cond: $b18 == 0 
(assert true)
(define-const var3521 ClassObject (getReturnType/-1494237887 var2071!1)) ; Statement: $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var3735 Bool (var3796_isFunction/-1443200169 var3521)) ; Statement: $z2 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: boolean isFunction(java.lang.Class)>($r24) 
 ; Statement: if $z2 != 0 goto return 
(assert (not (= (ite var3735 1 0) 0))) ; Cond: $z2 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {init/-1434057860=([com.alibaba.fastjson2.codec.FieldInfo], void), features/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], long), format/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String), format/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], java.lang.String), getFieldInfo/1978329090=([com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, com.alibaba.fastjson2.codec.FieldInfo, java.lang.Class, java.lang.reflect.Method], void), ignore/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], boolean), var2325_getFieldName/1962972702=([java.lang.Class, com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, boolean, com.alibaba.fastjson2.codec.FieldInfo, java.lang.reflect.Method], java.lang.String), orders/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), includes/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), writerFeatures/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], long), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), var3796_isFunction/-1443200169=([java.lang.Class], boolean)}
; {var2052=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var42=r12, var1380=com.alibaba.fastjson2.codec.FieldInfo, var1168=r0, var910=l0, var2231=com.alibaba.fastjson2.codec.BeanInfo, var3395=r1, var186=com.alibaba.fastjson2.writer.ObjectWriterProvider, var9=r3, var3801=r4, var1482=z1, var3449=java.util.Map, var658=r10, var2226=java.lang.reflect.Method, var2071=r5, var305=$l1, var10=$l2, var3049=$r2, var2363=$z0, var2325=com.alibaba.fastjson2.writer.ObjectWriterCreator, var3679=r6, var3483=$r7, var313=$r43, var471=$r25, var702=$i8, var2364=$l15, var869=com.alibaba.fastjson2.JSONWriter$Feature, var3316=$r46, var3728=$l16, var415=$l17, var3964=$b18, var3521=$r24, var3796=com.alibaba.fastjson2.util.TypeUtils, var3735=$z2}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2052, r12=var42, com.alibaba.fastjson2.codec.FieldInfo=var1380, r0=var1168, l0=var910, com.alibaba.fastjson2.codec.BeanInfo=var2231, r1=var3395, com.alibaba.fastjson2.writer.ObjectWriterProvider=var186, r3=var9, r4=var3801, z1=var1482, java.util.Map=var3449, r10=var658, java.lang.reflect.Method=var2226, r5=var2071, $l1=var305, $l2=var10, $r2=var3049, $z0=var2363, com.alibaba.fastjson2.writer.ObjectWriterCreator=var2325, r6=var3679, $r7=var3483, $r43=var313, $r25=var471, $i8=var702, $l15=var2364, com.alibaba.fastjson2.JSONWriter$Feature=var869, $r46=var3316, $l16=var3728, $l17=var415, $b18=var3964, $r24=var3521, com.alibaba.fastjson2.util.TypeUtils=var3796, $z2=var3735}
;seq 
;cnt {}
;stmts r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo;	l0 := @parameter1: long;	r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r4 := @parameter4: java.lang.Class;	z1 := @parameter5: boolean;	r10 := @parameter6: java.util.Map;	r5 := @parameter7: java.lang.reflect.Method;	virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>();	$l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features>;	$l2 = $l1 | l0;	r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2;	$r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format>;	r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2;	virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5);	$z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore>;	if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	$r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders>;	if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	$r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$r25 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	$i8 = lengthof $r25;	if $i8 <= 0 goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName>;	$l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l17 = $l15 & $l16;	$b18 = $l17 cmp 0L;	if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$z2 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: boolean isFunction(java.lang.Class)>($r24);	if $z2 != 0 goto return;	return
;block_num 7