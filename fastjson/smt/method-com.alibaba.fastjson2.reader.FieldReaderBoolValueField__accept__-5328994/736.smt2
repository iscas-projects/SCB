(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1902 0)
(declare-sort var211 0)
(declare-sort var2726 0)
(declare-sort var2023 0)
(declare-sort var1560 0)
(declare-sort var1702 0)
(declare-sort var1936 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var2023) var2726)
(declare-fun cast-from-var1902-to-var2023 (var1902) var2023)
(declare-fun fieldOffset/-488737871 (var2023) Int)
(declare-fun var1702-init () var1702)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2023) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1702 String var1936) void)
(declare-fun cast-from-var1560-to-var1936 (var1560) var1936)
(declare-const null-var1902 var1902)
(declare-const null-var211 var211)
(declare-const null-Bool Bool)
(declare-const null-var2726 var2726)
(declare-const null-var1560 var1560)
(declare-const var1179 var1902) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolValueField 
(assert (not (= var1179 null-var1902)))
(declare-const var3312 var211) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var3312 null-var211)))
(declare-const var1683 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1683 null-Bool)))
(define-const var3193 var2726 (schema/-488737871 (cast-from-var1902-to-var2023 var1179))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBoolValueField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderBoolValueField: long fieldOffset> 
(assert (= var3193 null-var2726)) ; Cond: $r1 == null 
(define-const var199 Int (fieldOffset/-488737871 (cast-from-var1902-to-var2023 var1179))) ; Statement: $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderBoolValueField: long fieldOffset> 
(define-const var1833 Int (ite (> var199 (- 1)) 1 (ite (< var199 (- 1)) (- 1) 0))) ; Statement: $b1 = $l0 cmp -1L 
 ; Statement: if $b1 == 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderBoolValueField: java.lang.reflect.Field field> 
(assert (not (= var1833 0))) ; Negate: Cond: $b1 == 0  
(declare-const var857 var1560) ; Statement: $r7 := @caughtexception 
(assert (not (= var857 null-var1560)))
(define-const var1159 var1702 var1702-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var3024 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3024)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3024!1 String)
(assert (= var3024!1 ""))
(assert true)
(define-const var3907 String (append/672562846 var3024!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3024!2 String)
(assert (= var3024!2 (str.++ var3024!1 "set ")))
(define-const var3057 String (fieldName/-488737871 (cast-from-var1902-to-var2023 var1179))) ; Statement: $r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderBoolValueField: java.lang.String fieldName> 
(assert true)
(define-const var744 String (append/672562846 var3907 var3057)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3907!1 String)
(assert (= var3907!1 (str.++ var3907 var3057)))
(assert true)
(define-const var3860 String (append/672562846 var744 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var744!1 String)
(assert (= var744!1 (str.++ var744 " error")))
(assert true)
(define-const var1593 String (toString/-2075883882 var3860)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1159 var1593 (cast-from-var1560-to-var1936 var857))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var1159!1 var1702)
(declare-const var1593!1 String)
(declare-const var857!1 var1560)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1902-to-var2023=([com.alibaba.fastjson2.reader.FieldReaderBoolValueField], com.alibaba.fastjson2.reader.FieldReader), fieldOffset/-488737871=([com.alibaba.fastjson2.reader.FieldReader], long), var1702-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1560-to-var1936=([java.lang.Exception], java.lang.Throwable)}
; {var1902=com.alibaba.fastjson2.reader.FieldReaderBoolValueField, var1179=r0, var211=java.lang.Object, var3312=r2, var1683=z0, var2726=com.alibaba.fastjson2.schema.JSONSchema, var2023=com.alibaba.fastjson2.reader.FieldReader, var3193=$r1, var199=$l0, var1833=$b1, var1560=java.lang.Exception, var857=$r7, var1702=com.alibaba.fastjson2.JSONException, var1159=$r8, var3024=$r9, var3907=$r11, var3057=$r10, var744=$r12, var3860=$r13, var1593=$r14, var1936=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBoolValueField=var1902, r0=var1179, java.lang.Object=var211, r2=var3312, z0=var1683, com.alibaba.fastjson2.schema.JSONSchema=var2726, com.alibaba.fastjson2.reader.FieldReader=var2023, $r1=var3193, $l0=var199, $b1=var1833, java.lang.Exception=var1560, $r7=var857, com.alibaba.fastjson2.JSONException=var1702, $r8=var1159, $r9=var3024, $r11=var3907, $r10=var3057, $r12=var744, $r13=var3860, $r14=var1593, java.lang.Throwable=var1936}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolValueField;	r2 := @parameter0: java.lang.Object;	z0 := @parameter1: boolean;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBoolValueField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderBoolValueField: long fieldOffset>;	$l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderBoolValueField: long fieldOffset>;	$b1 = $l0 cmp -1L;	if $b1 == 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderBoolValueField: java.lang.reflect.Field field>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderBoolValueField: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 3