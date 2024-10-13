(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3467 0)
(declare-sort var3924 0)
(declare-sort var1717 0)
(declare-sort var3896 0)
(declare-sort var326 0)
(declare-sort var3418 0)
(declare-sort var1032 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-2048851183 (var3896) var1717)
(declare-fun cast-from-var3467-to-var3896 (var3467) var3896)
(declare-fun arr-var3924-init () (Array Int var3924))
(declare-fun var3418-init () var3418)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var3896) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3418 String var1032) void)
(declare-fun cast-from-var326-to-var1032 (var326) var1032)
(declare-const null-var3467 var3467)
(declare-const null-var3924 var3924)
(declare-const null-var326 var326)
(declare-const var1376 var3467) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterMillisMethod 
(assert (not (= var1376 null-var3467)))
(declare-const var3364 var3924) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3364 null-var3924)))
(define-const var2283 var1717 (method/-2048851183 (cast-from-var3467-to-var3896 var1376))) ; Statement: $r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterMillisMethod: java.lang.reflect.Method method> 
(define-const var3400 (Array Int var3924) arr-var3924-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3238 var326) ; Statement: $r5 := @caughtexception 
(assert (not (= var3238 null-var326)))
(define-const var3507 var3418 var3418-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var1663 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1663)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1663!1 String)
(assert (= var1663!1 ""))
(assert true)
(define-const var1899 String (append/672562846 var1663!1 "invoke getter method error, ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ") 
(declare-const var1663!2 String)
(assert (= var1663!2 (str.++ var1663!1 "invoke getter method error, ")))
(define-const var972 String (fieldName/-2048851183 (cast-from-var3467-to-var3896 var1376))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterMillisMethod: java.lang.String fieldName> 
(assert true)
(define-const var1575 String (append/672562846 var1899 var972)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1899!1 String)
(assert (= var1899!1 (str.++ var1899 var972)))
(assert true)
(define-const var1243 String (toString/-2075883882 var1575)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3507 var1243 (cast-from-var326-to-var1032 var3238))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var3507!1 var3418)
(declare-const var1243!1 String)
(declare-const var3238!1 var326)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var3467-to-var3896=([com.alibaba.fastjson2.writer.FieldWriterMillisMethod], com.alibaba.fastjson2.writer.FieldWriter), arr-var3924-init=([], java.lang.Object[]), var3418-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var326-to-var1032=([java.lang.Exception], java.lang.Throwable)}
; {var3467=com.alibaba.fastjson2.writer.FieldWriterMillisMethod, var1376=r0, var3924=java.lang.Object, var3364=r1, var1717=java.lang.reflect.Method, var3896=com.alibaba.fastjson2.writer.FieldWriter, var2283=$r3, var3400=$r2, var326=java.lang.Exception, var3238=$r5, var3418=com.alibaba.fastjson2.JSONException, var3507=$r6, var1663=$r7, var1899=$r9, var972=$r8, var1575=$r10, var1243=$r11, var1032=java.lang.Throwable}
; {com.alibaba.fastjson2.writer.FieldWriterMillisMethod=var3467, r0=var1376, java.lang.Object=var3924, r1=var3364, java.lang.reflect.Method=var1717, com.alibaba.fastjson2.writer.FieldWriter=var3896, $r3=var2283, $r2=var3400, java.lang.Exception=var326, $r5=var3238, com.alibaba.fastjson2.JSONException=var3418, $r6=var3507, $r7=var1663, $r9=var1899, $r8=var972, $r10=var1575, $r11=var1243, java.lang.Throwable=var1032}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterMillisMethod;	r1 := @parameter0: java.lang.Object;	$r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterMillisMethod: java.lang.reflect.Method method>;	$r2 = newarray (java.lang.Object)[0];	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ");	$r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterMillisMethod: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2