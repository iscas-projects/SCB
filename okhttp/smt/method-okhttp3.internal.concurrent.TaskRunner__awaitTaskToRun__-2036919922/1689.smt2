(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var495 0)
(declare-sort var2841 0)
(declare-sort var1057 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readyQueues/-979298598 (var495) var1057)
(declare-fun var1057_isEmpty/-153543822 (var1057) Bool)
(declare-const null-var495 var495)
(declare-const var2841-assertionsEnabled Bool)
(declare-const var2425 var495) ; Statement: r0 := @this: okhttp3.internal.concurrent.TaskRunner 
(assert (not (= var2425 null-var495)))
(define-const var3492 Bool var2841-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r25 = r0.<okhttp3.internal.concurrent.TaskRunner: java.util.List readyQueues> 
(assert (= (ite var3492 1 0) 0)) ; Cond: $z0 == 0 
(define-const var929 var1057 (readyQueues/-979298598 var2425)) ; Statement: $r25 = r0.<okhttp3.internal.concurrent.TaskRunner: java.util.List readyQueues> 
(define-const var2714 Bool (var1057_isEmpty/-153543822 var929)) ; Statement: $z5 = interfaceinvoke $r25.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z5 == 0 goto $r1 = r0.<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskRunner$Backend backend> 
(assert (not (= (ite var2714 1 0) 0))) ; Negate: Cond: $z5 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {readyQueues/-979298598=([okhttp3.internal.concurrent.TaskRunner], java.util.List), var1057_isEmpty/-153543822=([java.util.List], boolean)}
; {var495=okhttp3.internal.concurrent.TaskRunner, var2425=r0, var2841=okhttp3.internal.Util, var3492=$z0, var1057=java.util.List, var929=$r25, var2714=$z5}
; {okhttp3.internal.concurrent.TaskRunner=var495, r0=var2425, okhttp3.internal.Util=var2841, $z0=var3492, java.util.List=var1057, $r25=var929, $z5=var2714}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.concurrent.TaskRunner;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r25 = r0.<okhttp3.internal.concurrent.TaskRunner: java.util.List readyQueues>;	$r25 = r0.<okhttp3.internal.concurrent.TaskRunner: java.util.List readyQueues>;	$z5 = interfaceinvoke $r25.<java.util.List: boolean isEmpty()>();	if $z5 == 0 goto $r1 = r0.<okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskRunner$Backend backend>;	return null
;block_num 3