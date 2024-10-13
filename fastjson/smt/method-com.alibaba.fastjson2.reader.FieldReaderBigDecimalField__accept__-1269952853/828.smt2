(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3950 0)
(declare-sort var616 0)
(declare-sort var2914 0)
(declare-sort var2798 0)
(declare-sort var1333 0)
(declare-sort var1343 0)
(declare-sort var3296 0)
(declare-sort var3448 0)
(declare-sort var1243 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2798_toBigDecimal/-1065777989 (var616) var2914)
(declare-fun schema/-488737871 (var1343) var1333)
(declare-fun cast-from-var3950-to-var1343 (var3950) var1343)
(declare-fun var3448-init () var3448)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1343) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3448 String var1243) void)
(declare-fun cast-from-var3296-to-var1243 (var3296) var1243)
(declare-const null-var3950 var3950)
(declare-const null-var616 var616)
(declare-const null-var1333 var1333)
(declare-const null-var3296 var3296)
(declare-const var2388 var3950) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalField 
(assert (not (= var2388 null-var3950)))
(declare-const var2323 var616) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var2323 null-var616)))
(declare-const var949 var616) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var949 null-var616)))
(define-const var2540 var2914 (var2798_toBigDecimal/-1065777989 var949)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.math.BigDecimal toBigDecimal(java.lang.Object)>(r0) 
(define-const var3013 var1333 (schema/-488737871 (cast-from-var3950-to-var1343 var2388))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: java.lang.reflect.Field field> 
(assert (not (= var3013 null-var1333))) ; Negate: Cond: $r3 == null  
(declare-const var1037 var3296) ; Statement: $r7 := @caughtexception 
(assert (not (= var1037 null-var3296)))
(define-const var966 var3448 var3448-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var3942 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3942)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3942!1 String)
(assert (= var3942!1 ""))
(assert true)
(define-const var3474 String (append/672562846 var3942!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3942!2 String)
(assert (= var3942!2 (str.++ var3942!1 "set ")))
(define-const var1233 String (fieldName/-488737871 (cast-from-var3950-to-var1343 var2388))) ; Statement: $r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: java.lang.String fieldName> 
(assert true)
(define-const var608 String (append/672562846 var3474 var1233)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3474!1 String)
(assert (= var3474!1 (str.++ var3474 var1233)))
(assert true)
(define-const var1806 String (append/672562846 var608 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var608!1 String)
(assert (= var608!1 (str.++ var608 " error")))
(assert true)
(define-const var3562 String (toString/-2075883882 var1806)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var966 var3562 (cast-from-var3296-to-var1243 var1037))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var966!1 var3448)
(declare-const var3562!1 String)
(declare-const var1037!1 var3296)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2798_toBigDecimal/-1065777989=([java.lang.Object], java.math.BigDecimal), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3950-to-var1343=([com.alibaba.fastjson2.reader.FieldReaderBigDecimalField], com.alibaba.fastjson2.reader.FieldReader), var3448-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3296-to-var1243=([java.lang.Exception], java.lang.Throwable)}
; {var3950=com.alibaba.fastjson2.reader.FieldReaderBigDecimalField, var2388=r2, var616=java.lang.Object, var2323=r4, var949=r0, var2914=java.math.BigDecimal, var2798=com.alibaba.fastjson2.util.TypeUtils, var2540=r1, var1333=com.alibaba.fastjson2.schema.JSONSchema, var1343=com.alibaba.fastjson2.reader.FieldReader, var3013=$r3, var3296=java.lang.Exception, var1037=$r7, var3448=com.alibaba.fastjson2.JSONException, var966=$r8, var3942=$r9, var3474=$r11, var1233=$r10, var608=$r12, var1806=$r13, var3562=$r14, var1243=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigDecimalField=var3950, r2=var2388, java.lang.Object=var616, r4=var2323, r0=var949, java.math.BigDecimal=var2914, com.alibaba.fastjson2.util.TypeUtils=var2798, r1=var2540, com.alibaba.fastjson2.schema.JSONSchema=var1333, com.alibaba.fastjson2.reader.FieldReader=var1343, $r3=var3013, java.lang.Exception=var3296, $r7=var1037, com.alibaba.fastjson2.JSONException=var3448, $r8=var966, $r9=var3942, $r11=var3474, $r10=var1233, $r12=var608, $r13=var1806, $r14=var3562, java.lang.Throwable=var1243}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalField;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.math.BigDecimal toBigDecimal(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: java.lang.reflect.Field field>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalField: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2