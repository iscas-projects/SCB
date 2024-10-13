(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1944 0)
(declare-sort var2308 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peeked/1477480286 (var1944) Int)
(declare-fun peekedLong/1477480286 (var1944) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2308-init () var2308)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(declare-fun locationString/1083242436 (var1944) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1788180247 (var2308 String) void)
(declare-const null-var1944 var1944)
(declare-const var1135 var1944) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var1135 null-var1944)))
(define-const var2271 Int (peeked/1477480286 var1135)) ; Statement: i20 = r0.<com.google.gson.stream.JsonReader: int peeked> 
 ; Statement: if i20 != 0 goto (branch) 
(assert (not (= var2271 0))) ; Cond: i20 != 0 
 ; Statement: if i20 != 15 goto (branch) 
(assert (not (not (= var2271 15)))) ; Negate: Cond: i20 != 15  
(define-const var1270 Int (peekedLong/1477480286 var1135)) ; Statement: $l10 = r0.<com.google.gson.stream.JsonReader: long peekedLong> 
(define-const var2671 Int (cast-from-Int-to-Int var1270)) ; Statement: i21 = (int) $l10 
(define-const var1396 Int (peekedLong/1477480286 var1135)) ; Statement: $l12 = r0.<com.google.gson.stream.JsonReader: long peekedLong> 
(define-const var1995 Int (cast-from-Int-to-Int var2671)) ; Statement: $l11 = (long) i21 
(define-const var3492 Int (ite (> var1396 var1995) 1 (ite (< var1396 var1995) (- 1) 0))) ; Statement: $b13 = $l12 cmp $l11 
 ; Statement: if $b13 == 0 goto r0.<com.google.gson.stream.JsonReader: int peeked> = 0 
(assert (not (= var3492 0))) ; Negate: Cond: $b13 == 0  
(define-const var244 var2308 var2308-init) ; Statement: $r24 = new java.lang.NumberFormatException 
(define-const var1266 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1266)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1266!1 String)
(assert (= var1266!1 ""))
(assert true)
(define-const var2816 String (append/672562846 var1266!1 "Expected an int but was ")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected an int but was ") 
(declare-const var1266!2 String)
(assert (= var1266!2 (str.++ var1266!1 "Expected an int but was ")))
(define-const var1890 Int (peekedLong/1477480286 var1135)) ; Statement: $l18 = r0.<com.google.gson.stream.JsonReader: long peekedLong> 
(assert true)
(define-const var155 String (append/-901862667 var2816 var1890)) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l18) 
(declare-const var2816!1 String)
(assert (str.prefixof var2816 var2816!1))
(assert true)
(define-const var1515 String (locationString/1083242436 var1135)) ; Statement: $r27 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var1474 String (append/672562846 var155 var1515)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var155!1 String)
(assert (= var155!1 (str.++ var155 var1515)))
(assert true)
(define-const var1256 String (toString/-2075883882 var1474)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1788180247 var244 var1256)) ; Statement: specialinvoke $r24.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r30) 

(declare-const var244!1 var2308)
(declare-const var1256!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {peeked/1477480286=([com.google.gson.stream.JsonReader], int), peekedLong/1477480286=([com.google.gson.stream.JsonReader], long), cast-from-Int-to-Int=([long], int), var2308-init=([], java.lang.NumberFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), locationString/1083242436=([com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1788180247=([java.lang.NumberFormatException, java.lang.String], void)}
; {var1944=com.google.gson.stream.JsonReader, var1135=r0, var2271=i20, var1270=$l10, var2671=i21, var1396=$l12, var1995=$l11, var3492=$b13, var2308=java.lang.NumberFormatException, var244=$r24, var1266=$r25, var2816=$r26, var1890=$l18, var155=$r28, var1515=$r27, var1474=$r29, var1256=$r30}
; {com.google.gson.stream.JsonReader=var1944, r0=var1135, i20=var2271, $l10=var1270, i21=var2671, $l12=var1396, $l11=var1995, $b13=var3492, java.lang.NumberFormatException=var2308, $r24=var244, $r25=var1266, $r26=var2816, $l18=var1890, $r28=var155, $r27=var1515, $r29=var1474, $r30=var1256}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	i20 = r0.<com.google.gson.stream.JsonReader: int peeked>;	if i20 != 0 goto (branch);	if i20 != 15 goto (branch);	$l10 = r0.<com.google.gson.stream.JsonReader: long peekedLong>;	i21 = (int) $l10;	$l12 = r0.<com.google.gson.stream.JsonReader: long peekedLong>;	$l11 = (long) i21;	$b13 = $l12 cmp $l11;	if $b13 == 0 goto r0.<com.google.gson.stream.JsonReader: int peeked> = 0;	$r24 = new java.lang.NumberFormatException;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected an int but was ");	$l18 = r0.<com.google.gson.stream.JsonReader: long peekedLong>;	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l18);	$r27 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r30);	throw $r24
;block_num 4