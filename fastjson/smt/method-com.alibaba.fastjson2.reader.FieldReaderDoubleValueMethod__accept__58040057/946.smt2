(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1257 0)
(declare-sort var95 0)
(declare-sort var303 0)
(declare-sort var3689 0)
(declare-sort var3073 0)
(declare-sort var635 0)
(declare-sort var787 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var3689) var303)
(declare-fun cast-from-var1257-to-var3689 (var1257) var3689)
(declare-fun var635-init () var635)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3689) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var635 String var787) void)
(declare-fun cast-from-var3073-to-var787 (var3073) var787)
(declare-const null-var1257 var1257)
(declare-const null-var95 var95)
(declare-const null-Int Int)
(declare-const null-var303 var303)
(declare-const null-var3073 var3073)
(declare-const var1493 var1257) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod 
(assert (not (= var1493 null-var1257)))
(declare-const var1550 var95) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1550 null-var95)))
(declare-const var681 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var681 null-Int)))
(define-const var3717 var303 (schema/-488737871 (cast-from-var1257-to-var3689 var1493))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: java.lang.reflect.Method method> 
(assert (not (= var3717 null-var303))) ; Negate: Cond: $r1 == null  
(declare-const var969 var3073) ; Statement: $r7 := @caughtexception 
(assert (not (= var969 null-var3073)))
(define-const var1425 var635 var635-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var1945 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1945)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1945!1 String)
(assert (= var1945!1 ""))
(assert true)
(define-const var3456 String (append/672562846 var1945!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1945!2 String)
(assert (= var1945!2 (str.++ var1945!1 "set ")))
(define-const var3384 String (fieldName/-488737871 (cast-from-var1257-to-var3689 var1493))) ; Statement: $r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var2485 String (append/672562846 var3456 var3384)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3456!1 String)
(assert (= var3456!1 (str.++ var3456 var3384)))
(assert true)
(define-const var1048 String (append/672562846 var2485 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2485!1 String)
(assert (= var2485!1 (str.++ var2485 " error")))
(assert true)
(define-const var2144 String (toString/-2075883882 var1048)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1425 var2144 (cast-from-var3073-to-var787 var969))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var1425!1 var635)
(declare-const var2144!1 String)
(declare-const var969!1 var3073)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1257-to-var3689=([com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod], com.alibaba.fastjson2.reader.FieldReader), var635-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3073-to-var787=([java.lang.Exception], java.lang.Throwable)}
; {var1257=com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod, var1493=r0, var95=java.lang.Object, var1550=r2, var681=i0, var303=com.alibaba.fastjson2.schema.JSONSchema, var3689=com.alibaba.fastjson2.reader.FieldReader, var3717=$r1, var3073=java.lang.Exception, var969=$r7, var635=com.alibaba.fastjson2.JSONException, var1425=$r8, var1945=$r9, var3456=$r11, var3384=$r10, var2485=$r12, var1048=$r13, var2144=$r14, var787=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod=var1257, r0=var1493, java.lang.Object=var95, r2=var1550, i0=var681, com.alibaba.fastjson2.schema.JSONSchema=var303, com.alibaba.fastjson2.reader.FieldReader=var3689, $r1=var3717, java.lang.Exception=var3073, $r7=var969, com.alibaba.fastjson2.JSONException=var635, $r8=var1425, $r9=var1945, $r11=var3456, $r10=var3384, $r12=var2485, $r13=var1048, $r14=var2144, java.lang.Throwable=var787}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod;	r2 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: java.lang.reflect.Method method>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderDoubleValueMethod: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2