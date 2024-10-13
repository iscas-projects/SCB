(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2194 0)
(declare-sort var2378 0)
(declare-sort var1194 0)
(declare-sort var1485 0)
(declare-sort var15 0)
(declare-sort var2067 0)
(declare-sort var2001 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-2048851183 (var1485) var1194)
(declare-fun cast-from-var2194-to-var1485 (var2194) var1485)
(declare-fun arr-var2378-init () (Array Int var2378))
(declare-fun var2067-init () var2067)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var1485) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2067 String var2001) void)
(declare-fun cast-from-var15-to-var2001 (var15) var2001)
(declare-const null-var2194 var2194)
(declare-const null-var2378 var2378)
(declare-const null-var15 var15)
(declare-const var256 var2194) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterStringMethod 
(assert (not (= var256 null-var2194)))
(declare-const var496 var2378) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var496 null-var2378)))
(define-const var1621 var1194 (method/-2048851183 (cast-from-var2194-to-var1485 var256))) ; Statement: $r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterStringMethod: java.lang.reflect.Method method> 
(define-const var3930 (Array Int var2378) arr-var2378-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1413 var15) ; Statement: $r5 := @caughtexception 
(assert (not (= var1413 null-var15)))
(define-const var2537 var2067 var2067-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var2276 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2276)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2276!1 String)
(assert (= var2276!1 ""))
(assert true)
(define-const var372 String (append/672562846 var2276!1 "invoke getter method error, ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ") 
(declare-const var2276!2 String)
(assert (= var2276!2 (str.++ var2276!1 "invoke getter method error, ")))
(define-const var149 String (fieldName/-2048851183 (cast-from-var2194-to-var1485 var256))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterStringMethod: java.lang.String fieldName> 
(assert true)
(define-const var2732 String (append/672562846 var372 var149)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var372!1 String)
(assert (= var372!1 (str.++ var372 var149)))
(assert true)
(define-const var1962 String (toString/-2075883882 var2732)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2537 var1962 (cast-from-var15-to-var2001 var1413))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var2537!1 var2067)
(declare-const var1962!1 String)
(declare-const var1413!1 var15)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var2194-to-var1485=([com.alibaba.fastjson2.writer.FieldWriterStringMethod], com.alibaba.fastjson2.writer.FieldWriter), arr-var2378-init=([], java.lang.Object[]), var2067-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var15-to-var2001=([java.lang.Exception], java.lang.Throwable)}
; {var2194=com.alibaba.fastjson2.writer.FieldWriterStringMethod, var256=r0, var2378=java.lang.Object, var496=r1, var1194=java.lang.reflect.Method, var1485=com.alibaba.fastjson2.writer.FieldWriter, var1621=$r3, var3930=$r2, var15=java.lang.Exception, var1413=$r5, var2067=com.alibaba.fastjson2.JSONException, var2537=$r6, var2276=$r7, var372=$r9, var149=$r8, var2732=$r10, var1962=$r11, var2001=java.lang.Throwable}
; {com.alibaba.fastjson2.writer.FieldWriterStringMethod=var2194, r0=var256, java.lang.Object=var2378, r1=var496, java.lang.reflect.Method=var1194, com.alibaba.fastjson2.writer.FieldWriter=var1485, $r3=var1621, $r2=var3930, java.lang.Exception=var15, $r5=var1413, com.alibaba.fastjson2.JSONException=var2067, $r6=var2537, $r7=var2276, $r9=var372, $r8=var149, $r10=var2732, $r11=var1962, java.lang.Throwable=var2001}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterStringMethod;	r1 := @parameter0: java.lang.Object;	$r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterStringMethod: java.lang.reflect.Method method>;	$r2 = newarray (java.lang.Object)[0];	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ");	$r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterStringMethod: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2