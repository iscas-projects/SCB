(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2202 0)
(declare-sort var1778 0)
(declare-sort var3957 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3957-init () var3957)
(declare-fun <init>/593337323 (var3957 Int) void)
(declare-fun format/215566421 (var1778 var3957) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var1778 var1778)
(declare-const var2141 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var2141 null-Int)))
(declare-const var42 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var42 null-String)))
(declare-const var3835 var1778) ; Statement: r0 := @parameter2: java.text.DateFormat 
(assert (not (= var3835 null-var1778)))
(define-const var2300 Int (div var2141 1000)) ; Statement: $l1 = l0 / 1000L 
(define-const var656 Int (* var2300 1000)) ; Statement: l17 = $l1 * 1000L 
(define-const var414 Int (ite (> var656 var2141) 1 (ite (< var656 var2141) (- 1) 0))) ; Statement: $b2 = l17 cmp l0 
(define-const var2353 Int (cast-from-Int-to-Int var414)) ; Statement: $i20 = (int) $b2 
 ; Statement: if $i20 <= 0 goto $l3 = l0 - l17 
(assert (<= var2353 0)) ; Cond: $i20 <= 0 
(define-const var3710 Int (- var2141 var656)) ; Statement: $l3 = l0 - l17 
(define-const var2448 Int (cast-from-Int-to-Int var3710)) ; Statement: $i16 = (int) $l3 
(define-const var159 Int 654) ; Statement: s18 = 654 
(define-const var6 String "654") ; Statement: r10 = "654" 
(define-const var1825 String "654") ; Statement: r13 = "654" 
(define-const var3350 String "654") ; Statement: r12 = "654" 
(define-const var314 String "654") ; Statement: r11 = "654" 
 ; Statement: if $i16 != 654 goto $r14 = new java.util.Date 
(assert (not (= var2448 654))) ; Cond: $i16 != 654 
(define-const var1336 var3957 var3957-init) ; Statement: $r14 = new java.util.Date 
(define-const var192 Int (cast-from-Int-to-Int var159)) ; Statement: $l4 = (long) s18 
(define-const var2572 Int (+ var656 var192)) ; Statement: $l5 = l17 + $l4 
(assert true)
;(assert (<init>/593337323 var1336 var2572)) ; Statement: specialinvoke $r14.<java.util.Date: void <init>(long)>($l5) 

(declare-const var1336!1 var3957)
(declare-const var2572!1 Int)
(assert true)
(define-const var2261 String (format/215566421 var3835 var1336!1)) ; Statement: $r9 = virtualinvoke r0.<java.text.DateFormat: java.lang.String format(java.util.Date)>($r14) 
(assert true)
(define-const var3892 Int (length/-134980193 var2261)) ; Statement: $i7 = virtualinvoke $r9.<java.lang.String: int length()>() 
(assert true)
(define-const var1246 Int (length/-134980193 var42)) ; Statement: $i6 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if $i7 == $i6 goto i19 = 0 
(assert (not (= var3892 var1246))) ; Negate: Cond: $i7 == $i6  
(define-const var3533 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i22 = (int) -1 
 ; Statement: return $i22 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var3957-init=([], java.util.Date), <init>/593337323=([java.util.Date, long], void), format/215566421=([java.text.DateFormat, java.util.Date], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2141=l0, var42=r2, var2202=null_type, var1778=java.text.DateFormat, var3835=r0, var2300=$l1, var656=l17, var414=$b2, var2353=$i20, var3710=$l3, var2448=$i16, var159=s18, var6=r10, var1825=r13, var3350=r12, var314=r11, var3957=java.util.Date, var1336=$r14, var192=$l4, var2572=$l5, var2261=$r9, var3892=$i7, var1246=$i6, var3533=$i22}
; {l0=var2141, r2=var42, null_type=var2202, java.text.DateFormat=var1778, r0=var3835, $l1=var2300, l17=var656, $b2=var414, $i20=var2353, $l3=var3710, $i16=var2448, s18=var159, r10=var6, r13=var1825, r12=var3350, r11=var314, java.util.Date=var3957, $r14=var1336, $l4=var192, $l5=var2572, $r9=var2261, $i7=var3892, $i6=var1246, $i22=var3533}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts l0 := @parameter0: long;	r2 := @parameter1: java.lang.String;	r0 := @parameter2: java.text.DateFormat;	$l1 = l0 / 1000L;	l17 = $l1 * 1000L;	$b2 = l17 cmp l0;	$i20 = (int) $b2;	if $i20 <= 0 goto $l3 = l0 - l17;	$l3 = l0 - l17;	$i16 = (int) $l3;	s18 = 654;	r10 = "654";	r13 = "654";	r12 = "654";	r11 = "654";	if $i16 != 654 goto $r14 = new java.util.Date;	$r14 = new java.util.Date;	$l4 = (long) s18;	$l5 = l17 + $l4;	specialinvoke $r14.<java.util.Date: void <init>(long)>($l5);	$r9 = virtualinvoke r0.<java.text.DateFormat: java.lang.String format(java.util.Date)>($r14);	$i7 = virtualinvoke $r9.<java.lang.String: int length()>();	$i6 = virtualinvoke r2.<java.lang.String: int length()>();	if $i7 == $i6 goto i19 = 0;	$i22 = (int) -1;	return $i22
;block_num 4