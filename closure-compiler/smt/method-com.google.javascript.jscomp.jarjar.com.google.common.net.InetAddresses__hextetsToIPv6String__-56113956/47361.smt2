(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3930 (Array Int Int)) ; Statement: r1 := @parameter0: int[] 
(assert (not (= var3930 null-__Array__Int__Int__)))
(define-const var1289 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1289 39)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(39) 

(declare-const var1289!1 String)
(declare-const var2095 Int)
(define-const var2892 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3237 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var138 Int (getLength-Arr-Int-1 var3930)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i3 >= $i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3237 var138)) ; Cond: i3 >= $i0 
(assert true)
(define-const var3307 String (toString/-2075883882 var1289!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), getLength-Arr-Int-1=([int[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3930=r1, var1289=$r0, var2095=39, var2892=z1, var3237=i3, var138=$i0, var3307=$r2}
; {r1=var3930, $r0=var1289, 39=var2095, z1=var2892, i3=var3237, $i0=var138, $r2=var3307}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: int[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(39);	z1 = 0;	i3 = 0;	$i0 = lengthof r1;	if i3 >= $i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3