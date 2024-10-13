(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2870 0)
(declare-sort var959 0)
(declare-sort var2950 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var959_checkNotNull/1446102589 (var2950) var2950)
(declare-fun cast-from-String-to-var2950 (String) var2950)
(declare-fun Int_parseLong/758265864 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3297 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3297 null-String)))
(declare-const var2262 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2262 null-Int)))
;(assert (var959_checkNotNull/1446102589 (cast-from-String-to-var2950 var3297))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var3297!1 String)
(define-const var1637 Int (Int_parseLong/758265864 var3297!1 var2262)) ; Statement: l1 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r0, i0) 
(define-const var3346 Int (bv2nat (bvand ((_ int2bv 64) var1637) ((_ int2bv 64) 4294967295)))) ; Statement: $l2 = l1 & 4294967295L 
(define-const var3676 Int (ite (> var3346 var1637) 1 (ite (< var3346 var1637) (- 1) 0))) ; Statement: $b3 = $l2 cmp l1 
 ; Statement: if $b3 == 0 goto $i4 = (int) l1 
(assert (= var3676 0)) ; Cond: $b3 == 0 
(define-const var3162 Int (cast-from-Int-to-Int var1637)) ; Statement: $i4 = (int) l1 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {var959_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var2950=([java.lang.String], java.lang.Object), Int_parseLong/758265864=([java.lang.String, int], long), cast-from-Int-to-Int=([long], int)}
; {var3297=r0, var2870=null_type, var2262=i0, var959=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2950=java.lang.Object, var1637=l1, var3346=$l2, var3676=$b3, var3162=$i4}
; {r0=var3297, null_type=var2870, i0=var2262, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var959, java.lang.Object=var2950, l1=var1637, $l2=var3346, $b3=var3676, $i4=var3162}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	l1 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r0, i0);	$l2 = l1 & 4294967295L;	$b3 = $l2 cmp l1;	if $b3 == 0 goto $i4 = (int) l1;	$i4 = (int) l1;	return $i4
;block_num 2