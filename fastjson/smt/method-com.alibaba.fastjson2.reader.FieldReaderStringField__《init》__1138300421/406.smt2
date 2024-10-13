(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var815 0)
(declare-sort var115 0)
(declare-sort var932 0)
(declare-sort var444 0)
(declare-sort var545 0)
(declare-sort var1940 0)
(declare-sort var3903 0)
(declare-sort var243 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-2087545554 (var545 String ClassObject ClassObject Int Int String var1940 var3903 var932 var444) void)
(declare-fun cast-from-var815-to-var545 (var815) var545)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun cast-from-String-to-var3903 (String) var3903)
(declare-fun trim/1836932856 (var815) Bool)
(declare-fun mask/1918454044 (var243) Int)
(declare-fun emptyToNull/1836932856 (var815) Bool)
(declare-const null-var815 var815)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-Int Int)
(declare-const null-var932 var932)
(declare-const null-var444 var444)
(declare-const null-NullType var115)
(declare-const null-var1940 var1940)
(declare-const var243-EmptyStringAsNull var243)
(declare-const var582 var815) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderStringField 
(assert (not (= var582 null-var815)))
(declare-const var460 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var460 null-String)))
(declare-const var3896 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var3896 null-ClassObject)))
(declare-const var3850 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3850 null-Int)))
(declare-const var3124 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var3124 null-Int)))
(declare-const var170 String) ; Statement: r3 := @parameter4: java.lang.String 
(assert (not (= var170 null-String)))
(declare-const var1495 String) ; Statement: r4 := @parameter5: java.lang.String 
(assert (not (= var1495 null-String)))
(declare-const var1463 var932) ; Statement: r5 := @parameter6: com.alibaba.fastjson2.schema.JSONSchema 
(assert (not (= var1463 null-var932)))
(declare-const var3652 var444) ; Statement: r6 := @parameter7: java.lang.reflect.Field 
(assert (not (= var3652 null-var444)))
(assert true)
;(assert (<init>/-2087545554 (cast-from-var815-to-var545 var582) var460 (cast-from-ClassObject-to-ClassObject var3896) var3896 var3850 var3124 var170 null-var1940 (cast-from-String-to-var3903 var1495) var1463 var3652)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: void <init>(java.lang.String,java.lang.reflect.Type,java.lang.Class,int,long,java.lang.String,java.util.Locale,java.lang.Object,com.alibaba.fastjson2.schema.JSONSchema,java.lang.reflect.Field)>(r1, r2, r2, i0, l1, r3, null, r4, r5, r6) 

(declare-const var582!1 var815)
(declare-const var460!1 String)
(declare-const var3896!1 ClassObject)
(declare-const var3896!2 ClassObject)
(declare-const var3850!1 Int)
(declare-const var3124!1 Int)
(declare-const var170!1 String)
(declare-const var1599 var115)
(declare-const var1495!1 String)
(declare-const var1463!1 var932)
(declare-const var3652!1 var444)
(define-const var947 String "trim") ; Statement: $r7 = "trim" 
(assert true)
(define-const var3225 Bool (= var947 var170!1)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto $z1 = 1 
(assert (not (= (ite var3225 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3752 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.reader.FieldReaderStringField: boolean trim> = $z1] 
(assert true) ; Non Conditional
(declare-const var582!2 var815)
(assert (not (= var582!2 null-var815)))
(assert (= (trim/1836932856 var582!2) var3752)) ; Statement: r0.<com.alibaba.fastjson2.reader.FieldReaderStringField: boolean trim> = $z1 
(define-const var3887 var243 var243-EmptyStringAsNull) ; Statement: $r8 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature EmptyStringAsNull> 
(define-const var518 Int (mask/1918454044 var3887)) ; Statement: $l2 = $r8.<com.alibaba.fastjson2.JSONReader$Feature: long mask> 
(define-const var1115 Int (bv2nat (bvand ((_ int2bv 64) var3124!1) ((_ int2bv 64) var518)))) ; Statement: $l3 = l1 & $l2 
(define-const var2100 Int (ite (> var1115 0) 1 (ite (< var1115 0) (- 1) 0))) ; Statement: $b4 = $l3 cmp 0L 
 ; Statement: if $b4 == 0 goto $z2 = 0 
(assert (= var2100 0)) ; Cond: $b4 == 0 
(define-const var1256 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(declare-const var582!3 var815)
(assert (not (= var582!3 null-var815)))
(assert (= (emptyToNull/1836932856 var582!3) var1256)) ; Statement: r0.<com.alibaba.fastjson2.reader.FieldReaderStringField: boolean emptyToNull> = $z2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-2087545554=([com.alibaba.fastjson2.reader.FieldReaderObjectField, java.lang.String, java.lang.reflect.Type, java.lang.Class, int, long, java.lang.String, java.util.Locale, java.lang.Object, com.alibaba.fastjson2.schema.JSONSchema, java.lang.reflect.Field], void), cast-from-var815-to-var545=([com.alibaba.fastjson2.reader.FieldReaderStringField], com.alibaba.fastjson2.reader.FieldReaderObjectField), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), cast-from-String-to-var3903=([java.lang.String], java.lang.Object), trim/1836932856=([com.alibaba.fastjson2.reader.FieldReaderStringField], boolean), mask/1918454044=([com.alibaba.fastjson2.JSONReader$Feature], long), emptyToNull/1836932856=([com.alibaba.fastjson2.reader.FieldReaderStringField], boolean)}
; {var815=com.alibaba.fastjson2.reader.FieldReaderStringField, var582=r0, var460=r1, var115=null_type, var3896=r2, var3850=i0, var3124=l1, var170=r3, var1495=r4, var932=com.alibaba.fastjson2.schema.JSONSchema, var1463=r5, var444=java.lang.reflect.Field, var3652=r6, var545=com.alibaba.fastjson2.reader.FieldReaderObjectField, var1940=java.util.Locale, var3903=java.lang.Object, var1599=null, var947=$r7, var3225=$z0, var3752=$z1, var243=com.alibaba.fastjson2.JSONReader$Feature, var3887=$r8, var518=$l2, var1115=$l3, var2100=$b4, var1256=$z2}
; {com.alibaba.fastjson2.reader.FieldReaderStringField=var815, r0=var582, r1=var460, null_type=var115, r2=var3896, i0=var3850, l1=var3124, r3=var170, r4=var1495, com.alibaba.fastjson2.schema.JSONSchema=var932, r5=var1463, java.lang.reflect.Field=var444, r6=var3652, com.alibaba.fastjson2.reader.FieldReaderObjectField=var545, java.util.Locale=var1940, java.lang.Object=var3903, null=var1599, $r7=var947, $z0=var3225, $z1=var3752, com.alibaba.fastjson2.JSONReader$Feature=var243, $r8=var3887, $l2=var518, $l3=var1115, $b4=var2100, $z2=var1256}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderStringField;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Class;	i0 := @parameter2: int;	l1 := @parameter3: long;	r3 := @parameter4: java.lang.String;	r4 := @parameter5: java.lang.String;	r5 := @parameter6: com.alibaba.fastjson2.schema.JSONSchema;	r6 := @parameter7: java.lang.reflect.Field;	specialinvoke r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: void <init>(java.lang.String,java.lang.reflect.Type,java.lang.Class,int,long,java.lang.String,java.util.Locale,java.lang.Object,com.alibaba.fastjson2.schema.JSONSchema,java.lang.reflect.Field)>(r1, r2, r2, i0, l1, r3, null, r4, r5, r6);	$r7 = "trim";	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 != 0 goto $z1 = 1;	$z1 = 1;	goto [?= r0.<com.alibaba.fastjson2.reader.FieldReaderStringField: boolean trim> = $z1];	r0.<com.alibaba.fastjson2.reader.FieldReaderStringField: boolean trim> = $z1;	$r8 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature EmptyStringAsNull>;	$l2 = $r8.<com.alibaba.fastjson2.JSONReader$Feature: long mask>;	$l3 = l1 & $l2;	$b4 = $l3 cmp 0L;	if $b4 == 0 goto $z2 = 0;	$z2 = 0;	r0.<com.alibaba.fastjson2.reader.FieldReaderStringField: boolean emptyToNull> = $z2;	return
;block_num 5