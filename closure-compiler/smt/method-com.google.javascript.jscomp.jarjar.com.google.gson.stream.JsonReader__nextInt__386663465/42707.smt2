(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peeked/-1654894195 (var3832) Int)
(declare-fun peekedLong/-1654894195 (var3832) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun pathIndices/-1654894195 (var3832) (Array Int Int))
(declare-fun stackSize/-1654894195 (var3832) Int)
(declare-const null-var3832 var3832)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var582 var3832) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var582 null-var3832)))
(define-const var3564 Int (peeked/-1654894195 var582)) ; Statement: i20 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked> 
 ; Statement: if i20 != 0 goto (branch) 
(assert (not (= var3564 0))) ; Cond: i20 != 0 
 ; Statement: if i20 != 15 goto (branch) 
(assert (not (not (= var3564 15)))) ; Negate: Cond: i20 != 15  
(define-const var3232 Int (peekedLong/-1654894195 var582)) ; Statement: $l10 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: long peekedLong> 
(define-const var244 Int (cast-from-Int-to-Int var3232)) ; Statement: i21 = (int) $l10 
(define-const var329 Int (peekedLong/-1654894195 var582)) ; Statement: $l12 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: long peekedLong> 
(define-const var1099 Int (cast-from-Int-to-Int var244)) ; Statement: $l11 = (long) i21 
(define-const var1472 Int (ite (> var329 var1099) 1 (ite (< var329 var1099) (- 1) 0))) ; Statement: $b13 = $l12 cmp $l11 
 ; Statement: if $b13 == 0 goto r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked> = 0 
(assert (= var1472 0)) ; Cond: $b13 == 0 
(declare-const var582!1 var3832)
(assert (not (= var582!1 null-var3832)))
(assert (= (peeked/-1654894195 var582!1) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked> = 0 
(define-const var2260 (Array Int Int) (pathIndices/-1654894195 var582!1)) ; Statement: $r23 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int[] pathIndices> 
(define-const var1555 Int (stackSize/-1654894195 var582!1)) ; Statement: $i14 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int stackSize> 
(define-const var9 Int (- var1555 1)) ; Statement: $i15 = $i14 - 1 
(define-const var707 Int (select var2260 var9)) ; Statement: $i16 = $r23[$i15] 
(define-const var1364 Int (+ var707 1)) ; Statement: $i17 = $i16 + 1 
(declare-const var2260!1 (Array Int Int))
(assert (not (= var2260!1 null-__Array__Int__Int__)))
(assert (= (select var2260!1 var9) var1364)) ; Statement: $r23[$i15] = $i17 
 ; Statement: return i21 
(check-sat)
(get-model)
(get-unsat-core)
; {peeked/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), peekedLong/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], long), cast-from-Int-to-Int=([long], int), pathIndices/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int[]), stackSize/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int)}
; {var3832=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var582=r0, var3564=i20, var3232=$l10, var244=i21, var329=$l12, var1099=$l11, var1472=$b13, var2260=$r23, var1555=$i14, var9=$i15, var707=$i16, var1364=$i17}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var3832, r0=var582, i20=var3564, $l10=var3232, i21=var244, $l12=var329, $l11=var1099, $b13=var1472, $r23=var2260, $i14=var1555, $i15=var9, $i16=var707, $i17=var1364}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	i20 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked>;	if i20 != 0 goto (branch);	if i20 != 15 goto (branch);	$l10 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: long peekedLong>;	i21 = (int) $l10;	$l12 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: long peekedLong>;	$l11 = (long) i21;	$b13 = $l12 cmp $l11;	if $b13 == 0 goto r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked> = 0;	r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked> = 0;	$r23 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int[] pathIndices>;	$i14 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int stackSize>;	$i15 = $i14 - 1;	$i16 = $r23[$i15];	$i17 = $i16 + 1;	$r23[$i15] = $i17;	return i21
;block_num 4