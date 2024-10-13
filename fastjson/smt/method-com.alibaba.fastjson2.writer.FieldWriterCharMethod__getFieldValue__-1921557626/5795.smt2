(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1603 0)
(declare-sort var1232 0)
(declare-sort var3860 0)
(declare-sort var935 0)
(declare-sort var1264 0)
(declare-sort var2172 0)
(declare-sort var706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-2048851183 (var935) var3860)
(declare-fun cast-from-var1603-to-var935 (var1603) var935)
(declare-fun arr-var1232-init () (Array Int var1232))
(declare-fun var2172-init () var2172)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var935) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2172 String var706) void)
(declare-fun cast-from-var1264-to-var706 (var1264) var706)
(declare-const null-var1603 var1603)
(declare-const null-var1232 var1232)
(declare-const null-var1264 var1264)
(declare-const var3689 var1603) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterCharMethod 
(assert (not (= var3689 null-var1603)))
(declare-const var3794 var1232) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3794 null-var1232)))
(define-const var1717 var3860 (method/-2048851183 (cast-from-var1603-to-var935 var3689))) ; Statement: $r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterCharMethod: java.lang.reflect.Method method> 
(define-const var983 (Array Int var1232) arr-var1232-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3456 var1264) ; Statement: $r5 := @caughtexception 
(assert (not (= var3456 null-var1264)))
(define-const var2510 var2172 var2172-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var2363 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2363)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2363!1 String)
(assert (= var2363!1 ""))
(assert true)
(define-const var1070 String (append/672562846 var2363!1 "invoke getter method error, ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ") 
(declare-const var2363!2 String)
(assert (= var2363!2 (str.++ var2363!1 "invoke getter method error, ")))
(define-const var1544 String (fieldName/-2048851183 (cast-from-var1603-to-var935 var3689))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterCharMethod: java.lang.String fieldName> 
(assert true)
(define-const var3767 String (append/672562846 var1070 var1544)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1070!1 String)
(assert (= var1070!1 (str.++ var1070 var1544)))
(assert true)
(define-const var116 String (toString/-2075883882 var3767)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2510 var116 (cast-from-var1264-to-var706 var3456))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var2510!1 var2172)
(declare-const var116!1 String)
(declare-const var3456!1 var1264)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var1603-to-var935=([com.alibaba.fastjson2.writer.FieldWriterCharMethod], com.alibaba.fastjson2.writer.FieldWriter), arr-var1232-init=([], java.lang.Object[]), var2172-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1264-to-var706=([java.lang.Exception], java.lang.Throwable)}
; {var1603=com.alibaba.fastjson2.writer.FieldWriterCharMethod, var3689=r0, var1232=java.lang.Object, var3794=r1, var3860=java.lang.reflect.Method, var935=com.alibaba.fastjson2.writer.FieldWriter, var1717=$r3, var983=$r2, var1264=java.lang.Exception, var3456=$r5, var2172=com.alibaba.fastjson2.JSONException, var2510=$r6, var2363=$r7, var1070=$r9, var1544=$r8, var3767=$r10, var116=$r11, var706=java.lang.Throwable}
; {com.alibaba.fastjson2.writer.FieldWriterCharMethod=var1603, r0=var3689, java.lang.Object=var1232, r1=var3794, java.lang.reflect.Method=var3860, com.alibaba.fastjson2.writer.FieldWriter=var935, $r3=var1717, $r2=var983, java.lang.Exception=var1264, $r5=var3456, com.alibaba.fastjson2.JSONException=var2172, $r6=var2510, $r7=var2363, $r9=var1070, $r8=var1544, $r10=var3767, $r11=var116, java.lang.Throwable=var706}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterCharMethod;	r1 := @parameter0: java.lang.Object;	$r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterCharMethod: java.lang.reflect.Method method>;	$r2 = newarray (java.lang.Object)[0];	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ");	$r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterCharMethod: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2