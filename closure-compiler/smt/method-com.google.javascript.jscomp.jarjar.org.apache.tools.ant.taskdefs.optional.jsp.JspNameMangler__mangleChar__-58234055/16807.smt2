(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1020 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-Int Int)
(declare-const var1020-separatorChar Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var855 Int) ; Statement: i5 := @parameter0: char 
(assert (not (= var855 null-Int)))
(define-const var1595 Int var1020-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(define-const var42 Int (cast-from-Int-to-Int var1595)) ; Statement: $i9 = (int) $c0 
 ; Statement: if i5 != $i9 goto $r1 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i5) 
(assert (not (= var855 var42))) ; Cond: i5 != $i9 
(define-const var2257 String (Int_toHexString/1865784998 var855)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i5) 
(assert true)
(define-const var1364 Int (length/-134980193 var2257)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var2231 Int (- 5 var1364)) ; Statement: $i4 = 5 - $i1 
(define-const var3423 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (char)[6] 
(declare-const var3423!1 (Array Int Int))
(assert (not (= var3423!1 null-__Array__Int__Int__)))
(assert (= (select var3423!1 0) 95)) ; Statement: $r2[0] = 95 
(define-const var3893 Int 1) ; Statement: i6 = 1 
(assert true) ; Non Conditional
 ; Statement: if i6 > $i4 goto i7 = 0 
(assert (> var3893 var2231)) ; Cond: i6 > $i4 
(define-const var539 Int 0) ; Statement: i7 = 0 
(define-const var1842 Int (+ var2231 1)) ; Statement: i8 = $i4 + 1 
(assert true) ; Non Conditional
 ; Statement: if i8 >= 6 goto $r3 = new java.lang.String 
(assert (>= var1842 6)) ; Cond: i8 >= 6 
(define-const var2473 String String-init) ; Statement: $r3 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var2473 var3423!1)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[])>($r2) 

(declare-const var2473!1 String)
(declare-const var3423!2 (Array Int Int))
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), Int_toHexString/1865784998=([int], java.lang.String), length/-134980193=([java.lang.String], int), arr-Int-init=([], char[]), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var855=i5, var1020=java.io.File, var1595=$c0, var42=$i9, var2257=$r1, var1364=$i1, var2231=$i4, var3423=$r2, var3893=i6, var539=i7, var1842=i8, var2473=$r3}
; {i5=var855, java.io.File=var1020, $c0=var1595, $i9=var42, $r1=var2257, $i1=var1364, $i4=var2231, $r2=var3423, i6=var3893, i7=var539, i8=var1842, $r3=var2473}
;seq <java.lang.String: int length()>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts i5 := @parameter0: char;	$c0 = <java.io.File: char separatorChar>;	$i9 = (int) $c0;	if i5 != $i9 goto $r1 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i5);	$r1 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i5);	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	$i4 = 5 - $i1;	$r2 = newarray (char)[6];	$r2[0] = 95;	i6 = 1;	if i6 > $i4 goto i7 = 0;	i7 = 0;	i8 = $i4 + 1;	if i8 >= 6 goto $r3 = new java.lang.String;	$r3 = new java.lang.String;	specialinvoke $r3.<java.lang.String: void <init>(char[])>($r2);	return $r3
;block_num 6