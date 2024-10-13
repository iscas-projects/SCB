(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1329 0)
(declare-sort var1752 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1752_skipUpTo/1619701199 (var1329 Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1329 var1329)
(declare-const null-Int Int)
(declare-const var3721 var1329) ; Statement: r0 := @parameter0: java.io.InputStream 
(assert (not (= var3721 null-var1329)))
(declare-const var2350 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var2350 null-Int)))
(define-const var859 Int (var1752_skipUpTo/1619701199 var3721 var2350)) ; Statement: l1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams: long skipUpTo(java.io.InputStream,long)>(r0, l0) 
(define-const var185 Int (ite (> var859 var2350) 1 (ite (< var859 var2350) (- 1) 0))) ; Statement: $b2 = l1 cmp l0 
(define-const var3292 Int (cast-from-Int-to-Int var185)) ; Statement: $i3 = (int) $b2 
 ; Statement: if $i3 >= 0 goto return 
(assert (>= var3292 0)) ; Cond: $i3 >= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1752_skipUpTo/1619701199=([java.io.InputStream, long], long), cast-from-Int-to-Int=([byte], int)}
; {var1329=java.io.InputStream, var3721=r0, var2350=l0, var1752=com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams, var859=l1, var185=$b2, var3292=$i3}
; {java.io.InputStream=var1329, r0=var3721, l0=var2350, com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams=var1752, l1=var859, $b2=var185, $i3=var3292}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.io.InputStream;	l0 := @parameter1: long;	l1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.ByteStreams: long skipUpTo(java.io.InputStream,long)>(r0, l0);	$b2 = l1 cmp l0;	$i3 = (int) $b2;	if $i3 >= 0 goto return;	return
;block_num 2