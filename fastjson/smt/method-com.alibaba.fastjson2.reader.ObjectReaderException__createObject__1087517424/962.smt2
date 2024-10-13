(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3464 0)
(declare-sort var2336 0)
(declare-sort var2750 0)
(declare-sort var2442 0)
(declare-sort var3936 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2442-init () var2442)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun objectClass/1914013406 (var3936) ClassObject)
(declare-fun cast-from-var3464-to-var3936 (var3464) var3936)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getMessage/849299655 (var2750) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2442 String var2750) void)
(declare-const null-var3464 var3464)
(declare-const null-String String)
(declare-const null-var2750 var2750)
(declare-const var638 var3464) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderException 
(assert (not (= var638 null-var3464)))
(declare-const var3318 String) ; Statement: r14 := @parameter0: java.lang.String 
(assert (not (= var3318 null-String)))
(declare-const var1301 var2750) ; Statement: r9 := @parameter1: java.lang.Throwable 
(assert (not (= var1301 null-var2750)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2028 var2750) ; Statement: $r42 := @caughtexception 
(assert (not (= var2028 null-var2750)))
(define-const var2430 var2442 var2442-init) ; Statement: $r43 = new com.alibaba.fastjson2.JSONException 
(define-const var2966 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2966)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2966!1 String)
(assert (= var2966!1 ""))
(assert true)
(define-const var819 String (append/672562846 var2966!1 "create Exception error, class ")) ; Statement: $r47 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create Exception error, class ") 
(declare-const var2966!2 String)
(assert (= var2966!2 (str.++ var2966!1 "create Exception error, class ")))
(define-const var3590 ClassObject (objectClass/1914013406 (cast-from-var3464-to-var3936 var638))) ; Statement: $r45 = r0.<com.alibaba.fastjson2.reader.ObjectReaderException: java.lang.Class objectClass> 
(assert true)
(define-const var480 String (getName/-1958580599 var3590)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2353 String (append/672562846 var819 var480)) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r46) 
(declare-const var819!1 String)
(assert (= var819!1 (str.++ var819 var480)))
(assert true)
(define-const var2141 String (append/672562846 var2353 ", ")) ; Statement: $r50 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2353!1 String)
(assert (= var2353!1 (str.++ var2353 ", ")))
(assert true)
(define-const var3070 String (getMessage/849299655 var2028)) ; Statement: $r49 = virtualinvoke $r42.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true)
(define-const var168 String (append/672562846 var2141 var3070)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r49) 
(declare-const var2141!1 String)
(assert (= var2141!1 (str.++ var2141 var3070)))
(assert true)
(define-const var3175 String (toString/-2075883882 var168)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2430 var3175 var2028)) ; Statement: specialinvoke $r43.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r52, $r42) 

(declare-const var2430!1 var2442)
(declare-const var3175!1 String)
(declare-const var2028!1 var2750)
 ; Statement: throw $r43 
(check-sat)
(get-model)
(get-unsat-core)
; {var2442-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), objectClass/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], java.lang.Class), cast-from-var3464-to-var3936=([com.alibaba.fastjson2.reader.ObjectReaderException], com.alibaba.fastjson2.reader.ObjectReaderBean), getName/-1958580599=([java.lang.Class], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var3464=com.alibaba.fastjson2.reader.ObjectReaderException, var638=r0, var3318=r14, var2336=null_type, var2750=java.lang.Throwable, var1301=r9, var2028=$r42, var2442=com.alibaba.fastjson2.JSONException, var2430=$r43, var2966=$r44, var819=$r47, var3936=com.alibaba.fastjson2.reader.ObjectReaderBean, var3590=$r45, var480=$r46, var2353=$r48, var2141=$r50, var3070=$r49, var168=$r51, var3175=$r52}
; {com.alibaba.fastjson2.reader.ObjectReaderException=var3464, r0=var638, r14=var3318, null_type=var2336, java.lang.Throwable=var2750, r9=var1301, $r42=var2028, com.alibaba.fastjson2.JSONException=var2442, $r43=var2430, $r44=var2966, $r47=var819, com.alibaba.fastjson2.reader.ObjectReaderBean=var3936, $r45=var3590, $r46=var480, $r48=var2353, $r50=var2141, $r49=var3070, $r51=var168, $r52=var3175}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderException;	r14 := @parameter0: java.lang.String;	r9 := @parameter1: java.lang.Throwable;	$r42 := @caughtexception;	$r43 = new com.alibaba.fastjson2.JSONException;	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r47 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create Exception error, class ");	$r45 = r0.<com.alibaba.fastjson2.reader.ObjectReaderException: java.lang.Class objectClass>;	$r46 = virtualinvoke $r45.<java.lang.Class: java.lang.String getName()>();	$r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r46);	$r50 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r49 = virtualinvoke $r42.<java.lang.Throwable: java.lang.String getMessage()>();	$r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r49);	$r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r43.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r52, $r42);	throw $r43
;block_num 2