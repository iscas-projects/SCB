(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2544 0)
(declare-sort var2073 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2073_toString/-1054155509 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2544 var2544)
(declare-const null-Int Int)
(declare-const var309 var2544) ; Statement: r8 := @parameter0: java.lang.Object 
(assert (not (= var309 null-var2544)))
(declare-const var182 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var182 null-Int)))
(declare-const var2706 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var2706 null-Int)))
(declare-const var2521 Int) ; Statement: i6 := @parameter3: int 
(assert (not (= var2521 null-Int)))
(define-const var2338 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2338)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2338!1 String)
(assert (= var2338!1 ""))
(define-const var3948 Int (cast-from-Int-to-Int 65535)) ; Statement: $i10 = (int) 65535 
(define-const var2166 Int (bv2nat (bvand ((_ int2bv 64) var182) ((_ int2bv 64) var3948)))) ; Statement: $i1 = i0 & $i10 
(define-const var2023 Int (cast-from-Int-to-Int var2166)) ; Statement: $c2 = (char) $i1 
(define-const var2298 String (var2073_toString/-1054155509 var2023)) ; Statement: $r1 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c2) 
(assert true)
(define-const var953 String (append/672562846 var2338!1 var2298)) ; Statement: $r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var2338!2 String)
(assert (= var2338!2 (str.++ var2338!1 var2298)))
(define-const var1998 Int (cast-from-Int-to-Int 65535)) ; Statement: $i12 = (int) 65535 
(define-const var1847 Int (bv2nat (bvand ((_ int2bv 64) var2706) ((_ int2bv 64) var1998)))) ; Statement: $i4 = i3 & $i12 
(define-const var2667 Int (cast-from-Int-to-Int var1847)) ; Statement: $c5 = (char) $i4 
(define-const var2278 String (var2073_toString/-1054155509 var2667)) ; Statement: $r2 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c5) 
(assert true)
(define-const var3703 String (append/672562846 var953 var2278)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var953!1 String)
(assert (= var953!1 (str.++ var953 var2278)))
(define-const var1526 Int (cast-from-Int-to-Int 65535)) ; Statement: $i14 = (int) 65535 
(define-const var2967 Int (bv2nat (bvand ((_ int2bv 64) var2521) ((_ int2bv 64) var1526)))) ; Statement: $i7 = i6 & $i14 
(define-const var657 Int (cast-from-Int-to-Int var2967)) ; Statement: $c8 = (char) $i7 
(define-const var1686 String (var2073_toString/-1054155509 var657)) ; Statement: $r4 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c8) 
(assert true)
(define-const var2800 String (append/672562846 var3703 var1686)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3703!1 String)
(assert (= var3703!1 (str.++ var3703 var1686)))
(assert true)
(define-const var2631 String (toString/-2075883882 var2800)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-Int-to-Int=([int], int), var2073_toString/-1054155509=([char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2544=java.lang.Object, var309=r8, var182=i0, var2706=i3, var2521=i6, var2338=$r9, var3948=$i10, var2166=$i1, var2023=$c2, var2073=java.lang.Character, var2298=$r1, var953=$r3, var1998=$i12, var1847=$i4, var2667=$c5, var2278=$r2, var3703=$r5, var1526=$i14, var2967=$i7, var657=$c8, var1686=$r4, var2800=$r6, var2631=$r7}
; {java.lang.Object=var2544, r8=var309, i0=var182, i3=var2706, i6=var2521, $r9=var2338, $i10=var3948, $i1=var2166, $c2=var2023, java.lang.Character=var2073, $r1=var2298, $r3=var953, $i12=var1998, $i4=var1847, $c5=var2667, $r2=var2278, $r5=var3703, $i14=var1526, $i7=var2967, $c8=var657, $r4=var1686, $r6=var2800, $r7=var2631}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Character: java.lang.String toString(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Character: java.lang.String toString(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Character: java.lang.String toString(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	i3 := @parameter2: int;	i6 := @parameter3: int;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$i10 = (int) 65535;	$i1 = i0 & $i10;	$c2 = (char) $i1;	$r1 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c2);	$r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$i12 = (int) 65535;	$i4 = i3 & $i12;	$c5 = (char) $i4;	$r2 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c5);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$i14 = (int) 65535;	$i7 = i6 & $i14;	$c8 = (char) $i7;	$r4 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c8);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1