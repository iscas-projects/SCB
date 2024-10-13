(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var368 0)
(declare-sort var150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bindValues/1390366865 (var368) (Array Int var150))
(declare-fun var150_isSet/478424581 (var150) Bool)
(declare-const null-var368 var368)
(declare-const null-Int Int)
(declare-const var3394 var368) ; Statement: r0 := @this: com.mysql.cj.NativeQueryBindings 
(assert (not (= var3394 null-var368)))
(declare-const var902 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var902 null-Int)))
(define-const var610 (Array Int var150) (bindValues/1390366865 var3394)) ; Statement: $r1 = r0.<com.mysql.cj.NativeQueryBindings: com.mysql.cj.BindValue[] bindValues> 
(define-const var364 var150 (select var610 var902)) ; Statement: $r2 = $r1[i0] 
(define-const var1451 Bool (var150_isSet/478424581 var364)) ; Statement: $z0 = interfaceinvoke $r2.<com.mysql.cj.BindValue: boolean isSet()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1451 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {bindValues/1390366865=([com.mysql.cj.NativeQueryBindings], com.mysql.cj.BindValue[]), var150_isSet/478424581=([com.mysql.cj.BindValue], boolean)}
; {var368=com.mysql.cj.NativeQueryBindings, var3394=r0, var902=i0, var150=com.mysql.cj.BindValue, var610=$r1, var364=$r2, var1451=$z0}
; {com.mysql.cj.NativeQueryBindings=var368, r0=var3394, i0=var902, com.mysql.cj.BindValue=var150, $r1=var610, $r2=var364, $z0=var1451}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.NativeQueryBindings;	i0 := @parameter0: int;	$r1 = r0.<com.mysql.cj.NativeQueryBindings: com.mysql.cj.BindValue[] bindValues>;	$r2 = $r1[i0];	$z0 = interfaceinvoke $r2.<com.mysql.cj.BindValue: boolean isSet()>();	if $z0 != 0 goto return;	return
;block_num 2