(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3455 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peeked/1477480286 (var3455) Int)
(declare-fun peekedLong/1477480286 (var3455) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun pathIndices/1477480286 (var3455) (Array Int Int))
(declare-fun stackSize/1477480286 (var3455) Int)
(declare-const null-var3455 var3455)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2147 var3455) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var2147 null-var3455)))
(define-const var1483 Int (peeked/1477480286 var2147)) ; Statement: i20 = r0.<com.google.gson.stream.JsonReader: int peeked> 
 ; Statement: if i20 != 0 goto (branch) 
(assert (not (= var1483 0))) ; Cond: i20 != 0 
 ; Statement: if i20 != 15 goto (branch) 
(assert (not (not (= var1483 15)))) ; Negate: Cond: i20 != 15  
(define-const var3925 Int (peekedLong/1477480286 var2147)) ; Statement: $l10 = r0.<com.google.gson.stream.JsonReader: long peekedLong> 
(define-const var448 Int (cast-from-Int-to-Int var3925)) ; Statement: i21 = (int) $l10 
(define-const var1636 Int (peekedLong/1477480286 var2147)) ; Statement: $l12 = r0.<com.google.gson.stream.JsonReader: long peekedLong> 
(define-const var3719 Int (cast-from-Int-to-Int var448)) ; Statement: $l11 = (long) i21 
(define-const var3665 Int (ite (> var1636 var3719) 1 (ite (< var1636 var3719) (- 1) 0))) ; Statement: $b13 = $l12 cmp $l11 
 ; Statement: if $b13 == 0 goto r0.<com.google.gson.stream.JsonReader: int peeked> = 0 
(assert (= var3665 0)) ; Cond: $b13 == 0 
(declare-const var2147!1 var3455)
(assert (not (= var2147!1 null-var3455)))
(assert (= (peeked/1477480286 var2147!1) 0)) ; Statement: r0.<com.google.gson.stream.JsonReader: int peeked> = 0 
(define-const var77 (Array Int Int) (pathIndices/1477480286 var2147!1)) ; Statement: $r23 = r0.<com.google.gson.stream.JsonReader: int[] pathIndices> 
(define-const var1997 Int (stackSize/1477480286 var2147!1)) ; Statement: $i14 = r0.<com.google.gson.stream.JsonReader: int stackSize> 
(define-const var1937 Int (- var1997 1)) ; Statement: $i15 = $i14 - 1 
(define-const var16 Int (select var77 var1937)) ; Statement: $i16 = $r23[$i15] 
(define-const var608 Int (+ var16 1)) ; Statement: $i17 = $i16 + 1 
(declare-const var77!1 (Array Int Int))
(assert (not (= var77!1 null-__Array__Int__Int__)))
(assert (= (select var77!1 var1937) var608)) ; Statement: $r23[$i15] = $i17 
 ; Statement: return i21 
(check-sat)
(get-model)
(get-unsat-core)
; {peeked/1477480286=([com.google.gson.stream.JsonReader], int), peekedLong/1477480286=([com.google.gson.stream.JsonReader], long), cast-from-Int-to-Int=([long], int), pathIndices/1477480286=([com.google.gson.stream.JsonReader], int[]), stackSize/1477480286=([com.google.gson.stream.JsonReader], int)}
; {var3455=com.google.gson.stream.JsonReader, var2147=r0, var1483=i20, var3925=$l10, var448=i21, var1636=$l12, var3719=$l11, var3665=$b13, var77=$r23, var1997=$i14, var1937=$i15, var16=$i16, var608=$i17}
; {com.google.gson.stream.JsonReader=var3455, r0=var2147, i20=var1483, $l10=var3925, i21=var448, $l12=var1636, $l11=var3719, $b13=var3665, $r23=var77, $i14=var1997, $i15=var1937, $i16=var16, $i17=var608}
;seq 
;cnt {}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	i20 = r0.<com.google.gson.stream.JsonReader: int peeked>;	if i20 != 0 goto (branch);	if i20 != 15 goto (branch);	$l10 = r0.<com.google.gson.stream.JsonReader: long peekedLong>;	i21 = (int) $l10;	$l12 = r0.<com.google.gson.stream.JsonReader: long peekedLong>;	$l11 = (long) i21;	$b13 = $l12 cmp $l11;	if $b13 == 0 goto r0.<com.google.gson.stream.JsonReader: int peeked> = 0;	r0.<com.google.gson.stream.JsonReader: int peeked> = 0;	$r23 = r0.<com.google.gson.stream.JsonReader: int[] pathIndices>;	$i14 = r0.<com.google.gson.stream.JsonReader: int stackSize>;	$i15 = $i14 - 1;	$i16 = $r23[$i15];	$i17 = $i16 + 1;	$r23[$i15] = $i17;	return i21
;block_num 4