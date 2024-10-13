(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2921 0)
(declare-sort var2136 0)
(declare-sort var2367 0)
(declare-sort var3685 0)
(declare-sort var1607 0)
(declare-sort var2715 0)
(declare-sort var268 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-2048851183 (var3685) var2367)
(declare-fun cast-from-var2921-to-var3685 (var2921) var3685)
(declare-fun arr-var2136-init () (Array Int var2136))
(declare-fun var2715-init () var2715)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var3685) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2715 String var268) void)
(declare-fun cast-from-var1607-to-var268 (var1607) var268)
(declare-const null-var2921 var2921)
(declare-const null-var2136 var2136)
(declare-const null-var1607 var1607)
(declare-const var1502 var2921) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterListMethod 
(assert (not (= var1502 null-var2921)))
(declare-const var3129 var2136) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3129 null-var2136)))
(define-const var1044 var2367 (method/-2048851183 (cast-from-var2921-to-var3685 var1502))) ; Statement: $r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterListMethod: java.lang.reflect.Method method> 
(define-const var3993 (Array Int var2136) arr-var2136-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1377 var1607) ; Statement: $r5 := @caughtexception 
(assert (not (= var1377 null-var1607)))
(define-const var3879 var2715 var2715-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var3025 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3025)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3025!1 String)
(assert (= var3025!1 ""))
(assert true)
(define-const var1991 String (append/672562846 var3025!1 "invoke getter method error, ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ") 
(declare-const var3025!2 String)
(assert (= var3025!2 (str.++ var3025!1 "invoke getter method error, ")))
(define-const var3011 String (fieldName/-2048851183 (cast-from-var2921-to-var3685 var1502))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterListMethod: java.lang.String fieldName> 
(assert true)
(define-const var342 String (append/672562846 var1991 var3011)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1991!1 String)
(assert (= var1991!1 (str.++ var1991 var3011)))
(assert true)
(define-const var3165 String (toString/-2075883882 var342)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3879 var3165 (cast-from-var1607-to-var268 var1377))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var3879!1 var2715)
(declare-const var3165!1 String)
(declare-const var1377!1 var1607)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var2921-to-var3685=([com.alibaba.fastjson2.writer.FieldWriterListMethod], com.alibaba.fastjson2.writer.FieldWriter), arr-var2136-init=([], java.lang.Object[]), var2715-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1607-to-var268=([java.lang.Exception], java.lang.Throwable)}
; {var2921=com.alibaba.fastjson2.writer.FieldWriterListMethod, var1502=r0, var2136=java.lang.Object, var3129=r1, var2367=java.lang.reflect.Method, var3685=com.alibaba.fastjson2.writer.FieldWriter, var1044=$r3, var3993=$r2, var1607=java.lang.Exception, var1377=$r5, var2715=com.alibaba.fastjson2.JSONException, var3879=$r6, var3025=$r7, var1991=$r9, var3011=$r8, var342=$r10, var3165=$r11, var268=java.lang.Throwable}
; {com.alibaba.fastjson2.writer.FieldWriterListMethod=var2921, r0=var1502, java.lang.Object=var2136, r1=var3129, java.lang.reflect.Method=var2367, com.alibaba.fastjson2.writer.FieldWriter=var3685, $r3=var1044, $r2=var3993, java.lang.Exception=var1607, $r5=var1377, com.alibaba.fastjson2.JSONException=var2715, $r6=var3879, $r7=var3025, $r9=var1991, $r8=var3011, $r10=var342, $r11=var3165, java.lang.Throwable=var268}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterListMethod;	r1 := @parameter0: java.lang.Object;	$r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterListMethod: java.lang.reflect.Method method>;	$r2 = newarray (java.lang.Object)[0];	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ");	$r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterListMethod: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2