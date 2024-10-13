(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1803 0)
(declare-sort var3831 0)
(declare-sort var1011 0)
(declare-sort var745 0)
(declare-sort var106 0)
(declare-sort var3324 0)
(declare-sort var2453 0)
(declare-sort var551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun init/-1434057860 (var3831) void)
(declare-fun features/1719669521 (var3831) Int)
(declare-fun format/1474396437 (var1011) String)
(declare-fun format/1719669521 (var3831) String)
(declare-fun getFieldInfo/1978329090 (var745 var1011 var3831 ClassObject var3324) void)
(declare-fun ignore/1719669521 (var3831) Bool)
(declare-fun var2453_getFieldName/1962972702 (ClassObject var745 var1011 Bool var3831 var3324) String)
(declare-fun orders/1474396437 (var1011) (Array Int String))
(declare-fun includes/1474396437 (var1011) (Array Int String))
(declare-fun writerFeatures/1474396437 (var1011) Int)
(declare-fun mask/-2077367092 (var551) Int)
(declare-fun typeKey/1474396437 (var1011) String)
(declare-const null-var1803 var1803)
(declare-const null-var3831 var3831)
(declare-const null-Int Int)
(declare-const null-var1011 var1011)
(declare-const null-var745 var745)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-var106 var106)
(declare-const null-var3324 var3324)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var551-WriteClassName var551)
(declare-const var3136 var1803) ; Statement: r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3136 null-var1803)))
(declare-const var3997 var3831) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo 
(assert (not (= var3997 null-var3831)))
(declare-const var819 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var819 null-Int)))
(declare-const var1826 var1011) ; Statement: r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1826 null-var1011)))
(declare-const var1375 var745) ; Statement: r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var1375 null-var745)))
(declare-const var2773 ClassObject) ; Statement: r4 := @parameter4: java.lang.Class 
(assert (not (= var2773 null-ClassObject)))
(declare-const var2931 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var2931 null-Bool)))
(declare-const var2892 var106) ; Statement: r10 := @parameter6: java.util.Map 
(assert (not (= var2892 null-var106)))
(declare-const var3608 var3324) ; Statement: r5 := @parameter7: java.lang.reflect.Method 
(assert (not (= var3608 null-var3324)))
(assert true)
;(assert (init/-1434057860 var3997)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>() 

(declare-const var3997!1 var3831)
(define-const var3511 Int (features/1719669521 var3997!1)) ; Statement: $l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> 
(define-const var798 Int (bv2nat (bvor ((_ int2bv 64) var3511) ((_ int2bv 64) var819)))) ; Statement: $l2 = $l1 | l0 
(declare-const var3997!2 var3831)
(assert (not (= var3997!2 null-var3831)))
(assert (= (features/1719669521 var3997!2) var798)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2 
(define-const var2706 String (format/1474396437 var1826)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format> 
(declare-const var3997!3 var3831)
(assert (not (= var3997!3 null-var3831)))
(assert (= (format/1719669521 var3997!3) var2706)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2 
(assert true)
;(assert (getFieldInfo/1978329090 var1375 var1826 var3997!3 var2773 var3608)) ; Statement: virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5) 

(declare-const var1375!1 var745)
(declare-const var1826!1 var1011)
(declare-const var3997!4 var3831)
(declare-const var2773!1 ClassObject)
(declare-const var3608!1 var3324)
(define-const var909 Bool (ignore/1719669521 var3997!4)) ; Statement: $z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore> 
 ; Statement: if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(assert (= (ite var909 1 0) 0)) ; Cond: $z0 == 0 
(define-const var751 String (var2453_getFieldName/1962972702 var2773!1 var1375!1 var1826!1 var2931 var3997!4 var3608!1)) ; Statement: r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(define-const var3649 (Array Int String) (orders/1474396437 var1826!1)) ; Statement: $r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders> 
 ; Statement: if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
(assert (= var3649 null-__Array__Int__String__)) ; Cond: $r7 == null 
(define-const var3117 (Array Int String) (includes/1474396437 var1826!1)) ; Statement: $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
 ; Statement: if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(assert (= var3117 null-__Array__Int__String__)) ; Cond: $r43 == null 
(define-const var2430 Int (writerFeatures/1474396437 var1826!1)) ; Statement: $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(define-const var3936 var551 var551-WriteClassName) ; Statement: $r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName> 
(define-const var2070 Int (mask/-2077367092 var3936)) ; Statement: $l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var621 Int (bv2nat (bvand ((_ int2bv 64) var2430) ((_ int2bv 64) var2070)))) ; Statement: $l17 = $l15 & $l16 
(define-const var6 Int (ite (> var621 0) 1 (ite (< var621 0) (- 1) 0))) ; Statement: $b18 = $l17 cmp 0L 
 ; Statement: if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert (not (= var6 0))) ; Negate: Cond: $b18 == 0  
(define-const var3201 String (typeKey/1474396437 var1826!1)) ; Statement: $r23 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String typeKey> 
(assert true)
(define-const var536 Bool (= var751 var3201)) ; Statement: $z4 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>($r23) 
 ; Statement: if $z4 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert (not (= (ite var536 1 0) 0))) ; Negate: Cond: $z4 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {init/-1434057860=([com.alibaba.fastjson2.codec.FieldInfo], void), features/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], long), format/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String), format/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], java.lang.String), getFieldInfo/1978329090=([com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, com.alibaba.fastjson2.codec.FieldInfo, java.lang.Class, java.lang.reflect.Method], void), ignore/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], boolean), var2453_getFieldName/1962972702=([java.lang.Class, com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, boolean, com.alibaba.fastjson2.codec.FieldInfo, java.lang.reflect.Method], java.lang.String), orders/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), includes/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), writerFeatures/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], long), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), typeKey/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String)}
; {var1803=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3136=r12, var3831=com.alibaba.fastjson2.codec.FieldInfo, var3997=r0, var819=l0, var1011=com.alibaba.fastjson2.codec.BeanInfo, var1826=r1, var745=com.alibaba.fastjson2.writer.ObjectWriterProvider, var1375=r3, var2773=r4, var2931=z1, var106=java.util.Map, var2892=r10, var3324=java.lang.reflect.Method, var3608=r5, var3511=$l1, var798=$l2, var2706=$r2, var909=$z0, var2453=com.alibaba.fastjson2.writer.ObjectWriterCreator, var751=r6, var3649=$r7, var3117=$r43, var2430=$l15, var551=com.alibaba.fastjson2.JSONWriter$Feature, var3936=$r46, var2070=$l16, var621=$l17, var6=$b18, var3201=$r23, var536=$z4}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1803, r12=var3136, com.alibaba.fastjson2.codec.FieldInfo=var3831, r0=var3997, l0=var819, com.alibaba.fastjson2.codec.BeanInfo=var1011, r1=var1826, com.alibaba.fastjson2.writer.ObjectWriterProvider=var745, r3=var1375, r4=var2773, z1=var2931, java.util.Map=var106, r10=var2892, java.lang.reflect.Method=var3324, r5=var3608, $l1=var3511, $l2=var798, $r2=var2706, $z0=var909, com.alibaba.fastjson2.writer.ObjectWriterCreator=var2453, r6=var751, $r7=var3649, $r43=var3117, $l15=var2430, com.alibaba.fastjson2.JSONWriter$Feature=var551, $r46=var3936, $l16=var2070, $l17=var621, $b18=var6, $r23=var3201, $z4=var536}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo;	l0 := @parameter1: long;	r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r4 := @parameter4: java.lang.Class;	z1 := @parameter5: boolean;	r10 := @parameter6: java.util.Map;	r5 := @parameter7: java.lang.reflect.Method;	virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>();	$l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features>;	$l2 = $l1 | l0;	r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2;	$r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format>;	r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2;	virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5);	$z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore>;	if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	$r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders>;	if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	$r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName>;	$l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l17 = $l15 & $l16;	$b18 = $l17 cmp 0L;	if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r23 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String typeKey>;	$z4 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>($r23);	if $z4 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	return
;block_num 6