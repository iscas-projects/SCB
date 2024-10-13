(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3998 0)
(declare-sort var3455 0)
(declare-sort var1751 0)
(declare-sort var1290 0)
(declare-sort var425 0)
(declare-sort var1256 0)
(declare-sort var2758 0)
(declare-sort var412 0)
(declare-sort var2344 0)
(declare-sort var1674 0)
(declare-sort var2141 0)
(declare-sort var3714 0)
(declare-sort var3722 0)
(declare-sort var2629 0)
(declare-sort var3701 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun init/-1434057860 (var3455) void)
(declare-fun features/1719669521 (var3455) Int)
(declare-fun format/1474396437 (var1751) String)
(declare-fun format/1719669521 (var3455) String)
(declare-fun getFieldInfo/1978329090 (var1290 var1751 var3455 ClassObject var1256) void)
(declare-fun ignore/1719669521 (var3455) Bool)
(declare-fun var2758_getFieldName/1962972702 (ClassObject var1290 var1751 Bool var3455 var1256) String)
(declare-fun orders/1474396437 (var1751) (Array Int String))
(declare-fun includes/1474396437 (var1751) (Array Int String))
(declare-fun writerFeatures/1474396437 (var1751) Int)
(declare-fun mask/-2077367092 (var412) Int)
(declare-fun getReturnType/-1494237887 (var1256) ClassObject)
(declare-fun var2344_isFunction/-1443200169 (ClassObject) Bool)
(declare-fun setAccessible/-1429064387 (var2141 Bool) void)
(declare-fun cast-from-var1256-to-var2141 (var1256) var2141)
(declare-fun writeUsing/1719669521 (var3455) ClassObject)
(declare-fun var2629-init () var2629)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1227988463 (var1256) String)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2629 String var3701) void)
(declare-fun cast-from-var3722-to-var3701 (var3722) var3701)
(declare-const null-var3998 var3998)
(declare-const null-var3455 var3455)
(declare-const null-Int Int)
(declare-const null-var1751 var1751)
(declare-const null-var1290 var1290)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-var425 var425)
(declare-const null-var1256 var1256)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var412-WriteClassName var412)
(declare-const var1674-TYPE ClassObject)
(declare-const null-var3714 var3714)
(declare-const null-var3722 var3722)
(declare-const var626 var3998) ; Statement: r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var626 null-var3998)))
(declare-const var2090 var3455) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo 
(assert (not (= var2090 null-var3455)))
(declare-const var961 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var961 null-Int)))
(declare-const var2826 var1751) ; Statement: r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2826 null-var1751)))
(declare-const var2054 var1290) ; Statement: r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2054 null-var1290)))
(declare-const var3206 ClassObject) ; Statement: r4 := @parameter4: java.lang.Class 
(assert (not (= var3206 null-ClassObject)))
(declare-const var218 Bool) ; Statement: z1 := @parameter5: boolean 
(assert (not (= var218 null-Bool)))
(declare-const var2451 var425) ; Statement: r10 := @parameter6: java.util.Map 
(assert (not (= var2451 null-var425)))
(declare-const var2295 var1256) ; Statement: r5 := @parameter7: java.lang.reflect.Method 
(assert (not (= var2295 null-var1256)))
(assert true)
;(assert (init/-1434057860 var2090)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>() 

(declare-const var2090!1 var3455)
(define-const var773 Int (features/1719669521 var2090!1)) ; Statement: $l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> 
(define-const var94 Int (bv2nat (bvor ((_ int2bv 64) var773) ((_ int2bv 64) var961)))) ; Statement: $l2 = $l1 | l0 
(declare-const var2090!2 var3455)
(assert (not (= var2090!2 null-var3455)))
(assert (= (features/1719669521 var2090!2) var94)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2 
(define-const var3391 String (format/1474396437 var2826)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format> 
(declare-const var2090!3 var3455)
(assert (not (= var2090!3 null-var3455)))
(assert (= (format/1719669521 var2090!3) var3391)) ; Statement: r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2 
(assert true)
;(assert (getFieldInfo/1978329090 var2054 var2826 var2090!3 var3206 var2295)) ; Statement: virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5) 

(declare-const var2054!1 var1290)
(declare-const var2826!1 var1751)
(declare-const var2090!4 var3455)
(declare-const var3206!1 ClassObject)
(declare-const var2295!1 var1256)
(define-const var1826 Bool (ignore/1719669521 var2090!4)) ; Statement: $z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore> 
 ; Statement: if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(assert (= (ite var1826 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1546 String (var2758_getFieldName/1962972702 var3206!1 var2054!1 var2826!1 var218 var2090!4 var2295!1)) ; Statement: r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5) 
(define-const var2023 (Array Int String) (orders/1474396437 var2826!1)) ; Statement: $r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders> 
 ; Statement: if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
(assert (= var2023 null-__Array__Int__String__)) ; Cond: $r7 == null 
(define-const var2716 (Array Int String) (includes/1474396437 var2826!1)) ; Statement: $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes> 
 ; Statement: if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(assert (= var2716 null-__Array__Int__String__)) ; Cond: $r43 == null 
(define-const var2428 Int (writerFeatures/1474396437 var2826!1)) ; Statement: $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures> 
(define-const var48 var412 var412-WriteClassName) ; Statement: $r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName> 
(define-const var2819 Int (mask/-2077367092 var48)) ; Statement: $l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3016 Int (bv2nat (bvand ((_ int2bv 64) var2428) ((_ int2bv 64) var2819)))) ; Statement: $l17 = $l15 & $l16 
(define-const var1233 Int (ite (> var3016 0) 1 (ite (< var3016 0) (- 1) 0))) ; Statement: $b18 = $l17 cmp 0L 
 ; Statement: if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert (= var1233 0)) ; Cond: $b18 == 0 
(assert true)
(define-const var621 ClassObject (getReturnType/-1494237887 var2295!1)) ; Statement: $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var290 Bool (var2344_isFunction/-1443200169 var621)) ; Statement: $z2 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: boolean isFunction(java.lang.Class)>($r24) 
 ; Statement: if $z2 != 0 goto return 
(assert (not (not (= (ite var290 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var3511 ClassObject var1674-TYPE) ; Statement: $r8 = <java.lang.Void: java.lang.Class TYPE> 
 ; Statement: if $r24 != $r8 goto virtualinvoke r5.<java.lang.reflect.Method: void setAccessible(boolean)>(1) 
(assert (not (= var621 var3511))) ; Cond: $r24 != $r8 
(assert true)
;(assert (setAccessible/-1429064387 (cast-from-var1256-to-var2141 var2295!1) (ite (= 1 1) true false))) ; Statement: virtualinvoke r5.<java.lang.reflect.Method: void setAccessible(boolean)>(1) 

(declare-const var2295!2 var1256)
(declare-const var1474 Int)
(define-const var3508 var3714 null-var3714) ; Statement: r47 = null 
(define-const var630 ClassObject (writeUsing/1719669521 var2090!4)) ; Statement: $r9 = r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.Class writeUsing> 
 ; Statement: if $r9 == null goto (branch) 
(assert (not (= var630 null-ClassObject))) ; Negate: Cond: $r9 == null  
(declare-const var738 var3722) ; Statement: $r32 := @caughtexception 
(assert (not (= var738 null-var3722)))
(define-const var2825 var2629 var2629-init) ; Statement: $r33 = new com.alibaba.fastjson2.JSONException 
(define-const var1415 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1415)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1415!1 String)
(assert (= var1415!1 ""))
(assert true)
(define-const var1558 String (append/672562846 var1415!1 "create writeUsing Writer error, method ")) ; Statement: $r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create writeUsing Writer error, method ") 
(declare-const var1415!2 String)
(assert (= var1415!2 (str.++ var1415!1 "create writeUsing Writer error, method ")))
(assert true)
(define-const var3250 String (getName/1227988463 var2295!2)) ; Statement: $r35 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3696 String (append/672562846 var1558 var3250)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35) 
(declare-const var1558!1 String)
(assert (= var1558!1 (str.++ var1558 var3250)))
(assert true)
(define-const var32 String (append/672562846 var3696 ", serializer ")) ; Statement: $r40 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", serializer ") 
(declare-const var3696!1 String)
(assert (= var3696!1 (str.++ var3696 ", serializer ")))
(define-const var825 ClassObject (writeUsing/1719669521 var2090!4)) ; Statement: $r38 = r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.Class writeUsing> 
(assert true)
(define-const var3760 String (getName/-1958580599 var825)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var997 String (append/672562846 var32 var3760)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var32!1 String)
(assert (= var32!1 (str.++ var32 var3760)))
(assert true)
(define-const var3869 String (toString/-2075883882 var997)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2825 var3869 (cast-from-var3722-to-var3701 var738))) ; Statement: specialinvoke $r33.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r42, $r32) 

(declare-const var2825!1 var2629)
(declare-const var3869!1 String)
(declare-const var738!1 var3722)
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {init/-1434057860=([com.alibaba.fastjson2.codec.FieldInfo], void), features/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], long), format/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String), format/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], java.lang.String), getFieldInfo/1978329090=([com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, com.alibaba.fastjson2.codec.FieldInfo, java.lang.Class, java.lang.reflect.Method], void), ignore/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], boolean), var2758_getFieldName/1962972702=([java.lang.Class, com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, boolean, com.alibaba.fastjson2.codec.FieldInfo, java.lang.reflect.Method], java.lang.String), orders/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), includes/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String[]), writerFeatures/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], long), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), var2344_isFunction/-1443200169=([java.lang.Class], boolean), setAccessible/-1429064387=([java.lang.reflect.AccessibleObject, boolean], void), cast-from-var1256-to-var2141=([java.lang.reflect.Method], java.lang.reflect.AccessibleObject), writeUsing/1719669521=([com.alibaba.fastjson2.codec.FieldInfo], java.lang.Class), var2629-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1227988463=([java.lang.reflect.Method], java.lang.String), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3722-to-var3701=([java.lang.Exception], java.lang.Throwable)}
; {var3998=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var626=r12, var3455=com.alibaba.fastjson2.codec.FieldInfo, var2090=r0, var961=l0, var1751=com.alibaba.fastjson2.codec.BeanInfo, var2826=r1, var1290=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2054=r3, var3206=r4, var218=z1, var425=java.util.Map, var2451=r10, var1256=java.lang.reflect.Method, var2295=r5, var773=$l1, var94=$l2, var3391=$r2, var1826=$z0, var2758=com.alibaba.fastjson2.writer.ObjectWriterCreator, var1546=r6, var2023=$r7, var2716=$r43, var2428=$l15, var412=com.alibaba.fastjson2.JSONWriter$Feature, var48=$r46, var2819=$l16, var3016=$l17, var1233=$b18, var621=$r24, var2344=com.alibaba.fastjson2.util.TypeUtils, var290=$z2, var1674=java.lang.Void, var3511=$r8, var2141=java.lang.reflect.AccessibleObject, var1474=1, var3714=com.alibaba.fastjson2.writer.ObjectWriter, var3508=r47, var630=$r9, var3722=java.lang.Exception, var738=$r32, var2629=com.alibaba.fastjson2.JSONException, var2825=$r33, var1415=$r34, var1558=$r36, var3250=$r35, var3696=$r37, var32=$r40, var825=$r38, var3760=$r39, var997=$r41, var3869=$r42, var3701=java.lang.Throwable}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3998, r12=var626, com.alibaba.fastjson2.codec.FieldInfo=var3455, r0=var2090, l0=var961, com.alibaba.fastjson2.codec.BeanInfo=var1751, r1=var2826, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1290, r3=var2054, r4=var3206, z1=var218, java.util.Map=var425, r10=var2451, java.lang.reflect.Method=var1256, r5=var2295, $l1=var773, $l2=var94, $r2=var3391, $z0=var1826, com.alibaba.fastjson2.writer.ObjectWriterCreator=var2758, r6=var1546, $r7=var2023, $r43=var2716, $l15=var2428, com.alibaba.fastjson2.JSONWriter$Feature=var412, $r46=var48, $l16=var2819, $l17=var3016, $b18=var1233, $r24=var621, com.alibaba.fastjson2.util.TypeUtils=var2344, $z2=var290, java.lang.Void=var1674, $r8=var3511, java.lang.reflect.AccessibleObject=var2141, 1=var1474, com.alibaba.fastjson2.writer.ObjectWriter=var3714, r47=var3508, $r9=var630, java.lang.Exception=var3722, $r32=var738, com.alibaba.fastjson2.JSONException=var2629, $r33=var2825, $r34=var1415, $r36=var1558, $r35=var3250, $r37=var3696, $r40=var32, $r38=var825, $r39=var3760, $r41=var997, $r42=var3869, java.lang.Throwable=var3701}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.codec.FieldInfo;	l0 := @parameter1: long;	r1 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r3 := @parameter3: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r4 := @parameter4: java.lang.Class;	z1 := @parameter5: boolean;	r10 := @parameter6: java.util.Map;	r5 := @parameter7: java.lang.reflect.Method;	virtualinvoke r0.<com.alibaba.fastjson2.codec.FieldInfo: void init()>();	$l1 = r0.<com.alibaba.fastjson2.codec.FieldInfo: long features>;	$l2 = $l1 | l0;	r0.<com.alibaba.fastjson2.codec.FieldInfo: long features> = $l2;	$r2 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String format>;	r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.String format> = $r2;	virtualinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void getFieldInfo(com.alibaba.fastjson2.codec.BeanInfo,com.alibaba.fastjson2.codec.FieldInfo,java.lang.Class,java.lang.reflect.Method)>(r1, r0, r4, r5);	$z0 = r0.<com.alibaba.fastjson2.codec.FieldInfo: boolean ignore>;	if $z0 == 0 goto r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	r6 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String getFieldName(java.lang.Class,com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.codec.BeanInfo,boolean,com.alibaba.fastjson2.codec.FieldInfo,java.lang.reflect.Method)>(r4, r3, r1, z1, r0, r5);	$r7 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] orders>;	if $r7 == null goto $r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	$r43 = r1.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String[] includes>;	if $r43 == null goto $l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$l15 = r1.<com.alibaba.fastjson2.codec.BeanInfo: long writerFeatures>;	$r46 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteClassName>;	$l16 = $r46.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l17 = $l15 & $l16;	$b18 = $l17 cmp 0L;	if $b18 == 0 goto $r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r24 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$z2 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: boolean isFunction(java.lang.Class)>($r24);	if $z2 != 0 goto return;	$r8 = <java.lang.Void: java.lang.Class TYPE>;	if $r24 != $r8 goto virtualinvoke r5.<java.lang.reflect.Method: void setAccessible(boolean)>(1);	virtualinvoke r5.<java.lang.reflect.Method: void setAccessible(boolean)>(1);	r47 = null;	$r9 = r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.Class writeUsing>;	if $r9 == null goto (branch);	$r32 := @caughtexception;	$r33 = new com.alibaba.fastjson2.JSONException;	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create writeUsing Writer error, method ");	$r35 = virtualinvoke r5.<java.lang.reflect.Method: java.lang.String getName()>();	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35);	$r40 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", serializer ");	$r38 = r0.<com.alibaba.fastjson2.codec.FieldInfo: java.lang.Class writeUsing>;	$r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>();	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r33.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r42, $r32);	throw $r33
;block_num 8