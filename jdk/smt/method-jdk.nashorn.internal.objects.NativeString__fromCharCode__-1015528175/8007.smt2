(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3627 0)
(declare-sort var2314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2314_toString/-1054155509 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3627 var3627)
(declare-const null-Int Int)
(declare-const var562 var3627) ; Statement: r6 := @parameter0: java.lang.Object 
(assert (not (= var562 null-var3627)))
(declare-const var1795 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1795 null-Int)))
(declare-const var3356 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var3356 null-Int)))
(define-const var2890 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2890)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2890!1 String)
(assert (= var2890!1 ""))
(define-const var3855 Int (cast-from-Int-to-Int 65535)) ; Statement: $i7 = (int) 65535 
(define-const var2982 Int (bv2nat (bvand ((_ int2bv 64) var1795) ((_ int2bv 64) var3855)))) ; Statement: $i1 = i0 & $i7 
(define-const var1054 Int (cast-from-Int-to-Int var2982)) ; Statement: $c2 = (char) $i1 
(define-const var1060 String (var2314_toString/-1054155509 var1054)) ; Statement: $r1 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c2) 
(assert true)
(define-const var327 String (append/672562846 var2890!1 var1060)) ; Statement: $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var2890!2 String)
(assert (= var2890!2 (str.++ var2890!1 var1060)))
(define-const var1041 Int (cast-from-Int-to-Int 65535)) ; Statement: $i9 = (int) 65535 
(define-const var1295 Int (bv2nat (bvand ((_ int2bv 64) var3356) ((_ int2bv 64) var1041)))) ; Statement: $i4 = i3 & $i9 
(define-const var2672 Int (cast-from-Int-to-Int var1295)) ; Statement: $c5 = (char) $i4 
(define-const var1975 String (var2314_toString/-1054155509 var2672)) ; Statement: $r2 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c5) 
(assert true)
(define-const var3165 String (append/672562846 var327 var1975)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var327!1 String)
(assert (= var327!1 (str.++ var327 var1975)))
(assert true)
(define-const var3227 String (toString/-2075883882 var3165)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-Int-to-Int=([int], int), var2314_toString/-1054155509=([char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3627=java.lang.Object, var562=r6, var1795=i0, var3356=i3, var2890=$r7, var3855=$i7, var2982=$i1, var1054=$c2, var2314=java.lang.Character, var1060=$r1, var327=$r3, var1041=$i9, var1295=$i4, var2672=$c5, var1975=$r2, var3165=$r4, var3227=$r5}
; {java.lang.Object=var3627, r6=var562, i0=var1795, i3=var3356, $r7=var2890, $i7=var3855, $i1=var2982, $c2=var1054, java.lang.Character=var2314, $r1=var1060, $r3=var327, $i9=var1041, $i4=var1295, $c5=var2672, $r2=var1975, $r4=var3165, $r5=var3227}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Character: java.lang.String toString(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Character: java.lang.String toString(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	i3 := @parameter2: int;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$i7 = (int) 65535;	$i1 = i0 & $i7;	$c2 = (char) $i1;	$r1 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c2);	$r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$i9 = (int) 65535;	$i4 = i3 & $i9;	$c5 = (char) $i4;	$r2 = staticinvoke <java.lang.Character: java.lang.String toString(char)>($c5);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1