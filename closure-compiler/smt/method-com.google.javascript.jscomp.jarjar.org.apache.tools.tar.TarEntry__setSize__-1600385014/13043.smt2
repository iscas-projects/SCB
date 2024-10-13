(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1666 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun size/2033466638 (var1666) Int)
(declare-const null-var1666 var1666)
(declare-const null-Int Int)
(declare-const var2493 var1666) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry 
(assert (not (= var2493 null-var1666)))
(declare-const var3022 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3022 null-Int)))
(define-const var789 Int (ite (> var3022 0) 1 (ite (< var3022 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var167 Int (cast-from-Int-to-Int var789)) ; Statement: $i2 = (int) $b1 
 ; Statement: if $i2 >= 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long size> = l0 
(assert (>= var167 0)) ; Cond: $i2 >= 0 
(declare-const var2493!1 var1666)
(assert (not (= var2493!1 null-var1666)))
(assert (= (size/2033466638 var2493!1) var3022)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long size> = l0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), size/2033466638=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], long)}
; {var1666=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry, var2493=r0, var3022=l0, var789=$b1, var167=$i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry=var1666, r0=var2493, l0=var3022, $b1=var789, $i2=var167}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry;	l0 := @parameter0: long;	$b1 = l0 cmp 0L;	$i2 = (int) $b1;	if $i2 >= 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long size> = l0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: long size> = l0;	return
;block_num 2