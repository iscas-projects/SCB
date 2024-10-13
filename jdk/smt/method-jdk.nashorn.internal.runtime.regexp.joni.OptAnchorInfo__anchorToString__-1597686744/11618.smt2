(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/2110755883 (String String) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var3856 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3856 null-Int)))
(define-const var3977 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/2110755883 var3977 "[")) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>(java.lang.String)>("[") 

(declare-const var3977!1 String)
(declare-const var2164 String)
(define-const var3714 Int (bv2nat (bvand ((_ int2bv 64) var3856) ((_ int2bv 64) 1)))) ; Statement: $i1 = i0 & 1 
 ; Statement: if $i1 == 0 goto $i2 = i0 & 2 
(assert (= var3714 0)) ; Cond: $i1 == 0 
(define-const var3800 Int (bv2nat (bvand ((_ int2bv 64) var3856) ((_ int2bv 64) 2)))) ; Statement: $i2 = i0 & 2 
 ; Statement: if $i2 == 0 goto $i3 = i0 & 4 
(assert (= var3800 0)) ; Cond: $i2 == 0 
(define-const var909 Int (bv2nat (bvand ((_ int2bv 64) var3856) ((_ int2bv 64) 4)))) ; Statement: $i3 = i0 & 4 
 ; Statement: if $i3 == 0 goto $i4 = i0 & 8 
(assert (= var909 0)) ; Cond: $i3 == 0 
(define-const var3139 Int (bv2nat (bvand ((_ int2bv 64) var3856) ((_ int2bv 64) 8)))) ; Statement: $i4 = i0 & 8 
 ; Statement: if $i4 == 0 goto $i5 = i0 & 16 
(assert (= var3139 0)) ; Cond: $i4 == 0 
(define-const var1900 Int (bv2nat (bvand ((_ int2bv 64) var3856) ((_ int2bv 64) 16)))) ; Statement: $i5 = i0 & 16 
 ; Statement: if $i5 == 0 goto $i6 = i0 & 32 
(assert (= var1900 0)) ; Cond: $i5 == 0 
(define-const var730 Int (bv2nat (bvand ((_ int2bv 64) var3856) ((_ int2bv 64) 32)))) ; Statement: $i6 = i0 & 32 
 ; Statement: if $i6 == 0 goto $i7 = i0 & 16384 
(assert (= var730 0)) ; Cond: $i6 == 0 
(define-const var3094 Int (bv2nat (bvand ((_ int2bv 64) var3856) ((_ int2bv 64) 16384)))) ; Statement: $i7 = i0 & 16384 
 ; Statement: if $i7 == 0 goto $i10 = (int) 32768 
(assert (= var3094 0)) ; Cond: $i7 == 0 
(define-const var2895 Int (cast-from-Int-to-Int 32768)) ; Statement: $i10 = (int) 32768 
(define-const var654 Int (bv2nat (bvand ((_ int2bv 64) var3856) ((_ int2bv 64) var2895)))) ; Statement: $i8 = i0 & $i10 
 ; Statement: if $i8 == 0 goto virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]") 
(assert (= var654 0)) ; Cond: $i8 == 0 
(assert true)
;(assert (append/1560614132 var3977!1 "]")) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]") 
(declare-const var3977!2 String)
(assert (str.prefixof var3977!1 var3977!2))
(assert true)
(define-const var3152 String (toString/-222306083 var3977!2)) ; Statement: $r1 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/2110755883=([java.lang.StringBuffer, java.lang.String], void), cast-from-Int-to-Int=([int], int), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3856=i0, var3977=$r2, var2164="[", var3714=$i1, var3800=$i2, var909=$i3, var3139=$i4, var1900=$i5, var730=$i6, var3094=$i7, var2895=$i10, var654=$i8, var3152=$r1}
; {i0=var3856, $r2=var3977, "["=var2164, $i1=var3714, $i2=var3800, $i3=var909, $i4=var3139, $i5=var1900, $i6=var730, $i7=var3094, $i10=var2895, $i8=var654, $r1=var3152}
;seq <java.lang.StringBuffer: void <init>(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>(java.lang.String)>("[");	$i1 = i0 & 1;	if $i1 == 0 goto $i2 = i0 & 2;	$i2 = i0 & 2;	if $i2 == 0 goto $i3 = i0 & 4;	$i3 = i0 & 4;	if $i3 == 0 goto $i4 = i0 & 8;	$i4 = i0 & 8;	if $i4 == 0 goto $i5 = i0 & 16;	$i5 = i0 & 16;	if $i5 == 0 goto $i6 = i0 & 32;	$i6 = i0 & 32;	if $i6 == 0 goto $i7 = i0 & 16384;	$i7 = i0 & 16384;	if $i7 == 0 goto $i10 = (int) 32768;	$i10 = (int) 32768;	$i8 = i0 & $i10;	if $i8 == 0 goto virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]");	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]");	$r1 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>();	return $r1
;block_num 9