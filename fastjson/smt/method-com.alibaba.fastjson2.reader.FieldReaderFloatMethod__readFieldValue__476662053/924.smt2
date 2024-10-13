(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3661 0)
(declare-sort var306 0)
(declare-sort var3254 0)
(declare-sort var3097 0)
(declare-sort var2590 0)
(declare-sort var1522 0)
(declare-sort var3069 0)
(declare-sort var1416 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readFloat/1858673563 (var306) Float32)
(declare-fun schema/-488737871 (var2590) var3097)
(declare-fun cast-from-var3661-to-var2590 (var3661) var2590)
(declare-fun var3069-init () var3069)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2590) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var306 String) String)
(declare-fun <init>/-743866570 (var3069 String var1416) void)
(declare-fun cast-from-var1522-to-var1416 (var1522) var1416)
(declare-const null-var3661 var3661)
(declare-const null-var306 var306)
(declare-const null-var3254 var3254)
(declare-const null-var3097 var3097)
(declare-const null-var1522 var1522)
(declare-const var143 var3661) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatMethod 
(assert (not (= var143 null-var3661)))
(declare-const var1428 var306) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1428 null-var306)))
(declare-const var963 var3254) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var963 null-var3254)))
(assert true)
(define-const var3110 Float32 (readFloat/1858673563 var1428)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Float readFloat()>() 
(define-const var1617 var3097 (schema/-488737871 (cast-from-var3661-to-var2590 var143))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatMethod: java.lang.reflect.Method method> 
(assert (not (= var1617 null-var3097))) ; Negate: Cond: $r3 == null  
(declare-const var2893 var1522) ; Statement: $r8 := @caughtexception 
(assert (not (= var2893 null-var1522)))
(define-const var2265 var3069 var3069-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var2530 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2530)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2530!1 String)
(assert (= var2530!1 ""))
(assert true)
(define-const var2584 String (append/672562846 var2530!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2530!2 String)
(assert (= var2530!2 (str.++ var2530!1 "set ")))
(define-const var1694 String (fieldName/-488737871 (cast-from-var3661-to-var2590 var143))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatMethod: java.lang.String fieldName> 
(assert true)
(define-const var2310 String (append/672562846 var2584 var1694)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2584!1 String)
(assert (= var2584!1 (str.++ var2584 var1694)))
(assert true)
(define-const var3524 String (append/672562846 var2310 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2310!1 String)
(assert (= var2310!1 (str.++ var2310 " error")))
(assert true)
(define-const var1424 String (toString/-2075883882 var3524)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var900 String (info/-1659839707 var1428 var1424)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var2265 var900 (cast-from-var1522-to-var1416 var2893))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var2265!1 var3069)
(declare-const var900!1 String)
(declare-const var2893!1 var1522)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readFloat/1858673563=([com.alibaba.fastjson2.JSONReader], java.lang.Float), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3661-to-var2590=([com.alibaba.fastjson2.reader.FieldReaderFloatMethod], com.alibaba.fastjson2.reader.FieldReader), var3069-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1522-to-var1416=([java.lang.Exception], java.lang.Throwable)}
; {var3661=com.alibaba.fastjson2.reader.FieldReaderFloatMethod, var143=r2, var306=com.alibaba.fastjson2.JSONReader, var1428=r0, var3254=java.lang.Object, var963=r4, var3110=r1, var3097=com.alibaba.fastjson2.schema.JSONSchema, var2590=com.alibaba.fastjson2.reader.FieldReader, var1617=$r3, var1522=java.lang.Exception, var2893=$r8, var3069=com.alibaba.fastjson2.JSONException, var2265=$r9, var2530=$r10, var2584=$r12, var1694=$r11, var2310=$r13, var3524=$r14, var1424=$r15, var900=$r16, var1416=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderFloatMethod=var3661, r2=var143, com.alibaba.fastjson2.JSONReader=var306, r0=var1428, java.lang.Object=var3254, r4=var963, r1=var3110, com.alibaba.fastjson2.schema.JSONSchema=var3097, com.alibaba.fastjson2.reader.FieldReader=var2590, $r3=var1617, java.lang.Exception=var1522, $r8=var2893, com.alibaba.fastjson2.JSONException=var3069, $r9=var2265, $r10=var2530, $r12=var2584, $r11=var1694, $r13=var2310, $r14=var3524, $r15=var1424, $r16=var900, java.lang.Throwable=var1416}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderFloatMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Float readFloat()>();	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderFloatMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2