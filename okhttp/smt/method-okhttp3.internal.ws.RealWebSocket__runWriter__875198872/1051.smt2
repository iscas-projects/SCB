(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2408 0)
(declare-sort var297 0)
(declare-sort var3482 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun writerTask/-1234160023 (var2408) var3482)
(declare-const null-var2408 var2408)
(declare-const var297-assertionsEnabled Bool)
(declare-const null-var3482 var3482)
(declare-const var2119 var2408) ; Statement: r0 := @this: okhttp3.internal.ws.RealWebSocket 
(assert (not (= var2119 null-var2408)))
(define-const var3906 Bool var297-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r2 = r0.<okhttp3.internal.ws.RealWebSocket: okhttp3.internal.concurrent.Task writerTask> 
(assert (= (ite var3906 1 0) 0)) ; Cond: $z0 == 0 
(define-const var895 var3482 (writerTask/-1234160023 var2119)) ; Statement: $r2 = r0.<okhttp3.internal.ws.RealWebSocket: okhttp3.internal.concurrent.Task writerTask> 
 ; Statement: if $r2 == null goto return 
(assert (= var895 null-var3482)) ; Cond: $r2 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {writerTask/-1234160023=([okhttp3.internal.ws.RealWebSocket], okhttp3.internal.concurrent.Task)}
; {var2408=okhttp3.internal.ws.RealWebSocket, var2119=r0, var297=okhttp3.internal.Util, var3906=$z0, var3482=okhttp3.internal.concurrent.Task, var895=$r2}
; {okhttp3.internal.ws.RealWebSocket=var2408, r0=var2119, okhttp3.internal.Util=var297, $z0=var3906, okhttp3.internal.concurrent.Task=var3482, $r2=var895}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.ws.RealWebSocket;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r2 = r0.<okhttp3.internal.ws.RealWebSocket: okhttp3.internal.concurrent.Task writerTask>;	$r2 = r0.<okhttp3.internal.ws.RealWebSocket: okhttp3.internal.concurrent.Task writerTask>;	if $r2 == null goto return;	return
;block_num 3