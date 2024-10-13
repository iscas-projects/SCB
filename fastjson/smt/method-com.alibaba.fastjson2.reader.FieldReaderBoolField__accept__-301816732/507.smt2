(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1708 0)
(declare-sort var1168 0)
(declare-sort var268 0)
(declare-sort var3854 0)
(declare-sort var2370 0)
(declare-sort var2236 0)
(declare-sort var3195 0)
(declare-sort var2891 0)
(declare-sort var2955 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3854_toBoolean/-1785064133 (var1168) var268)
(declare-fun schema/-488737871 (var2236) var2370)
(declare-fun cast-from-var1708-to-var2236 (var1708) var2236)
(declare-fun var2891-init () var2891)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2236) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2891 String var2955) void)
(declare-fun cast-from-var3195-to-var2955 (var3195) var2955)
(declare-const null-var1708 var1708)
(declare-const null-var1168 var1168)
(declare-const null-var2370 var2370)
(declare-const null-var3195 var3195)
(declare-const var3092 var1708) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolField 
(assert (not (= var3092 null-var1708)))
(declare-const var3118 var1168) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var3118 null-var1168)))
(declare-const var1758 var1168) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1758 null-var1168)))
(define-const var3691 var268 (var3854_toBoolean/-1785064133 var1758)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Boolean toBoolean(java.lang.Object)>(r0) 
(define-const var3499 var2370 (schema/-488737871 (cast-from-var1708-to-var2236 var3092))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBoolField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderBoolField: java.lang.reflect.Field field> 
(assert (not (= var3499 null-var2370))) ; Negate: Cond: $r3 == null  
(declare-const var898 var3195) ; Statement: $r7 := @caughtexception 
(assert (not (= var898 null-var3195)))
(define-const var878 var2891 var2891-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var984 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var984)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var984!1 String)
(assert (= var984!1 ""))
(assert true)
(define-const var3685 String (append/672562846 var984!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var984!2 String)
(assert (= var984!2 (str.++ var984!1 "set ")))
(define-const var1081 String (fieldName/-488737871 (cast-from-var1708-to-var2236 var3092))) ; Statement: $r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderBoolField: java.lang.String fieldName> 
(assert true)
(define-const var2102 String (append/672562846 var3685 var1081)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3685!1 String)
(assert (= var3685!1 (str.++ var3685 var1081)))
(assert true)
(define-const var3186 String (append/672562846 var2102 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2102!1 String)
(assert (= var2102!1 (str.++ var2102 " error")))
(assert true)
(define-const var3904 String (toString/-2075883882 var3186)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var878 var3904 (cast-from-var3195-to-var2955 var898))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var878!1 var2891)
(declare-const var3904!1 String)
(declare-const var898!1 var3195)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3854_toBoolean/-1785064133=([java.lang.Object], java.lang.Boolean), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1708-to-var2236=([com.alibaba.fastjson2.reader.FieldReaderBoolField], com.alibaba.fastjson2.reader.FieldReader), var2891-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3195-to-var2955=([java.lang.Exception], java.lang.Throwable)}
; {var1708=com.alibaba.fastjson2.reader.FieldReaderBoolField, var3092=r2, var1168=java.lang.Object, var3118=r4, var1758=r0, var268=java.lang.Boolean, var3854=com.alibaba.fastjson2.util.TypeUtils, var3691=r1, var2370=com.alibaba.fastjson2.schema.JSONSchema, var2236=com.alibaba.fastjson2.reader.FieldReader, var3499=$r3, var3195=java.lang.Exception, var898=$r7, var2891=com.alibaba.fastjson2.JSONException, var878=$r8, var984=$r9, var3685=$r11, var1081=$r10, var2102=$r12, var3186=$r13, var3904=$r14, var2955=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBoolField=var1708, r2=var3092, java.lang.Object=var1168, r4=var3118, r0=var1758, java.lang.Boolean=var268, com.alibaba.fastjson2.util.TypeUtils=var3854, r1=var3691, com.alibaba.fastjson2.schema.JSONSchema=var2370, com.alibaba.fastjson2.reader.FieldReader=var2236, $r3=var3499, java.lang.Exception=var3195, $r7=var898, com.alibaba.fastjson2.JSONException=var2891, $r8=var878, $r9=var984, $r11=var3685, $r10=var1081, $r12=var2102, $r13=var3186, $r14=var3904, java.lang.Throwable=var2955}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolField;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Boolean toBoolean(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBoolField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderBoolField: java.lang.reflect.Field field>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderBoolField: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2