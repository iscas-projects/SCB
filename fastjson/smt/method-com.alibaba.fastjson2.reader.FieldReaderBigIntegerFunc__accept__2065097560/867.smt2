(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1479 0)
(declare-sort var3432 0)
(declare-sort var1784 0)
(declare-sort var1982 0)
(declare-sort var1613 0)
(declare-sort var1824 0)
(declare-sort var2637 0)
(declare-sort var492 0)
(declare-sort var1634 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1982_toBigInteger/-799479909 (var3432) var1784)
(declare-fun schema/-488737871 (var1824) var1613)
(declare-fun cast-from-var1479-to-var1824 (var1479) var1824)
(declare-fun var492-init () var492)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/2110042505 (var1824) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var492 String var1634) void)
(declare-fun cast-from-var2637-to-var1634 (var2637) var1634)
(declare-const null-var1479 var1479)
(declare-const null-var3432 var3432)
(declare-const null-var1613 var1613)
(declare-const null-var2637 var2637)
(declare-const var1589 var1479) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc 
(assert (not (= var1589 null-var1479)))
(declare-const var2668 var3432) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var2668 null-var3432)))
(declare-const var2768 var3432) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2768 null-var3432)))
(define-const var1368 var1784 (var1982_toBigInteger/-799479909 var2768)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.math.BigInteger toBigInteger(java.lang.Object)>(r0) 
(define-const var2818 var1613 (schema/-488737871 (cast-from-var1479-to-var1824 var1589))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc: java.util.function.BiConsumer function> 
(assert (not (= var2818 null-var1613))) ; Negate: Cond: $r3 == null  
(declare-const var1289 var2637) ; Statement: $r7 := @caughtexception 
(assert (not (= var1289 null-var2637)))
(define-const var1937 var492 var492-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var731 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var731)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var731!1 String)
(assert (= var731!1 ""))
(assert true)
(define-const var256 String (append/672562846 var731!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var731!2 String)
(assert (= var731!2 (str.++ var731!1 "set ")))
(assert true)
(define-const var3229 String (toString/2110042505 (cast-from-var1479-to-var1824 var1589))) ; Statement: $r10 = specialinvoke r2.<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>() 
(assert true)
(define-const var23 String (append/672562846 var256 var3229)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var256!1 String)
(assert (= var256!1 (str.++ var256 var3229)))
(assert true)
(define-const var1815 String (append/672562846 var23 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var23!1 String)
(assert (= var23!1 (str.++ var23 " error")))
(assert true)
(define-const var1151 String (toString/-2075883882 var1815)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1937 var1151 (cast-from-var2637-to-var1634 var1289))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var1937!1 var492)
(declare-const var1151!1 String)
(declare-const var1289!1 var2637)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1982_toBigInteger/-799479909=([java.lang.Object], java.math.BigInteger), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1479-to-var1824=([com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc], com.alibaba.fastjson2.reader.FieldReader), var492-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/2110042505=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2637-to-var1634=([java.lang.Exception], java.lang.Throwable)}
; {var1479=com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc, var1589=r2, var3432=java.lang.Object, var2668=r4, var2768=r0, var1784=java.math.BigInteger, var1982=com.alibaba.fastjson2.util.TypeUtils, var1368=r1, var1613=com.alibaba.fastjson2.schema.JSONSchema, var1824=com.alibaba.fastjson2.reader.FieldReader, var2818=$r3, var2637=java.lang.Exception, var1289=$r7, var492=com.alibaba.fastjson2.JSONException, var1937=$r8, var731=$r9, var256=$r11, var3229=$r10, var23=$r12, var1815=$r13, var1151=$r14, var1634=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc=var1479, r2=var1589, java.lang.Object=var3432, r4=var2668, r0=var2768, java.math.BigInteger=var1784, com.alibaba.fastjson2.util.TypeUtils=var1982, r1=var1368, com.alibaba.fastjson2.schema.JSONSchema=var1613, com.alibaba.fastjson2.reader.FieldReader=var1824, $r3=var2818, java.lang.Exception=var2637, $r7=var1289, com.alibaba.fastjson2.JSONException=var492, $r8=var1937, $r9=var731, $r11=var256, $r10=var3229, $r12=var23, $r13=var1815, $r14=var1151, java.lang.Throwable=var1634}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.math.BigInteger toBigInteger(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc: java.util.function.BiConsumer function>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = specialinvoke r2.<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2