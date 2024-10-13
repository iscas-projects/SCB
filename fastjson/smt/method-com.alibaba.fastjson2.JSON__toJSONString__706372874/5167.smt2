(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1149 0)
(declare-sort var3512 0)
(declare-sort var3748 0)
(declare-sort var2850 0)
(declare-sort var1218 0)
(declare-sort var1251 0)
(declare-sort var2045 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2850-init () var2850)
(declare-fun <init>/1441237091 (var2850 var3512) void)
(declare-fun var1251-init () var1251)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1149) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1251 String var2045) void)
(declare-fun cast-from-var1218-to-var2045 (var1218) var2045)
(declare-const null-var1149 var1149)
(declare-const var3748-defaultObjectWriterProvider var3512)
(declare-const null-var1218 var1218)
(declare-const var2072 var1149) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2072 null-var1149)))
(define-const var3711 var3512 var3748-defaultObjectWriterProvider) ; Statement: r0 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.writer.ObjectWriterProvider defaultObjectWriterProvider> 
(define-const var808 var2850 var2850-init) ; Statement: $r1 = new com.alibaba.fastjson2.JSONWriter$Context 
(assert true)
;(assert (<init>/1441237091 var808 var3711)) ; Statement: specialinvoke $r1.<com.alibaba.fastjson2.JSONWriter$Context: void <init>(com.alibaba.fastjson2.writer.ObjectWriterProvider)>(r0) 

(declare-const var808!1 var2850)
(declare-const var3711!1 var3512)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2526 var1218) ; Statement: $r7 := @caughtexception 
(assert (not (= var2526 null-var1218)))
(define-const var1015 var1251 var1251-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var25 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var25)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var25!1 String)
(assert (= var25!1 ""))
(assert true)
(define-const var70 String (append/672562846 var25!1 "JSON#toJSONString cannot serialize \u0027")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSON#toJSONString cannot serialize \'") 
(declare-const var25!2 String)
(assert (= var25!2 (str.++ var25!1 "JSON#toJSONString cannot serialize \u0027")))
(assert true)
(define-const var2734 String (append/-1031950772 var70 var2072)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var70!1 String)
(assert (str.prefixof var70 var70!1))
(assert true)
(define-const var2533 String (append/672562846 var2734 "\u0027")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2734!1 String)
(assert (= var2734!1 (str.++ var2734 "\u0027")))
(assert true)
(define-const var3575 String (toString/-2075883882 var2533)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1015 var3575 (cast-from-var1218-to-var2045 var2526))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r7) 

(declare-const var1015!1 var1251)
(declare-const var3575!1 String)
(declare-const var2526!1 var1218)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2850-init=([], com.alibaba.fastjson2.JSONWriter$Context), <init>/1441237091=([com.alibaba.fastjson2.JSONWriter$Context, com.alibaba.fastjson2.writer.ObjectWriterProvider], void), var1251-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1218-to-var2045=([java.lang.RuntimeException], java.lang.Throwable)}
; {var1149=java.lang.Object, var2072=r2, var3512=com.alibaba.fastjson2.writer.ObjectWriterProvider, var3748=com.alibaba.fastjson2.JSONFactory, var3711=r0, var2850=com.alibaba.fastjson2.JSONWriter$Context, var808=$r1, var1218=java.lang.RuntimeException, var2526=$r7, var1251=com.alibaba.fastjson2.JSONException, var1015=$r8, var25=$r9, var70=$r10, var2734=$r11, var2533=$r12, var3575=$r13, var2045=java.lang.Throwable}
; {java.lang.Object=var1149, r2=var2072, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3512, com.alibaba.fastjson2.JSONFactory=var3748, r0=var3711, com.alibaba.fastjson2.JSONWriter$Context=var2850, $r1=var808, java.lang.RuntimeException=var1218, $r7=var2526, com.alibaba.fastjson2.JSONException=var1251, $r8=var1015, $r9=var25, $r10=var70, $r11=var2734, $r12=var2533, $r13=var3575, java.lang.Throwable=var2045}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.Object;	r0 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.writer.ObjectWriterProvider defaultObjectWriterProvider>;	$r1 = new com.alibaba.fastjson2.JSONWriter$Context;	specialinvoke $r1.<com.alibaba.fastjson2.JSONWriter$Context: void <init>(com.alibaba.fastjson2.writer.ObjectWriterProvider)>(r0);	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSON#toJSONString cannot serialize \'");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r7);	throw $r8
;block_num 2