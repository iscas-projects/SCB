(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3676 0)
(declare-sort var91 0)
(declare-sort var902 0)
(declare-sort var406 0)
(declare-sort var3550 0)
(declare-sort var1815 0)
(declare-sort var2708 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var406) var902)
(declare-fun cast-from-var3676-to-var406 (var3676) var406)
(declare-fun var1815-init () var1815)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var406) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1815 String var2708) void)
(declare-fun cast-from-var3550-to-var2708 (var3550) var2708)
(declare-const null-var3676 var3676)
(declare-const null-var91 var91)
(declare-const null-Int Int)
(declare-const null-var902 var902)
(declare-const null-var3550 var3550)
(declare-const var1947 var3676) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod 
(assert (not (= var1947 null-var3676)))
(declare-const var1016 var91) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1016 null-var91)))
(declare-const var3615 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3615 null-Int)))
(define-const var1252 var902 (schema/-488737871 (cast-from-var3676-to-var406 var1947))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: java.lang.reflect.Method method> 
(assert (not (= var1252 null-var902))) ; Negate: Cond: $r1 == null  
(declare-const var763 var3550) ; Statement: $r7 := @caughtexception 
(assert (not (= var763 null-var3550)))
(define-const var1079 var1815 var1815-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var432 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var432)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var432!1 String)
(assert (= var432!1 ""))
(assert true)
(define-const var2808 String (append/672562846 var432!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var432!2 String)
(assert (= var432!2 (str.++ var432!1 "set ")))
(define-const var712 String (fieldName/-488737871 (cast-from-var3676-to-var406 var1947))) ; Statement: $r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: java.lang.String fieldName> 
(assert true)
(define-const var3438 String (append/672562846 var2808 var712)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2808!1 String)
(assert (= var2808!1 (str.++ var2808 var712)))
(assert true)
(define-const var3632 String (append/672562846 var3438 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3438!1 String)
(assert (= var3438!1 (str.++ var3438 " error")))
(assert true)
(define-const var1096 String (toString/-2075883882 var3632)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1079 var1096 (cast-from-var3550-to-var2708 var763))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var1079!1 var1815)
(declare-const var1096!1 String)
(declare-const var763!1 var3550)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3676-to-var406=([com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod], com.alibaba.fastjson2.reader.FieldReader), var1815-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3550-to-var2708=([java.lang.Exception], java.lang.Throwable)}
; {var3676=com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod, var1947=r0, var91=java.lang.Object, var1016=r2, var3615=i0, var902=com.alibaba.fastjson2.schema.JSONSchema, var406=com.alibaba.fastjson2.reader.FieldReader, var1252=$r1, var3550=java.lang.Exception, var763=$r7, var1815=com.alibaba.fastjson2.JSONException, var1079=$r8, var432=$r9, var2808=$r11, var712=$r10, var3438=$r12, var3632=$r13, var1096=$r14, var2708=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod=var3676, r0=var1947, java.lang.Object=var91, r2=var1016, i0=var3615, com.alibaba.fastjson2.schema.JSONSchema=var902, com.alibaba.fastjson2.reader.FieldReader=var406, $r1=var1252, java.lang.Exception=var3550, $r7=var763, com.alibaba.fastjson2.JSONException=var1815, $r8=var1079, $r9=var432, $r11=var2808, $r10=var712, $r12=var3438, $r13=var3632, $r14=var1096, java.lang.Throwable=var2708}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod;	r2 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: java.lang.reflect.Method method>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2