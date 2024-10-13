(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2176 0)
(declare-sort var1636 0)
(declare-sort var253 0)
(declare-sort var3841 0)
(declare-sort var1667 0)
(declare-sort var3560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3841-init () var3841)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1667) String)
(declare-fun cast-from-var2176-to-var1667 (var2176) var1667)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3841 String var3560) void)
(declare-fun cast-from-var253-to-var3560 (var253) var3560)
(declare-const null-var2176 var2176)
(declare-const null-var1636 var1636)
(declare-const null-var253 var253)
(declare-const var215 var2176) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicBooleanFieldReadOnly 
(assert (not (= var215 null-var2176)))
(declare-const var3145 var1636) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3145 null-var1636)))
(declare-const var2461 var1636) ; Statement: r14 := @parameter1: java.lang.Object 
(assert (not (= var2461 null-var1636)))
 ; Statement: if r14 != null goto $r2 = r0.<com.alibaba.fastjson2.reader.FieldReaderAtomicBooleanFieldReadOnly: java.lang.reflect.Field field> 
(assert (not (not (= var2461 null-var1636)))) ; Negate: Cond: r14 != null  
(declare-const var987 var253) ; Statement: $r6 := @caughtexception 
(assert (not (= var987 null-var253)))
(define-const var890 var3841 var3841-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var3415 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3415)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3415!1 String)
(assert (= var3415!1 ""))
(assert true)
(define-const var935 String (append/672562846 var3415!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3415!2 String)
(assert (= var3415!2 (str.++ var3415!1 "set ")))
(define-const var2357 String (fieldName/-488737871 (cast-from-var2176-to-var1667 var215))) ; Statement: $r9 = r0.<com.alibaba.fastjson2.reader.FieldReaderAtomicBooleanFieldReadOnly: java.lang.String fieldName> 
(assert true)
(define-const var2424 String (append/672562846 var935 var2357)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var935!1 String)
(assert (= var935!1 (str.++ var935 var2357)))
(assert true)
(define-const var1304 String (append/672562846 var2424 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2424!1 String)
(assert (= var2424!1 (str.++ var2424 " error")))
(assert true)
(define-const var3031 String (toString/-2075883882 var1304)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var890 var3031 (cast-from-var253-to-var3560 var987))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var890!1 var3841)
(declare-const var3031!1 String)
(declare-const var987!1 var253)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3841-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var2176-to-var1667=([com.alibaba.fastjson2.reader.FieldReaderAtomicBooleanFieldReadOnly], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var253-to-var3560=([java.lang.Exception], java.lang.Throwable)}
; {var2176=com.alibaba.fastjson2.reader.FieldReaderAtomicBooleanFieldReadOnly, var215=r0, var1636=java.lang.Object, var3145=r1, var2461=r14, var253=java.lang.Exception, var987=$r6, var3841=com.alibaba.fastjson2.JSONException, var890=$r7, var3415=$r8, var935=$r10, var1667=com.alibaba.fastjson2.reader.FieldReader, var2357=$r9, var2424=$r11, var1304=$r12, var3031=$r13, var3560=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderAtomicBooleanFieldReadOnly=var2176, r0=var215, java.lang.Object=var1636, r1=var3145, r14=var2461, java.lang.Exception=var253, $r6=var987, com.alibaba.fastjson2.JSONException=var3841, $r7=var890, $r8=var3415, $r10=var935, com.alibaba.fastjson2.reader.FieldReader=var1667, $r9=var2357, $r11=var2424, $r12=var1304, $r13=var3031, java.lang.Throwable=var3560}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicBooleanFieldReadOnly;	r1 := @parameter0: java.lang.Object;	r14 := @parameter1: java.lang.Object;	if r14 != null goto $r2 = r0.<com.alibaba.fastjson2.reader.FieldReaderAtomicBooleanFieldReadOnly: java.lang.reflect.Field field>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r0.<com.alibaba.fastjson2.reader.FieldReaderAtomicBooleanFieldReadOnly: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 2