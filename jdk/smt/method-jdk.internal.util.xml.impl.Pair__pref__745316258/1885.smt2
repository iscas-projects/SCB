(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun chars/2073447641 (var190) (Array Int Int))
(declare-const null-var190 var190)
(declare-const var761 var190) ; Statement: r0 := @this: jdk.internal.util.xml.impl.Pair 
(assert (not (= var761 null-var190)))
(define-const var3601 (Array Int Int) (chars/2073447641 var761)) ; Statement: $r1 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var3674 Int (select var3601 0)) ; Statement: $c0 = $r1[0] 
 ; Statement: if $c0 == 0 goto return "" 
(assert (= var3674 0)) ; Cond: $c0 == 0 
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {chars/2073447641=([jdk.internal.util.xml.impl.Pair], char[])}
; {var190=jdk.internal.util.xml.impl.Pair, var761=r0, var3601=$r1, var3674=$c0}
; {jdk.internal.util.xml.impl.Pair=var190, r0=var761, $r1=var3601, $c0=var3674}
;seq 
;cnt {}
;stmts r0 := @this: jdk.internal.util.xml.impl.Pair;	$r1 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$c0 = $r1[0];	if $c0 == 0 goto return "";	return ""
;block_num 2