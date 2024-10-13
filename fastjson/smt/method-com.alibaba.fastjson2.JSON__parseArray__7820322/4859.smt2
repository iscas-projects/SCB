(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3797 0)
(declare-sort var3559 0)
(declare-sort var89 0)
(declare-sort var1563 0)
(declare-sort var3427 0)
(declare-sort var540 0)
(declare-sort var1544 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var540!class ClassObject)
(declare-fun var1563-init () var1563)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3427) String)
(declare-fun cast-from-var3797-to-var3427 (var3797) var3427)
(declare-fun cast-from-ClassObject-to-var3427 (ClassObject) var3427)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1563 String var1544) void)
(declare-fun cast-from-var89-to-var1544 (var89) var1544)
(declare-const null-var3797 var3797)
(declare-const null-__Array__Int__var3559__ (Array Int var3559))
(declare-const null-var89 var89)
(declare-const var1566 var3797) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var1566 null-var3797)))
(declare-const var105 (Array Int var3559)) ; Statement: r1 := @parameter1: com.alibaba.fastjson2.JSONReader$Feature[] 
(assert (not (= var105 null-__Array__Int__var3559__)))
 ; Statement: if r0 != null goto r13 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>() 
(assert (not (not (= var1566 null-var3797)))) ; Negate: Cond: r0 != null  
(declare-const var364 var89) ; Statement: $r2 := @caughtexception 
(assert (not (= var364 null-var89)))
(define-const var3075 var1563 var1563-init) ; Statement: $r3 = new com.alibaba.fastjson2.JSONException 
(define-const var37 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var37)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var37!1 String)
(assert (= var37!1 ""))
(assert true)
(define-const var2162 String (append/672562846 var37!1 "JSON#parseArray cannot parse \u0027")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSON#parseArray cannot parse \'") 
(declare-const var37!2 String)
(assert (= var37!2 (str.++ var37!1 "JSON#parseArray cannot parse \u0027")))
(assert true)
(define-const var1471 String (append/-1031950772 var2162 (cast-from-var3797-to-var3427 var1566))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2162!1 String)
(assert (str.prefixof var2162 var2162!1))
(assert true)
(define-const var3636 String (append/672562846 var1471 "\u0027 to \u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' to \'") 
(declare-const var1471!1 String)
(assert (= var1471!1 (str.++ var1471 "\u0027 to \u0027")))
(assert true)
(define-const var2511 String (append/-1031950772 var3636 (cast-from-ClassObject-to-var3427 var540!class))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(class "Lcom/alibaba/fastjson2/JSONArray;") 
(declare-const var3636!1 String)
(assert (str.prefixof var3636 var3636!1))
(assert true)
(define-const var584 String (append/672562846 var2511 "\u0027")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2511!1 String)
(assert (= var2511!1 (str.++ var2511 "\u0027")))
(assert true)
(define-const var2807 String (toString/-2075883882 var584)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3075 var2807 (cast-from-var89-to-var1544 var364))) ; Statement: specialinvoke $r3.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r2) 

(declare-const var3075!1 var1563)
(declare-const var2807!1 String)
(declare-const var364!1 var89)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1563-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3797-to-var3427=([java.net.URL], java.lang.Object), cast-from-ClassObject-to-var3427=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var89-to-var1544=([java.io.IOException], java.lang.Throwable)}
; {var3797=java.net.URL, var1566=r0, var3559=com.alibaba.fastjson2.JSONReader$Feature, var105=r1, var89=java.io.IOException, var364=$r2, var1563=com.alibaba.fastjson2.JSONException, var3075=$r3, var37=$r4, var2162=$r5, var3427=java.lang.Object, var1471=$r6, var3636=$r7, var540=com.alibaba.fastjson2.JSONArray, var2511=$r8, var584=$r9, var2807=$r10, var1544=java.lang.Throwable}
; {java.net.URL=var3797, r0=var1566, com.alibaba.fastjson2.JSONReader$Feature=var3559, r1=var105, java.io.IOException=var89, $r2=var364, com.alibaba.fastjson2.JSONException=var1563, $r3=var3075, $r4=var37, $r5=var2162, java.lang.Object=var3427, $r6=var1471, $r7=var3636, com.alibaba.fastjson2.JSONArray=var540, $r8=var2511, $r9=var584, $r10=var2807, java.lang.Throwable=var1544}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.net.URL;	r1 := @parameter1: com.alibaba.fastjson2.JSONReader$Feature[];	if r0 != null goto r13 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>();	$r2 := @caughtexception;	$r3 = new com.alibaba.fastjson2.JSONException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSON#parseArray cannot parse \'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' to \'");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(class "Lcom/alibaba/fastjson2/JSONArray;");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r2);	throw $r3
;block_num 2