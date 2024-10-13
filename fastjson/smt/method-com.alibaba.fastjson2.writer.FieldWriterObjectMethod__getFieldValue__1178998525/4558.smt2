(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var230 0)
(declare-sort var1535 0)
(declare-sort var3630 0)
(declare-sort var760 0)
(declare-sort var2760 0)
(declare-sort var2226 0)
(declare-sort var2216 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-2048851183 (var760) var3630)
(declare-fun cast-from-var230-to-var760 (var230) var760)
(declare-fun arr-var1535-init () (Array Int var1535))
(declare-fun var2226-init () var2226)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var760) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2226 String var2216) void)
(declare-fun cast-from-var2760-to-var2216 (var2760) var2216)
(declare-const null-var230 var230)
(declare-const null-var1535 var1535)
(declare-const null-var2760 var2760)
(declare-const var2463 var230) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterObjectMethod 
(assert (not (= var2463 null-var230)))
(declare-const var528 var1535) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var528 null-var1535)))
(define-const var2614 var3630 (method/-2048851183 (cast-from-var230-to-var760 var2463))) ; Statement: $r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterObjectMethod: java.lang.reflect.Method method> 
(define-const var1520 (Array Int var1535) arr-var1535-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2474 var2760) ; Statement: $r5 := @caughtexception 
(assert (not (= var2474 null-var2760)))
(define-const var2946 var2226 var2226-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var3317 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3317)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3317!1 String)
(assert (= var3317!1 ""))
(assert true)
(define-const var3100 String (append/672562846 var3317!1 "invoke getter method error, ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ") 
(declare-const var3317!2 String)
(assert (= var3317!2 (str.++ var3317!1 "invoke getter method error, ")))
(define-const var2371 String (fieldName/-2048851183 (cast-from-var230-to-var760 var2463))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterObjectMethod: java.lang.String fieldName> 
(assert true)
(define-const var3389 String (append/672562846 var3100 var2371)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3100!1 String)
(assert (= var3100!1 (str.++ var3100 var2371)))
(assert true)
(define-const var3813 String (toString/-2075883882 var3389)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2946 var3813 (cast-from-var2760-to-var2216 var2474))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var2946!1 var2226)
(declare-const var3813!1 String)
(declare-const var2474!1 var2760)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var230-to-var760=([com.alibaba.fastjson2.writer.FieldWriterObjectMethod], com.alibaba.fastjson2.writer.FieldWriter), arr-var1535-init=([], java.lang.Object[]), var2226-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2760-to-var2216=([java.lang.Exception], java.lang.Throwable)}
; {var230=com.alibaba.fastjson2.writer.FieldWriterObjectMethod, var2463=r0, var1535=java.lang.Object, var528=r1, var3630=java.lang.reflect.Method, var760=com.alibaba.fastjson2.writer.FieldWriter, var2614=$r3, var1520=$r2, var2760=java.lang.Exception, var2474=$r5, var2226=com.alibaba.fastjson2.JSONException, var2946=$r6, var3317=$r7, var3100=$r9, var2371=$r8, var3389=$r10, var3813=$r11, var2216=java.lang.Throwable}
; {com.alibaba.fastjson2.writer.FieldWriterObjectMethod=var230, r0=var2463, java.lang.Object=var1535, r1=var528, java.lang.reflect.Method=var3630, com.alibaba.fastjson2.writer.FieldWriter=var760, $r3=var2614, $r2=var1520, java.lang.Exception=var2760, $r5=var2474, com.alibaba.fastjson2.JSONException=var2226, $r6=var2946, $r7=var3317, $r9=var3100, $r8=var2371, $r10=var3389, $r11=var3813, java.lang.Throwable=var2216}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterObjectMethod;	r1 := @parameter0: java.lang.Object;	$r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterObjectMethod: java.lang.reflect.Method method>;	$r2 = newarray (java.lang.Object)[0];	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ");	$r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterObjectMethod: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2