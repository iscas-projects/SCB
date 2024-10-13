(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3094 0)
(declare-sort var777 0)
(declare-sort var548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var548_readFully/-1741972405 (var3094) (Array Int Int))
(declare-const null-var3094 var3094)
(declare-const null-var777 var777)
(declare-const var778 var3094) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var778 null-var3094)))
(declare-const var2049 var777) ; Statement: r0 := @parameter1: java.nio.charset.Charset 
(assert (not (= var2049 null-var777)))
 ; Statement: if r0 == null goto $r4 = staticinvoke <jdk.nashorn.internal.runtime.Source: char[] readFully(java.io.InputStream)>(r1) 
(assert (= var2049 null-var777)) ; Cond: r0 == null 
(define-const var3602 (Array Int Int) (var548_readFully/-1741972405 var778)) ; Statement: $r4 = staticinvoke <jdk.nashorn.internal.runtime.Source: char[] readFully(java.io.InputStream)>(r1) 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var548_readFully/-1741972405=([java.io.InputStream], char[])}
; {var3094=java.io.InputStream, var778=r1, var777=java.nio.charset.Charset, var2049=r0, var548=jdk.nashorn.internal.runtime.Source, var3602=$r4}
; {java.io.InputStream=var3094, r1=var778, java.nio.charset.Charset=var777, r0=var2049, jdk.nashorn.internal.runtime.Source=var548, $r4=var3602}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.io.InputStream;	r0 := @parameter1: java.nio.charset.Charset;	if r0 == null goto $r4 = staticinvoke <jdk.nashorn.internal.runtime.Source: char[] readFully(java.io.InputStream)>(r1);	$r4 = staticinvoke <jdk.nashorn.internal.runtime.Source: char[] readFully(java.io.InputStream)>(r1);	return $r4
;block_num 3