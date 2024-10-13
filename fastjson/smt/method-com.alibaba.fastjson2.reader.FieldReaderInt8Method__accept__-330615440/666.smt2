(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var191 0)
(declare-sort var3962 0)
(declare-sort var2520 0)
(declare-sort var834 0)
(declare-sort var3030 0)
(declare-sort var3425 0)
(declare-sort var3625 0)
(declare-sort var724 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2520_toByte/2021493365 (var3962) Int)
(declare-fun schema/-488737871 (var3030) var834)
(declare-fun cast-from-var191-to-var3030 (var191) var3030)
(declare-fun var3625-init () var3625)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3030) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3625 String var724) void)
(declare-fun cast-from-var3425-to-var724 (var3425) var724)
(declare-const null-var191 var191)
(declare-const null-var3962 var3962)
(declare-const null-var834 var834)
(declare-const null-var3425 var3425)
(declare-const var146 var191) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8Method 
(assert (not (= var146 null-var191)))
(declare-const var792 var3962) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var792 null-var3962)))
(declare-const var2366 var3962) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2366 null-var3962)))
(define-const var2322 Int (var2520_toByte/2021493365 var2366)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Byte toByte(java.lang.Object)>(r0) 
(define-const var1351 var834 (schema/-488737871 (cast-from-var191-to-var3030 var146))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Method: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Method: java.lang.reflect.Method method> 
(assert (not (= var1351 null-var834))) ; Negate: Cond: $r3 == null  
(declare-const var1044 var3425) ; Statement: $r8 := @caughtexception 
(assert (not (= var1044 null-var3425)))
(define-const var1625 var3625 var3625-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var134 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var134)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var134!1 String)
(assert (= var134!1 ""))
(assert true)
(define-const var2642 String (append/672562846 var134!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var134!2 String)
(assert (= var134!2 (str.++ var134!1 "set ")))
(define-const var1262 String (fieldName/-488737871 (cast-from-var191-to-var3030 var146))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Method: java.lang.String fieldName> 
(assert true)
(define-const var2883 String (append/672562846 var2642 var1262)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2642!1 String)
(assert (= var2642!1 (str.++ var2642 var1262)))
(assert true)
(define-const var630 String (append/672562846 var2883 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2883!1 String)
(assert (= var2883!1 (str.++ var2883 " error")))
(assert true)
(define-const var2638 String (toString/-2075883882 var630)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1625 var2638 (cast-from-var3425-to-var724 var1044))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var1625!1 var3625)
(declare-const var2638!1 String)
(declare-const var1044!1 var3425)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2520_toByte/2021493365=([java.lang.Object], java.lang.Byte), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var191-to-var3030=([com.alibaba.fastjson2.reader.FieldReaderInt8Method], com.alibaba.fastjson2.reader.FieldReader), var3625-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3425-to-var724=([java.lang.Exception], java.lang.Throwable)}
; {var191=com.alibaba.fastjson2.reader.FieldReaderInt8Method, var146=r2, var3962=java.lang.Object, var792=r4, var2366=r0, var2520=com.alibaba.fastjson2.util.TypeUtils, var2322=r1, var834=com.alibaba.fastjson2.schema.JSONSchema, var3030=com.alibaba.fastjson2.reader.FieldReader, var1351=$r3, var3425=java.lang.Exception, var1044=$r8, var3625=com.alibaba.fastjson2.JSONException, var1625=$r9, var134=$r10, var2642=$r12, var1262=$r11, var2883=$r13, var630=$r14, var2638=$r15, var724=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt8Method=var191, r2=var146, java.lang.Object=var3962, r4=var792, r0=var2366, com.alibaba.fastjson2.util.TypeUtils=var2520, r1=var2322, com.alibaba.fastjson2.schema.JSONSchema=var834, com.alibaba.fastjson2.reader.FieldReader=var3030, $r3=var1351, java.lang.Exception=var3425, $r8=var1044, com.alibaba.fastjson2.JSONException=var3625, $r9=var1625, $r10=var134, $r12=var2642, $r11=var1262, $r13=var2883, $r14=var630, $r15=var2638, java.lang.Throwable=var724}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt8Method;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Byte toByte(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Method: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Method: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt8Method: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 2