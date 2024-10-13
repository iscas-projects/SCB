(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var750 0)
(declare-sort var3177 0)
(declare-sort var1897 0)
(declare-sort var2167 0)
(declare-sort var1130 0)
(declare-sort var1551 0)
(declare-sort var2674 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun init/-1434057860 (var3177) void)
(declare-fun features/1719669521 (var3177) Int)
(declare-fun format/1474396437 (var1897) String)
(declare-fun format/1719669521 (var3177) String)
(declare-fun getFieldInfo/1978329090 (var2167 var1897 var3177 ClassObject var1551) void)
(declare-fun ignore/1719669521 (var3177) Bool)
(declare-fun var2674_getFieldName/1962972702 (ClassObject var2167 var1897 Bool var3177 var1551) String)
(declare-fun orders/1474396437 (var1897) (Array Int String))
(declare-fun includes/1474396437 (var1897) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var750 var750)
(declare-const null-var3177 var3177)
(declare-const null-Int Int)
(declare-const null-var1897 var1897)
(declare-const null-var2167 var2167)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-var1130 var1130)
(declare-const null-var1551 var1551)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2531 var750) ; Statement: r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2531 null-var750)))
(declare-const var2915 var3177) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo 
(assert (not (= var2915 null-var3177)))
(declare-const var2691 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var2691 null-Int)))
(declare-const var139 var1897) ; Statement: r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var139 null-var1897)))
(declare-const var2087 var2167) ; Statement: r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2087 null-var2167)))
(declare-const var1782 ClassObject) ; Statement: r4 := @parameter4: java.lang.Class 
(assert (not (= var1782 null-ClassObject)))
(declare-const var661 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var661 null-Bool)))
(declare-const var3681 var1130) ; Statement: r10 := @parameter6: java.util.Map 
(assert (not (= var3681 null-var1130)))
(declare-const var3167 var1551) ; Statement: r5 := @parameter7: java.lang.reflect.Method 
(assert (not (= var3167 null-var1551)))
(assert true)
;(assert (init/-1434057860 var2915)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>() 

(declare-const var2915!1 var3177)
(define-const var3344 Int (features/1719669521 var2915!1)) ; Statement: $l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> 
(define-const var825 Int (bv2nat (bvor ((_ int2bv 64) var3344) ((_ int2bv 64) var2691)))) ; Statement: $l2 = $l1 | l0 
(declare-const var2915!2 var3177)
(assert (not (= var2915!2 null-var3177)))
(assert (= (features/1719669521 var2915!2) var825)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2 
(define-const var466 String (format/1474396437 var139)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format> 
(declare-const var2915!3 var3177)
(assert (not (= var2915!3 null-var3177)))
(assert (= (format/1719669521 var2915!3) var466)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2 
(assert true)
;(assert (getFieldInfo/1978329090 var2087 var139 var2915!3 var1782 var3167)) ; Statement: virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5) 

(declare-const var2087!1 var2167)
(declare-const var139!1 var1897)
(declare-const var2915!4 var3177)
(declare-const var1782!1 ClassObject)
(declare-const var3167!1 var1551)
(define-const var3975 Bool (ignore/1719669521 var2915!4)) ; Statement: $z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore> 
 ; Statement: if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(assert (= (ite var3975 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1905 String (var2674_getFieldName/1962972702 var1782!1 var2087!1 var139!1 var661 var2915!4 var3167!1)) ; Statement: r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(define-const var1535 (Array Int String) (orders/1474396437 var139!1)) ; Statement: $r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders> 
 ; Statement: if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
(assert (= var1535 null-__Array__Int__String__)) ; Cond: $r7 == null 
(define-const var182 (Array Int String) (includes/1474396437 var139!1)) ; Statement: $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
 ; Statement: if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(assert (not (= var182 null-__Array__Int__String__))) ; Negate: Cond: $r43 == null  
(define-const var1238 (Array Int String) (includes/1474396437 var139!1)) ; Statement: $r25 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
(define-const var3445 Int (getLength-Arr-String-1 var1238)) ; Statement: $i8 = lengthof $r25 
 ; Statement: if $i8 <= 0 goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(assert (not (<= var3445 0))) ; Negate: Cond: $i8 <= 0  
(define-const var1022 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var250 (Array Int String) (includes/1474396437 var139!1)) ; Statement: r44 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
(define-const var2030 Int (getLength-Arr-String-1 var250)) ; Statement: i13 = lengthof r44 
(define-const var18 Int 0) ; Statement: i14 = 0 
(assert true) ; Non Conditional
 ; Statement: if i14 >= i13 goto (branch) 
(assert (>= var18 var2030)) ; Cond: i14 >= i13 
 ; Statement: if z8 != 0 goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(assert (not (not (= (ite var1022 1 0) 0)))) ; Negate: Cond: z8 != 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {init/-1434057860=([com.alibaba.fastjson2.codec.FieldInfo], void), features/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], long), format/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String), format/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], java.lang.String), getFieldInfo/1978329090=([com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, com.alibaba.fastjson2.codec.FieldInfo, java.lang.Class, java.lang.reflect.Method], void), ignore/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], boolean), var2674_getFieldName/1962972702=([java.lang.Class, com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, boolean, com.alibaba.fastjson2.codec.FieldInfo, java.lang.reflect.Method], java.lang.String), orders/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), includes/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var750=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2531=r12, var3177=com.alibaba.fastjson2.codec.FieldInfo, var2915=r0, var2691=l0, var1897=com.alibaba.fastjson2.codec.BeanInfo, var139=r1, var2167=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2087=r3, var1782=r4, var661=z1, var1130=java.util.Map, var3681=r10, var1551=java.lang.reflect.Method, var3167=r5, var3344=$l1, var825=$l2, var466=$r2, var3975=$z0, var2674=com.alibaba.fastjson2.writer.ObjectWriterCreator, var1905=r6, var1535=$r7, var182=$r43, var1238=$r25, var3445=$i8, var1022=z8, var250=r44, var2030=i13, var18=i14}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var750, r12=var2531, com.alibaba.fastjson2.codec.FieldInfo=var3177, r0=var2915, l0=var2691, com.alibaba.fastjson2.codec.BeanInfo=var1897, r1=var139, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2167, r3=var2087, r4=var1782, z1=var661, java.util.Map=var1130, r10=var3681, java.lang.reflect.Method=var1551, r5=var3167, $l1=var3344, $l2=var825, $r2=var466, $z0=var3975, com.alibaba.fastjson2.writer.ObjectWriterCreator=var2674, r6=var1905, $r7=var1535, $r43=var182, $r25=var1238, $i8=var3445, z8=var1022, r44=var250, i13=var2030, i14=var18}
;seq 
;cnt {}
;stmts r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo;	l0 := @parameter1: long;	r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r4 := @parameter4: java.lang.Class;	z1 := @parameter5: boolean;	r10 := @parameter6: java.util.Map;	r5 := @parameter7: java.lang.reflect.Method;	virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>();	$l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features>;	$l2 = $l1 | l0;	r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2;	$r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format>;	r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2;	virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5);	$z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore>;	if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	$r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders>;	if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	$r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$r25 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	$i8 = lengthof $r25;	if $i8 <= 0 goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	z8 = 0;	r44 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	i13 = lengthof r44;	i14 = 0;	if i14 >= i13 goto (branch);	if z8 != 0 goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	return
;block_num 8