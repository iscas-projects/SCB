(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1359 0)
(declare-sort var3070 0)
(declare-sort var449 0)
(declare-sort var1919 0)
(declare-sort var427 0)
(declare-sort var2979 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1919-init () var1919)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var427) String)
(declare-fun cast-from-var1359-to-var427 (var1359) var427)
(declare-fun cast-from-ClassObject-to-var427 (ClassObject) var427)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1919 String var2979) void)
(declare-fun cast-from-var449-to-var2979 (var449) var2979)
(declare-const null-var1359 var1359)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__var3070__ (Array Int var3070))
(declare-const null-var449 var449)
(declare-const var701 var1359) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var701 null-var1359)))
(declare-const var3338 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var3338 null-ClassObject)))
(declare-const var3520 (Array Int var3070)) ; Statement: r2 := @parameter2: com.alibaba.fastjson2.JSONReader$Feature[] 
(assert (not (= var3520 null-__Array__Int__var3070__)))
 ; Statement: if r0 != null goto r14 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>() 
(assert (not (not (= var701 null-var1359)))) ; Negate: Cond: r0 != null  
(declare-const var866 var449) ; Statement: $r3 := @caughtexception 
(assert (not (= var866 null-var449)))
(define-const var671 var1919 var1919-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var3484 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3484)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3484!1 String)
(assert (= var3484!1 ""))
(assert true)
(define-const var2693 String (append/672562846 var3484!1 "JSON#parseObject cannot parse \u0027")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSON#parseObject cannot parse \'") 
(declare-const var3484!2 String)
(assert (= var3484!2 (str.++ var3484!1 "JSON#parseObject cannot parse \u0027")))
(assert true)
(define-const var2045 String (append/-1031950772 var2693 (cast-from-var1359-to-var427 var701))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2693!1 String)
(assert (str.prefixof var2693 var2693!1))
(assert true)
(define-const var3022 String (append/672562846 var2045 "\u0027 to \u0027")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' to \'") 
(declare-const var2045!1 String)
(assert (= var2045!1 (str.++ var2045 "\u0027 to \u0027")))
(assert true)
(define-const var3672 String (append/-1031950772 var3022 (cast-from-ClassObject-to-var427 var3338))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3022!1 String)
(assert (str.prefixof var3022 var3022!1))
(assert true)
(define-const var3467 String (append/672562846 var3672 "\u0027")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3672!1 String)
(assert (= var3672!1 (str.++ var3672 "\u0027")))
(assert true)
(define-const var2889 String (toString/-2075883882 var3467)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var671 var2889 (cast-from-var449-to-var2979 var866))) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r3) 

(declare-const var671!1 var1919)
(declare-const var2889!1 String)
(declare-const var866!1 var449)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1919-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1359-to-var427=([java.net.URL], java.lang.Object), cast-from-ClassObject-to-var427=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var449-to-var2979=([java.io.IOException], java.lang.Throwable)}
; {var1359=java.net.URL, var701=r0, var3338=r1, var3070=com.alibaba.fastjson2.JSONReader$Feature, var3520=r2, var449=java.io.IOException, var866=$r3, var1919=com.alibaba.fastjson2.JSONException, var671=$r4, var3484=$r5, var2693=$r6, var427=java.lang.Object, var2045=$r7, var3022=$r8, var3672=$r9, var3467=$r10, var2889=$r11, var2979=java.lang.Throwable}
; {java.net.URL=var1359, r0=var701, r1=var3338, com.alibaba.fastjson2.JSONReader$Feature=var3070, r2=var3520, java.io.IOException=var449, $r3=var866, com.alibaba.fastjson2.JSONException=var1919, $r4=var671, $r5=var3484, $r6=var2693, java.lang.Object=var427, $r7=var2045, $r8=var3022, $r9=var3672, $r10=var3467, $r11=var2889, java.lang.Throwable=var2979}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.net.URL;	r1 := @parameter1: java.lang.Class;	r2 := @parameter2: com.alibaba.fastjson2.JSONReader$Feature[];	if r0 != null goto r14 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>();	$r3 := @caughtexception;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSON#parseObject cannot parse \'");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' to \'");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r3);	throw $r4
;block_num 2