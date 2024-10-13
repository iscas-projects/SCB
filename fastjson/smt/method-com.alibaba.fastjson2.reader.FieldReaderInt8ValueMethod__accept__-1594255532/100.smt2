(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1691 0)
(declare-sort var1858 0)
(declare-sort var2147 0)
(declare-sort var552 0)
(declare-sort var168 0)
(declare-sort var3013 0)
(declare-sort var2201 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var552) var2147)
(declare-fun cast-from-var1691-to-var552 (var1691) var552)
(declare-fun var3013-init () var3013)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var552) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3013 String var2201) void)
(declare-fun cast-from-var168-to-var2201 (var168) var2201)
(declare-const null-var1691 var1691)
(declare-const null-var1858 var1858)
(declare-const null-Int Int)
(declare-const null-var2147 var2147)
(declare-const null-var168 var168)
(declare-const var3135 var1691) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod 
(assert (not (= var3135 null-var1691)))
(declare-const var1340 var1858) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1340 null-var1858)))
(declare-const var1687 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var1687 null-Int)))
(define-const var3964 var2147 (schema/-488737871 (cast-from-var1691-to-var552 var3135))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: java.lang.reflect.Method method> 
(assert (not (= var3964 null-var2147))) ; Negate: Cond: $r1 == null  
(declare-const var2747 var168) ; Statement: $r7 := @caughtexception 
(assert (not (= var2747 null-var168)))
(define-const var1560 var3013 var3013-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var3042 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3042)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3042!1 String)
(assert (= var3042!1 ""))
(assert true)
(define-const var3742 String (append/672562846 var3042!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3042!2 String)
(assert (= var3042!2 (str.++ var3042!1 "set ")))
(define-const var3414 String (fieldName/-488737871 (cast-from-var1691-to-var552 var3135))) ; Statement: $r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var2352 String (append/672562846 var3742 var3414)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3742!1 String)
(assert (= var3742!1 (str.++ var3742 var3414)))
(assert true)
(define-const var3345 String (append/672562846 var2352 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2352!1 String)
(assert (= var2352!1 (str.++ var2352 " error")))
(assert true)
(define-const var2457 String (toString/-2075883882 var3345)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1560 var2457 (cast-from-var168-to-var2201 var2747))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var1560!1 var3013)
(declare-const var2457!1 String)
(declare-const var2747!1 var168)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1691-to-var552=([com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod], com.alibaba.fastjson2.reader.FieldReader), var3013-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var168-to-var2201=([java.lang.Exception], java.lang.Throwable)}
; {var1691=com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod, var3135=r0, var1858=java.lang.Object, var1340=r2, var1687=l0, var2147=com.alibaba.fastjson2.schema.JSONSchema, var552=com.alibaba.fastjson2.reader.FieldReader, var3964=$r1, var168=java.lang.Exception, var2747=$r7, var3013=com.alibaba.fastjson2.JSONException, var1560=$r8, var3042=$r9, var3742=$r11, var3414=$r10, var2352=$r12, var3345=$r13, var2457=$r14, var2201=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod=var1691, r0=var3135, java.lang.Object=var1858, r2=var1340, l0=var1687, com.alibaba.fastjson2.schema.JSONSchema=var2147, com.alibaba.fastjson2.reader.FieldReader=var552, $r1=var3964, java.lang.Exception=var168, $r7=var2747, com.alibaba.fastjson2.JSONException=var3013, $r8=var1560, $r9=var3042, $r11=var3742, $r10=var3414, $r12=var2352, $r13=var3345, $r14=var2457, java.lang.Throwable=var2201}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod;	r2 := @parameter0: java.lang.Object;	l0 := @parameter1: long;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: java.lang.reflect.Method method>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt8ValueMethod: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2