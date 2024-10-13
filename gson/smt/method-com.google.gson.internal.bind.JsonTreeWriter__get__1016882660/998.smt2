(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var136 0)
(declare-sort var2963 0)
(declare-sort var2334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stack/-996497260 (var136) var2963)
(declare-fun var2963_isEmpty/-153543822 (var2963) Bool)
(declare-fun product/-996497260 (var136) var2334)
(declare-const null-var136 var136)
(declare-const var3295 var136) ; Statement: r0 := @this: com.google.gson.internal.bind.JsonTreeWriter 
(assert (not (= var3295 null-var136)))
(define-const var586 var2963 (stack/-996497260 var3295)) ; Statement: $r1 = r0.<com.google.gson.internal.bind.JsonTreeWriter: java.util.List stack> 
(define-const var3274 Bool (var2963_isEmpty/-153543822 var586)) ; Statement: $z0 = interfaceinvoke $r1.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r2 = r0.<com.google.gson.internal.bind.JsonTreeWriter: com.google.gson.JsonElement product> 
(assert (not (= (ite var3274 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1376 var2334 (product/-996497260 var3295)) ; Statement: $r2 = r0.<com.google.gson.internal.bind.JsonTreeWriter: com.google.gson.JsonElement product> 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {stack/-996497260=([com.google.gson.internal.bind.JsonTreeWriter], java.util.List), var2963_isEmpty/-153543822=([java.util.List], boolean), product/-996497260=([com.google.gson.internal.bind.JsonTreeWriter], com.google.gson.JsonElement)}
; {var136=com.google.gson.internal.bind.JsonTreeWriter, var3295=r0, var2963=java.util.List, var586=$r1, var3274=$z0, var2334=com.google.gson.JsonElement, var1376=$r2}
; {com.google.gson.internal.bind.JsonTreeWriter=var136, r0=var3295, java.util.List=var2963, $r1=var586, $z0=var3274, com.google.gson.JsonElement=var2334, $r2=var1376}
;seq 
;cnt {}
;stmts r0 := @this: com.google.gson.internal.bind.JsonTreeWriter;	$r1 = r0.<com.google.gson.internal.bind.JsonTreeWriter: java.util.List stack>;	$z0 = interfaceinvoke $r1.<java.util.List: boolean isEmpty()>();	if $z0 != 0 goto $r2 = r0.<com.google.gson.internal.bind.JsonTreeWriter: com.google.gson.JsonElement product>;	$r2 = r0.<com.google.gson.internal.bind.JsonTreeWriter: com.google.gson.JsonElement product>;	return $r2
;block_num 2