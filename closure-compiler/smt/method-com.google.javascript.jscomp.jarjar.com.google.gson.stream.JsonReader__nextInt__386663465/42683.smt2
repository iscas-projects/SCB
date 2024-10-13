(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1778 0)
(declare-sort var1044 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peeked/-1654894195 (var1778) Int)
(declare-fun peekedLong/-1654894195 (var1778) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1044-init () var1044)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(declare-fun locationString/391724147 (var1778) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1788180247 (var1044 String) void)
(declare-const null-var1778 var1778)
(declare-const var209 var1778) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var209 null-var1778)))
(define-const var3428 Int (peeked/-1654894195 var209)) ; Statement: i20 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked> 
 ; Statement: if i20 != 0 goto (branch) 
(assert (not (= var3428 0))) ; Cond: i20 != 0 
 ; Statement: if i20 != 15 goto (branch) 
(assert (not (not (= var3428 15)))) ; Negate: Cond: i20 != 15  
(define-const var934 Int (peekedLong/-1654894195 var209)) ; Statement: $l10 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: long peekedLong> 
(define-const var2967 Int (cast-from-Int-to-Int var934)) ; Statement: i21 = (int) $l10 
(define-const var460 Int (peekedLong/-1654894195 var209)) ; Statement: $l12 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: long peekedLong> 
(define-const var361 Int (cast-from-Int-to-Int var2967)) ; Statement: $l11 = (long) i21 
(define-const var3494 Int (ite (> var460 var361) 1 (ite (< var460 var361) (- 1) 0))) ; Statement: $b13 = $l12 cmp $l11 
 ; Statement: if $b13 == 0 goto r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked> = 0 
(assert (not (= var3494 0))) ; Negate: Cond: $b13 == 0  
(define-const var2810 var1044 var1044-init) ; Statement: $r24 = new java.lang.NumberFormatException 
(define-const var2873 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2873)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2873!1 String)
(assert (= var2873!1 ""))
(assert true)
(define-const var3127 String (append/672562846 var2873!1 "Expected an int but was ")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected an int but was ") 
(declare-const var2873!2 String)
(assert (= var2873!2 (str.++ var2873!1 "Expected an int but was ")))
(define-const var1389 Int (peekedLong/-1654894195 var209)) ; Statement: $l18 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: long peekedLong> 
(assert true)
(define-const var2006 String (append/-901862667 var3127 var1389)) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l18) 
(declare-const var3127!1 String)
(assert (str.prefixof var3127 var3127!1))
(assert true)
(define-const var367 String (locationString/391724147 var209)) ; Statement: $r27 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var1285 String (append/672562846 var2006 var367)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var2006!1 String)
(assert (= var2006!1 (str.++ var2006 var367)))
(assert true)
(define-const var3957 String (toString/-2075883882 var1285)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1788180247 var2810 var3957)) ; Statement: specialinvoke $r24.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r30) 

(declare-const var2810!1 var1044)
(declare-const var3957!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {peeked/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), peekedLong/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], long), cast-from-Int-to-Int=([long], int), var1044-init=([], java.lang.NumberFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), locationString/391724147=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1788180247=([java.lang.NumberFormatException, java.lang.String], void)}
; {var1778=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var209=r0, var3428=i20, var934=$l10, var2967=i21, var460=$l12, var361=$l11, var3494=$b13, var1044=java.lang.NumberFormatException, var2810=$r24, var2873=$r25, var3127=$r26, var1389=$l18, var2006=$r28, var367=$r27, var1285=$r29, var3957=$r30}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var1778, r0=var209, i20=var3428, $l10=var934, i21=var2967, $l12=var460, $l11=var361, $b13=var3494, java.lang.NumberFormatException=var1044, $r24=var2810, $r25=var2873, $r26=var3127, $l18=var1389, $r28=var2006, $r27=var367, $r29=var1285, $r30=var3957}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	i20 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked>;	if i20 != 0 goto (branch);	if i20 != 15 goto (branch);	$l10 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: long peekedLong>;	i21 = (int) $l10;	$l12 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: long peekedLong>;	$l11 = (long) i21;	$b13 = $l12 cmp $l11;	if $b13 == 0 goto r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked> = 0;	$r24 = new java.lang.NumberFormatException;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected an int but was ");	$l18 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: long peekedLong>;	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l18);	$r27 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r30);	throw $r24
;block_num 4