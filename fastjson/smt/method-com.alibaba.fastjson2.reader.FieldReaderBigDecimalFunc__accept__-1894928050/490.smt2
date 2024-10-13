(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3675 0)
(declare-sort var3580 0)
(declare-sort var3778 0)
(declare-sort var1391 0)
(declare-sort var2274 0)
(declare-sort var3332 0)
(declare-sort var1416 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var1391) var3778)
(declare-fun cast-from-var3675-to-var1391 (var3675) var1391)
(declare-fun var3332-init () var3332)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/2110042505 (var1391) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3332 String var1416) void)
(declare-fun cast-from-var2274-to-var1416 (var2274) var1416)
(declare-const null-var3675 var3675)
(declare-const null-var3580 var3580)
(declare-const null-Int Int)
(declare-const null-var3778 var3778)
(declare-const null-var2274 var2274)
(declare-const var2308 var3675) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc 
(assert (not (= var2308 null-var3675)))
(declare-const var1929 var3580) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1929 null-var3580)))
(declare-const var1553 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var1553 null-Int)))
(define-const var3895 var3778 (schema/-488737871 (cast-from-var3675-to-var1391 var2308))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc: java.util.function.BiConsumer function> 
(assert (not (= var3895 null-var3778))) ; Negate: Cond: $r1 == null  
(declare-const var2111 var2274) ; Statement: $r6 := @caughtexception 
(assert (not (= var2111 null-var2274)))
(define-const var958 var3332 var3332-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var3741 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3741)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3741!1 String)
(assert (= var3741!1 ""))
(assert true)
(define-const var1748 String (append/672562846 var3741!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3741!2 String)
(assert (= var3741!2 (str.++ var3741!1 "set ")))
(assert true)
(define-const var3819 String (toString/2110042505 (cast-from-var3675-to-var1391 var2308))) ; Statement: $r9 = specialinvoke r0.<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>() 
(assert true)
(define-const var3364 String (append/672562846 var1748 var3819)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1748!1 String)
(assert (= var1748!1 (str.++ var1748 var3819)))
(assert true)
(define-const var1608 String (append/672562846 var3364 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3364!1 String)
(assert (= var3364!1 (str.++ var3364 " error")))
(assert true)
(define-const var3684 String (toString/-2075883882 var1608)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var958 var3684 (cast-from-var2274-to-var1416 var2111))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var958!1 var3332)
(declare-const var3684!1 String)
(declare-const var2111!1 var2274)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3675-to-var1391=([com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc], com.alibaba.fastjson2.reader.FieldReader), var3332-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/2110042505=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2274-to-var1416=([java.lang.Exception], java.lang.Throwable)}
; {var3675=com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc, var2308=r0, var3580=java.lang.Object, var1929=r2, var1553=l0, var3778=com.alibaba.fastjson2.schema.JSONSchema, var1391=com.alibaba.fastjson2.reader.FieldReader, var3895=$r1, var2274=java.lang.Exception, var2111=$r6, var3332=com.alibaba.fastjson2.JSONException, var958=$r7, var3741=$r8, var1748=$r10, var3819=$r9, var3364=$r11, var1608=$r12, var3684=$r13, var1416=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc=var3675, r0=var2308, java.lang.Object=var3580, r2=var1929, l0=var1553, com.alibaba.fastjson2.schema.JSONSchema=var3778, com.alibaba.fastjson2.reader.FieldReader=var1391, $r1=var3895, java.lang.Exception=var2274, $r6=var2111, com.alibaba.fastjson2.JSONException=var3332, $r7=var958, $r8=var3741, $r10=var1748, $r9=var3819, $r11=var3364, $r12=var1608, $r13=var3684, java.lang.Throwable=var1416}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc;	r2 := @parameter0: java.lang.Object;	l0 := @parameter1: long;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalFunc: java.util.function.BiConsumer function>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = specialinvoke r0.<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 2