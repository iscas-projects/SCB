(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-Int Int)
(declare-const var476 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var476 null-Int)))
(define-const var3105 Int (ite (> var476 1024) 1 (ite (< var476 1024) (- 1) 0))) ; Statement: $b1 = l0 cmp 1024L 
(define-const var3881 Int (cast-from-Int-to-Int var3105)) ; Statement: $i2 = (int) $b1 
 ; Statement: if $i2 >= 0 goto $r0 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatDataAmount(java.lang.String,long)>("%.1f%cB", l0) 
(assert (not (>= var3881 0))) ; Negate: Cond: $i2 >= 0  
(define-const var3345 String (String_valueOf/-107395227 var476)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), String_valueOf/-107395227=([long], java.lang.String)}
; {var476=l0, var3105=$b1, var3881=$i2, var3345=$r1}
; {l0=var476, $b1=var3105, $i2=var3881, $r1=var3345}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts l0 := @parameter0: long;	$b1 = l0 cmp 1024L;	$i2 = (int) $b1;	if $i2 >= 0 goto $r0 = staticinvoke <jdk.jfr.internal.Utils: java.lang.String formatDataAmount(java.lang.String,long)>("%.1f%cB", l0);	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0);	return $r1
;block_num 2