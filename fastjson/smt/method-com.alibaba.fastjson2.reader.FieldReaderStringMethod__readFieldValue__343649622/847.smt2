(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1704 0)
(declare-sort var1975 0)
(declare-sort var3055 0)
(declare-sort var601 0)
(declare-sort var2760 0)
(declare-sort var1202 0)
(declare-sort var1951 0)
(declare-sort var2287 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readString/1282532359 (var1975) String)
(declare-fun trim/1307497123 (var1704) Bool)
(declare-fun schema/-488737871 (var2760) var601)
(declare-fun cast-from-var1704-to-var2760 (var1704) var2760)
(declare-fun var1951-init () var1951)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2760) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var1975 String) String)
(declare-fun <init>/-743866570 (var1951 String var2287) void)
(declare-fun cast-from-var1202-to-var2287 (var1202) var2287)
(declare-const null-var1704 var1704)
(declare-const null-var1975 var1975)
(declare-const null-var3055 var3055)
(declare-const null-var601 var601)
(declare-const null-var1202 var1202)
(declare-const var3463 var1704) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderStringMethod 
(assert (not (= var3463 null-var1704)))
(declare-const var3635 var1975) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3635 null-var1975)))
(declare-const var2622 var3055) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2622 null-var3055)))
(assert true)
(define-const var2264 String (readString/1282532359 var3635)) ; Statement: r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>() 
(define-const var1574 Bool (trim/1307497123 var3463)) ; Statement: $z0 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: boolean trim> 
 ; Statement: if $z0 == 0 goto $r16 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
(assert (= (ite var1574 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3955 var601 (schema/-488737871 (cast-from-var1704-to-var2760 var3463))) ; Statement: $r16 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r16 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: java.lang.reflect.Method method> 
(assert (not (= var3955 null-var601))) ; Negate: Cond: $r16 == null  
(declare-const var2914 var1202) ; Statement: $r6 := @caughtexception 
(assert (not (= var2914 null-var1202)))
(define-const var2459 var1951 var1951-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var3787 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3787)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3787!1 String)
(assert (= var3787!1 ""))
(assert true)
(define-const var1399 String (append/672562846 var3787!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3787!2 String)
(assert (= var3787!2 (str.++ var3787!1 "set ")))
(define-const var946 String (fieldName/-488737871 (cast-from-var1704-to-var2760 var3463))) ; Statement: $r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: java.lang.String fieldName> 
(assert true)
(define-const var648 String (append/672562846 var1399 var946)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1399!1 String)
(assert (= var1399!1 (str.++ var1399 var946)))
(assert true)
(define-const var3864 String (append/672562846 var648 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var648!1 String)
(assert (= var648!1 (str.++ var648 " error")))
(assert true)
(define-const var1582 String (toString/-2075883882 var3864)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1728 String (info/-1659839707 var3635 var1582)) ; Statement: $r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13) 
(assert true)
;(assert (<init>/-743866570 var2459 var1728 (cast-from-var1202-to-var2287 var2914))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6) 

(declare-const var2459!1 var1951)
(declare-const var1728!1 String)
(declare-const var2914!1 var1202)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {readString/1282532359=([com.alibaba.fastjson2.JSONReader], java.lang.String), trim/1307497123=([com.alibaba.fastjson2.reader.FieldReaderStringMethod], boolean), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1704-to-var2760=([com.alibaba.fastjson2.reader.FieldReaderStringMethod], com.alibaba.fastjson2.reader.FieldReader), var1951-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1202-to-var2287=([java.lang.Exception], java.lang.Throwable)}
; {var1704=com.alibaba.fastjson2.reader.FieldReaderStringMethod, var3463=r1, var1975=com.alibaba.fastjson2.JSONReader, var3635=r0, var3055=java.lang.Object, var2622=r2, var2264=r15, var1574=$z0, var601=com.alibaba.fastjson2.schema.JSONSchema, var2760=com.alibaba.fastjson2.reader.FieldReader, var3955=$r16, var1202=java.lang.Exception, var2914=$r6, var1951=com.alibaba.fastjson2.JSONException, var2459=$r7, var3787=$r8, var1399=$r10, var946=$r9, var648=$r11, var3864=$r12, var1582=$r13, var1728=$r14, var2287=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderStringMethod=var1704, r1=var3463, com.alibaba.fastjson2.JSONReader=var1975, r0=var3635, java.lang.Object=var3055, r2=var2622, r15=var2264, $z0=var1574, com.alibaba.fastjson2.schema.JSONSchema=var601, com.alibaba.fastjson2.reader.FieldReader=var2760, $r16=var3955, java.lang.Exception=var1202, $r6=var2914, com.alibaba.fastjson2.JSONException=var1951, $r7=var2459, $r8=var3787, $r10=var1399, $r9=var946, $r11=var648, $r12=var3864, $r13=var1582, $r14=var1728, java.lang.Throwable=var2287}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderStringMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r2 := @parameter1: java.lang.Object;	r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>();	$z0 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: boolean trim>;	if $z0 == 0 goto $r16 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	$r16 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r16 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: java.lang.reflect.Method method>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderStringMethod: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13);	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6);	throw $r7
;block_num 3