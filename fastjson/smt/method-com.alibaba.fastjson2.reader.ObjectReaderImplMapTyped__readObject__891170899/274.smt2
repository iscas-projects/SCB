(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var941 0)
(declare-sort var3861 0)
(declare-sort var1742 0)
(declare-sort var2094 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfObjectStart/-245382802 (var3861) Bool)
(declare-fun isTypeRedirect/12387481 (var3861) Bool)
(declare-fun nextIfNullOrEmptyString/-1812407907 (var3861) Bool)
(declare-fun var2094-init () var2094)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun current/1026386434 (var3861) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var3861 String) String)
(declare-fun <init>/-2099196170 (var2094 String) void)
(declare-const null-var941 var941)
(declare-const null-var3861 var3861)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1742 var1742)
(declare-const null-Int Int)
(declare-const var3681 var941) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplMapTyped 
(assert (not (= var3681 null-var941)))
(declare-const var2916 var3861) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2916 null-var3861)))
(declare-const var2760 ClassObject) ; Statement: r62 := @parameter1: java.lang.reflect.Type 
(assert (not (= var2760 null-ClassObject)))
(declare-const var2945 var1742) ; Statement: r9 := @parameter2: java.lang.Object 
(assert (not (= var2945 null-var1742)))
(declare-const var479 Int) ; Statement: l0 := @parameter3: long 
(assert (not (= var479 null-Int)))
(define-const var188 Int 0) ; Statement: i17 = 0 
(assert true)
(define-const var1878 Bool (nextIfObjectStart/-245382802 var2916)) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfObjectStart()>() 
 ; Statement: if $z0 != 0 goto $r61 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context getContext()>() 
(assert (not (not (= (ite var1878 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var255 Bool (isTypeRedirect/12387481 var2916)) ; Statement: $z19 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isTypeRedirect()>() 
 ; Statement: if $z19 == 0 goto $z20 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfNullOrEmptyString()>() 
(assert (= (ite var255 1 0) 0)) ; Cond: $z19 == 0 
(assert true)
(define-const var1289 Bool (nextIfNullOrEmptyString/-1812407907 var2916)) ; Statement: $z20 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfNullOrEmptyString()>() 
 ; Statement: if $z20 == 0 goto $r76 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var1289 1 0) 0)) ; Cond: $z20 == 0 
(define-const var1485 var2094 var2094-init) ; Statement: $r76 = new com.alibaba.fastjson2.JSONException 
(define-const var2621 String String-init) ; Statement: $r75 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2621)) ; Statement: specialinvoke $r75.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2621!1 String)
(assert (= var2621!1 ""))
(assert true)
(define-const var2722 String (append/672562846 var2621!1 "expect \u0027{\u0027, but \u0027")) ; Statement: $r56 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expect \'{\', but \'") 
(declare-const var2621!2 String)
(assert (= var2621!2 (str.++ var2621!1 "expect \u0027{\u0027, but \u0027")))
(assert true)
(define-const var1606 Int (current/1026386434 var2916)) ; Statement: $c15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: char current()>() 
(assert true)
(define-const var526 String (append/-1166366385 var2722 var1606)) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c15) 
(declare-const var2722!1 String)
(assert (str.prefixof var2722 var2722!1))
(assert true)
(define-const var2646 String (append/672562846 var526 "\u0027")) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var526!1 String)
(assert (= var526!1 (str.++ var526 "\u0027")))
(assert true)
(define-const var354 String (toString/-2075883882 var2646)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3519 String (info/-1659839707 var2916 var354)) ; Statement: $r60 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r59) 
(assert true)
;(assert (<init>/-2099196170 var1485 var3519)) ; Statement: specialinvoke $r76.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r60) 

(declare-const var1485!1 var2094)
(declare-const var3519!1 String)
 ; Statement: throw $r76 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfObjectStart/-245382802=([com.alibaba.fastjson2.JSONReader], boolean), isTypeRedirect/12387481=([com.alibaba.fastjson2.JSONReader], boolean), nextIfNullOrEmptyString/-1812407907=([com.alibaba.fastjson2.JSONReader], boolean), var2094-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), current/1026386434=([com.alibaba.fastjson2.JSONReader], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var941=com.alibaba.fastjson2.reader.ObjectReaderImplMapTyped, var3681=r1, var3861=com.alibaba.fastjson2.JSONReader, var2916=r0, var2760=r62, var1742=java.lang.Object, var2945=r9, var479=l0, var188=i17, var1878=$z0, var255=$z19, var1289=$z20, var2094=com.alibaba.fastjson2.JSONException, var1485=$r76, var2621=$r75, var2722=$r56, var1606=$c15, var526=$r57, var2646=$r58, var354=$r59, var3519=$r60}
; {com.alibaba.fastjson2.reader.ObjectReaderImplMapTyped=var941, r1=var3681, com.alibaba.fastjson2.JSONReader=var3861, r0=var2916, r62=var2760, java.lang.Object=var1742, r9=var2945, l0=var479, i17=var188, $z0=var1878, $z19=var255, $z20=var1289, com.alibaba.fastjson2.JSONException=var2094, $r76=var1485, $r75=var2621, $r56=var2722, $c15=var1606, $r57=var526, $r58=var2646, $r59=var354, $r60=var3519}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplMapTyped;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r62 := @parameter1: java.lang.reflect.Type;	r9 := @parameter2: java.lang.Object;	l0 := @parameter3: long;	i17 = 0;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfObjectStart()>();	if $z0 != 0 goto $r61 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context getContext()>();	$z19 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isTypeRedirect()>();	if $z19 == 0 goto $z20 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfNullOrEmptyString()>();	$z20 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfNullOrEmptyString()>();	if $z20 == 0 goto $r76 = new com.alibaba.fastjson2.JSONException;	$r76 = new com.alibaba.fastjson2.JSONException;	$r75 = new java.lang.StringBuilder;	specialinvoke $r75.<java.lang.StringBuilder: void <init>()>();	$r56 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expect \'{\', but \'");	$c15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: char current()>();	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c15);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$r60 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r59);	specialinvoke $r76.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r60);	throw $r76
;block_num 4