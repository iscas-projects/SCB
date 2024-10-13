(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1549 0)
(declare-sort var780 0)
(declare-sort var848 0)
(declare-sort var1192 0)
(declare-sort var3790 0)
(declare-sort var375 0)
(declare-sort var1762 0)
(declare-sort var1458 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readDouble/856931335 (var780) Float64)
(declare-fun schema/-488737871 (var3790) var1192)
(declare-fun cast-from-var1549-to-var3790 (var1549) var3790)
(declare-fun var1762-init () var1762)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3790) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var780 String) String)
(declare-fun <init>/-743866570 (var1762 String var1458) void)
(declare-fun cast-from-var375-to-var1458 (var375) var1458)
(declare-const null-var1549 var1549)
(declare-const null-var780 var780)
(declare-const null-var848 var848)
(declare-const null-var1192 var1192)
(declare-const null-Float64 Float64)
(declare-const null-var375 var375)
(declare-const var1677 var1549) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleField 
(assert (not (= var1677 null-var1549)))
(declare-const var2565 var780) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2565 null-var780)))
(declare-const var2922 var848) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var2922 null-var848)))
(assert true)
(define-const var1069 Float64 (readDouble/856931335 var2565)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Double readDouble()>() 
(define-const var3440 var1192 (schema/-488737871 (cast-from-var1549-to-var3790 var1677))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto (branch) 
(assert (= var3440 null-var1192)) ; Cond: $r3 == null 
 ; Statement: if r1 != null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleField: java.lang.reflect.Field field> 
(assert (not (not (= var1069 null-Float64)))) ; Negate: Cond: r1 != null  
(declare-const var1757 var375) ; Statement: $r8 := @caughtexception 
(assert (not (= var1757 null-var375)))
(define-const var3680 var1762 var1762-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var3393 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3393)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3393!1 String)
(assert (= var3393!1 ""))
(assert true)
(define-const var454 String (append/672562846 var3393!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3393!2 String)
(assert (= var3393!2 (str.++ var3393!1 "set ")))
(define-const var374 String (fieldName/-488737871 (cast-from-var1549-to-var3790 var1677))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleField: java.lang.String fieldName> 
(assert true)
(define-const var1004 String (append/672562846 var454 var374)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var454!1 String)
(assert (= var454!1 (str.++ var454 var374)))
(assert true)
(define-const var1381 String (append/672562846 var1004 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1004!1 String)
(assert (= var1004!1 (str.++ var1004 " error")))
(assert true)
(define-const var3537 String (toString/-2075883882 var1381)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var36 String (info/-1659839707 var2565 var3537)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var3680 var36 (cast-from-var375-to-var1458 var1757))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var3680!1 var1762)
(declare-const var36!1 String)
(declare-const var1757!1 var375)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readDouble/856931335=([com.alibaba.fastjson2.JSONReader], java.lang.Double), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1549-to-var3790=([com.alibaba.fastjson2.reader.FieldReaderDoubleField], com.alibaba.fastjson2.reader.FieldReader), var1762-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var375-to-var1458=([java.lang.Exception], java.lang.Throwable)}
; {var1549=com.alibaba.fastjson2.reader.FieldReaderDoubleField, var1677=r2, var780=com.alibaba.fastjson2.JSONReader, var2565=r0, var848=java.lang.Object, var2922=r4, var1069=r1, var1192=com.alibaba.fastjson2.schema.JSONSchema, var3790=com.alibaba.fastjson2.reader.FieldReader, var3440=$r3, var375=java.lang.Exception, var1757=$r8, var1762=com.alibaba.fastjson2.JSONException, var3680=$r9, var3393=$r10, var454=$r12, var374=$r11, var1004=$r13, var1381=$r14, var3537=$r15, var36=$r16, var1458=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderDoubleField=var1549, r2=var1677, com.alibaba.fastjson2.JSONReader=var780, r0=var2565, java.lang.Object=var848, r4=var2922, r1=var1069, com.alibaba.fastjson2.schema.JSONSchema=var1192, com.alibaba.fastjson2.reader.FieldReader=var3790, $r3=var3440, java.lang.Exception=var375, $r8=var1757, com.alibaba.fastjson2.JSONException=var1762, $r9=var3680, $r10=var3393, $r12=var454, $r11=var374, $r13=var1004, $r14=var1381, $r15=var3537, $r16=var36, java.lang.Throwable=var1458}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderDoubleField;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Double readDouble()>();	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto (branch);	if r1 != null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleField: java.lang.reflect.Field field>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderDoubleField: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 3