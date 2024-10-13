(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3658 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun next/-1212382432 (var3658) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3658 var3658)
(declare-const null-Int Int)
(declare-const var2666 var3658) ; Statement: r0 := @this: cn.hutool.json.JSONTokener 
(assert (not (= var2666 null-var3658)))
(declare-const var1224 Int) ; Statement: c1 := @parameter0: char 
(assert (not (= var1224 null-Int)))
(assert true)
(define-const var2443 Int (next/-1212382432 var2666)) ; Statement: c0 = virtualinvoke r0.<cn.hutool.json.JSONTokener: char next()>() 
(define-const var3600 Int (cast-from-Int-to-Int var2443)) ; Statement: $i2 = (int) c0 
(define-const var2542 Int (cast-from-Int-to-Int var1224)) ; Statement: $i3 = (int) c1 
 ; Statement: if $i2 == $i3 goto return c0 
(assert (= var3600 var2542)) ; Cond: $i2 == $i3 
 ; Statement: return c0 
(check-sat)
(get-model)
(get-unsat-core)
; {next/-1212382432=([cn.hutool.json.JSONTokener], char), cast-from-Int-to-Int=([char], int)}
; {var3658=cn.hutool.json.JSONTokener, var2666=r0, var1224=c1, var2443=c0, var3600=$i2, var2542=$i3}
; {cn.hutool.json.JSONTokener=var3658, r0=var2666, c1=var1224, c0=var2443, $i2=var3600, $i3=var2542}
;seq 
;cnt {}
;stmts r0 := @this: cn.hutool.json.JSONTokener;	c1 := @parameter0: char;	c0 = virtualinvoke r0.<cn.hutool.json.JSONTokener: char next()>();	$i2 = (int) c0;	$i3 = (int) c1;	if $i2 == $i3 goto return c0;	return c0
;block_num 2