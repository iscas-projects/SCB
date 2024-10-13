(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3005 0)
(declare-sort var1421 0)
(declare-sort var3954 0)
(declare-sort var1240 0)
(declare-sort var3186 0)
(declare-sort var2781 0)
(declare-sort var3589 0)
(declare-sort var3772 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3954_toDoubleValue/-1723342258 (var1421) Float64)
(declare-fun schema/-488737871 (var3186) var1240)
(declare-fun cast-from-var3005-to-var3186 (var3005) var3186)
(declare-fun var3589-init () var3589)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3186) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3589 String var3772) void)
(declare-fun cast-from-var2781-to-var3772 (var2781) var3772)
(declare-const null-var3005 var3005)
(declare-const null-var1421 var1421)
(declare-const null-var1240 var1240)
(declare-const null-var2781 var2781)
(declare-const var203 var3005) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleValueField 
(assert (not (= var203 null-var3005)))
(declare-const var1216 var1421) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var1216 null-var1421)))
(declare-const var1561 var1421) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1561 null-var1421)))
(define-const var106 Float64 (var3954_toDoubleValue/-1723342258 var1561)) ; Statement: d0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: double toDoubleValue(java.lang.Object)>(r0) 
(define-const var2565 var1240 (schema/-488737871 (cast-from-var3005-to-var3186 var203))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueField: java.lang.reflect.Field field> 
(assert (not (= var2565 null-var1240))) ; Negate: Cond: $r2 == null  
(declare-const var2953 var2781) ; Statement: $r7 := @caughtexception 
(assert (not (= var2953 null-var2781)))
(define-const var3582 var3589 var3589-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var2817 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2817)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2817!1 String)
(assert (= var2817!1 ""))
(assert true)
(define-const var495 String (append/672562846 var2817!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2817!2 String)
(assert (= var2817!2 (str.++ var2817!1 "set ")))
(define-const var3598 String (fieldName/-488737871 (cast-from-var3005-to-var3186 var203))) ; Statement: $r10 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueField: java.lang.String fieldName> 
(assert true)
(define-const var3460 String (append/672562846 var495 var3598)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var495!1 String)
(assert (= var495!1 (str.++ var495 var3598)))
(assert true)
(define-const var1000 String (append/672562846 var3460 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3460!1 String)
(assert (= var3460!1 (str.++ var3460 " error")))
(assert true)
(define-const var3610 String (toString/-2075883882 var1000)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3582 var3610 (cast-from-var2781-to-var3772 var2953))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var3582!1 var3589)
(declare-const var3610!1 String)
(declare-const var2953!1 var2781)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3954_toDoubleValue/-1723342258=([java.lang.Object], double), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3005-to-var3186=([com.alibaba.fastjson2.reader.FieldReaderDoubleValueField], com.alibaba.fastjson2.reader.FieldReader), var3589-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2781-to-var3772=([java.lang.Exception], java.lang.Throwable)}
; {var3005=com.alibaba.fastjson2.reader.FieldReaderDoubleValueField, var203=r1, var1421=java.lang.Object, var1216=r3, var1561=r0, var3954=com.alibaba.fastjson2.util.TypeUtils, var106=d0, var1240=com.alibaba.fastjson2.schema.JSONSchema, var3186=com.alibaba.fastjson2.reader.FieldReader, var2565=$r2, var2781=java.lang.Exception, var2953=$r7, var3589=com.alibaba.fastjson2.JSONException, var3582=$r8, var2817=$r9, var495=$r11, var3598=$r10, var3460=$r12, var1000=$r13, var3610=$r14, var3772=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderDoubleValueField=var3005, r1=var203, java.lang.Object=var1421, r3=var1216, r0=var1561, com.alibaba.fastjson2.util.TypeUtils=var3954, d0=var106, com.alibaba.fastjson2.schema.JSONSchema=var1240, com.alibaba.fastjson2.reader.FieldReader=var3186, $r2=var2565, java.lang.Exception=var2781, $r7=var2953, com.alibaba.fastjson2.JSONException=var3589, $r8=var3582, $r9=var2817, $r11=var495, $r10=var3598, $r12=var3460, $r13=var1000, $r14=var3610, java.lang.Throwable=var3772}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleValueField;	r3 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	d0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: double toDoubleValue(java.lang.Object)>(r0);	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueField: java.lang.reflect.Field field>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r1.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueField: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2