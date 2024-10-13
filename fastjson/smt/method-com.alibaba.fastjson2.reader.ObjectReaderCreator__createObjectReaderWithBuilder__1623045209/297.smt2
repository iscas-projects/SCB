(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3480 0)
(declare-sort var335 0)
(declare-sort var1289 0)
(declare-sort var338 0)
(declare-sort var3925 0)
(declare-sort var2565 0)
(declare-sort var1864 0)
(declare-sort var1290 0)
(declare-sort var744 0)
(declare-sort var3576 0)
(declare-sort var3847 0)
(declare-sort var619 0)
(declare-sort var2495 0)
(declare-sort var2458 0)
(declare-sort var3809 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buildMethod/1474396437 (var1289) var3925)
(declare-fun builder/1474396437 (var1289) ClassObject)
(declare-fun builderWithPrefix/1474396437 (var1289) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1864-init () var1864)
(declare-fun <init>/-1461814690 (var1864) void)
(declare-fun var1290-init () var1290)
(declare-fun <init>/60277530 (var1290) void)
(declare-fun var3576_bootstrap$/-2139171866 (var3480 var1290 var335 ClassObject String ClassObject var1289 Int var3847 ClassObject) var744)
(declare-fun cast-from-var1864-to-var3847 (var1864) var3847)
(declare-fun var619_setters/-1359563285 (ClassObject Bool var744) void)
(declare-fun createSupplier/-431849353 (var3480 ClassObject) var2495)
(declare-fun toFieldReaderArray/-1503065459 (var3480 var3847) (Array Int var2458))
(declare-fun createObjectReader/-739534144 (var3480 ClassObject Int var2495 var338 (Array Int var2458)) var3809)
(declare-const null-var3480 var3480)
(declare-const null-ClassObject ClassObject)
(declare-const null-var335 var335)
(declare-const null-var1289 var1289)
(declare-const null-var338 var338)
(declare-const null-var3925 var3925)
(declare-const null-String String)
(declare-const var1570 var3480) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreator 
(assert (not (= var1570 null-var3480)))
(declare-const var1734 ClassObject) ; Statement: r4 := @parameter0: java.lang.Class 
(assert (not (= var1734 null-ClassObject)))
(declare-const var1226 ClassObject) ; Statement: r5 := @parameter1: java.lang.reflect.Type 
(assert (not (= var1226 null-ClassObject)))
(declare-const var406 var335) ; Statement: r3 := @parameter2: com.alibaba.fastjson2.reader.ObjectReaderProvider 
(assert (not (= var406 null-var335)))
(declare-const var2782 var1289) ; Statement: r0 := @parameter3: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2782 null-var1289)))
(define-const var554 var338 null-var338) ; Statement: r9 = null 
(define-const var1921 var3925 (buildMethod/1474396437 var2782)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.reflect.Method buildMethod> 
 ; Statement: if $r1 == null goto $r7 = r0.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.Class builder> 
(assert (= var1921 null-var3925)) ; Cond: $r1 == null 
(define-const var124 ClassObject (builder/1474396437 var2782)) ; Statement: $r7 = r0.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.Class builder> 
(define-const var2350 String (builderWithPrefix/1474396437 var2782)) ; Statement: $r8 = r0.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String builderWithPrefix> 
(define-const var1863 String var2350) ; Statement: r10 = $r8 
 ; Statement: if $r8 == null goto r10 = "with" 
(assert (= var2350 null-String)) ; Cond: $r8 == null 
(define-const var1863!1 String "with") ; Statement: r10 = "with" 
(assert true) ; Non Conditional
(assert true)
(define-const var1477 Int (length/-134980193 var1863!1)) ; Statement: $i0 = virtualinvoke r10.<java.lang.String: int length()>() 
(define-const var2024 var1864 var1864-init) ; Statement: $r11 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var2024)) ; Statement: specialinvoke $r11.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var2024!1 var1864)
(define-const var849 var1290 var1290-init) ; Statement: $r12 = new com.alibaba.fastjson2.codec.FieldInfo 
(assert true)
;(assert (<init>/60277530 var849)) ; Statement: specialinvoke $r12.<com.alibaba.fastjson2.codec.FieldInfo: void <init>()>() 

(declare-const var849!1 var1290)
(define-const var2259 var744 (var3576_bootstrap$/-2139171866 var1570 var849!1 var406 var1734 var1863!1 var124 var2782 var1477 (cast-from-var1864-to-var3847 var2024!1) var1226)) ; Statement: $r13 = staticinvoke <com.alibaba.fastjson2.reader.ObjectReaderCreator$lambda_createObjectReaderWithBuilder_0__1: java.util.function.Consumer bootstrap$(com.alibaba.fastjson2.reader.ObjectReaderCreator,com.alibaba.fastjson2.codec.FieldInfo,com.alibaba.fastjson2.reader.ObjectReaderProvider,java.lang.Class,java.lang.String,java.lang.Class,com.alibaba.fastjson2.codec.BeanInfo,int,java.util.Map,java.lang.reflect.Type)>(r2, $r12, r3, r4, r10, $r7, r0, $i0, $r11, r5) 
;(assert (var619_setters/-1359563285 var124 (ite (= 1 0) true false) var2259)) ; Statement: staticinvoke <com.alibaba.fastjson2.util.BeanUtils: void setters(java.lang.Class,boolean,java.util.function.Consumer)>($r7, 0, $r13) 

(declare-const var124!1 ClassObject)
(declare-const var791 Int)
(declare-const var2259!1 var744)
(assert true)
(define-const var372 var2495 (createSupplier/-431849353 var1570 var124!1)) ; Statement: $r14 = virtualinvoke r2.<com.alibaba.fastjson2.reader.ObjectReaderCreator: java.util.function.Supplier createSupplier(java.lang.Class)>($r7) 
(assert true)
(define-const var783 (Array Int var2458) (toFieldReaderArray/-1503065459 var1570 (cast-from-var1864-to-var3847 var2024!1))) ; Statement: $r15 = specialinvoke r2.<com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.FieldReader[] toFieldReaderArray(java.util.Map)>($r11) 
(assert true)
(define-const var2154 var3809 (createObjectReader/-739534144 var1570 var124!1 0 var372 var554 var783)) ; Statement: $r16 = virtualinvoke r2.<com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.ObjectReader createObjectReader(java.lang.Class,long,java.util.function.Supplier,java.util.function.Function,com.alibaba.fastjson2.reader.FieldReader[])>($r7, 0L, $r14, r9, $r15) 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {buildMethod/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.reflect.Method), builder/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.Class), builderWithPrefix/1474396437=([com.alibaba.fastjson2.codec.BeanInfo], java.lang.String), length/-134980193=([java.lang.String], int), var1864-init=([], java.util.LinkedHashMap), <init>/-1461814690=([java.util.LinkedHashMap], void), var1290-init=([], com.alibaba.fastjson2.codec.FieldInfo), <init>/60277530=([com.alibaba.fastjson2.codec.FieldInfo], void), var3576_bootstrap$/-2139171866=([com.alibaba.fastjson2.reader.ObjectReaderCreator, com.alibaba.fastjson2.codec.FieldInfo, com.alibaba.fastjson2.reader.ObjectReaderProvider, java.lang.Class, java.lang.String, java.lang.Class, com.alibaba.fastjson2.codec.BeanInfo, int, java.util.Map, java.lang.reflect.Type], java.util.function.Consumer), cast-from-var1864-to-var3847=([java.util.LinkedHashMap], java.util.Map), var619_setters/-1359563285=([java.lang.Class, boolean, java.util.function.Consumer], void), createSupplier/-431849353=([com.alibaba.fastjson2.reader.ObjectReaderCreator, java.lang.Class], java.util.function.Supplier), toFieldReaderArray/-1503065459=([com.alibaba.fastjson2.reader.ObjectReaderCreator, java.util.Map], com.alibaba.fastjson2.reader.FieldReader[]), createObjectReader/-739534144=([com.alibaba.fastjson2.reader.ObjectReaderCreator, java.lang.Class, long, java.util.function.Supplier, java.util.function.Function, com.alibaba.fastjson2.reader.FieldReader[]], com.alibaba.fastjson2.reader.ObjectReader)}
; {var3480=com.alibaba.fastjson2.reader.ObjectReaderCreator, var1570=r2, var1734=r4, var1226=r5, var335=com.alibaba.fastjson2.reader.ObjectReaderProvider, var406=r3, var1289=com.alibaba.fastjson2.codec.BeanInfo, var2782=r0, var338=java.util.function.Function, var554=r9, var3925=java.lang.reflect.Method, var1921=$r1, var124=$r7, var2350=$r8, var1863=r10, var2565=null_type, var1477=$i0, var1864=java.util.LinkedHashMap, var2024=$r11, var1290=com.alibaba.fastjson2.codec.FieldInfo, var849=$r12, var744=java.util.function.Consumer, var3576=com.alibaba.fastjson2.reader.ObjectReaderCreator$lambda_createObjectReaderWithBuilder_0__1, var3847=java.util.Map, var2259=$r13, var619=com.alibaba.fastjson2.util.BeanUtils, var791=0, var2495=java.util.function.Supplier, var372=$r14, var2458=com.alibaba.fastjson2.reader.FieldReader, var783=$r15, var3809=com.alibaba.fastjson2.reader.ObjectReader, var2154=$r16}
; {com.alibaba.fastjson2.reader.ObjectReaderCreator=var3480, r2=var1570, r4=var1734, r5=var1226, com.alibaba.fastjson2.reader.ObjectReaderProvider=var335, r3=var406, com.alibaba.fastjson2.codec.BeanInfo=var1289, r0=var2782, java.util.function.Function=var338, r9=var554, java.lang.reflect.Method=var3925, $r1=var1921, $r7=var124, $r8=var2350, r10=var1863, null_type=var2565, $i0=var1477, java.util.LinkedHashMap=var1864, $r11=var2024, com.alibaba.fastjson2.codec.FieldInfo=var1290, $r12=var849, java.util.function.Consumer=var744, com.alibaba.fastjson2.reader.ObjectReaderCreator$lambda_createObjectReaderWithBuilder_0__1=var3576, java.util.Map=var3847, $r13=var2259, com.alibaba.fastjson2.util.BeanUtils=var619, 0=var791, java.util.function.Supplier=var2495, $r14=var372, com.alibaba.fastjson2.reader.FieldReader=var2458, $r15=var783, com.alibaba.fastjson2.reader.ObjectReader=var3809, $r16=var2154}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreator;	r4 := @parameter0: java.lang.Class;	r5 := @parameter1: java.lang.reflect.Type;	r3 := @parameter2: com.alibaba.fastjson2.reader.ObjectReaderProvider;	r0 := @parameter3: com.alibaba.fastjson2.codec.BeanInfo;	r9 = null;	$r1 = r0.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.reflect.Method buildMethod>;	if $r1 == null goto $r7 = r0.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.Class builder>;	$r7 = r0.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.Class builder>;	$r8 = r0.<com.alibaba.fastjson2.codec.BeanInfo: java.lang.String builderWithPrefix>;	r10 = $r8;	if $r8 == null goto r10 = "with";	r10 = "with";	$i0 = virtualinvoke r10.<java.lang.String: int length()>();	$r11 = new java.util.LinkedHashMap;	specialinvoke $r11.<java.util.LinkedHashMap: void <init>()>();	$r12 = new com.alibaba.fastjson2.codec.FieldInfo;	specialinvoke $r12.<com.alibaba.fastjson2.codec.FieldInfo: void <init>()>();	$r13 = staticinvoke <com.alibaba.fastjson2.reader.ObjectReaderCreator$lambda_createObjectReaderWithBuilder_0__1: java.util.function.Consumer bootstrap$(com.alibaba.fastjson2.reader.ObjectReaderCreator,com.alibaba.fastjson2.codec.FieldInfo,com.alibaba.fastjson2.reader.ObjectReaderProvider,java.lang.Class,java.lang.String,java.lang.Class,com.alibaba.fastjson2.codec.BeanInfo,int,java.util.Map,java.lang.reflect.Type)>(r2, $r12, r3, r4, r10, $r7, r0, $i0, $r11, r5);	staticinvoke <com.alibaba.fastjson2.util.BeanUtils: void setters(java.lang.Class,boolean,java.util.function.Consumer)>($r7, 0, $r13);	$r14 = virtualinvoke r2.<com.alibaba.fastjson2.reader.ObjectReaderCreator: java.util.function.Supplier createSupplier(java.lang.Class)>($r7);	$r15 = specialinvoke r2.<com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.FieldReader[] toFieldReaderArray(java.util.Map)>($r11);	$r16 = virtualinvoke r2.<com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.ObjectReader createObjectReader(java.lang.Class,long,java.util.function.Supplier,java.util.function.Function,com.alibaba.fastjson2.reader.FieldReader[])>($r7, 0L, $r14, r9, $r15);	return $r16
;block_num 4