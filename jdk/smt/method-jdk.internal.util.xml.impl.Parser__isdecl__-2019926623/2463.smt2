(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1688 0)
(declare-sort var1431 0)
(declare-sort var3926 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun chars/2073447641 (var1431) (Array Int Int))
(declare-fun eqpref/-707396533 (var1431 (Array Int Int)) Bool)
(declare-const null-var1688 var1688)
(declare-const null-var1431 var1431)
(declare-const null-String String)
(declare-const var1688-XMLNS (Array Int Int))
(declare-const var1499 var1688) ; Statement: r4 := @this: jdk.internal.util.xml.impl.Parser 
(assert (not (= var1499 null-var1688)))
(declare-const var3819 var1431) ; Statement: r0 := @parameter0: jdk.internal.util.xml.impl.Pair 
(assert (not (= var3819 null-var1431)))
(declare-const var1236 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var1236 null-String)))
(define-const var3083 (Array Int Int) (chars/2073447641 var3819)) ; Statement: $r1 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var3829 Int (select var3083 0)) ; Statement: $c0 = $r1[0] 
 ; Statement: if $c0 != 0 goto $r2 = <jdk.internal.util.xml.impl.Parser: char[] XMLNS> 
(assert (not (= var3829 0))) ; Cond: $c0 != 0 
(define-const var2467 (Array Int Int) var1688-XMLNS) ; Statement: $r2 = <jdk.internal.util.xml.impl.Parser: char[] XMLNS> 
(assert true)
(define-const var2117 Bool (eqpref/-707396533 var3819 var2467)) ; Statement: $z0 = virtualinvoke r0.<jdk.internal.util.xml.impl.Pair: boolean eqpref(char[])>($r2) 
 ; Statement: if $z0 != 1 goto return 0 
(assert (not (= (ite var2117 1 0) 1))) ; Cond: $z0 != 1 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {chars/2073447641=([jdk.internal.util.xml.impl.Pair], char[]), eqpref/-707396533=([jdk.internal.util.xml.impl.Pair, char[]], boolean)}
; {var1688=jdk.internal.util.xml.impl.Parser, var1499=r4, var1431=jdk.internal.util.xml.impl.Pair, var3819=r0, var1236=r9, var3926=null_type, var3083=$r1, var3829=$c0, var2467=$r2, var2117=$z0}
; {jdk.internal.util.xml.impl.Parser=var1688, r4=var1499, jdk.internal.util.xml.impl.Pair=var1431, r0=var3819, r9=var1236, null_type=var3926, $r1=var3083, $c0=var3829, $r2=var2467, $z0=var2117}
;seq 
;cnt {}
;stmts r4 := @this: jdk.internal.util.xml.impl.Parser;	r0 := @parameter0: jdk.internal.util.xml.impl.Pair;	r9 := @parameter1: java.lang.String;	$r1 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$c0 = $r1[0];	if $c0 != 0 goto $r2 = <jdk.internal.util.xml.impl.Parser: char[] XMLNS>;	$r2 = <jdk.internal.util.xml.impl.Parser: char[] XMLNS>;	$z0 = virtualinvoke r0.<jdk.internal.util.xml.impl.Pair: boolean eqpref(char[])>($r2);	if $z0 != 1 goto return 0;	return 0
;block_num 3