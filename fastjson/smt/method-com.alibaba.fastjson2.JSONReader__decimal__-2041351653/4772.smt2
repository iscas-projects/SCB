(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1176 0)
(declare-sort var2378 0)
(declare-sort var979 0)
(declare-sort var3141 0)
(declare-sort var2972 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBigDecimal/1248053768 (var2378 String) var979)
(declare-fun var3141-init () var3141)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2972) String)
(declare-fun cast-from-var2378-to-var2972 (var2378) var2972)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3141 String) void)
(declare-const null-var1176 var1176)
(declare-const null-var2378 var2378)
(declare-const null-var979 var979)
(declare-const var2468 var1176) ; Statement: r6 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2468 null-var1176)))
(declare-const var1910 var2378) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONObject 
(assert (not (= var1910 null-var2378)))
(assert true)
(define-const var2782 var979 (getBigDecimal/1248053768 var1910 "value")) ; Statement: r7 = virtualinvoke r0.<com.alibaba.fastjson2.JSONObject: java.math.BigDecimal getBigDecimal(java.lang.String)>("value") 
 ; Statement: if r7 != null goto (branch) 
(assert (not (= var2782 null-var979))) ; Cond: r7 != null 
 ; Statement: if r7 == null goto $r1 = new com.alibaba.fastjson2.JSONException 
(assert (= var2782 null-var979)) ; Cond: r7 == null 
(define-const var3 var3141 var3141-init) ; Statement: $r1 = new com.alibaba.fastjson2.JSONException 
(define-const var159 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var159)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var159!1 String)
(assert (= var159!1 ""))
(assert true)
(define-const var606 String (append/672562846 var159!1 "can not cast to decimal ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("can not cast to decimal ") 
(declare-const var159!2 String)
(assert (= var159!2 (str.++ var159!1 "can not cast to decimal ")))
(assert true)
(define-const var1760 String (append/-1031950772 var606 (cast-from-var2378-to-var2972 var1910))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var606!1 String)
(assert (str.prefixof var606 var606!1))
(assert true)
(define-const var505 String (toString/-2075883882 var1760)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3 var505)) ; Statement: specialinvoke $r1.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r5) 

(declare-const var3!1 var3141)
(declare-const var505!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getBigDecimal/1248053768=([com.alibaba.fastjson2.JSONObject, java.lang.String], java.math.BigDecimal), var3141-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2378-to-var2972=([com.alibaba.fastjson2.JSONObject], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1176=com.alibaba.fastjson2.JSONReader, var2468=r6, var2378=com.alibaba.fastjson2.JSONObject, var1910=r0, var979=java.math.BigDecimal, var2782=r7, var3141=com.alibaba.fastjson2.JSONException, var3=$r1, var159=$r2, var606=$r3, var2972=java.lang.Object, var1760=$r4, var505=$r5}
; {com.alibaba.fastjson2.JSONReader=var1176, r6=var2468, com.alibaba.fastjson2.JSONObject=var2378, r0=var1910, java.math.BigDecimal=var979, r7=var2782, com.alibaba.fastjson2.JSONException=var3141, $r1=var3, $r2=var159, $r3=var606, java.lang.Object=var2972, $r4=var1760, $r5=var505}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.alibaba.fastjson2.JSONReader;	r0 := @parameter0: com.alibaba.fastjson2.JSONObject;	r7 = virtualinvoke r0.<com.alibaba.fastjson2.JSONObject: java.math.BigDecimal getBigDecimal(java.lang.String)>("value");	if r7 != null goto (branch);	if r7 == null goto $r1 = new com.alibaba.fastjson2.JSONException;	$r1 = new com.alibaba.fastjson2.JSONException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("can not cast to decimal ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 3