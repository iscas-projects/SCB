(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3053 0)
(declare-sort var2686 0)
(declare-sort var2690 0)
(declare-sort var2528 0)
(declare-sort var2136 0)
(declare-sort var2286 0)
(declare-sort var135 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var2528) var2690)
(declare-fun cast-from-var3053-to-var2528 (var3053) var2528)
(declare-fun fieldOffset/-488737871 (var2528) Int)
(declare-fun var2286-init () var2286)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2528) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2286 String var135) void)
(declare-fun cast-from-var2136-to-var135 (var2136) var135)
(declare-const null-var3053 var3053)
(declare-const null-var2686 var2686)
(declare-const null-Float32 Float32)
(declare-const null-var2690 var2690)
(declare-const null-var2136 var2136)
(declare-const var366 var3053) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderObjectField 
(assert (not (= var366 null-var3053)))
(declare-const var625 var2686) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var625 null-var2686)))
(declare-const var1050 Float32) ; Statement: f0 := @parameter1: float 
(assert (not (= var1050 null-Float32)))
(define-const var2339 var2690 (schema/-488737871 (cast-from-var3053-to-var2528 var366))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset> 
(assert (= var2339 null-var2690)) ; Cond: $r1 == null 
(define-const var176 Int (fieldOffset/-488737871 (cast-from-var3053-to-var2528 var366))) ; Statement: $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset> 
(define-const var2400 Int (ite (> var176 (- 1)) 1 (ite (< var176 (- 1)) (- 1) 0))) ; Statement: $b1 = $l0 cmp -1L 
 ; Statement: if $b1 == 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.reflect.Field field> 
(assert (not (= var2400 0))) ; Negate: Cond: $b1 == 0  
(declare-const var1317 var2136) ; Statement: $r8 := @caughtexception 
(assert (not (= var1317 null-var2136)))
(define-const var2888 var2286 var2286-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var1574 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1574)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1574!1 String)
(assert (= var1574!1 ""))
(assert true)
(define-const var61 String (append/672562846 var1574!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1574!2 String)
(assert (= var1574!2 (str.++ var1574!1 "set ")))
(define-const var3778 String (fieldName/-488737871 (cast-from-var3053-to-var2528 var366))) ; Statement: $r11 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.String fieldName> 
(assert true)
(define-const var1713 String (append/672562846 var61 var3778)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var61!1 String)
(assert (= var61!1 (str.++ var61 var3778)))
(assert true)
(define-const var1801 String (append/672562846 var1713 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1713!1 String)
(assert (= var1713!1 (str.++ var1713 " error")))
(assert true)
(define-const var350 String (toString/-2075883882 var1801)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2888 var350 (cast-from-var2136-to-var135 var1317))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var2888!1 var2286)
(declare-const var350!1 String)
(declare-const var1317!1 var2136)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3053-to-var2528=([com.alibaba.fastjson2.reader.FieldReaderObjectField], com.alibaba.fastjson2.reader.FieldReader), fieldOffset/-488737871=([com.alibaba.fastjson2.reader.FieldReader], long), var2286-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2136-to-var135=([java.lang.Exception], java.lang.Throwable)}
; {var3053=com.alibaba.fastjson2.reader.FieldReaderObjectField, var366=r0, var2686=java.lang.Object, var625=r2, var1050=f0, var2690=com.alibaba.fastjson2.schema.JSONSchema, var2528=com.alibaba.fastjson2.reader.FieldReader, var2339=$r1, var176=$l0, var2400=$b1, var2136=java.lang.Exception, var1317=$r8, var2286=com.alibaba.fastjson2.JSONException, var2888=$r9, var1574=$r10, var61=$r12, var3778=$r11, var1713=$r13, var1801=$r14, var350=$r15, var135=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderObjectField=var3053, r0=var366, java.lang.Object=var2686, r2=var625, f0=var1050, com.alibaba.fastjson2.schema.JSONSchema=var2690, com.alibaba.fastjson2.reader.FieldReader=var2528, $r1=var2339, $l0=var176, $b1=var2400, java.lang.Exception=var2136, $r8=var1317, com.alibaba.fastjson2.JSONException=var2286, $r9=var2888, $r10=var1574, $r12=var61, $r11=var3778, $r13=var1713, $r14=var1801, $r15=var350, java.lang.Throwable=var135}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderObjectField;	r2 := @parameter0: java.lang.Object;	f0 := @parameter1: float;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset>;	$l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset>;	$b1 = $l0 cmp -1L;	if $b1 == 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.reflect.Field field>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 3