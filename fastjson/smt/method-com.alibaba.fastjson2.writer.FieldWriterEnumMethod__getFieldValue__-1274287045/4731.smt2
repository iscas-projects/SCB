(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1712 0)
(declare-sort var3811 0)
(declare-sort var2427 0)
(declare-sort var1558 0)
(declare-sort var3033 0)
(declare-sort var3700 0)
(declare-sort var634 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-2048851183 (var1558) var2427)
(declare-fun cast-from-var1712-to-var1558 (var1712) var1558)
(declare-fun arr-var3811-init () (Array Int var3811))
(declare-fun var3700-init () var3700)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var1558) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3700 String var634) void)
(declare-fun cast-from-var3033-to-var634 (var3033) var634)
(declare-const null-var1712 var1712)
(declare-const null-var3811 var3811)
(declare-const null-var3033 var3033)
(declare-const var3658 var1712) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterEnumMethod 
(assert (not (= var3658 null-var1712)))
(declare-const var2070 var3811) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2070 null-var3811)))
(define-const var1851 var2427 (method/-2048851183 (cast-from-var1712-to-var1558 var3658))) ; Statement: $r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnumMethod: java.lang.reflect.Method method> 
(define-const var3863 (Array Int var3811) arr-var3811-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2571 var3033) ; Statement: $r5 := @caughtexception 
(assert (not (= var2571 null-var3033)))
(define-const var2315 var3700 var3700-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var879 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var879)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var879!1 String)
(assert (= var879!1 ""))
(assert true)
(define-const var2637 String (append/672562846 var879!1 "invoke getter method error, ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ") 
(declare-const var879!2 String)
(assert (= var879!2 (str.++ var879!1 "invoke getter method error, ")))
(define-const var2175 String (fieldName/-2048851183 (cast-from-var1712-to-var1558 var3658))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnumMethod: java.lang.String fieldName> 
(assert true)
(define-const var933 String (append/672562846 var2637 var2175)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2637!1 String)
(assert (= var2637!1 (str.++ var2637 var2175)))
(assert true)
(define-const var169 String (toString/-2075883882 var933)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2315 var169 (cast-from-var3033-to-var634 var2571))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var2315!1 var3700)
(declare-const var169!1 String)
(declare-const var2571!1 var3033)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var1712-to-var1558=([com.alibaba.fastjson2.writer.FieldWriterEnumMethod], com.alibaba.fastjson2.writer.FieldWriter), arr-var3811-init=([], java.lang.Object[]), var3700-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3033-to-var634=([java.lang.Exception], java.lang.Throwable)}
; {var1712=com.alibaba.fastjson2.writer.FieldWriterEnumMethod, var3658=r0, var3811=java.lang.Object, var2070=r1, var2427=java.lang.reflect.Method, var1558=com.alibaba.fastjson2.writer.FieldWriter, var1851=$r3, var3863=$r2, var3033=java.lang.Exception, var2571=$r5, var3700=com.alibaba.fastjson2.JSONException, var2315=$r6, var879=$r7, var2637=$r9, var2175=$r8, var933=$r10, var169=$r11, var634=java.lang.Throwable}
; {com.alibaba.fastjson2.writer.FieldWriterEnumMethod=var1712, r0=var3658, java.lang.Object=var3811, r1=var2070, java.lang.reflect.Method=var2427, com.alibaba.fastjson2.writer.FieldWriter=var1558, $r3=var1851, $r2=var3863, java.lang.Exception=var3033, $r5=var2571, com.alibaba.fastjson2.JSONException=var3700, $r6=var2315, $r7=var879, $r9=var2637, $r8=var2175, $r10=var933, $r11=var169, java.lang.Throwable=var634}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterEnumMethod;	r1 := @parameter0: java.lang.Object;	$r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnumMethod: java.lang.reflect.Method method>;	$r2 = newarray (java.lang.Object)[0];	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ");	$r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterEnumMethod: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2