(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1097 0)
(declare-sort var1502 0)
(declare-sort var3482 0)
(declare-sort var1019 0)
(declare-sort var306 0)
(declare-sort var1700 0)
(declare-sort var461 0)
(declare-sort var59 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-2087545554 (var306 String ClassObject ClassObject Int Int String var1700 var461 var3482 var1019) void)
(declare-fun cast-from-var1097-to-var306 (var1097) var306)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun cast-from-String-to-var461 (String) var461)
(declare-fun trim/1836932856 (var1097) Bool)
(declare-fun mask/1918454044 (var59) Int)
(declare-fun emptyToNull/1836932856 (var1097) Bool)
(declare-const null-var1097 var1097)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-Int Int)
(declare-const null-var3482 var3482)
(declare-const null-var1019 var1019)
(declare-const null-NullType var1502)
(declare-const null-var1700 var1700)
(declare-const var59-EmptyStringAsNull var59)
(declare-const var1686 var1097) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderStringField 
(assert (not (= var1686 null-var1097)))
(declare-const var129 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var129 null-String)))
(declare-const var152 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var152 null-ClassObject)))
(declare-const var2627 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2627 null-Int)))
(declare-const var3418 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var3418 null-Int)))
(declare-const var3343 String) ; Statement: r3 := @parameter4: java.lang.String 
(assert (not (= var3343 null-String)))
(declare-const var1402 String) ; Statement: r4 := @parameter5: java.lang.String 
(assert (not (= var1402 null-String)))
(declare-const var3055 var3482) ; Statement: r5 := @parameter6: com.alibaba.fastjson2.schema.JSONSchema 
(assert (not (= var3055 null-var3482)))
(declare-const var2039 var1019) ; Statement: r6 := @parameter7: java.lang.reflect.Field 
(assert (not (= var2039 null-var1019)))
(assert true)
;(assert (<init>/-2087545554 (cast-from-var1097-to-var306 var1686) var129 (cast-from-ClassObject-to-ClassObject var152) var152 var2627 var3418 var3343 null-var1700 (cast-from-String-to-var461 var1402) var3055 var2039)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: void <init>(java.lang.String,java.lang.reflect.Type,java.lang.Class,int,long,java.lang.String,java.util.Locale,java.lang.Object,com.alibaba.fastjson2.schema.JSONSchema,java.lang.reflect.Field)>(r1, r2, r2, i0, l1, r3, null, r4, r5, r6) 

(declare-const var1686!1 var1097)
(declare-const var129!1 String)
(declare-const var152!1 ClassObject)
(declare-const var152!2 ClassObject)
(declare-const var2627!1 Int)
(declare-const var3418!1 Int)
(declare-const var3343!1 String)
(declare-const var2638 var1502)
(declare-const var1402!1 String)
(declare-const var3055!1 var3482)
(declare-const var2039!1 var1019)
(define-const var990 String "trim") ; Statement: $r7 = "trim" 
(assert true)
(define-const var634 Bool (= var990 var3343!1)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto $z1 = 1 
(assert (not (= (ite var634 1 0) 0))) ; Cond: $z0 != 0 
(define-const var345 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.reader.FieldReaderStringField: boolean trim> = $z1] 
(assert true) ; Non Conditional
(declare-const var1686!2 var1097)
(assert (not (= var1686!2 null-var1097)))
(assert (= (trim/1836932856 var1686!2) var345)) ; Statement: r0.<com.alibaba.fastjson2.reader.FieldReaderStringField: boolean trim> = $z1 
(define-const var2346 var59 var59-EmptyStringAsNull) ; Statement: $r8 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature EmptyStringAsNull> 
(define-const var1246 Int (mask/1918454044 var2346)) ; Statement: $l2 = $r8.<com.alibaba.fastjson2.JSONReader$Feature: long mask> 
(define-const var2109 Int (bv2nat (bvand ((_ int2bv 64) var3418!1) ((_ int2bv 64) var1246)))) ; Statement: $l3 = l1 & $l2 
(define-const var484 Int (ite (> var2109 0) 1 (ite (< var2109 0) (- 1) 0))) ; Statement: $b4 = $l3 cmp 0L 
 ; Statement: if $b4 == 0 goto $z2 = 0 
(assert (not (= var484 0))) ; Negate: Cond: $b4 == 0  
(define-const var2978 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.reader.FieldReaderStringField: boolean emptyToNull> = $z2] 
(assert true) ; Non Conditional
(declare-const var1686!3 var1097)
(assert (not (= var1686!3 null-var1097)))
(assert (= (emptyToNull/1836932856 var1686!3) var2978)) ; Statement: r0.<com.alibaba.fastjson2.reader.FieldReaderStringField: boolean emptyToNull> = $z2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-2087545554=([com.alibaba.fastjson2.reader.FieldReaderObjectField, java.lang.String, java.lang.reflect.Type, java.lang.Class, int, long, java.lang.String, java.util.Locale, java.lang.Object, com.alibaba.fastjson2.schema.JSONSchema, java.lang.reflect.Field], void), cast-from-var1097-to-var306=([com.alibaba.fastjson2.reader.FieldReaderStringField], com.alibaba.fastjson2.reader.FieldReaderObjectField), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), cast-from-String-to-var461=([java.lang.String], java.lang.Object), trim/1836932856=([com.alibaba.fastjson2.reader.FieldReaderStringField], boolean), mask/1918454044=([com.alibaba.fastjson2.JSONReader$Feature], long), emptyToNull/1836932856=([com.alibaba.fastjson2.reader.FieldReaderStringField], boolean)}
; {var1097=com.alibaba.fastjson2.reader.FieldReaderStringField, var1686=r0, var129=r1, var1502=null_type, var152=r2, var2627=i0, var3418=l1, var3343=r3, var1402=r4, var3482=com.alibaba.fastjson2.schema.JSONSchema, var3055=r5, var1019=java.lang.reflect.Field, var2039=r6, var306=com.alibaba.fastjson2.reader.FieldReaderObjectField, var1700=java.util.Locale, var461=java.lang.Object, var2638=null, var990=$r7, var634=$z0, var345=$z1, var59=com.alibaba.fastjson2.JSONReader$Feature, var2346=$r8, var1246=$l2, var2109=$l3, var484=$b4, var2978=$z2}
; {com.alibaba.fastjson2.reader.FieldReaderStringField=var1097, r0=var1686, r1=var129, null_type=var1502, r2=var152, i0=var2627, l1=var3418, r3=var3343, r4=var1402, com.alibaba.fastjson2.schema.JSONSchema=var3482, r5=var3055, java.lang.reflect.Field=var1019, r6=var2039, com.alibaba.fastjson2.reader.FieldReaderObjectField=var306, java.util.Locale=var1700, java.lang.Object=var461, null=var2638, $r7=var990, $z0=var634, $z1=var345, com.alibaba.fastjson2.JSONReader$Feature=var59, $r8=var2346, $l2=var1246, $l3=var2109, $b4=var484, $z2=var2978}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderStringField;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Class;	i0 := @parameter2: int;	l1 := @parameter3: long;	r3 := @parameter4: java.lang.String;	r4 := @parameter5: java.lang.String;	r5 := @parameter6: com.alibaba.fastjson2.schema.JSONSchema;	r6 := @parameter7: java.lang.reflect.Field;	specialinvoke r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: void <init>(java.lang.String,java.lang.reflect.Type,java.lang.Class,int,long,java.lang.String,java.util.Locale,java.lang.Object,com.alibaba.fastjson2.schema.JSONSchema,java.lang.reflect.Field)>(r1, r2, r2, i0, l1, r3, null, r4, r5, r6);	$r7 = "trim";	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 != 0 goto $z1 = 1;	$z1 = 1;	goto [?= r0.<com.alibaba.fastjson2.reader.FieldReaderStringField: boolean trim> = $z1];	r0.<com.alibaba.fastjson2.reader.FieldReaderStringField: boolean trim> = $z1;	$r8 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature EmptyStringAsNull>;	$l2 = $r8.<com.alibaba.fastjson2.JSONReader$Feature: long mask>;	$l3 = l1 & $l2;	$b4 = $l3 cmp 0L;	if $b4 == 0 goto $z2 = 0;	$z2 = 1;	goto [?= r0.<com.alibaba.fastjson2.reader.FieldReaderStringField: boolean emptyToNull> = $z2];	r0.<com.alibaba.fastjson2.reader.FieldReaderStringField: boolean emptyToNull> = $z2;	return
;block_num 5