(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1156 0)
(declare-sort var2781 0)
(declare-sort var548 0)
(declare-sort var531 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun strtype/-413709904 (var1156) Int)
(declare-fun var2781_typeName/1994747818 (Int) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun offset/1287024874 (var548) Int)
(declare-fun cast-from-var1156-to-var548 (var1156) var548)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun var531-init () var531)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var531 String) void)
(declare-const null-var1156 var1156)
(declare-const var298 var1156) ; Statement: r1 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var298 null-var1156)))
(define-const var111 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var111)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var111!1 String)
(assert (= var111!1 ""))
(assert true)
(define-const var3758 String (append/672562846 var111!1 "fieldName not support input type ")) ; Statement: $r3 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fieldName not support input type ") 
(declare-const var111!2 String)
(assert (= var111!2 (str.++ var111!1 "fieldName not support input type ")))
(define-const var3734 Int (strtype/-413709904 var298)) ; Statement: $b0 = r1.<com.alibaba.fastjson2.JSONReaderJSONB: byte strtype> 
(define-const var3320 String (var2781_typeName/1994747818 var3734)) ; Statement: $r2 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>($b0) 
(assert true)
(define-const var2692 String (append/672562846 var3758 var3320)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3758!1 String)
(assert (= var3758!1 (str.++ var3758 var3320)))
(define-const var943 Int (strtype/-413709904 var298)) ; Statement: $b1 = r1.<com.alibaba.fastjson2.JSONReaderJSONB: byte strtype> 
(define-const var918 Int (cast-from-Int-to-Int var943)) ; Statement: $i3 = (int) $b1 
(define-const var3497 Int (cast-from-Int-to-Int (- 109))) ; Statement: $i5 = (int) -109 
 ; Statement: if $i3 != $i5 goto $r5 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset ") 
(assert (not (= var918 var3497))) ; Cond: $i3 != $i5 
(assert true)
(define-const var1252 String (append/672562846 var2692 ", offset ")) ; Statement: $r5 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset ") 
(declare-const var2692!1 String)
(assert (= var2692!1 (str.++ var2692 ", offset ")))
(define-const var1115 Int (offset/1287024874 (cast-from-var1156-to-var548 var298))) ; Statement: $i2 = r1.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(assert true)
;(assert (append/-1001720160 var1252 var1115)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1252!1 String)
(assert (str.prefixof var1252 var1252!1))
(define-const var2107 var531 var531-init) ; Statement: $r11 = new com.alibaba.fastjson2.JSONException 
(assert true)
(define-const var1865 String (toString/-2075883882 var2692!1)) ; Statement: $r7 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2107 var1865)) ; Statement: specialinvoke $r11.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r7) 

(declare-const var2107!1 var531)
(declare-const var1865!1 String)
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), strtype/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte), var2781_typeName/1994747818=([byte], java.lang.String), cast-from-Int-to-Int=([byte], int), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var1156-to-var548=([com.alibaba.fastjson2.JSONReaderJSONB], com.alibaba.fastjson2.JSONReader), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), var531-init=([], com.alibaba.fastjson2.JSONException), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1156=com.alibaba.fastjson2.JSONReaderJSONB, var298=r1, var111=$r10, var3758=$r3, var3734=$b0, var2781=com.alibaba.fastjson2.JSONB, var3320=$r2, var2692=r4, var943=$b1, var918=$i3, var3497=$i5, var1252=$r5, var548=com.alibaba.fastjson2.JSONReader, var1115=$i2, var531=com.alibaba.fastjson2.JSONException, var2107=$r11, var1865=$r7}
; {com.alibaba.fastjson2.JSONReaderJSONB=var1156, r1=var298, $r10=var111, $r3=var3758, $b0=var3734, com.alibaba.fastjson2.JSONB=var2781, $r2=var3320, r4=var2692, $b1=var943, $i3=var918, $i5=var3497, $r5=var1252, com.alibaba.fastjson2.JSONReader=var548, $i2=var1115, com.alibaba.fastjson2.JSONException=var531, $r11=var2107, $r7=var1865}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fieldName not support input type ");	$b0 = r1.<com.alibaba.fastjson2.JSONReaderJSONB: byte strtype>;	$r2 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>($b0);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$b1 = r1.<com.alibaba.fastjson2.JSONReaderJSONB: byte strtype>;	$i3 = (int) $b1;	$i5 = (int) -109;	if $i3 != $i5 goto $r5 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset ");	$r5 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset ");	$i2 = r1.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r11 = new com.alibaba.fastjson2.JSONException;	$r7 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r7);	return $r11
;block_num 2