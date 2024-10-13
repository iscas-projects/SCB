(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3612 0)
(declare-sort var3668 0)
(declare-sort var3204 0)
(declare-sort var2599 0)
(declare-sort var3157 0)
(declare-sort var434 0)
(declare-sort var180 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-2048851183 (var2599) var3204)
(declare-fun cast-from-var3612-to-var2599 (var3612) var2599)
(declare-fun arr-var3668-init () (Array Int var3668))
(declare-fun var434-init () var434)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var2599) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var434 String var180) void)
(declare-fun cast-from-var3157-to-var180 (var3157) var180)
(declare-const null-var3612 var3612)
(declare-const null-var3668 var3668)
(declare-const null-var3157 var3157)
(declare-const var3097 var3612) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterObjectArrayMethod 
(assert (not (= var3097 null-var3612)))
(declare-const var1191 var3668) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1191 null-var3668)))
(define-const var3236 var3204 (method/-2048851183 (cast-from-var3612-to-var2599 var3097))) ; Statement: $r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterObjectArrayMethod: java.lang.reflect.Method method> 
(define-const var1691 (Array Int var3668) arr-var3668-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var627 var3157) ; Statement: $r5 := @caughtexception 
(assert (not (= var627 null-var3157)))
(define-const var3919 var434 var434-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var1385 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1385)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1385!1 String)
(assert (= var1385!1 ""))
(assert true)
(define-const var383 String (append/672562846 var1385!1 "field.get error, ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ") 
(declare-const var1385!2 String)
(assert (= var1385!2 (str.++ var1385!1 "field.get error, ")))
(define-const var686 String (fieldName/-2048851183 (cast-from-var3612-to-var2599 var3097))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterObjectArrayMethod: java.lang.String fieldName> 
(assert true)
(define-const var2405 String (append/672562846 var383 var686)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var383!1 String)
(assert (= var383!1 (str.++ var383 var686)))
(assert true)
(define-const var2615 String (toString/-2075883882 var2405)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3919 var2615 (cast-from-var3157-to-var180 var627))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var3919!1 var434)
(declare-const var2615!1 String)
(declare-const var627!1 var3157)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var3612-to-var2599=([com.alibaba.fastjson2.writer.FieldWriterObjectArrayMethod], com.alibaba.fastjson2.writer.FieldWriter), arr-var3668-init=([], java.lang.Object[]), var434-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3157-to-var180=([java.lang.Exception], java.lang.Throwable)}
; {var3612=com.alibaba.fastjson2.writer.FieldWriterObjectArrayMethod, var3097=r0, var3668=java.lang.Object, var1191=r1, var3204=java.lang.reflect.Method, var2599=com.alibaba.fastjson2.writer.FieldWriter, var3236=$r3, var1691=$r2, var3157=java.lang.Exception, var627=$r5, var434=com.alibaba.fastjson2.JSONException, var3919=$r6, var1385=$r7, var383=$r9, var686=$r8, var2405=$r10, var2615=$r11, var180=java.lang.Throwable}
; {com.alibaba.fastjson2.writer.FieldWriterObjectArrayMethod=var3612, r0=var3097, java.lang.Object=var3668, r1=var1191, java.lang.reflect.Method=var3204, com.alibaba.fastjson2.writer.FieldWriter=var2599, $r3=var3236, $r2=var1691, java.lang.Exception=var3157, $r5=var627, com.alibaba.fastjson2.JSONException=var434, $r6=var3919, $r7=var1385, $r9=var383, $r8=var686, $r10=var2405, $r11=var2615, java.lang.Throwable=var180}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterObjectArrayMethod;	r1 := @parameter0: java.lang.Object;	$r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterObjectArrayMethod: java.lang.reflect.Method method>;	$r2 = newarray (java.lang.Object)[0];	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ");	$r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterObjectArrayMethod: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2