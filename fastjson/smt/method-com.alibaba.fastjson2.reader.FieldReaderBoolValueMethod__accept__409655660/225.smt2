(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3829 0)
(declare-sort var3564 0)
(declare-sort var3357 0)
(declare-sort var857 0)
(declare-sort var1436 0)
(declare-sort var460 0)
(declare-sort var3398 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3357_toBooleanValue/1508646120 (var3564) Bool)
(declare-fun var1436-init () var1436)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var460) String)
(declare-fun cast-from-var3829-to-var460 (var3829) var460)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1436 String var3398) void)
(declare-fun cast-from-var857-to-var3398 (var857) var3398)
(declare-const null-var3829 var3829)
(declare-const null-var3564 var3564)
(declare-const null-var857 var857)
(declare-const var1448 var3829) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod 
(assert (not (= var1448 null-var3829)))
(declare-const var20 var3564) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var20 null-var3564)))
(declare-const var1912 var3564) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1912 null-var3564)))
(define-const var649 Bool (var3357_toBooleanValue/1508646120 var1912)) ; Statement: z0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: boolean toBooleanValue(java.lang.Object)>(r0) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2520 var857) ; Statement: $r6 := @caughtexception 
(assert (not (= var2520 null-var857)))
(define-const var625 var1436 var1436-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var1960 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1960)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1960!1 String)
(assert (= var1960!1 ""))
(assert true)
(define-const var3005 String (append/672562846 var1960!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1960!2 String)
(assert (= var1960!2 (str.++ var1960!1 "set ")))
(define-const var3796 String (fieldName/-488737871 (cast-from-var3829-to-var460 var1448))) ; Statement: $r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var1401 String (append/672562846 var3005 var3796)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3005!1 String)
(assert (= var3005!1 (str.++ var3005 var3796)))
(assert true)
(define-const var1787 String (append/672562846 var1401 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1401!1 String)
(assert (= var1401!1 (str.++ var1401 " error")))
(assert true)
(define-const var2508 String (toString/-2075883882 var1787)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var625 var2508 (cast-from-var857-to-var3398 var2520))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var625!1 var1436)
(declare-const var2508!1 String)
(declare-const var2520!1 var857)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3357_toBooleanValue/1508646120=([java.lang.Object], boolean), var1436-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var3829-to-var460=([com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var857-to-var3398=([java.lang.Exception], java.lang.Throwable)}
; {var3829=com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod, var1448=r1, var3564=java.lang.Object, var20=r2, var1912=r0, var3357=com.alibaba.fastjson2.util.TypeUtils, var649=z0, var857=java.lang.Exception, var2520=$r6, var1436=com.alibaba.fastjson2.JSONException, var625=$r7, var1960=$r8, var3005=$r10, var460=com.alibaba.fastjson2.reader.FieldReader, var3796=$r9, var1401=$r11, var1787=$r12, var2508=$r13, var3398=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod=var3829, r1=var1448, java.lang.Object=var3564, r2=var20, r0=var1912, com.alibaba.fastjson2.util.TypeUtils=var3357, z0=var649, java.lang.Exception=var857, $r6=var2520, com.alibaba.fastjson2.JSONException=var1436, $r7=var625, $r8=var1960, $r10=var3005, com.alibaba.fastjson2.reader.FieldReader=var460, $r9=var3796, $r11=var1401, $r12=var1787, $r13=var2508, java.lang.Throwable=var3398}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod;	r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	z0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: boolean toBooleanValue(java.lang.Object)>(r0);	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 2