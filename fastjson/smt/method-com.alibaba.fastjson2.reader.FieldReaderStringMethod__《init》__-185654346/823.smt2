(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var802 0)
(declare-sort var1086 0)
(declare-sort var3948 0)
(declare-sort var2823 0)
(declare-sort var2415 0)
(declare-sort var210 0)
(declare-sort var496 0)
(declare-sort var1454 0)
(declare-sort var1667 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1124817595 (var210 String ClassObject ClassObject Int Int String var3948 var496 var2823 var2415 var1454 var1667) void)
(declare-fun cast-from-var802-to-var210 (var802) var210)
(declare-fun cast-from-String-to-var496 (String) var496)
(declare-fun trim/1307497123 (var802) Bool)
(declare-const null-var802 var802)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-Int Int)
(declare-const null-var3948 var3948)
(declare-const null-var2823 var2823)
(declare-const null-var2415 var2415)
(declare-const null-NullType var1086)
(declare-const null-var1454 var1454)
(declare-const null-var1667 var1667)
(declare-const var357 var802) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderStringMethod 
(assert (not (= var357 null-var802)))
(declare-const var2030 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2030 null-String)))
(declare-const var3134 ClassObject) ; Statement: r2 := @parameter1: java.lang.reflect.Type 
(assert (not (= var3134 null-ClassObject)))
(declare-const var1902 ClassObject) ; Statement: r3 := @parameter2: java.lang.Class 
(assert (not (= var1902 null-ClassObject)))
(declare-const var3287 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var3287 null-Int)))
(declare-const var1120 Int) ; Statement: l1 := @parameter4: long 
(assert (not (= var1120 null-Int)))
(declare-const var3628 String) ; Statement: r4 := @parameter5: java.lang.String 
(assert (not (= var3628 null-String)))
(declare-const var3981 var3948) ; Statement: r5 := @parameter6: java.util.Locale 
(assert (not (= var3981 null-var3948)))
(declare-const var474 String) ; Statement: r6 := @parameter7: java.lang.String 
(assert (not (= var474 null-String)))
(declare-const var3849 var2823) ; Statement: r7 := @parameter8: com.alibaba.fastjson2.schema.JSONSchema 
(assert (not (= var3849 null-var2823)))
(declare-const var3656 var2415) ; Statement: r8 := @parameter9: java.lang.reflect.Method 
(assert (not (= var3656 null-var2415)))
(assert true)
;(assert (<init>/-1124817595 (cast-from-var802-to-var210 var357) var2030 var3134 var1902 var3287 var1120 var3628 var3981 (cast-from-String-to-var496 var474) var3849 var3656 null-var1454 null-var1667)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.reader.FieldReaderObject: void <init>(java.lang.String,java.lang.reflect.Type,java.lang.Class,int,long,java.lang.String,java.util.Locale,java.lang.Object,com.alibaba.fastjson2.schema.JSONSchema,java.lang.reflect.Method,java.lang.reflect.Field,java.util.function.BiConsumer)>(r1, r2, r3, i0, l1, r4, r5, r6, r7, r8, null, null) 

(declare-const var357!1 var802)
(declare-const var2030!1 String)
(declare-const var3134!1 ClassObject)
(declare-const var1902!1 ClassObject)
(declare-const var3287!1 Int)
(declare-const var1120!1 Int)
(declare-const var3628!1 String)
(declare-const var3981!1 var3948)
(declare-const var474!1 String)
(declare-const var3849!1 var2823)
(declare-const var3656!1 var2415)
(declare-const var2021 var1086)
(declare-const var2021!1 var1086)
(define-const var2630 String "trim") ; Statement: $r9 = "trim" 
(assert true)
(define-const var1621 Bool (= var2630 var3628!1)) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z0 != 0 goto $z1 = 1 
(assert (not (= (ite var1621 1 0) 0))) ; Cond: $z0 != 0 
(define-const var394 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: boolean trim> = $z1] 
(assert true) ; Non Conditional
(declare-const var357!2 var802)
(assert (not (= var357!2 null-var802)))
(assert (= (trim/1307497123 var357!2) var394)) ; Statement: r0.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: boolean trim> = $z1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1124817595=([com.alibaba.fastjson2.reader.FieldReaderObject, java.lang.String, java.lang.reflect.Type, java.lang.Class, int, long, java.lang.String, java.util.Locale, java.lang.Object, com.alibaba.fastjson2.schema.JSONSchema, java.lang.reflect.Method, java.lang.reflect.Field, java.util.function.BiConsumer], void), cast-from-var802-to-var210=([com.alibaba.fastjson2.reader.FieldReaderStringMethod], com.alibaba.fastjson2.reader.FieldReaderObject), cast-from-String-to-var496=([java.lang.String], java.lang.Object), trim/1307497123=([com.alibaba.fastjson2.reader.FieldReaderStringMethod], boolean)}
; {var802=com.alibaba.fastjson2.reader.FieldReaderStringMethod, var357=r0, var2030=r1, var1086=null_type, var3134=r2, var1902=r3, var3287=i0, var1120=l1, var3628=r4, var3948=java.util.Locale, var3981=r5, var474=r6, var2823=com.alibaba.fastjson2.schema.JSONSchema, var3849=r7, var2415=java.lang.reflect.Method, var3656=r8, var210=com.alibaba.fastjson2.reader.FieldReaderObject, var496=java.lang.Object, var1454=java.lang.reflect.Field, var1667=java.util.function.BiConsumer, var2021=null, var2630=$r9, var1621=$z0, var394=$z1}
; {com.alibaba.fastjson2.reader.FieldReaderStringMethod=var802, r0=var357, r1=var2030, null_type=var1086, r2=var3134, r3=var1902, i0=var3287, l1=var1120, r4=var3628, java.util.Locale=var3948, r5=var3981, r6=var474, com.alibaba.fastjson2.schema.JSONSchema=var2823, r7=var3849, java.lang.reflect.Method=var2415, r8=var3656, com.alibaba.fastjson2.reader.FieldReaderObject=var210, java.lang.Object=var496, java.lang.reflect.Field=var1454, java.util.function.BiConsumer=var1667, null=var2021, $r9=var2630, $z0=var1621, $z1=var394}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderStringMethod;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.reflect.Type;	r3 := @parameter2: java.lang.Class;	i0 := @parameter3: int;	l1 := @parameter4: long;	r4 := @parameter5: java.lang.String;	r5 := @parameter6: java.util.Locale;	r6 := @parameter7: java.lang.String;	r7 := @parameter8: com.alibaba.fastjson2.schema.JSONSchema;	r8 := @parameter9: java.lang.reflect.Method;	specialinvoke r0.<com.alibaba.fastjson2.reader.FieldReaderObject: void <init>(java.lang.String,java.lang.reflect.Type,java.lang.Class,int,long,java.lang.String,java.util.Locale,java.lang.Object,com.alibaba.fastjson2.schema.JSONSchema,java.lang.reflect.Method,java.lang.reflect.Field,java.util.function.BiConsumer)>(r1, r2, r3, i0, l1, r4, r5, r6, r7, r8, null, null);	$r9 = "trim";	$z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z0 != 0 goto $z1 = 1;	$z1 = 1;	goto [?= r0.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: boolean trim> = $z1];	r0.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: boolean trim> = $z1;	return
;block_num 3