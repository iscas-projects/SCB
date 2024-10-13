(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1578 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1578-init () var1578)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1578 String) void)
(declare-const null-Int Int)
(declare-const var345 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var345 null-Int)))
(declare-const var1283 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1283 null-Int)))
(define-const var151 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
(define-const var450 Int (bv2nat (bvxor ((_ int2bv 64) var1283) ((_ int2bv 64) var151)))) ; Statement: $i2 = i1 ^ $i13 
(define-const var1891 Int (bv2nat (bvand ((_ int2bv 64) var345) ((_ int2bv 64) var450)))) ; Statement: $i3 = i0 & $i2 
 ; Statement: if $i3 == 0 goto $i4 = i0 & 1 
(assert (not (= var1891 0))) ; Negate: Cond: $i3 == 0  
(define-const var499 var1578 var1578-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(define-const var1716 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1716)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1716!1 String)
(assert (= var1716!1 ""))
(assert true)
(define-const var1016 String (append/672562846 var1716!1 "Invalid access flags: ")) ; Statement: $r12 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid access flags: ") 
(declare-const var1716!2 String)
(assert (= var1716!2 (str.++ var1716!1 "Invalid access flags: ")))
(assert true)
(define-const var1765 String (append/-1001720160 var1016 var345)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1016!1 String)
(assert (str.prefixof var1016 var1016!1))
(assert true)
(define-const var542 String (toString/-2075883882 var1765)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var499 var542)) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14) 

(declare-const var499!1 var1578)
(declare-const var542!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), var1578-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var345=i0, var1283=i1, var151=$i13, var450=$i2, var1891=$i3, var1578=java.lang.IllegalArgumentException, var499=$r16, var1716=$r15, var1016=$r12, var1765=$r13, var542=$r14}
; {i0=var345, i1=var1283, $i13=var151, $i2=var450, $i3=var1891, java.lang.IllegalArgumentException=var1578, $r16=var499, $r15=var1716, $r12=var1016, $r13=var1765, $r14=var542}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	i1 := @parameter1: int;	$i13 = (int) -1;	$i2 = i1 ^ $i13;	$i3 = i0 & $i2;	if $i3 == 0 goto $i4 = i0 & 1;	$r16 = new java.lang.IllegalArgumentException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid access flags: ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14);	throw $r16
;block_num 2