(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3966 0)
(declare-sort var2023 0)
(declare-sort var2233 0)
(declare-sort var1443 0)
(declare-sort var2184 0)
(declare-sort var2265 0)
(declare-sort var3020 0)
(declare-sort var2042 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun init/-1434057860 (var2023) void)
(declare-fun features/1719669521 (var2023) Int)
(declare-fun format/1474396437 (var2233) String)
(declare-fun format/1719669521 (var2023) String)
(declare-fun getFieldInfo/1978329090 (var1443 var2233 var2023 ClassObject var2265) void)
(declare-fun ignore/1719669521 (var2023) Bool)
(declare-fun var3020_getFieldName/1962972702 (ClassObject var1443 var2233 Bool var2023 var2265) String)
(declare-fun orders/1474396437 (var2233) (Array Int String))
(declare-fun includes/1474396437 (var2233) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun writerFeatures/1474396437 (var2233) Int)
(declare-fun mask/-2077367092 (var2042) Int)
(declare-fun typeKey/1474396437 (var2233) String)
(declare-const null-var3966 var3966)
(declare-const null-var2023 var2023)
(declare-const null-Int Int)
(declare-const null-var2233 var2233)
(declare-const null-var1443 var1443)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-var2184 var2184)
(declare-const null-var2265 var2265)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2042-WriteClassName var2042)
(declare-const var3079 var3966) ; Statement: r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3079 null-var3966)))
(declare-const var1336 var2023) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo 
(assert (not (= var1336 null-var2023)))
(declare-const var2659 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var2659 null-Int)))
(declare-const var2288 var2233) ; Statement: r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2288 null-var2233)))
(declare-const var231 var1443) ; Statement: r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var231 null-var1443)))
(declare-const var564 ClassObject) ; Statement: r4 := @parameter4: java.lang.Class 
(assert (not (= var564 null-ClassObject)))
(declare-const var2485 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var2485 null-Bool)))
(declare-const var2966 var2184) ; Statement: r10 := @parameter6: java.util.Map 
(assert (not (= var2966 null-var2184)))
(declare-const var515 var2265) ; Statement: r5 := @parameter7: java.lang.reflect.Method 
(assert (not (= var515 null-var2265)))
(assert true)
;(assert (init/-1434057860 var1336)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>() 

(declare-const var1336!1 var2023)
(define-const var1733 Int (features/1719669521 var1336!1)) ; Statement: $l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> 
(define-const var2760 Int (bv2nat (bvor ((_ int2bv 64) var1733) ((_ int2bv 64) var2659)))) ; Statement: $l2 = $l1 | l0 
(declare-const var1336!2 var2023)
(assert (not (= var1336!2 null-var2023)))
(assert (= (features/1719669521 var1336!2) var2760)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2 
(define-const var2274 String (format/1474396437 var2288)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format> 
(declare-const var1336!3 var2023)
(assert (not (= var1336!3 null-var2023)))
(assert (= (format/1719669521 var1336!3) var2274)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2 
(assert true)
;(assert (getFieldInfo/1978329090 var231 var2288 var1336!3 var564 var515)) ; Statement: virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5) 

(declare-const var231!1 var1443)
(declare-const var2288!1 var2233)
(declare-const var1336!4 var2023)
(declare-const var564!1 ClassObject)
(declare-const var515!1 var2265)
(define-const var1176 Bool (ignore/1719669521 var1336!4)) ; Statement: $z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore> 
 ; Statement: if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(assert (= (ite var1176 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3283 String (var3020_getFieldName/1962972702 var564!1 var231!1 var2288!1 var2485 var1336!4 var515!1)) ; Statement: r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(define-const var2099 (Array Int String) (orders/1474396437 var2288!1)) ; Statement: $r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders> 
 ; Statement: if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
(assert (= var2099 null-__Array__Int__String__)) ; Cond: $r7 == null 
(define-const var450 (Array Int String) (includes/1474396437 var2288!1)) ; Statement: $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
 ; Statement: if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(assert (not (= var450 null-__Array__Int__String__))) ; Negate: Cond: $r43 == null  
(define-const var2156 (Array Int String) (includes/1474396437 var2288!1)) ; Statement: $r25 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
(define-const var3313 Int (getLength-Arr-String-1 var2156)) ; Statement: $i8 = lengthof $r25 
 ; Statement: if $i8 <= 0 goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(assert (<= var3313 0)) ; Cond: $i8 <= 0 
(define-const var194 Int (writerFeatures/1474396437 var2288!1)) ; Statement: $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(define-const var2671 var2042 var2042-WriteClassName) ; Statement: $r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName> 
(define-const var1772 Int (mask/-2077367092 var2671)) ; Statement: $l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var226 Int (bv2nat (bvand ((_ int2bv 64) var194) ((_ int2bv 64) var1772)))) ; Statement: $l17 = $l15 & $l16 
(define-const var3356 Int (ite (> var226 0) 1 (ite (< var226 0) (- 1) 0))) ; Statement: $b18 = $l17 cmp 0L 
 ; Statement: if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert (not (= var3356 0))) ; Negate: Cond: $b18 == 0  
(define-const var1023 String (typeKey/1474396437 var2288!1)) ; Statement: $r23 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String typeKey> 
(assert true)
(define-const var361 Bool (= var3283 var1023)) ; Statement: $z4 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>($r23) 
 ; Statement: if $z4 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert (not (= (ite var361 1 0) 0))) ; Negate: Cond: $z4 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {init/-1434057860=([com.alibaba.fastjson2.codec.FieldInfo], void), features/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], long), format/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String), format/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], java.lang.String), getFieldInfo/1978329090=([com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, com.alibaba.fastjson2.codec.FieldInfo, java.lang.Class, java.lang.reflect.Method], void), ignore/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], boolean), var3020_getFieldName/1962972702=([java.lang.Class, com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, boolean, com.alibaba.fastjson2.codec.FieldInfo, java.lang.reflect.Method], java.lang.String), orders/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), includes/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), writerFeatures/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], long), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), typeKey/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String)}
; {var3966=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3079=r12, var2023=com.alibaba.fastjson2.codec.FieldInfo, var1336=r0, var2659=l0, var2233=com.alibaba.fastjson2.codec.BeanInfo, var2288=r1, var1443=com.alibaba.fastjson2.writer.ObjectWriterProvider, var231=r3, var564=r4, var2485=z1, var2184=java.util.Map, var2966=r10, var2265=java.lang.reflect.Method, var515=r5, var1733=$l1, var2760=$l2, var2274=$r2, var1176=$z0, var3020=com.alibaba.fastjson2.writer.ObjectWriterCreator, var3283=r6, var2099=$r7, var450=$r43, var2156=$r25, var3313=$i8, var194=$l15, var2042=com.alibaba.fastjson2.JSONWriter$Feature, var2671=$r46, var1772=$l16, var226=$l17, var3356=$b18, var1023=$r23, var361=$z4}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3966, r12=var3079, com.alibaba.fastjson2.codec.FieldInfo=var2023, r0=var1336, l0=var2659, com.alibaba.fastjson2.codec.BeanInfo=var2233, r1=var2288, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1443, r3=var231, r4=var564, z1=var2485, java.util.Map=var2184, r10=var2966, java.lang.reflect.Method=var2265, r5=var515, $l1=var1733, $l2=var2760, $r2=var2274, $z0=var1176, com.alibaba.fastjson2.writer.ObjectWriterCreator=var3020, r6=var3283, $r7=var2099, $r43=var450, $r25=var2156, $i8=var3313, $l15=var194, com.alibaba.fastjson2.JSONWriter$Feature=var2042, $r46=var2671, $l16=var1772, $l17=var226, $b18=var3356, $r23=var1023, $z4=var361}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo;	l0 := @parameter1: long;	r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r4 := @parameter4: java.lang.Class;	z1 := @parameter5: boolean;	r10 := @parameter6: java.util.Map;	r5 := @parameter7: java.lang.reflect.Method;	virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>();	$l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features>;	$l2 = $l1 | l0;	r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2;	$r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format>;	r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2;	virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5);	$z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore>;	if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	$r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders>;	if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	$r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$r25 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	$i8 = lengthof $r25;	if $i8 <= 0 goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName>;	$l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l17 = $l15 & $l16;	$b18 = $l17 cmp 0L;	if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r23 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String typeKey>;	$z4 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>($r23);	if $z4 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	return
;block_num 7