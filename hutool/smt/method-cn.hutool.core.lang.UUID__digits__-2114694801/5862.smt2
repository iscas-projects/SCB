(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_toHexString/1737585169 (Int) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-Int Int)
(declare-const var1850 Int) ; Statement: l3 := @parameter0: long 
(assert (not (= var1850 null-Int)))
(declare-const var629 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var629 null-Int)))
(define-const var1005 Int (* var629 4)) ; Statement: $i1 = i0 * 4 
(define-const var1293 Int (* 1 (to_int (^ 2 var1005)))) ; Statement: l2 = 1L << $i1 
(define-const var1193 Int (- var1293 1)) ; Statement: $l4 = l2 - 1L 
(define-const var3659 Int (bv2nat (bvand ((_ int2bv 64) var1850) ((_ int2bv 64) var1193)))) ; Statement: $l5 = l3 & $l4 
(define-const var3364 Int (bv2nat (bvor ((_ int2bv 64) var1293) ((_ int2bv 64) var3659)))) ; Statement: $l6 = l2 | $l5 
(define-const var812 String (Int_toHexString/1737585169 var3364)) ; Statement: $r0 = staticinvoke <java.lang.Long: java.lang.String toHexString(long)>($l6) 
(assert (and true (and (>= 1 0) (>= (str.len var812) 1))))
(define-const var3121 String (substring/850833817 var812 1)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: java.lang.String substring(int)>(1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_toHexString/1737585169=([long], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var1850=l3, var629=i0, var1005=$i1, var1293=l2, var1193=$l4, var3659=$l5, var3364=$l6, var812=$r0, var3121=$r1}
; {l3=var1850, i0=var629, $i1=var1005, l2=var1293, $l4=var1193, $l5=var3659, $l6=var3364, $r0=var812, $r1=var3121}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts l3 := @parameter0: long;	i0 := @parameter1: int;	$i1 = i0 * 4;	l2 = 1L << $i1;	$l4 = l2 - 1L;	$l5 = l3 & $l4;	$l6 = l2 | $l5;	$r0 = staticinvoke <java.lang.Long: java.lang.String toHexString(long)>($l6);	$r1 = virtualinvoke $r0.<java.lang.String: java.lang.String substring(int)>(1);	return $r1
;block_num 1