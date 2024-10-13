(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3466 0)
(declare-sort var3991 0)
(declare-sort var114 0)
(declare-sort var1395 0)
(declare-sort var350 0)
(declare-sort var181 0)
(declare-sort var441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var1395) var114)
(declare-fun cast-from-var3466-to-var1395 (var3466) var1395)
(declare-fun fieldOffset/-488737871 (var1395) Int)
(declare-fun var181-init () var181)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1395) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var181 String var441) void)
(declare-fun cast-from-var350-to-var441 (var350) var441)
(declare-const null-var3466 var3466)
(declare-const null-var3991 var3991)
(declare-const null-Bool Bool)
(declare-const null-var114 var114)
(declare-const null-var350 var350)
(declare-const var1162 var3466) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderObjectField 
(assert (not (= var1162 null-var3466)))
(declare-const var1703 var3991) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1703 null-var3991)))
(declare-const var3136 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3136 null-Bool)))
(define-const var2605 var114 (schema/-488737871 (cast-from-var3466-to-var1395 var1162))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset> 
(assert (= var2605 null-var114)) ; Cond: $r1 == null 
(define-const var783 Int (fieldOffset/-488737871 (cast-from-var3466-to-var1395 var1162))) ; Statement: $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset> 
(define-const var2166 Int (ite (> var783 (- 1)) 1 (ite (< var783 (- 1)) (- 1) 0))) ; Statement: $b1 = $l0 cmp -1L 
 ; Statement: if $b1 == 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.reflect.Field field> 
(assert (not (= var2166 0))) ; Negate: Cond: $b1 == 0  
(declare-const var3732 var350) ; Statement: $r9 := @caughtexception 
(assert (not (= var3732 null-var350)))
(define-const var3313 var181 var181-init) ; Statement: $r10 = new com.alibaba.fastjson2.JSONException 
(define-const var2034 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2034)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2034!1 String)
(assert (= var2034!1 ""))
(assert true)
(define-const var569 String (append/672562846 var2034!1 "set ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2034!2 String)
(assert (= var2034!2 (str.++ var2034!1 "set ")))
(define-const var2347 String (fieldName/-488737871 (cast-from-var3466-to-var1395 var1162))) ; Statement: $r12 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.String fieldName> 
(assert true)
(define-const var2701 String (append/672562846 var569 var2347)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var569!1 String)
(assert (= var569!1 (str.++ var569 var2347)))
(assert true)
(define-const var3601 String (append/672562846 var2701 " error")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2701!1 String)
(assert (= var2701!1 (str.++ var2701 " error")))
(assert true)
(define-const var3866 String (toString/-2075883882 var3601)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3313 var3866 (cast-from-var350-to-var441 var3732))) ; Statement: specialinvoke $r10.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r9) 

(declare-const var3313!1 var181)
(declare-const var3866!1 String)
(declare-const var3732!1 var350)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3466-to-var1395=([com.alibaba.fastjson2.reader.FieldReaderObjectField], com.alibaba.fastjson2.reader.FieldReader), fieldOffset/-488737871=([com.alibaba.fastjson2.reader.FieldReader], long), var181-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var350-to-var441=([java.lang.Exception], java.lang.Throwable)}
; {var3466=com.alibaba.fastjson2.reader.FieldReaderObjectField, var1162=r0, var3991=java.lang.Object, var1703=r2, var3136=z0, var114=com.alibaba.fastjson2.schema.JSONSchema, var1395=com.alibaba.fastjson2.reader.FieldReader, var2605=$r1, var783=$l0, var2166=$b1, var350=java.lang.Exception, var3732=$r9, var181=com.alibaba.fastjson2.JSONException, var3313=$r10, var2034=$r11, var569=$r13, var2347=$r12, var2701=$r14, var3601=$r15, var3866=$r16, var441=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderObjectField=var3466, r0=var1162, java.lang.Object=var3991, r2=var1703, z0=var3136, com.alibaba.fastjson2.schema.JSONSchema=var114, com.alibaba.fastjson2.reader.FieldReader=var1395, $r1=var2605, $l0=var783, $b1=var2166, java.lang.Exception=var350, $r9=var3732, com.alibaba.fastjson2.JSONException=var181, $r10=var3313, $r11=var2034, $r13=var569, $r12=var2347, $r14=var2701, $r15=var3601, $r16=var3866, java.lang.Throwable=var441}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderObjectField;	r2 := @parameter0: java.lang.Object;	z0 := @parameter1: boolean;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset>;	$l0 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: long fieldOffset>;	$b1 = $l0 cmp -1L;	if $b1 == 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.reflect.Field field>;	$r9 := @caughtexception;	$r10 = new com.alibaba.fastjson2.JSONException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r12 = r0.<com.alibaba.fastjson2.reader.FieldReaderObjectField: java.lang.String fieldName>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r9);	throw $r10
;block_num 3