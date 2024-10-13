(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1758 0)
(declare-sort var2768 0)
(declare-sort var3790 0)
(declare-sort var2940 0)
(declare-sort var1785 0)
(declare-sort var1376 0)
(declare-sort var219 0)
(declare-sort var1115 0)
(declare-sort var735 0)
(declare-sort var2156 0)
(declare-sort var3047 0)
(declare-sort var2871 0)
(declare-sort var774 0)
(declare-sort var1222 0)
(declare-sort var176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buildMethod/1474396437 (var3790) var1785)
(declare-fun builder/1474396437 (var3790) ClassObject)
(declare-fun builderWithPrefix/1474396437 (var3790) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var219-init () var219)
(declare-fun <init>/-1461814690 (var219) void)
(declare-fun var1115-init () var1115)
(declare-fun <init>/60277530 (var1115) void)
(declare-fun var2156_bootstrap$/-2139171866 (var1758 var1115 var2768 ClassObject String ClassObject var3790 Int var3047 ClassObject) var735)
(declare-fun cast-from-var219-to-var3047 (var219) var3047)
(declare-fun var2871_setters/-1359563285 (ClassObject Bool var735) void)
(declare-fun createSupplier/-431849353 (var1758 ClassObject) var774)
(declare-fun toFieldReaderArray/-1503065459 (var1758 var3047) (Array Int var1222))
(declare-fun createObjectReader/-739534144 (var1758 ClassObject Int var774 var2940 (Array Int var1222)) var176)
(declare-const null-var1758 var1758)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2768 var2768)
(declare-const null-var3790 var3790)
(declare-const null-var2940 var2940)
(declare-const null-var1785 var1785)
(declare-const null-String String)
(declare-const var549 var1758) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreator 
(assert (not (= var549 null-var1758)))
(declare-const var764 ClassObject) ; Statement: r4 := @parameter0: java.lang.Class 
(assert (not (= var764 null-ClassObject)))
(declare-const var1050 ClassObject) ; Statement: r5 := @parameter1: java.lang.reflect.Type 
(assert (not (= var1050 null-ClassObject)))
(declare-const var449 var2768) ; Statement: r3 := @parameter2: com.alibaba.fastjson2.reader.ObjectReaderProvider 
(assert (not (= var449 null-var2768)))
(declare-const var1587 var3790) ; Statement: r0 := @parameter3: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1587 null-var3790)))
(define-const var703 var2940 null-var2940) ; Statement: r9 = null 
(define-const var1957 var1785 (buildMethod/1474396437 var1587)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.reflect.Method buildMethod> 
 ; Statement: if $r1 == null goto $r7 = r0.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.Class builder> 
(assert (= var1957 null-var1785)) ; Cond: $r1 == null 
(define-const var3691 ClassObject (builder/1474396437 var1587)) ; Statement: $r7 = r0.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.Class builder> 
(define-const var2519 String (builderWithPrefix/1474396437 var1587)) ; Statement: $r8 = r0.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String builderWithPrefix> 
(define-const var2982 String var2519) ; Statement: r10 = $r8 
 ; Statement: if $r8 == null goto r10 = "with" 
(assert (not (= var2519 null-String))) ; Negate: Cond: $r8 == null  
(assert true)
(define-const var3495 Bool (isEmpty/-1285796103 var2519)) ; Statement: $z0 = virtualinvoke $r8.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r10.<java.lang.String: int length()>() 
(assert (= (ite var3495 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var804 Int (length/-134980193 var2982)) ; Statement: $i0 = virtualinvoke r10.<java.lang.String: int length()>() 
(define-const var2850 var219 var219-init) ; Statement: $r11 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var2850)) ; Statement: specialinvoke $r11.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var2850!1 var219)
(define-const var488 var1115 var1115-init) ; Statement: $r12 = new com.alibaba.fastjson2.codec.FieldInfo 
(assert true)
;(assert (<init>/60277530 var488)) ; Statement: specialinvoke $r12.<com.alibaba.fastjson2.codec.FieldInfo: void <init>()>() 

(declare-const var488!1 var1115)
(define-const var3598 var735 (var2156_bootstrap$/-2139171866 var549 var488!1 var449 var764 var2982 var3691 var1587 var804 (cast-from-var219-to-var3047 var2850!1) var1050)) ; Statement: $r13 = staticinvoke <com.alibaba.fastjson2.reader.ObjectReaderCreator$lambda_createObjectReaderWithBuilder_0__1: java.util.function.Consumer bootstrap$(com.alibaba.fastjson2.reader.ObjectReaderCreator,com.alibaba.fastjson2.codec.FieldInfo,com.alibaba.fastjson2.reader.ObjectReaderProvider,java.lang.Class,java.lang.String,java.lang.Class,com.alibaba.fastjson2.codec.BeanInfo,int,java.util.Map,java.lang.reflect.Type)>(r2, $r12, r3, r4, r10, $r7, r0, $i0, $r11, r5) 
;(assert (var2871_setters/-1359563285 var3691 (ite (= 1 0) true false) var3598)) ; Statement: staticinvoke <com.alibaba.fastjson2.util.BeanUtils: void setters(java.lang.Class,boolean,java.util.function.Consumer)>($r7, 0, $r13) 

(declare-const var3691!1 ClassObject)
(declare-const var292 Int)
(declare-const var3598!1 var735)
(assert true)
(define-const var3727 var774 (createSupplier/-431849353 var549 var3691!1)) ; Statement: $r14 = virtualinvoke r2.<com.alibaba.fastjson2.reader.ObjectReaderCreator: java.util.function.Supplier createSupplier(java.lang.Class)>($r7) 
(assert true)
(define-const var2659 (Array Int var1222) (toFieldReaderArray/-1503065459 var549 (cast-from-var219-to-var3047 var2850!1))) ; Statement: $r15 = specialinvoke r2.<com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.FieldReader[] toFieldReaderArray(java.util.Map)>($r11) 
(assert true)
(define-const var142 var176 (createObjectReader/-739534144 var549 var3691!1 0 var3727 var703 var2659)) ; Statement: $r16 = virtualinvoke r2.<com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.ObjectReader createObjectReader(java.lang.Class,long,java.util.function.Supplier,java.util.function.Function,com.alibaba.fastjson2.reader.FieldReader[])>($r7, 0L, $r14, r9, $r15) 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {buildMethod/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.reflect.Method), builder/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.Class), builderWithPrefix/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), length/-134980193=([java.lang.String], int), var219-init=([], java.util.LinkedHashMap), <init>/-1461814690=([java.util.LinkedHashMap], void), var1115-init=([], com.alibaba.fastjson2.codec.FieldInfo), <init>/60277530=([com.alibaba.fastjson2.codec.FieldInfo], void), var2156_bootstrap$/-2139171866=([com.alibaba.fastjson2.reader.ObjectReaderCreator, com.alibaba.fastjson2.codec.FieldInfo, com.alibaba.fastjson2.reader.ObjectReaderProvider, java.lang.Class, java.lang.String, java.lang.Class, com.alibaba.fastjson2.codec.BeanInfo, int, java.util.Map, java.lang.reflect.Type], java.util.function.Consumer), cast-from-var219-to-var3047=([java.util.LinkedHashMap], java.util.Map), var2871_setters/-1359563285=([java.lang.Class, boolean, java.util.function.Consumer], void), createSupplier/-431849353=([com.alibaba.fastjson2.reader.ObjectReaderCreator, java.lang.Class], java.util.function.Supplier), toFieldReaderArray/-1503065459=([com.alibaba.fastjson2.reader.ObjectReaderCreator, java.util.Map], com.alibaba.fastjson2.reader.FieldReader[]), createObjectReader/-739534144=([com.alibaba.fastjson2.reader.ObjectReaderCreator, java.lang.Class, long, java.util.function.Supplier, java.util.function.Function, com.alibaba.fastjson2.reader.FieldReader[]], com.alibaba.fastjson2.reader.ObjectReader)}
; {var1758=com.alibaba.fastjson2.reader.ObjectReaderCreator, var549=r2, var764=r4, var1050=r5, var2768=com.alibaba.fastjson2.reader.ObjectReaderProvider, var449=r3, var3790=com.alibaba.fastjson2.codec.BeanInfo, var1587=r0, var2940=java.util.function.Function, var703=r9, var1785=java.lang.reflect.Method, var1957=$r1, var3691=$r7, var2519=$r8, var2982=r10, var1376=null_type, var3495=$z0, var804=$i0, var219=java.util.LinkedHashMap, var2850=$r11, var1115=com.alibaba.fastjson2.codec.FieldInfo, var488=$r12, var735=java.util.function.Consumer, var2156=com.alibaba.fastjson2.reader.ObjectReaderCreator$lambda_createObjectReaderWithBuilder_0__1, var3047=java.util.Map, var3598=$r13, var2871=com.alibaba.fastjson2.util.BeanUtils, var292=0, var774=java.util.function.Supplier, var3727=$r14, var1222=com.alibaba.fastjson2.reader.FieldReader, var2659=$r15, var176=com.alibaba.fastjson2.reader.ObjectReader, var142=$r16}
; {com.alibaba.fastjson2.reader.ObjectReaderCreator=var1758, r2=var549, r4=var764, r5=var1050, com.alibaba.fastjson2.reader.ObjectReaderProvider=var2768, r3=var449, com.alibaba.fastjson2.codec.BeanInfo=var3790, r0=var1587, java.util.function.Function=var2940, r9=var703, java.lang.reflect.Method=var1785, $r1=var1957, $r7=var3691, $r8=var2519, r10=var2982, null_type=var1376, $z0=var3495, $i0=var804, java.util.LinkedHashMap=var219, $r11=var2850, com.alibaba.fastjson2.codec.FieldInfo=var1115, $r12=var488, java.util.function.Consumer=var735, com.alibaba.fastjson2.reader.ObjectReaderCreator$lambda_createObjectReaderWithBuilder_0__1=var2156, java.util.Map=var3047, $r13=var3598, com.alibaba.fastjson2.util.BeanUtils=var2871, 0=var292, java.util.function.Supplier=var774, $r14=var3727, com.alibaba.fastjson2.reader.FieldReader=var1222, $r15=var2659, com.alibaba.fastjson2.reader.ObjectReader=var176, $r16=var142}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.String: int length()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreator;	r4 := @parameter0: java.lang.Class;	r5 := @parameter1: java.lang.reflect.Type;	r3 := @parameter2: com.alibaba.fastjson2.reader.ObjectReaderProvider;	r0 := @parameter3: com.alibaba.fastjson2.codec.BeanInfo;	r9 = null;	$r1 = r0.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.reflect.Method buildMethod>;	if $r1 == null goto $r7 = r0.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.Class builder>;	$r7 = r0.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.Class builder>;	$r8 = r0.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String builderWithPrefix>;	r10 = $r8;	if $r8 == null goto r10 = "with";	$z0 = virtualinvoke $r8.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $i0 = virtualinvoke r10.<java.lang.String: int length()>();	$i0 = virtualinvoke r10.<java.lang.String: int length()>();	$r11 = new java.util.LinkedHashMap;	specialinvoke $r11.<java.util.LinkedHashMap: void <init>()>();	$r12 = new com.alibaba.fastjson2.codec.FieldInfo;	specialinvoke $r12.<com.alibaba.fastjson2.codec.FieldInfo: void <init>()>();	$r13 = staticinvoke <com.alibaba.fastjson2.reader.ObjectReaderCreator$lambda_createObjectReaderWithBuilder_0__1: java.util.function.Consumer bootstrap$(com.alibaba.fastjson2.reader.ObjectReaderCreator,com.alibaba.fastjson2.codec.FieldInfo,com.alibaba.fastjson2.reader.ObjectReaderProvider,java.lang.Class,java.lang.String,java.lang.Class,com.alibaba.fastjson2.codec.BeanInfo,int,java.util.Map,java.lang.reflect.Type)>(r2, $r12, r3, r4, r10, $r7, r0, $i0, $r11, r5);	staticinvoke <com.alibaba.fastjson2.util.BeanUtils: void setters(java.lang.Class,boolean,java.util.function.Consumer)>($r7, 0, $r13);	$r14 = virtualinvoke r2.<com.alibaba.fastjson2.reader.ObjectReaderCreator: java.util.function.Supplier createSupplier(java.lang.Class)>($r7);	$r15 = specialinvoke r2.<com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.FieldReader[] toFieldReaderArray(java.util.Map)>($r11);	$r16 = virtualinvoke r2.<com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.ObjectReader createObjectReader(java.lang.Class,long,java.util.function.Supplier,java.util.function.Function,com.alibaba.fastjson2.reader.FieldReader[])>($r7, 0L, $r14, r9, $r15);	return $r16
;block_num 4