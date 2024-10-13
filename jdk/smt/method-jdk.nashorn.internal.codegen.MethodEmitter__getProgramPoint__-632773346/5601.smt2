(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/1240665136 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var1732 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1732 null-Int)))
(define-const var2524 Int (bv2nat (bvand ((_ int2bv 64) var1732) ((_ int2bv 64) 8)))) ; Statement: $i1 = i0 & 8 
 ; Statement: if $i1 != 0 goto $r5 = new java.lang.StringBuilder 
(assert (not (= var2524 0))) ; Cond: $i1 != 0 
(define-const var1062 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1062)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1062!1 String)
(assert (= var1062!1 ""))
(assert true)
(define-const var1504 String (append/672562846 var1062!1 "pp=")) ; Statement: $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("pp=") 
(declare-const var1062!2 String)
(assert (= var1062!2 (str.++ var1062!1 "pp=")))
(define-const var1723 Int (cast-from-Int-to-Int (- 2048))) ; Statement: $i5 = (int) -2048 
(define-const var2512 Int (bv2nat (bvand ((_ int2bv 64) var1732) ((_ int2bv 64) var1723)))) ; Statement: $i2 = i0 & $i5 
(define-const var2892 Int (div var2512 (to_int (^ 2 11)))) ; Statement: $i3 = $i2 >> 11 
(define-const var2640 String (String_valueOf/1240665136 var2892)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3) 
(assert true)
(define-const var3019 String (append/672562846 var1504 var2640)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var1504!1 String)
(assert (= var1504!1 (str.++ var1504 var2640)))
(assert true)
(define-const var1743 String (toString/-2075883882 var3019)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([int], int), String_valueOf/1240665136=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1732=i0, var2524=$i1, var1062=$r5, var1504=$r2, var1723=$i5, var2512=$i2, var2892=$i3, var2640=$r1, var3019=$r3, var1743=$r4}
; {i0=var1732, $i1=var2524, $r5=var1062, $r2=var1504, $i5=var1723, $i2=var2512, $i3=var2892, $r1=var2640, $r3=var3019, $r4=var1743}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String valueOf(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$i1 = i0 & 8;	if $i1 != 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("pp=");	$i5 = (int) -2048;	$i2 = i0 & $i5;	$i3 = $i2 >> 11;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2