(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2442 0)
(declare-sort var3052 0)
(declare-sort var2187 0)
(declare-sort var676 0)
(declare-sort var3846 0)
(declare-sort var3666 0)
(declare-sort var1074 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-2048851183 (var676) var2187)
(declare-fun cast-from-var2442-to-var676 (var2442) var676)
(declare-fun arr-var3052-init () (Array Int var3052))
(declare-fun var3666-init () var3666)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var676) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3666 String var1074) void)
(declare-fun cast-from-var3846-to-var1074 (var3846) var1074)
(declare-const null-var2442 var2442)
(declare-const null-var3052 var3052)
(declare-const null-var3846 var3846)
(declare-const var1744 var2442) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterBoolMethod 
(assert (not (= var1744 null-var2442)))
(declare-const var2318 var3052) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2318 null-var3052)))
(define-const var3191 var2187 (method/-2048851183 (cast-from-var2442-to-var676 var1744))) ; Statement: $r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterBoolMethod: java.lang.reflect.Method method> 
(define-const var2670 (Array Int var3052) arr-var3052-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1780 var3846) ; Statement: $r5 := @caughtexception 
(assert (not (= var1780 null-var3846)))
(define-const var2119 var3666 var3666-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var900 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var900)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var900!1 String)
(assert (= var900!1 ""))
(assert true)
(define-const var2498 String (append/672562846 var900!1 "invoke getter method error, ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ") 
(declare-const var900!2 String)
(assert (= var900!2 (str.++ var900!1 "invoke getter method error, ")))
(define-const var3756 String (fieldName/-2048851183 (cast-from-var2442-to-var676 var1744))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterBoolMethod: java.lang.String fieldName> 
(assert true)
(define-const var253 String (append/672562846 var2498 var3756)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2498!1 String)
(assert (= var2498!1 (str.++ var2498 var3756)))
(assert true)
(define-const var3151 String (toString/-2075883882 var253)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2119 var3151 (cast-from-var3846-to-var1074 var1780))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var2119!1 var3666)
(declare-const var3151!1 String)
(declare-const var1780!1 var3846)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var2442-to-var676=([com.alibaba.fastjson2.writer.FieldWriterBoolMethod], com.alibaba.fastjson2.writer.FieldWriter), arr-var3052-init=([], java.lang.Object[]), var3666-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3846-to-var1074=([java.lang.Exception], java.lang.Throwable)}
; {var2442=com.alibaba.fastjson2.writer.FieldWriterBoolMethod, var1744=r0, var3052=java.lang.Object, var2318=r1, var2187=java.lang.reflect.Method, var676=com.alibaba.fastjson2.writer.FieldWriter, var3191=$r3, var2670=$r2, var3846=java.lang.Exception, var1780=$r5, var3666=com.alibaba.fastjson2.JSONException, var2119=$r6, var900=$r7, var2498=$r9, var3756=$r8, var253=$r10, var3151=$r11, var1074=java.lang.Throwable}
; {com.alibaba.fastjson2.writer.FieldWriterBoolMethod=var2442, r0=var1744, java.lang.Object=var3052, r1=var2318, java.lang.reflect.Method=var2187, com.alibaba.fastjson2.writer.FieldWriter=var676, $r3=var3191, $r2=var2670, java.lang.Exception=var3846, $r5=var1780, com.alibaba.fastjson2.JSONException=var3666, $r6=var2119, $r7=var900, $r9=var2498, $r8=var3756, $r10=var253, $r11=var3151, java.lang.Throwable=var1074}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterBoolMethod;	r1 := @parameter0: java.lang.Object;	$r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterBoolMethod: java.lang.reflect.Method method>;	$r2 = newarray (java.lang.Object)[0];	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ");	$r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterBoolMethod: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2