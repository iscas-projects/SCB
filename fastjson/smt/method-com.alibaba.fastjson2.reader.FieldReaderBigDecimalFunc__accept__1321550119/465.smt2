(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1955 0)
(declare-sort var1718 0)
(declare-sort var1452 0)
(declare-sort var2810 0)
(declare-sort var828 0)
(declare-sort var2219 0)
(declare-sort var3549 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var2810) var1452)
(declare-fun cast-from-var1955-to-var2810 (var1955) var2810)
(declare-fun var2219-init () var2219)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/2110042505 (var2810) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2219 String var3549) void)
(declare-fun cast-from-var828-to-var3549 (var828) var3549)
(declare-const null-var1955 var1955)
(declare-const null-var1718 var1718)
(declare-const null-Int Int)
(declare-const null-var1452 var1452)
(declare-const null-var828 var828)
(declare-const var2237 var1955) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc 
(assert (not (= var2237 null-var1955)))
(declare-const var330 var1718) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var330 null-var1718)))
(declare-const var1080 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1080 null-Int)))
(define-const var1958 var1452 (schema/-488737871 (cast-from-var1955-to-var2810 var2237))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc: java.util.function.BiConsumer function> 
(assert (not (= var1958 null-var1452))) ; Negate: Cond: $r1 == null  
(declare-const var517 var828) ; Statement: $r6 := @caughtexception 
(assert (not (= var517 null-var828)))
(define-const var2043 var2219 var2219-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var224 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var224)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var224!1 String)
(assert (= var224!1 ""))
(assert true)
(define-const var772 String (append/672562846 var224!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var224!2 String)
(assert (= var224!2 (str.++ var224!1 "set ")))
(assert true)
(define-const var418 String (toString/2110042505 (cast-from-var1955-to-var2810 var2237))) ; Statement: $r9 = specialinvoke r0.<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>() 
(assert true)
(define-const var1976 String (append/672562846 var772 var418)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var772!1 String)
(assert (= var772!1 (str.++ var772 var418)))
(assert true)
(define-const var2906 String (append/672562846 var1976 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1976!1 String)
(assert (= var1976!1 (str.++ var1976 " error")))
(assert true)
(define-const var3309 String (toString/-2075883882 var2906)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2043 var3309 (cast-from-var828-to-var3549 var517))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var2043!1 var2219)
(declare-const var3309!1 String)
(declare-const var517!1 var828)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1955-to-var2810=([com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc], com.alibaba.fastjson2.reader.FieldReader), var2219-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/2110042505=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var828-to-var3549=([java.lang.Exception], java.lang.Throwable)}
; {var1955=com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc, var2237=r0, var1718=java.lang.Object, var330=r2, var1080=i0, var1452=com.alibaba.fastjson2.schema.JSONSchema, var2810=com.alibaba.fastjson2.reader.FieldReader, var1958=$r1, var828=java.lang.Exception, var517=$r6, var2219=com.alibaba.fastjson2.JSONException, var2043=$r7, var224=$r8, var772=$r10, var418=$r9, var1976=$r11, var2906=$r12, var3309=$r13, var3549=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc=var1955, r0=var2237, java.lang.Object=var1718, r2=var330, i0=var1080, com.alibaba.fastjson2.schema.JSONSchema=var1452, com.alibaba.fastjson2.reader.FieldReader=var2810, $r1=var1958, java.lang.Exception=var828, $r6=var517, com.alibaba.fastjson2.JSONException=var2219, $r7=var2043, $r8=var224, $r10=var772, $r9=var418, $r11=var1976, $r12=var2906, $r13=var3309, java.lang.Throwable=var3549}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc;	r2 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc: java.util.function.BiConsumer function>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = specialinvoke r0.<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 2