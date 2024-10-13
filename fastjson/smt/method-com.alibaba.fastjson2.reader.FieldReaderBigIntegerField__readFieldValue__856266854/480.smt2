(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2728 0)
(declare-sort var595 0)
(declare-sort var2430 0)
(declare-sort var3944 0)
(declare-sort var10 0)
(declare-sort var2479 0)
(declare-sort var2559 0)
(declare-sort var1936 0)
(declare-sort var2764 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readBigInteger/77801293 (var595) var3944)
(declare-fun schema/-488737871 (var2479) var10)
(declare-fun cast-from-var2728-to-var2479 (var2728) var2479)
(declare-fun var1936-init () var1936)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2479) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var595 String) String)
(declare-fun <init>/-743866570 (var1936 String var2764) void)
(declare-fun cast-from-var2559-to-var2764 (var2559) var2764)
(declare-const null-var2728 var2728)
(declare-const null-var595 var595)
(declare-const null-var2430 var2430)
(declare-const null-var10 var10)
(declare-const null-var2559 var2559)
(declare-const var2173 var2728) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerField 
(assert (not (= var2173 null-var2728)))
(declare-const var1388 var595) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1388 null-var595)))
(declare-const var1906 var2430) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var1906 null-var2430)))
(assert true)
(define-const var717 var3944 (readBigInteger/77801293 var1388)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.math.BigInteger readBigInteger()>() 
(define-const var1678 var10 (schema/-488737871 (cast-from-var2728-to-var2479 var2173))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: java.lang.reflect.Field field> 
(assert (not (= var1678 null-var10))) ; Negate: Cond: $r3 == null  
(declare-const var2181 var2559) ; Statement: $r7 := @caughtexception 
(assert (not (= var2181 null-var2559)))
(define-const var319 var1936 var1936-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var1988 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1988)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1988!1 String)
(assert (= var1988!1 ""))
(assert true)
(define-const var809 String (append/672562846 var1988!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1988!2 String)
(assert (= var1988!2 (str.++ var1988!1 "set ")))
(define-const var2129 String (fieldName/-488737871 (cast-from-var2728-to-var2479 var2173))) ; Statement: $r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: java.lang.String fieldName> 
(assert true)
(define-const var34 String (append/672562846 var809 var2129)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var809!1 String)
(assert (= var809!1 (str.++ var809 var2129)))
(assert true)
(define-const var1751 String (append/672562846 var34 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var34!1 String)
(assert (= var34!1 (str.++ var34 " error")))
(assert true)
(define-const var723 String (toString/-2075883882 var1751)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1602 String (info/-1659839707 var1388 var723)) ; Statement: $r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r14) 
(assert true)
;(assert (<init>/-743866570 var319 var1602 (cast-from-var2559-to-var2764 var2181))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r7) 

(declare-const var319!1 var1936)
(declare-const var1602!1 String)
(declare-const var2181!1 var2559)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {readBigInteger/77801293=([com.alibaba.fastjson2.JSONReader], java.math.BigInteger), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2728-to-var2479=([com.alibaba.fastjson2.reader.FieldReaderBigIntegerField], com.alibaba.fastjson2.reader.FieldReader), var1936-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2559-to-var2764=([java.lang.Exception], java.lang.Throwable)}
; {var2728=com.alibaba.fastjson2.reader.FieldReaderBigIntegerField, var2173=r2, var595=com.alibaba.fastjson2.JSONReader, var1388=r0, var2430=java.lang.Object, var1906=r4, var3944=java.math.BigInteger, var717=r1, var10=com.alibaba.fastjson2.schema.JSONSchema, var2479=com.alibaba.fastjson2.reader.FieldReader, var1678=$r3, var2559=java.lang.Exception, var2181=$r7, var1936=com.alibaba.fastjson2.JSONException, var319=$r8, var1988=$r9, var809=$r11, var2129=$r10, var34=$r12, var1751=$r13, var723=$r14, var1602=$r15, var2764=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigIntegerField=var2728, r2=var2173, com.alibaba.fastjson2.JSONReader=var595, r0=var1388, java.lang.Object=var2430, r4=var1906, java.math.BigInteger=var3944, r1=var717, com.alibaba.fastjson2.schema.JSONSchema=var10, com.alibaba.fastjson2.reader.FieldReader=var2479, $r3=var1678, java.lang.Exception=var2559, $r7=var2181, com.alibaba.fastjson2.JSONException=var1936, $r8=var319, $r9=var1988, $r11=var809, $r10=var2129, $r12=var34, $r13=var1751, $r14=var723, $r15=var1602, java.lang.Throwable=var2764}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerField;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.math.BigInteger readBigInteger()>();	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: java.lang.reflect.Field field>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r14);	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r7);	throw $r8
;block_num 2