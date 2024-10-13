(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var3087 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var3087 null-Int)))
(declare-const var685 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var685 null-Bool)))
(define-const var2497 Int (cast-from-Int-to-Int var3087)) ; Statement: $i3 = (int) c0 
 ; Statement: if $i3 < 48 goto $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
(assert (< var2497 48)) ; Cond: $i3 < 48 
(define-const var1815 String (String_valueOf/-371898945 var3087)) ; Statement: $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), String_valueOf/-371898945=([char], java.lang.String)}
; {var3087=c0, var685=z0, var2497=$i3, var1815=$r0}
; {c0=var3087, z0=var685, $i3=var2497, $r0=var1815}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts c0 := @parameter0: char;	z0 := @parameter1: boolean;	$i3 = (int) c0;	if $i3 < 48 goto $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	$r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	return $r0
;block_num 2