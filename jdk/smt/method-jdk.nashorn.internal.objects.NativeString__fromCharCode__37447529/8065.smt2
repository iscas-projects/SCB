(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3394 0)
(declare-sort var3787 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3787_toString/-1054155509 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3394 var3394)
(declare-const null-Int Int)
(declare-const var162 var3394) ; Statement: r10 := @parameter0: java.lang.Object 
(assert (not (= var162 null-var3394)))
(declare-const var2316 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2316 null-Int)))
(declare-const var2706 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var2706 null-Int)))
(declare-const var2832 Int) ; Statement: i6 := @parameter3: int 
(assert (not (= var2832 null-Int)))
(declare-const var2536 Int) ; Statement: i9 := @parameter4: int 
(assert (not (= var2536 null-Int)))
(define-const var3946 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3946)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3946!1 String)
(assert (= var3946!1 ""))
(define-const var3395 Int (cast-from-Int-to-Int 65535)) ; Statement: $i13 = (int) 65535 
(define-const var611 Int (bv2nat (bvand ((_ int2bv 64) var2316) ((_ int2bv 64) var3395)))) ; Statement: $i1 = i0 & $i13 
(define-const var3507 Int (cast-from-Int-to-Int var611)) ; Statement: $c2 = (char) $i1 
(define-const var1259 String (var3787_toString/-1054155509 var3507)) ; Statement: $r1 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c2) 
(assert true)
(define-const var167 String (append/672562846 var3946!1 var1259)) ; Statement: $r3 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var3946!2 String)
(assert (= var3946!2 (str.++ var3946!1 var1259)))
(define-const var2441 Int (cast-from-Int-to-Int 65535)) ; Statement: $i15 = (int) 65535 
(define-const var739 Int (bv2nat (bvand ((_ int2bv 64) var2706) ((_ int2bv 64) var2441)))) ; Statement: $i4 = i3 & $i15 
(define-const var1307 Int (cast-from-Int-to-Int var739)) ; Statement: $c5 = (char) $i4 
(define-const var798 String (var3787_toString/-1054155509 var1307)) ; Statement: $r2 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c5) 
(assert true)
(define-const var1023 String (append/672562846 var167 var798)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var167!1 String)
(assert (= var167!1 (str.++ var167 var798)))
(define-const var884 Int (cast-from-Int-to-Int 65535)) ; Statement: $i17 = (int) 65535 
(define-const var1535 Int (bv2nat (bvand ((_ int2bv 64) var2832) ((_ int2bv 64) var884)))) ; Statement: $i7 = i6 & $i17 
(define-const var1638 Int (cast-from-Int-to-Int var1535)) ; Statement: $c8 = (char) $i7 
(define-const var2011 String (var3787_toString/-1054155509 var1638)) ; Statement: $r4 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c8) 
(assert true)
(define-const var24 String (append/672562846 var1023 var2011)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1023!1 String)
(assert (= var1023!1 (str.++ var1023 var2011)))
(define-const var2137 Int (cast-from-Int-to-Int 65535)) ; Statement: $i19 = (int) 65535 
(define-const var2184 Int (bv2nat (bvand ((_ int2bv 64) var2536) ((_ int2bv 64) var2137)))) ; Statement: $i10 = i9 & $i19 
(define-const var1412 Int (cast-from-Int-to-Int var2184)) ; Statement: $c11 = (char) $i10 
(define-const var810 String (var3787_toString/-1054155509 var1412)) ; Statement: $r6 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c11) 
(assert true)
(define-const var3542 String (append/672562846 var24 var810)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var24!1 String)
(assert (= var24!1 (str.++ var24 var810)))
(assert true)
(define-const var3770 String (toString/-2075883882 var3542)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-Int-to-Int=([int], int), var3787_toString/-1054155509=([char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3394=java.lang.Object, var162=r10, var2316=i0, var2706=i3, var2832=i6, var2536=i9, var3946=$r11, var3395=$i13, var611=$i1, var3507=$c2, var3787=java.lang.Character, var1259=$r1, var167=$r3, var2441=$i15, var739=$i4, var1307=$c5, var798=$r2, var1023=$r5, var884=$i17, var1535=$i7, var1638=$c8, var2011=$r4, var24=$r7, var2137=$i19, var2184=$i10, var1412=$c11, var810=$r6, var3542=$r8, var3770=$r9}
; {java.lang.Object=var3394, r10=var162, i0=var2316, i3=var2706, i6=var2832, i9=var2536, $r11=var3946, $i13=var3395, $i1=var611, $c2=var3507, java.lang.Character=var3787, $r1=var1259, $r3=var167, $i15=var2441, $i4=var739, $c5=var1307, $r2=var798, $r5=var1023, $i17=var884, $i7=var1535, $c8=var1638, $r4=var2011, $r7=var24, $i19=var2137, $i10=var2184, $c11=var1412, $r6=var810, $r8=var3542, $r9=var3770}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Character: java.lang.String toString(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Character: java.lang.String toString(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Character: java.lang.String toString(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Character: java.lang.String toString(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	i3 := @parameter2: int;	i6 := @parameter3: int;	i9 := @parameter4: int;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$i13 = (int) 65535;	$i1 = i0 & $i13;	$c2 = (char) $i1;	$r1 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c2);	$r3 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$i15 = (int) 65535;	$i4 = i3 & $i15;	$c5 = (char) $i4;	$r2 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c5);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$i17 = (int) 65535;	$i7 = i6 & $i17;	$c8 = (char) $i7;	$r4 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c8);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$i19 = (int) 65535;	$i10 = i9 & $i19;	$c11 = (char) $i10;	$r6 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c11);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1