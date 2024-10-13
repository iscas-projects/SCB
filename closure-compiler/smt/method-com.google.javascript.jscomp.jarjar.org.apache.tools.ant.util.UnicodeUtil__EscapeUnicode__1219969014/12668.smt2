(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/2110755883 (String String) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-Int Int)
(declare-const var3358 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var3358 null-Int)))
(define-const var1362 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/2110755883 var1362 "u0000")) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>(java.lang.String)>("u0000") 

(declare-const var1362!1 String)
(declare-const var2465 String)
(define-const var41 Int (cast-from-Int-to-Int var3358)) ; Statement: $i8 = (int) c0 
(define-const var2973 String (Int_toHexString/1865784998 var41)) ; Statement: r1 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i8) 
(define-const var2233 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1634 Int (length/-134980193 var2973)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i7 >= $i1 goto return $r2 
(assert (>= var2233 var1634)) ; Cond: i7 >= $i1 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/2110755883=([java.lang.StringBuffer, java.lang.String], void), cast-from-Int-to-Int=([char], int), Int_toHexString/1865784998=([int], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var3358=c0, var1362=$r2, var2465="u0000", var41=$i8, var2973=r1, var2233=i7, var1634=$i1}
; {c0=var3358, $r2=var1362, "u0000"=var2465, $i8=var41, r1=var2973, i7=var2233, $i1=var1634}
;seq <java.lang.StringBuffer: void <init>(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuffer: void <init>(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts c0 := @parameter0: char;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>(java.lang.String)>("u0000");	$i8 = (int) c0;	r1 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i8);	i7 = 0;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	if i7 >= $i1 goto return $r2;	return $r2
;block_num 3