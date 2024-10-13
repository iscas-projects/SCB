(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3339 0)
(declare-sort var2162 0)
(declare-sort var355 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var355-init () var355)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var3339) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var355 String) void)
(declare-const null-var3339 var3339)
(declare-const null-var2162 var2162)
(declare-const var3671 var3339) ; Statement: r1 := @this: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var3671 null-var3339)))
(declare-const var621 var2162) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var621 null-var2162)))
 ; Statement: if r0 != null goto $r2 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(assert (not (not (= var621 null-var2162)))) ; Negate: Cond: r0 != null  
(define-const var416 var355 var355-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var149 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var149)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var149!1 String)
(assert (= var149!1 ""))
(assert true)
(define-const var1893 String (append/672562846 var149!1 "field.get error, ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ") 
(declare-const var149!2 String)
(assert (= var149!2 (str.++ var149!1 "field.get error, ")))
(define-const var1971 String (fieldName/-2048851183 var3671)) ; Statement: $r8 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String fieldName> 
(assert true)
(define-const var2556 String (append/672562846 var1893 var1971)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1893!1 String)
(assert (= var1893!1 (str.++ var1893 var1971)))
(assert true)
(define-const var2702 String (toString/-2075883882 var2556)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var416 var2702)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r11) 

(declare-const var416!1 var355)
(declare-const var2702!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var355-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3339=com.alibaba.fastjson2.writer.FieldWriter, var3671=r1, var2162=java.lang.Object, var621=r0, var355=com.alibaba.fastjson2.JSONException, var416=$r6, var149=$r7, var1893=$r9, var1971=$r8, var2556=$r10, var2702=$r11}
; {com.alibaba.fastjson2.writer.FieldWriter=var3339, r1=var3671, java.lang.Object=var2162, r0=var621, com.alibaba.fastjson2.JSONException=var355, $r6=var416, $r7=var149, $r9=var1893, $r8=var1971, $r10=var2556, $r11=var2702}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.writer.FieldWriter;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $r2 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field.get error, ");	$r8 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 2