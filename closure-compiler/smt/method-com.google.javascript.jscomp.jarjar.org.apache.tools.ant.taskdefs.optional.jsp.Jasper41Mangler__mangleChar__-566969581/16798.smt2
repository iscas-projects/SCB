(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
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
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2350 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2350 null-Int)))
(define-const var1680 Int (cast-from-Int-to-Int var2350)) ; Statement: $i7 = (int) c0 
(define-const var1781 String (Int_toHexString/1865784998 var1680)) ; Statement: r0 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i7) 
(assert true)
(define-const var309 Int (length/-134980193 var1781)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2418 Int (- 5 var309)) ; Statement: i2 = 5 - $i1 
(define-const var2642 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[6] 
(declare-const var2642!1 (Array Int Int))
(assert (not (= var2642!1 null-__Array__Int__Int__)))
(assert (= (select var2642!1 0) 95)) ; Statement: r1[0] = 95 
(define-const var3935 Int 1) ; Statement: i4 = 1 
(assert true) ; Non Conditional
 ; Statement: if i4 > i2 goto i5 = i2 + 1 
(assert (> var3935 var2418)) ; Cond: i4 > i2 
(define-const var2081 Int (+ var2418 1)) ; Statement: i5 = i2 + 1 
(define-const var2210 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= 6 goto $r3 = new java.lang.String 
(assert (>= var2081 6)) ; Cond: i5 >= 6 
(define-const var908 String String-init) ; Statement: $r3 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var908 var2642!1)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var908!1 String)
(declare-const var2642!2 (Array Int Int))
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), Int_toHexString/1865784998=([int], java.lang.String), length/-134980193=([java.lang.String], int), arr-Int-init=([], char[]), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var2350=c0, var1680=$i7, var1781=r0, var309=$i1, var2418=i2, var2642=r1, var3935=i4, var2081=i5, var2210=i6, var908=$r3}
; {c0=var2350, $i7=var1680, r0=var1781, $i1=var309, i2=var2418, r1=var2642, i4=var3935, i5=var2081, i6=var2210, $r3=var908}
;seq <java.lang.String: int length()>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts c0 := @parameter0: char;	$i7 = (int) c0;	r0 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i7);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	i2 = 5 - $i1;	r1 = newarray (char)[6];	r1[0] = 95;	i4 = 1;	if i4 > i2 goto i5 = i2 + 1;	i5 = i2 + 1;	i6 = 0;	if i5 >= 6 goto $r3 = new java.lang.String;	$r3 = new java.lang.String;	specialinvoke $r3.<java.lang.String: void <init>(char[])>(r1);	return $r3
;block_num 5