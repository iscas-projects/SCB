(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1267 0)
(declare-sort var1568 0)
(declare-sort var3992 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bytes/-413709904 (var1267) (Array Int Int))
(declare-fun offset/1287024874 (var1568) Int)
(declare-fun cast-from-var1267-to-var1568 (var1267) var1568)
(declare-fun type/-413709904 (var1267) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3992-init () var3992)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun readString/-565925419 (var1267) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3992 String) void)
(declare-const null-var1267 var1267)
(declare-const null-Int Int)
(declare-const var3897 var1267) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var3897 null-var1267)))
(declare-const var1314 Int) ; Statement: i4 := @parameter0: int 
(assert (not (= var1314 null-Int)))
(define-const var1403 (Array Int Int) (bytes/-413709904 var3897)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes> 
(define-const var2572 Int (offset/1287024874 (cast-from-var1267-to-var1568 var3897))) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(define-const var528 Int (select var1403 var2572)) ; Statement: $b1 = $r1[$i0] 
(declare-const var3897!1 var1267)
(assert (not (= var3897!1 null-var1267)))
(assert (= (type/-413709904 var3897!1) var528)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type> = $b1 
(define-const var3285 Int (type/-413709904 var3897!1)) ; Statement: $b2 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type> 
(define-const var1324 Int (cast-from-Int-to-Int var3285)) ; Statement: $i10 = (int) $b2 
 ; Statement: if $i10 < 73 goto $r11 = new com.alibaba.fastjson2.JSONException 
(assert (not (< var1324 73))) ; Negate: Cond: $i10 < 73  
(define-const var2727 Int (type/-413709904 var3897!1)) ; Statement: $b3 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type> 
(define-const var3627 Int (cast-from-Int-to-Int var2727)) ; Statement: $i11 = (int) $b3 
 ; Statement: if $i11 <= 120 goto (branch) 
(assert (<= var3627 120)) ; Cond: $i11 <= 120 
 ; Statement: if i4 < 21 goto $r13 = new com.alibaba.fastjson2.JSONException 
(assert (not (< var1314 21))) ; Negate: Cond: i4 < 21  
 ; Statement: if i4 > 29 goto $r13 = new com.alibaba.fastjson2.JSONException 
(assert (> var1314 29)) ; Cond: i4 > 29 
(define-const var1207 var3992 var3992-init) ; Statement: $r13 = new com.alibaba.fastjson2.JSONException 
(define-const var3579 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3579)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3579!1 String)
(assert (= var3579!1 ""))
(assert true)
(define-const var2816 String (append/672562846 var3579!1 "illegal LocalDateTime string : ")) ; Statement: $r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal LocalDateTime string : ") 
(declare-const var3579!2 String)
(assert (= var3579!2 (str.++ var3579!1 "illegal LocalDateTime string : ")))
(assert true)
(define-const var463 String (readString/-565925419 var3897!1)) ; Statement: $r8 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: java.lang.String readString()>() 
(assert true)
(define-const var2359 String (append/672562846 var2816 var463)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2816!1 String)
(assert (= var2816!1 (str.++ var2816 var463)))
(assert true)
(define-const var1200 String (toString/-2075883882 var2359)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1207 var1200)) ; Statement: specialinvoke $r13.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10) 

(declare-const var1207!1 var3992)
(declare-const var1200!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {bytes/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte[]), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var1267-to-var1568=([com.alibaba.fastjson2.JSONReaderJSONB], com.alibaba.fastjson2.JSONReader), type/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte), cast-from-Int-to-Int=([byte], int), var3992-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), readString/-565925419=([com.alibaba.fastjson2.JSONReaderJSONB], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1267=com.alibaba.fastjson2.JSONReaderJSONB, var3897=r0, var1314=i4, var1403=$r1, var1568=com.alibaba.fastjson2.JSONReader, var2572=$i0, var528=$b1, var3285=$b2, var1324=$i10, var2727=$b3, var3627=$i11, var3992=com.alibaba.fastjson2.JSONException, var1207=$r13, var3579=$r12, var2816=$r7, var463=$r8, var2359=$r9, var1200=$r10}
; {com.alibaba.fastjson2.JSONReaderJSONB=var1267, r0=var3897, i4=var1314, $r1=var1403, com.alibaba.fastjson2.JSONReader=var1568, $i0=var2572, $b1=var528, $b2=var3285, $i10=var1324, $b3=var2727, $i11=var3627, com.alibaba.fastjson2.JSONException=var3992, $r13=var1207, $r12=var3579, $r7=var2816, $r8=var463, $r9=var2359, $r10=var1200}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	i4 := @parameter0: int;	$r1 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;	$i0 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	$b1 = $r1[$i0];	r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type> = $b1;	$b2 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type>;	$i10 = (int) $b2;	if $i10 < 73 goto $r11 = new com.alibaba.fastjson2.JSONException;	$b3 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type>;	$i11 = (int) $b3;	if $i11 <= 120 goto (branch);	if i4 < 21 goto $r13 = new com.alibaba.fastjson2.JSONException;	if i4 > 29 goto $r13 = new com.alibaba.fastjson2.JSONException;	$r13 = new com.alibaba.fastjson2.JSONException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal LocalDateTime string : ");	$r8 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: java.lang.String readString()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10);	throw $r13
;block_num 5