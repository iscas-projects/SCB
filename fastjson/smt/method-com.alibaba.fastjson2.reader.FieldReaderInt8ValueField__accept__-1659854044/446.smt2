(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1966 0)
(declare-sort var2878 0)
(declare-sort var1158 0)
(declare-sort var228 0)
(declare-sort var2857 0)
(declare-sort var964 0)
(declare-sort var1360 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var228) var1158)
(declare-fun cast-from-var1966-to-var228 (var1966) var228)
(declare-fun var964-init () var964)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var228) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var964 String var1360) void)
(declare-fun cast-from-var2857-to-var1360 (var2857) var1360)
(declare-const null-var1966 var1966)
(declare-const null-var2878 var2878)
(declare-const null-Int Int)
(declare-const null-var1158 var1158)
(declare-const null-var2857 var2857)
(declare-const var1704 var1966) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8ValueField 
(assert (not (= var1704 null-var1966)))
(declare-const var1063 var2878) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1063 null-var2878)))
(declare-const var1493 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1493 null-Int)))
(define-const var3681 var1158 (schema/-488737871 (cast-from-var1966-to-var228 var1704))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: java.lang.reflect.Field field> 
(assert (not (= var3681 null-var1158))) ; Negate: Cond: $r1 == null  
(declare-const var1022 var2857) ; Statement: $r5 := @caughtexception 
(assert (not (= var1022 null-var2857)))
(define-const var2006 var964 var964-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var501 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var501)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var501!1 String)
(assert (= var501!1 ""))
(assert true)
(define-const var332 String (append/672562846 var501!1 "set ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var501!2 String)
(assert (= var501!2 (str.++ var501!1 "set ")))
(define-const var2951 String (fieldName/-488737871 (cast-from-var1966-to-var228 var1704))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: java.lang.String fieldName> 
(assert true)
(define-const var927 String (append/672562846 var332 var2951)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var332!1 String)
(assert (= var332!1 (str.++ var332 var2951)))
(assert true)
(define-const var3966 String (append/672562846 var927 " error")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var927!1 String)
(assert (= var927!1 (str.++ var927 " error")))
(assert true)
(define-const var1838 String (toString/-2075883882 var3966)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2006 var1838 (cast-from-var2857-to-var1360 var1022))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r5) 

(declare-const var2006!1 var964)
(declare-const var1838!1 String)
(declare-const var1022!1 var2857)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1966-to-var228=([com.alibaba.fastjson2.reader.FieldReaderInt8ValueField], com.alibaba.fastjson2.reader.FieldReader), var964-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2857-to-var1360=([java.lang.Exception], java.lang.Throwable)}
; {var1966=com.alibaba.fastjson2.reader.FieldReaderInt8ValueField, var1704=r0, var2878=java.lang.Object, var1063=r2, var1493=i0, var1158=com.alibaba.fastjson2.schema.JSONSchema, var228=com.alibaba.fastjson2.reader.FieldReader, var3681=$r1, var2857=java.lang.Exception, var1022=$r5, var964=com.alibaba.fastjson2.JSONException, var2006=$r6, var501=$r7, var332=$r9, var2951=$r8, var927=$r10, var3966=$r11, var1838=$r12, var1360=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt8ValueField=var1966, r0=var1704, java.lang.Object=var2878, r2=var1063, i0=var1493, com.alibaba.fastjson2.schema.JSONSchema=var1158, com.alibaba.fastjson2.reader.FieldReader=var228, $r1=var3681, java.lang.Exception=var2857, $r5=var1022, com.alibaba.fastjson2.JSONException=var964, $r6=var2006, $r7=var501, $r9=var332, $r8=var2951, $r10=var927, $r11=var3966, $r12=var1838, java.lang.Throwable=var1360}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8ValueField;	r2 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: java.lang.reflect.Field field>;	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r8 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueField: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r5);	throw $r6
;block_num 2