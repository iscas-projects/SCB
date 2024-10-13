(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var1309_min/-1112089438 (Int Int) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2495 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var2495 null-__Array__Int__Int__)))
(declare-const var2382 Int) ; Statement: i4 := @parameter1: int 
(assert (not (= var2382 null-Int)))
(define-const var159 Int (getLength-Arr-Int-1 var2495)) ; Statement: $i0 = lengthof r0 
(define-const var831 Int (var1309_min/-1112089438 var2382 var159)) ; Statement: i5 = staticinvoke <java.lang.Math: int min(int,int)>(i4, $i0) 
(define-const var772 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(define-const var514 Int (* var831 2)) ; Statement: $i1 = i5 * 2 
(assert true)
;(assert (<init>/543593434 var772 var514)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var772!1 String)
(declare-const var514!1 Int)
(define-const var1573 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i5 goto $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1573 var831)) ; Cond: i6 >= i5 
(assert true)
(define-const var1461 String (toString/-2075883882 var772!1)) ; Statement: $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), var1309_min/-1112089438=([int, int], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2495=r0, var2382=i4, var159=$i0, var1309=java.lang.Math, var831=i5, var772=$r4, var514=$i1, var1573=i6, var1461=$r2}
; {r0=var2495, i4=var2382, $i0=var159, java.lang.Math=var1309, i5=var831, $r4=var772, $i1=var514, i6=var1573, $r2=var1461}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: byte[];	i4 := @parameter1: int;	$i0 = lengthof r0;	i5 = staticinvoke <java.lang.Math: int min(int,int)>(i4, $i0);	$r4 = new java.lang.StringBuilder;	$i1 = i5 * 2;	specialinvoke $r4.<java.lang.StringBuilder: void <init>(int)>($i1);	i6 = 0;	if i6 >= i5 goto $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3