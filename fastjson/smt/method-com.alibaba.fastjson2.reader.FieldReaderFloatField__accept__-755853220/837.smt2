(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1062 0)
(declare-sort var498 0)
(declare-sort var2509 0)
(declare-sort var858 0)
(declare-sort var146 0)
(declare-sort var2823 0)
(declare-sort var1628 0)
(declare-sort var3329 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2509_toFloat/-881902445 (var498) Float32)
(declare-fun schema/-488737871 (var146) var858)
(declare-fun cast-from-var1062-to-var146 (var1062) var146)
(declare-fun var1628-init () var1628)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var146) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1628 String var3329) void)
(declare-fun cast-from-var2823-to-var3329 (var2823) var3329)
(declare-const null-var1062 var1062)
(declare-const null-var498 var498)
(declare-const null-var858 var858)
(declare-const null-var2823 var2823)
(declare-const var3579 var1062) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatField 
(assert (not (= var3579 null-var1062)))
(declare-const var2008 var498) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var2008 null-var498)))
(declare-const var3901 var498) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3901 null-var498)))
(define-const var589 Float32 (var2509_toFloat/-881902445 var3901)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Float toFloat(java.lang.Object)>(r0) 
(define-const var1967 var858 (schema/-488737871 (cast-from-var1062-to-var146 var3579))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatField: java.lang.reflect.Field field> 
(assert (not (= var1967 null-var858))) ; Negate: Cond: $r3 == null  
(declare-const var849 var2823) ; Statement: $r7 := @caughtexception 
(assert (not (= var849 null-var2823)))
(define-const var140 var1628 var1628-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var535 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var535)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var535!1 String)
(assert (= var535!1 ""))
(assert true)
(define-const var2967 String (append/672562846 var535!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var535!2 String)
(assert (= var535!2 (str.++ var535!1 "set ")))
(define-const var3224 String (fieldName/-488737871 (cast-from-var1062-to-var146 var3579))) ; Statement: $r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatField: java.lang.String fieldName> 
(assert true)
(define-const var2679 String (append/672562846 var2967 var3224)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2967!1 String)
(assert (= var2967!1 (str.++ var2967 var3224)))
(assert true)
(define-const var62 String (append/672562846 var2679 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2679!1 String)
(assert (= var2679!1 (str.++ var2679 " error")))
(assert true)
(define-const var2275 String (toString/-2075883882 var62)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var140 var2275 (cast-from-var2823-to-var3329 var849))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var140!1 var1628)
(declare-const var2275!1 String)
(declare-const var849!1 var2823)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2509_toFloat/-881902445=([java.lang.Object], java.lang.Float), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1062-to-var146=([com.alibaba.fastjson2.reader.FieldReaderFloatField], com.alibaba.fastjson2.reader.FieldReader), var1628-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2823-to-var3329=([java.lang.Exception], java.lang.Throwable)}
; {var1062=com.alibaba.fastjson2.reader.FieldReaderFloatField, var3579=r2, var498=java.lang.Object, var2008=r4, var3901=r0, var2509=com.alibaba.fastjson2.util.TypeUtils, var589=r1, var858=com.alibaba.fastjson2.schema.JSONSchema, var146=com.alibaba.fastjson2.reader.FieldReader, var1967=$r3, var2823=java.lang.Exception, var849=$r7, var1628=com.alibaba.fastjson2.JSONException, var140=$r8, var535=$r9, var2967=$r11, var3224=$r10, var2679=$r12, var62=$r13, var2275=$r14, var3329=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderFloatField=var1062, r2=var3579, java.lang.Object=var498, r4=var2008, r0=var3901, com.alibaba.fastjson2.util.TypeUtils=var2509, r1=var589, com.alibaba.fastjson2.schema.JSONSchema=var858, com.alibaba.fastjson2.reader.FieldReader=var146, $r3=var1967, java.lang.Exception=var2823, $r7=var849, com.alibaba.fastjson2.JSONException=var1628, $r8=var140, $r9=var535, $r11=var2967, $r10=var3224, $r12=var2679, $r13=var62, $r14=var2275, java.lang.Throwable=var3329}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatField;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Float toFloat(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatField: java.lang.reflect.Field field>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatField: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2