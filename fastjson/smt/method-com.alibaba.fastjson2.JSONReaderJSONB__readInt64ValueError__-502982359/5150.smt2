(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var404 0)
(declare-sort var3722 0)
(declare-sort var1215 0)
(declare-sort var2369 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3722-init () var3722)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1215_typeName/1994747818 (Int) String)
(declare-fun offset/1287024874 (var2369) Int)
(declare-fun cast-from-var404-to-var2369 (var404) var2369)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun bytes/-413709904 (var404) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3722 String) void)
(declare-const null-var404 var404)
(declare-const null-Int Int)
(declare-const var3820 var404) ; Statement: r5 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var3820 null-var404)))
(declare-const var3648 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var3648 null-Int)))
(define-const var1832 var3722 var3722-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var490 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var490)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var490!1 String)
(assert (= var490!1 ""))
(assert true)
(define-const var2359 String (append/672562846 var490!1 "readInt64Value not support ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("readInt64Value not support ") 
(declare-const var490!2 String)
(assert (= var490!2 (str.++ var490!1 "readInt64Value not support ")))
(define-const var2564 String (var1215_typeName/1994747818 var3648)) ; Statement: $r2 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>(b0) 
(assert true)
(define-const var2668 String (append/672562846 var2359 var2564)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2359!1 String)
(assert (= var2359!1 (str.++ var2359 var2564)))
(assert true)
(define-const var3775 String (append/672562846 var2668 ", offset ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset ") 
(declare-const var2668!1 String)
(assert (= var2668!1 (str.++ var2668 ", offset ")))
(define-const var1810 Int (offset/1287024874 (cast-from-var404-to-var2369 var3820))) ; Statement: $i1 = r5.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(assert true)
(define-const var117 String (append/-1001720160 var3775 var1810)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3775!1 String)
(assert (str.prefixof var3775 var3775!1))
(assert true)
(define-const var1609 String (append/672562846 var117 "/")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var117!1 String)
(assert (= var117!1 (str.++ var117 "/")))
(define-const var1490 (Array Int Int) (bytes/-413709904 var3820)) ; Statement: $r8 = r5.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes> 
(define-const var52 Int (getLength-Arr-Int-1 var1490)) ; Statement: $i2 = lengthof $r8 
(assert true)
(define-const var1365 String (append/-1001720160 var1609 var52)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1609!1 String)
(assert (str.prefixof var1609 var1609!1))
(assert true)
(define-const var3692 String (toString/-2075883882 var1365)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1832 var3692)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r11) 

(declare-const var1832!1 var3722)
(declare-const var3692!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3722-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1215_typeName/1994747818=([byte], java.lang.String), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var404-to-var2369=([com.alibaba.fastjson2.JSONReaderJSONB], com.alibaba.fastjson2.JSONReader), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), bytes/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte[]), getLength-Arr-Int-1=([byte[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var404=com.alibaba.fastjson2.JSONReaderJSONB, var3820=r5, var3648=b0, var3722=com.alibaba.fastjson2.JSONException, var1832=$r0, var490=$r1, var2359=$r3, var1215=com.alibaba.fastjson2.JSONB, var2564=$r2, var2668=$r4, var3775=$r6, var2369=com.alibaba.fastjson2.JSONReader, var1810=$i1, var117=$r7, var1609=$r9, var1490=$r8, var52=$i2, var1365=$r10, var3692=$r11}
; {com.alibaba.fastjson2.JSONReaderJSONB=var404, r5=var3820, b0=var3648, com.alibaba.fastjson2.JSONException=var3722, $r0=var1832, $r1=var490, $r3=var2359, com.alibaba.fastjson2.JSONB=var1215, $r2=var2564, $r4=var2668, $r6=var3775, com.alibaba.fastjson2.JSONReader=var2369, $i1=var1810, $r7=var117, $r9=var1609, $r8=var1490, $i2=var52, $r10=var1365, $r11=var3692}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	b0 := @parameter0: byte;	$r0 = new com.alibaba.fastjson2.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("readInt64Value not support ");	$r2 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>(b0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset ");	$i1 = r5.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r8 = r5.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;	$i2 = lengthof $r8;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r11);	throw $r0
;block_num 1