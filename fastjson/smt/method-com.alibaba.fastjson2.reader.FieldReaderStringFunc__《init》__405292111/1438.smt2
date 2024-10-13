(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var568 0)
(declare-sort var2822 0)
(declare-sort var713 0)
(declare-sort var514 0)
(declare-sort var1046 0)
(declare-sort var3971 0)
(declare-sort var1093 0)
(declare-sort var1126 0)
(declare-sort var3665 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/851423391 (var1126 String ClassObject ClassObject Int Int String var713 var514 var1046 var3971 var3665) void)
(declare-fun cast-from-var568-to-var1126 (var568) var1126)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun function/752004358 (var568) var1093)
(declare-fun format/752004358 (var568) String)
(declare-fun trim/752004358 (var568) Bool)
(declare-const null-var568 var568)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-Int Int)
(declare-const null-var713 var713)
(declare-const null-var514 var514)
(declare-const null-var1046 var1046)
(declare-const null-var3971 var3971)
(declare-const null-var1093 var1093)
(declare-const null-NullType var2822)
(declare-const null-var3665 var3665)
(declare-const var3068 var568) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderStringFunc 
(assert (not (= var3068 null-var568)))
(declare-const var3031 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3031 null-String)))
(declare-const var7 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var7 null-ClassObject)))
(declare-const var442 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var442 null-Int)))
(declare-const var2020 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var2020 null-Int)))
(declare-const var1654 String) ; Statement: r3 := @parameter4: java.lang.String 
(assert (not (= var1654 null-String)))
(declare-const var3098 var713) ; Statement: r4 := @parameter5: java.util.Locale 
(assert (not (= var3098 null-var713)))
(declare-const var2040 var514) ; Statement: r5 := @parameter6: java.lang.Object 
(assert (not (= var2040 null-var514)))
(declare-const var3472 var1046) ; Statement: r6 := @parameter7: com.alibaba.fastjson2.schema.JSONSchema 
(assert (not (= var3472 null-var1046)))
(declare-const var2282 var3971) ; Statement: r7 := @parameter8: java.lang.reflect.Method 
(assert (not (= var2282 null-var3971)))
(declare-const var329 var1093) ; Statement: r8 := @parameter9: java.util.function.BiConsumer 
(assert (not (= var329 null-var1093)))
(assert true)
;(assert (<init>/851423391 (cast-from-var568-to-var1126 var3068) var3031 (cast-from-ClassObject-to-ClassObject var7) var7 var442 var2020 var1654 var3098 var2040 var3472 var2282 null-var3665)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.reader.FieldReader: void <init>(java.lang.String,java.lang.reflect.Type,java.lang.Class,int,long,java.lang.String,java.util.Locale,java.lang.Object,com.alibaba.fastjson2.schema.JSONSchema,java.lang.reflect.Method,java.lang.reflect.Field)>(r1, r2, r2, i0, l1, r3, r4, r5, r6, r7, null) 

(declare-const var3068!1 var568)
(declare-const var3031!1 String)
(declare-const var7!1 ClassObject)
(declare-const var7!2 ClassObject)
(declare-const var442!1 Int)
(declare-const var2020!1 Int)
(declare-const var1654!1 String)
(declare-const var3098!1 var713)
(declare-const var2040!1 var514)
(declare-const var3472!1 var1046)
(declare-const var2282!1 var3971)
(declare-const var2745 var2822)
(declare-const var3068!2 var568)
(assert (not (= var3068!2 null-var568)))
(assert (= (function/752004358 var3068!2) var329)) ; Statement: r0.<com.alibaba.fastjson2.reader.FieldReaderStringFunc: java.util.function.BiConsumer function> = r8 
(declare-const var3068!3 var568)
(assert (not (= var3068!3 null-var568)))
(assert (= (format/752004358 var3068!3) var1654!1)) ; Statement: r0.<com.alibaba.fastjson2.reader.FieldReaderStringFunc: java.lang.String format> = r3 
(define-const var1948 String "trim") ; Statement: $r9 = "trim" 
(assert true)
(define-const var3906 Bool (= var1948 var1654!1)) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto $z1 = 1 
(assert (not (= (ite var3906 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2397 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.reader.FieldReaderStringFunc: boolean trim> = $z1] 
(assert true) ; Non Conditional
(declare-const var3068!4 var568)
(assert (not (= var3068!4 null-var568)))
(assert (= (trim/752004358 var3068!4) var2397)) ; Statement: r0.<com.alibaba.fastjson2.reader.FieldReaderStringFunc: boolean trim> = $z1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/851423391=([com.alibaba.fastjson2.reader.FieldReader, java.lang.String, java.lang.reflect.Type, java.lang.Class, int, long, java.lang.String, java.util.Locale, java.lang.Object, com.alibaba.fastjson2.schema.JSONSchema, java.lang.reflect.Method, java.lang.reflect.Field], void), cast-from-var568-to-var1126=([com.alibaba.fastjson2.reader.FieldReaderStringFunc], com.alibaba.fastjson2.reader.FieldReader), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), function/752004358=([com.alibaba.fastjson2.reader.FieldReaderStringFunc], java.util.function.BiConsumer), format/752004358=([com.alibaba.fastjson2.reader.FieldReaderStringFunc], java.lang.String), trim/752004358=([com.alibaba.fastjson2.reader.FieldReaderStringFunc], boolean)}
; {var568=com.alibaba.fastjson2.reader.FieldReaderStringFunc, var3068=r0, var3031=r1, var2822=null_type, var7=r2, var442=i0, var2020=l1, var1654=r3, var713=java.util.Locale, var3098=r4, var514=java.lang.Object, var2040=r5, var1046=com.alibaba.fastjson2.schema.JSONSchema, var3472=r6, var3971=java.lang.reflect.Method, var2282=r7, var1093=java.util.function.BiConsumer, var329=r8, var1126=com.alibaba.fastjson2.reader.FieldReader, var3665=java.lang.reflect.Field, var2745=null, var1948=$r9, var3906=$z0, var2397=$z1}
; {com.alibaba.fastjson2.reader.FieldReaderStringFunc=var568, r0=var3068, r1=var3031, null_type=var2822, r2=var7, i0=var442, l1=var2020, r3=var1654, java.util.Locale=var713, r4=var3098, java.lang.Object=var514, r5=var2040, com.alibaba.fastjson2.schema.JSONSchema=var1046, r6=var3472, java.lang.reflect.Method=var3971, r7=var2282, java.util.function.BiConsumer=var1093, r8=var329, com.alibaba.fastjson2.reader.FieldReader=var1126, java.lang.reflect.Field=var3665, null=var2745, $r9=var1948, $z0=var3906, $z1=var2397}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderStringFunc;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Class;	i0 := @parameter2: int;	l1 := @parameter3: long;	r3 := @parameter4: java.lang.String;	r4 := @parameter5: java.util.Locale;	r5 := @parameter6: java.lang.Object;	r6 := @parameter7: com.alibaba.fastjson2.schema.JSONSchema;	r7 := @parameter8: java.lang.reflect.Method;	r8 := @parameter9: java.util.function.BiConsumer;	specialinvoke r0.<com.alibaba.fastjson2.reader.FieldReader: void <init>(java.lang.String,java.lang.reflect.Type,java.lang.Class,int,long,java.lang.String,java.util.Locale,java.lang.Object,com.alibaba.fastjson2.schema.JSONSchema,java.lang.reflect.Method,java.lang.reflect.Field)>(r1, r2, r2, i0, l1, r3, r4, r5, r6, r7, null);	r0.<com.alibaba.fastjson2.reader.FieldReaderStringFunc: java.util.function.BiConsumer function> = r8;	r0.<com.alibaba.fastjson2.reader.FieldReaderStringFunc: java.lang.String format> = r3;	$r9 = "trim";	$z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 != 0 goto $z1 = 1;	$z1 = 1;	goto [?= r0.<com.alibaba.fastjson2.reader.FieldReaderStringFunc: boolean trim> = $z1];	r0.<com.alibaba.fastjson2.reader.FieldReaderStringFunc: boolean trim> = $z1;	return
;block_num 3