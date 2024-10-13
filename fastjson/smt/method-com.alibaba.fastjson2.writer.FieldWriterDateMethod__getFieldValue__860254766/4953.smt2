(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3147 0)
(declare-sort var2019 0)
(declare-sort var1838 0)
(declare-sort var3401 0)
(declare-sort var3435 0)
(declare-sort var487 0)
(declare-sort var1775 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-2048851183 (var3401) var1838)
(declare-fun cast-from-var3147-to-var3401 (var3147) var3401)
(declare-fun arr-var2019-init () (Array Int var2019))
(declare-fun var487-init () var487)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var3401) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var487 String var1775) void)
(declare-fun cast-from-var3435-to-var1775 (var3435) var1775)
(declare-const null-var3147 var3147)
(declare-const null-var2019 var2019)
(declare-const null-var3435 var3435)
(declare-const var389 var3147) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterDateMethod 
(assert (not (= var389 null-var3147)))
(declare-const var906 var2019) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var906 null-var2019)))
(define-const var2810 var1838 (method/-2048851183 (cast-from-var3147-to-var3401 var389))) ; Statement: $r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterDateMethod: java.lang.reflect.Method method> 
(define-const var1453 (Array Int var2019) arr-var2019-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1257 var3435) ; Statement: $r5 := @caughtexception 
(assert (not (= var1257 null-var3435)))
(define-const var1566 var487 var487-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var3537 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3537)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3537!1 String)
(assert (= var3537!1 ""))
(assert true)
(define-const var1746 String (append/672562846 var3537!1 "invoke getter method error, ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ") 
(declare-const var3537!2 String)
(assert (= var3537!2 (str.++ var3537!1 "invoke getter method error, ")))
(define-const var136 String (fieldName/-2048851183 (cast-from-var3147-to-var3401 var389))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterDateMethod: java.lang.String fieldName> 
(assert true)
(define-const var1795 String (append/672562846 var1746 var136)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1746!1 String)
(assert (= var1746!1 (str.++ var1746 var136)))
(assert true)
(define-const var3229 String (toString/-2075883882 var1795)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1566 var3229 (cast-from-var3435-to-var1775 var1257))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var1566!1 var487)
(declare-const var3229!1 String)
(declare-const var1257!1 var3435)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var3147-to-var3401=([com.alibaba.fastjson2.writer.FieldWriterDateMethod], com.alibaba.fastjson2.writer.FieldWriter), arr-var2019-init=([], java.lang.Object[]), var487-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3435-to-var1775=([java.lang.Exception], java.lang.Throwable)}
; {var3147=com.alibaba.fastjson2.writer.FieldWriterDateMethod, var389=r0, var2019=java.lang.Object, var906=r1, var1838=java.lang.reflect.Method, var3401=com.alibaba.fastjson2.writer.FieldWriter, var2810=$r3, var1453=$r2, var3435=java.lang.Exception, var1257=$r5, var487=com.alibaba.fastjson2.JSONException, var1566=$r6, var3537=$r7, var1746=$r9, var136=$r8, var1795=$r10, var3229=$r11, var1775=java.lang.Throwable}
; {com.alibaba.fastjson2.writer.FieldWriterDateMethod=var3147, r0=var389, java.lang.Object=var2019, r1=var906, java.lang.reflect.Method=var1838, com.alibaba.fastjson2.writer.FieldWriter=var3401, $r3=var2810, $r2=var1453, java.lang.Exception=var3435, $r5=var1257, com.alibaba.fastjson2.JSONException=var487, $r6=var1566, $r7=var3537, $r9=var1746, $r8=var136, $r10=var1795, $r11=var3229, java.lang.Throwable=var1775}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterDateMethod;	r1 := @parameter0: java.lang.Object;	$r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterDateMethod: java.lang.reflect.Method method>;	$r2 = newarray (java.lang.Object)[0];	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ");	$r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterDateMethod: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2