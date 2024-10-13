(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var266 0)
(declare-sort var2028 0)
(declare-sort var2090 0)
(declare-sort var2273 0)
(declare-sort var1432 0)
(declare-sort var327 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2273-init () var2273)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1432) String)
(declare-fun cast-from-var266-to-var1432 (var266) var1432)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2273 String var327) void)
(declare-fun cast-from-var2090-to-var327 (var2090) var327)
(declare-const null-var266 var266)
(declare-const null-var2028 var2028)
(declare-const null-var2090 var2090)
(declare-const var1201 var266) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly 
(assert (not (= var1201 null-var266)))
(declare-const var538 var2028) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var538 null-var2028)))
(declare-const var2719 var2028) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2719 null-var2028)))
 ; Statement: if r0 != null goto $r3 = r1.<com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly: java.lang.reflect.Field field> 
(assert (not (not (= var2719 null-var2028)))) ; Negate: Cond: r0 != null  
(declare-const var302 var2090) ; Statement: $r10 := @caughtexception 
(assert (not (= var302 null-var2090)))
(define-const var1905 var2273 var2273-init) ; Statement: $r11 = new com.alibaba.fastjson2.JSONException 
(define-const var800 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var800)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var800!1 String)
(assert (= var800!1 ""))
(assert true)
(define-const var2215 String (append/672562846 var800!1 "set ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var800!2 String)
(assert (= var800!2 (str.++ var800!1 "set ")))
(define-const var2753 String (fieldName/-488737871 (cast-from-var266-to-var1432 var1201))) ; Statement: $r13 = r1.<com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly: java.lang.String fieldName> 
(assert true)
(define-const var3473 String (append/672562846 var2215 var2753)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2215!1 String)
(assert (= var2215!1 (str.++ var2215 var2753)))
(assert true)
(define-const var1205 String (append/672562846 var3473 " error")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3473!1 String)
(assert (= var3473!1 (str.++ var3473 " error")))
(assert true)
(define-const var633 String (toString/-2075883882 var1205)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1905 var633 (cast-from-var2090-to-var327 var302))) ; Statement: specialinvoke $r11.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r10) 

(declare-const var1905!1 var2273)
(declare-const var633!1 String)
(declare-const var302!1 var2090)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2273-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var266-to-var1432=([com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2090-to-var327=([java.lang.Exception], java.lang.Throwable)}
; {var266=com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly, var1201=r1, var2028=java.lang.Object, var538=r2, var2719=r0, var2090=java.lang.Exception, var302=$r10, var2273=com.alibaba.fastjson2.JSONException, var1905=$r11, var800=$r12, var2215=$r14, var1432=com.alibaba.fastjson2.reader.FieldReader, var2753=$r13, var3473=$r15, var1205=$r16, var633=$r17, var327=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly=var266, r1=var1201, java.lang.Object=var2028, r2=var538, r0=var2719, java.lang.Exception=var2090, $r10=var302, com.alibaba.fastjson2.JSONException=var2273, $r11=var1905, $r12=var800, $r14=var2215, com.alibaba.fastjson2.reader.FieldReader=var1432, $r13=var2753, $r15=var3473, $r16=var1205, $r17=var633, java.lang.Throwable=var327}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly;	r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	if r0 != null goto $r3 = r1.<com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly: java.lang.reflect.Field field>;	$r10 := @caughtexception;	$r11 = new com.alibaba.fastjson2.JSONException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r13 = r1.<com.alibaba.fastjson2.reader.FieldReaderMapFieldReadOnly: java.lang.String fieldName>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r10);	throw $r11
;block_num 2