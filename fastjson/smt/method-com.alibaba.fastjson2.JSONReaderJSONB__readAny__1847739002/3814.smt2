(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2798 0)
(declare-sort var1643 0)
(declare-sort var1743 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun offset/1287024874 (var1643) Int)
(declare-fun cast-from-var2798-to-var1643 (var2798) var1643)
(declare-fun bytes/-413709904 (var2798) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var1743-init () var1743)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1743 String) void)
(declare-const null-var2798 var2798)
(declare-const var1896 var2798) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var1896 null-var2798)))
(define-const var3496 Int (offset/1287024874 (cast-from-var2798-to-var1643 var1896))) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(define-const var3082 (Array Int Int) (bytes/-413709904 var1896)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes> 
(define-const var361 Int (getLength-Arr-Int-1 var3082)) ; Statement: $i0 = lengthof $r1 
 ; Statement: if $i1 < $i0 goto $r2 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes> 
(assert (not (< var3496 var361))) ; Negate: Cond: $i1 < $i0  
(define-const var2042 var1743 var1743-init) ; Statement: $r285 = new com.alibaba.fastjson2.JSONException 
(define-const var1152 String String-init) ; Statement: $r284 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1152)) ; Statement: specialinvoke $r284.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1152!1 String)
(assert (= var1152!1 ""))
(assert true)
(define-const var3646 String (append/672562846 var1152!1 "readAny overflow : ")) ; Statement: $r241 = virtualinvoke $r284.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("readAny overflow : ") 
(declare-const var1152!2 String)
(assert (= var1152!2 (str.++ var1152!1 "readAny overflow : ")))
(define-const var829 Int (offset/1287024874 (cast-from-var2798-to-var1643 var1896))) ; Statement: $i317 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(assert true)
(define-const var3099 String (append/-1001720160 var3646 var829)) ; Statement: $r242 = virtualinvoke $r241.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i317) 
(declare-const var3646!1 String)
(assert (str.prefixof var3646 var3646!1))
(assert true)
(define-const var889 String (append/672562846 var3099 "/")) ; Statement: $r244 = virtualinvoke $r242.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var3099!1 String)
(assert (= var3099!1 (str.++ var3099 "/")))
(define-const var926 (Array Int Int) (bytes/-413709904 var1896)) ; Statement: $r243 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes> 
(define-const var1641 Int (getLength-Arr-Int-1 var926)) ; Statement: $i318 = lengthof $r243 
(assert true)
(define-const var3404 String (append/-1001720160 var889 var1641)) ; Statement: $r245 = virtualinvoke $r244.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i318) 
(declare-const var889!1 String)
(assert (str.prefixof var889 var889!1))
(assert true)
(define-const var2431 String (toString/-2075883882 var3404)) ; Statement: $r246 = virtualinvoke $r245.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2042 var2431)) ; Statement: specialinvoke $r285.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r246) 

(declare-const var2042!1 var1743)
(declare-const var2431!1 String)
 ; Statement: throw $r285 
(check-sat)
(get-model)
(get-unsat-core)
; {offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var2798-to-var1643=([com.alibaba.fastjson2.JSONReaderJSONB], com.alibaba.fastjson2.JSONReader), bytes/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte[]), getLength-Arr-Int-1=([byte[]], int), var1743-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2798=com.alibaba.fastjson2.JSONReaderJSONB, var1896=r0, var1643=com.alibaba.fastjson2.JSONReader, var3496=$i1, var3082=$r1, var361=$i0, var1743=com.alibaba.fastjson2.JSONException, var2042=$r285, var1152=$r284, var3646=$r241, var829=$i317, var3099=$r242, var889=$r244, var926=$r243, var1641=$i318, var3404=$r245, var2431=$r246}
; {com.alibaba.fastjson2.JSONReaderJSONB=var2798, r0=var1896, com.alibaba.fastjson2.JSONReader=var1643, $i1=var3496, $r1=var3082, $i0=var361, com.alibaba.fastjson2.JSONException=var1743, $r285=var2042, $r284=var1152, $r241=var3646, $i317=var829, $r242=var3099, $r244=var889, $r243=var926, $i318=var1641, $r245=var3404, $r246=var2431}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	$i1 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	$r1 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;	$i0 = lengthof $r1;	if $i1 < $i0 goto $r2 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;	$r285 = new com.alibaba.fastjson2.JSONException;	$r284 = new java.lang.StringBuilder;	specialinvoke $r284.<java.lang.StringBuilder: void <init>()>();	$r241 = virtualinvoke $r284.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("readAny overflow : ");	$i317 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	$r242 = virtualinvoke $r241.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i317);	$r244 = virtualinvoke $r242.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r243 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;	$i318 = lengthof $r243;	$r245 = virtualinvoke $r244.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i318);	$r246 = virtualinvoke $r245.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r285.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r246);	throw $r285
;block_num 2