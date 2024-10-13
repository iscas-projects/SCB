(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2285 0)
(declare-sort var3997 0)
(declare-sort var307 0)
(declare-sort var1802 0)
(declare-sort var3236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var307-init () var307)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1802) String)
(declare-fun cast-from-var2285-to-var1802 (var2285) var1802)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var307 String var3236) void)
(declare-fun cast-from-var3997-to-var3236 (var3997) var3236)
(declare-const null-var2285 var2285)
(declare-const null-var3997 var3997)
(declare-const var3453 var2285) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var3453 null-var2285)))
 ; Statement: if r0 != null goto r11 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>() 
(assert (not (not (= var3453 null-var2285)))) ; Negate: Cond: r0 != null  
(declare-const var806 var3997) ; Statement: $r2 := @caughtexception 
(assert (not (= var806 null-var3997)))
(define-const var1139 var307 var307-init) ; Statement: $r3 = new com.alibaba.fastjson2.JSONException 
(define-const var2283 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2283)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2283!1 String)
(assert (= var2283!1 ""))
(assert true)
(define-const var2248 String (append/672562846 var2283!1 "JSON#parseObject cannot parse \u0027")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSON#parseObject cannot parse \'") 
(declare-const var2283!2 String)
(assert (= var2283!2 (str.++ var2283!1 "JSON#parseObject cannot parse \u0027")))
(assert true)
(define-const var2488 String (append/-1031950772 var2248 (cast-from-var2285-to-var1802 var3453))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2248!1 String)
(assert (str.prefixof var2248 var2248!1))
(assert true)
(define-const var1306 String (append/672562846 var2488 "\u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2488!1 String)
(assert (= var2488!1 (str.++ var2488 "\u0027")))
(assert true)
(define-const var1465 String (toString/-2075883882 var1306)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1139 var1465 (cast-from-var3997-to-var3236 var806))) ; Statement: specialinvoke $r3.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r2) 

(declare-const var1139!1 var307)
(declare-const var1465!1 String)
(declare-const var806!1 var3997)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var307-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2285-to-var1802=([java.net.URL], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3997-to-var3236=([java.io.IOException], java.lang.Throwable)}
; {var2285=java.net.URL, var3453=r0, var3997=java.io.IOException, var806=$r2, var307=com.alibaba.fastjson2.JSONException, var1139=$r3, var2283=$r4, var2248=$r5, var1802=java.lang.Object, var2488=$r6, var1306=$r7, var1465=$r8, var3236=java.lang.Throwable}
; {java.net.URL=var2285, r0=var3453, java.io.IOException=var3997, $r2=var806, com.alibaba.fastjson2.JSONException=var307, $r3=var1139, $r4=var2283, $r5=var2248, java.lang.Object=var1802, $r6=var2488, $r7=var1306, $r8=var1465, java.lang.Throwable=var3236}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.net.URL;	if r0 != null goto r11 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>();	$r2 := @caughtexception;	$r3 = new com.alibaba.fastjson2.JSONException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSON#parseObject cannot parse \'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r2);	throw $r3
;block_num 2