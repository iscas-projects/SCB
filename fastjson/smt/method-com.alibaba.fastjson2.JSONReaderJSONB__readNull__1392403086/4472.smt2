(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2506 0)
(declare-sort var1356 0)
(declare-sort var2307 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bytes/-413709904 (var2506) (Array Int Int))
(declare-fun offset/1287024874 (var1356) Int)
(declare-fun cast-from-var2506-to-var1356 (var2506) var1356)
(declare-fun type/-413709904 (var2506) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2307-init () var2307)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2307 String) void)
(declare-const null-var2506 var2506)
(declare-const var1014 var2506) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var1014 null-var2506)))
(define-const var1024 (Array Int Int) (bytes/-413709904 var1014)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes> 
(define-const var655 Int (offset/1287024874 (cast-from-var2506-to-var1356 var1014))) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(define-const var2714 Int (+ var655 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var1014!1 var2506)
(assert (not (= var1014!1 null-var2506)))
(assert (= (offset/1287024874 (cast-from-var2506-to-var1356 var1014!1)) var2714)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> = $i1 
(define-const var2076 Int (select var1024 var655)) ; Statement: $b2 = $r1[$i0] 
(declare-const var1014!2 var2506)
(assert (not (= var1014!2 null-var2506)))
(assert (= (type/-413709904 var1014!2) var2076)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type> = $b2 
(define-const var1607 Int (type/-413709904 var1014!2)) ; Statement: $b3 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type> 
(define-const var3330 Int (cast-from-Int-to-Int var1607)) ; Statement: $i5 = (int) $b3 
(define-const var3546 Int (cast-from-Int-to-Int (- 81))) ; Statement: $i7 = (int) -81 
 ; Statement: if $i5 == $i7 goto return 
(assert (not (= var3330 var3546))) ; Negate: Cond: $i5 == $i7  
(define-const var2484 var2307 var2307-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var3983 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3983)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3983!1 String)
(assert (= var3983!1 ""))
(assert true)
(define-const var3771 String (append/672562846 var3983!1 "null not match, ")) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null not match, ") 
(declare-const var3983!2 String)
(assert (= var3983!2 (str.++ var3983!1 "null not match, ")))
(define-const var783 Int (type/-413709904 var1014!2)) ; Statement: $b4 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type> 
(define-const var1059 Int (cast-from-Int-to-Int var783)) ; Statement: $i8 = (int) $b4 
(assert true)
(define-const var2681 String (append/-1001720160 var3771 var1059)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i8) 
(declare-const var3771!1 String)
(assert (str.prefixof var3771 var3771!1))
(assert true)
(define-const var3331 String (toString/-2075883882 var2681)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2484 var3331)) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var2484!1 var2307)
(declare-const var3331!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {bytes/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte[]), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var2506-to-var1356=([com.alibaba.fastjson2.JSONReaderJSONB], com.alibaba.fastjson2.JSONReader), type/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte), cast-from-Int-to-Int=([byte], int), var2307-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2506=com.alibaba.fastjson2.JSONReaderJSONB, var1014=r0, var1024=$r1, var1356=com.alibaba.fastjson2.JSONReader, var655=$i0, var2714=$i1, var2076=$b2, var1607=$b3, var3330=$i5, var3546=$i7, var2307=com.alibaba.fastjson2.JSONException, var2484=$r8, var3983=$r7, var3771=$r4, var783=$b4, var1059=$i8, var2681=$r5, var3331=$r6}
; {com.alibaba.fastjson2.JSONReaderJSONB=var2506, r0=var1014, $r1=var1024, com.alibaba.fastjson2.JSONReader=var1356, $i0=var655, $i1=var2714, $b2=var2076, $b3=var1607, $i5=var3330, $i7=var3546, com.alibaba.fastjson2.JSONException=var2307, $r8=var2484, $r7=var3983, $r4=var3771, $b4=var783, $i8=var1059, $r5=var2681, $r6=var3331}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	$r1 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;	$i0 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	$i1 = $i0 + 1;	r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> = $i1;	$b2 = $r1[$i0];	r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type> = $b2;	$b3 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type>;	$i5 = (int) $b3;	$i7 = (int) -81;	if $i5 == $i7 goto return;	$r8 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null not match, ");	$b4 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type>;	$i8 = (int) $b4;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i8);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2