(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun Int_toString/1077016676 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var962 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var962 null-Int)))
(define-const var2131 Int (div var962 1000)) ; Statement: l1 = l0 / 1000L 
(define-const var2832 Int (div var2131 60)) ; Statement: l2 = l1 / 60L 
(define-const var2025 Int (ite (> var2832 0) 1 (ite (< var2832 0) (- 1) 0))) ; Statement: $b3 = l2 cmp 0L 
(define-const var3249 Int (cast-from-Int-to-Int var2025)) ; Statement: $i10 = (int) $b3 
 ; Statement: if $i10 <= 0 goto $r20 = new java.lang.StringBuilder 
(assert (<= var3249 0)) ; Cond: $i10 <= 0 
(define-const var2969 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2969)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2969!1 String)
(assert (= var2969!1 ""))
(define-const var3100 String (Int_toString/1077016676 var2131)) ; Statement: $r1 = staticinvoke <java.lang.Long: java.lang.String toString(long)>(l1) 
(assert true)
(define-const var1649 String (append/672562846 var2969!1 var3100)) ; Statement: $r2 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var2969!2 String)
(assert (= var2969!2 (str.++ var2969!1 var3100)))
(assert true)
(define-const var75 String (append/672562846 var1649 " second")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" second") 
(declare-const var1649!1 String)
(assert (= var1649!1 (str.++ var1649 " second")))
(define-const var3715 Int (mod var2131 60)) ; Statement: $l4 = l1 % 60L 
(define-const var2290 Int (ite (> var3715 1) 1 (ite (< var3715 1) (- 1) 0))) ; Statement: $b5 = $l4 cmp 1L 
 ; Statement: if $b5 != 0 goto $r18 = "s" 
(assert (not (= var2290 0))) ; Cond: $b5 != 0 
(define-const var1219 String "s") ; Statement: $r18 = "s" 
(assert true) ; Non Conditional
(assert true)
(define-const var2553 String (append/672562846 var75 var1219)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var75!1 String)
(assert (= var75!1 (str.++ var75 var1219)))
(assert true)
(define-const var504 String (toString/-2075883882 var2553)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), Int_toString/1077016676=([long], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var962=l0, var2131=l1, var2832=l2, var2025=$b3, var3249=$i10, var2969=$r20, var3100=$r1, var1649=$r2, var75=$r3, var3715=$l4, var2290=$b5, var1219=$r18, var2553=$r4, var504=$r5}
; {l0=var962, l1=var2131, l2=var2832, $b3=var2025, $i10=var3249, $r20=var2969, $r1=var3100, $r2=var1649, $r3=var75, $l4=var3715, $b5=var2290, $r18=var1219, $r4=var2553, $r5=var504}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Long: java.lang.String toString(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts l0 := @parameter0: long;	l1 = l0 / 1000L;	l2 = l1 / 60L;	$b3 = l2 cmp 0L;	$i10 = (int) $b3;	if $i10 <= 0 goto $r20 = new java.lang.StringBuilder;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r1 = staticinvoke <java.lang.Long: java.lang.String toString(long)>(l1);	$r2 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" second");	$l4 = l1 % 60L;	$b5 = $l4 cmp 1L;	if $b5 != 0 goto $r18 = "s";	$r18 = "s";	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 4