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
(declare-const var1456 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1456 null-Int)))
(define-const var3198 Int (div var1456 1000)) ; Statement: l1 = l0 / 1000L 
(define-const var2643 Int (div var3198 60)) ; Statement: l2 = l1 / 60L 
(define-const var2848 Int (ite (> var2643 0) 1 (ite (< var2643 0) (- 1) 0))) ; Statement: $b3 = l2 cmp 0L 
(define-const var3931 Int (cast-from-Int-to-Int var2848)) ; Statement: $i10 = (int) $b3 
 ; Statement: if $i10 <= 0 goto $r20 = new java.lang.StringBuilder 
(assert (<= var3931 0)) ; Cond: $i10 <= 0 
(define-const var1192 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1192)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1192!1 String)
(assert (= var1192!1 ""))
(define-const var1171 String (Int_toString/1077016676 var3198)) ; Statement: $r1 = staticinvoke <java.lang.Long: java.lang.String toString(long)>(l1) 
(assert true)
(define-const var3911 String (append/672562846 var1192!1 var1171)) ; Statement: $r2 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var1192!2 String)
(assert (= var1192!2 (str.++ var1192!1 var1171)))
(assert true)
(define-const var913 String (append/672562846 var3911 " second")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" second") 
(declare-const var3911!1 String)
(assert (= var3911!1 (str.++ var3911 " second")))
(define-const var2746 Int (mod var3198 60)) ; Statement: $l4 = l1 % 60L 
(define-const var2644 Int (ite (> var2746 1) 1 (ite (< var2746 1) (- 1) 0))) ; Statement: $b5 = $l4 cmp 1L 
 ; Statement: if $b5 != 0 goto $r18 = "s" 
(assert (not (not (= var2644 0)))) ; Negate: Cond: $b5 != 0  
(define-const var2391 String "") ; Statement: $r18 = "" 
 ; Statement: goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2895 String (append/672562846 var913 var2391)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var913!1 String)
(assert (= var913!1 (str.++ var913 var2391)))
(assert true)
(define-const var3118 String (toString/-2075883882 var2895)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), Int_toString/1077016676=([long], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1456=l0, var3198=l1, var2643=l2, var2848=$b3, var3931=$i10, var1192=$r20, var1171=$r1, var3911=$r2, var913=$r3, var2746=$l4, var2644=$b5, var2391=$r18, var2895=$r4, var3118=$r5}
; {l0=var1456, l1=var3198, l2=var2643, $b3=var2848, $i10=var3931, $r20=var1192, $r1=var1171, $r2=var3911, $r3=var913, $l4=var2746, $b5=var2644, $r18=var2391, $r4=var2895, $r5=var3118}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Long: java.lang.String toString(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts l0 := @parameter0: long;	l1 = l0 / 1000L;	l2 = l1 / 60L;	$b3 = l2 cmp 0L;	$i10 = (int) $b3;	if $i10 <= 0 goto $r20 = new java.lang.StringBuilder;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r1 = staticinvoke <java.lang.Long: java.lang.String toString(long)>(l1);	$r2 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" second");	$l4 = l1 % 60L;	$b5 = $l4 cmp 1L;	if $b5 != 0 goto $r18 = "s";	$r18 = "";	goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18)];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 4