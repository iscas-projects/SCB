(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var404 0)
(declare-sort var3978 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3978-init () var3978)
(declare-fun <init>/-325640736 (var3978) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var366 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var366 null-String)))
(define-const var201 var3978 var3978-init) ; Statement: $r17 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var201)) ; Statement: specialinvoke $r17.<java.util.ArrayList: void <init>()>() 

(declare-const var201!1 var3978)
(define-const var3428 Int 0) ; Statement: i2 = 0 
(define-const var3998 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(define-const var851 Int var3998) ; Statement: i3 = $i6 
(define-const var2315 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(define-const var3952 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1355 Int (length/-134980193 var366)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i0 goto (branch) 
(assert (>= var3952 var1355)) ; Cond: i4 >= $i0 
 ; Statement: if i2 == 0 goto return $r17 
(assert (= var3428 0)) ; Cond: i2 == 0 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var3978-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int)}
; {var366=r1, var404=null_type, var3978=java.util.ArrayList, var201=$r17, var3428=i2, var3998=$i6, var851=i3, var2315=z0, var3952=i4, var1355=$i0}
; {r1=var366, null_type=var404, java.util.ArrayList=var3978, $r17=var201, i2=var3428, $i6=var3998, i3=var851, z0=var2315, i4=var3952, $i0=var1355}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r17 = new java.util.ArrayList;	specialinvoke $r17.<java.util.ArrayList: void <init>()>();	i2 = 0;	$i6 = (int) -1;	i3 = $i6;	z0 = 0;	i4 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i4 >= $i0 goto (branch);	if i2 == 0 goto return $r17;	return $r17
;block_num 4