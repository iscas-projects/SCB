(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var62 0)
(declare-sort var831 0)
(declare-sort var515 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bytes/-413709904 (var62) (Array Int Int))
(declare-fun offset/1287024874 (var831) Int)
(declare-fun cast-from-var62-to-var831 (var62) var831)
(declare-fun type/-413709904 (var62) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var515-init () var515)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun readString/-565925419 (var62) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var515 String) void)
(declare-const null-var62 var62)
(declare-const null-Int Int)
(declare-const var1484 var62) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var1484 null-var62)))
(declare-const var1235 Int) ; Statement: i4 := @parameter0: int 
(assert (not (= var1235 null-Int)))
(define-const var3799 (Array Int Int) (bytes/-413709904 var1484)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes> 
(define-const var1106 Int (offset/1287024874 (cast-from-var62-to-var831 var1484))) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(define-const var769 Int (select var3799 var1106)) ; Statement: $b1 = $r1[$i0] 
(declare-const var1484!1 var62)
(assert (not (= var1484!1 null-var62)))
(assert (= (type/-413709904 var1484!1) var769)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type> = $b1 
(define-const var346 Int (type/-413709904 var1484!1)) ; Statement: $b2 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type> 
(define-const var539 Int (cast-from-Int-to-Int var346)) ; Statement: $i10 = (int) $b2 
 ; Statement: if $i10 < 73 goto $r11 = new com.alibaba.fastjson2.JSONException 
(assert (not (< var539 73))) ; Negate: Cond: $i10 < 73  
(define-const var559 Int (type/-413709904 var1484!1)) ; Statement: $b3 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type> 
(define-const var3284 Int (cast-from-Int-to-Int var559)) ; Statement: $i11 = (int) $b3 
 ; Statement: if $i11 <= 120 goto (branch) 
(assert (<= var3284 120)) ; Cond: $i11 <= 120 
 ; Statement: if i4 < 21 goto $r13 = new com.alibaba.fastjson2.JSONException 
(assert (< var1235 21)) ; Cond: i4 < 21 
(define-const var2326 var515 var515-init) ; Statement: $r13 = new com.alibaba.fastjson2.JSONException 
(define-const var2917 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2917)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2917!1 String)
(assert (= var2917!1 ""))
(assert true)
(define-const var2514 String (append/672562846 var2917!1 "illegal LocalDateTime string : ")) ; Statement: $r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal LocalDateTime string : ") 
(declare-const var2917!2 String)
(assert (= var2917!2 (str.++ var2917!1 "illegal LocalDateTime string : ")))
(assert true)
(define-const var132 String (readString/-565925419 var1484!1)) ; Statement: $r8 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: java.lang.String readString()>() 
(assert true)
(define-const var3083 String (append/672562846 var2514 var132)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2514!1 String)
(assert (= var2514!1 (str.++ var2514 var132)))
(assert true)
(define-const var1985 String (toString/-2075883882 var3083)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2326 var1985)) ; Statement: specialinvoke $r13.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10) 

(declare-const var2326!1 var515)
(declare-const var1985!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {bytes/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte[]), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var62-to-var831=([com.alibaba.fastjson2.JSONReaderJSONB], com.alibaba.fastjson2.JSONReader), type/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte), cast-from-Int-to-Int=([byte], int), var515-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), readString/-565925419=([com.alibaba.fastjson2.JSONReaderJSONB], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var62=com.alibaba.fastjson2.JSONReaderJSONB, var1484=r0, var1235=i4, var3799=$r1, var831=com.alibaba.fastjson2.JSONReader, var1106=$i0, var769=$b1, var346=$b2, var539=$i10, var559=$b3, var3284=$i11, var515=com.alibaba.fastjson2.JSONException, var2326=$r13, var2917=$r12, var2514=$r7, var132=$r8, var3083=$r9, var1985=$r10}
; {com.alibaba.fastjson2.JSONReaderJSONB=var62, r0=var1484, i4=var1235, $r1=var3799, com.alibaba.fastjson2.JSONReader=var831, $i0=var1106, $b1=var769, $b2=var346, $i10=var539, $b3=var559, $i11=var3284, com.alibaba.fastjson2.JSONException=var515, $r13=var2326, $r12=var2917, $r7=var2514, $r8=var132, $r9=var3083, $r10=var1985}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	i4 := @parameter0: int;	$r1 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;	$i0 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	$b1 = $r1[$i0];	r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type> = $b1;	$b2 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type>;	$i10 = (int) $b2;	if $i10 < 73 goto $r11 = new com.alibaba.fastjson2.JSONException;	$b3 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type>;	$i11 = (int) $b3;	if $i11 <= 120 goto (branch);	if i4 < 21 goto $r13 = new com.alibaba.fastjson2.JSONException;	$r13 = new com.alibaba.fastjson2.JSONException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal LocalDateTime string : ");	$r8 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: java.lang.String readString()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10);	throw $r13
;block_num 4