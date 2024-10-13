(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-var3405-to-var3405 ((arg var3405)) var3405 arg)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun minWebSocketMessageToCompress/1595524517 (var3405) Int)
(declare-const null-var3405 var3405)
(declare-const null-Int Int)
(declare-const var1233 var3405) ; Statement: r0 := @this: okhttp3.OkHttpClient$Builder 
(assert (not (= var1233 null-var3405)))
(declare-const var1862 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1862 null-Int)))
(define-const var3096 var3405 (cast-from-var3405-to-var3405 var1233)) ; Statement: $r1 = (okhttp3.OkHttpClient$Builder) r0 
(define-const var636 Int (ite (> var1862 0) 1 (ite (< var1862 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var1279 Int (cast-from-Int-to-Int var636)) ; Statement: $i2 = (int) $b1 
 ; Statement: if $i2 < 0 goto $z0 = 0 
(assert (not (< var1279 0))) ; Negate: Cond: $i2 < 0  
(define-const var3728 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r1.<okhttp3.OkHttpClient$Builder: long minWebSocketMessageToCompress> = l0 
(assert (not (= (ite var3728 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var3096!1 var3405)
(assert (not (= var3096!1 null-var3405)))
(assert (= (minWebSocketMessageToCompress/1595524517 var3096!1) var1862)) ; Statement: $r1.<okhttp3.OkHttpClient$Builder: long minWebSocketMessageToCompress> = l0 
(define-const var1462 var3405 (cast-from-var3405-to-var3405 var1233)) ; Statement: $r2 = (okhttp3.OkHttpClient$Builder) r0 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3405-to-var3405=([okhttp3.OkHttpClient$Builder], okhttp3.OkHttpClient$Builder), cast-from-Int-to-Int=([byte], int), minWebSocketMessageToCompress/1595524517=([okhttp3.OkHttpClient$Builder], long)}
; {var3405=okhttp3.OkHttpClient$Builder, var1233=r0, var1862=l0, var3096=$r1, var636=$b1, var1279=$i2, var3728=$z0, var1462=$r2}
; {okhttp3.OkHttpClient$Builder=var3405, r0=var1233, l0=var1862, $r1=var3096, $b1=var636, $i2=var1279, $z0=var3728, $r2=var1462}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.OkHttpClient$Builder;	l0 := @parameter0: long;	$r1 = (okhttp3.OkHttpClient$Builder) r0;	$b1 = l0 cmp 0L;	$i2 = (int) $b1;	if $i2 < 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto $r1.<okhttp3.OkHttpClient$Builder: long minWebSocketMessageToCompress> = l0;	$r1.<okhttp3.OkHttpClient$Builder: long minWebSocketMessageToCompress> = l0;	$r2 = (okhttp3.OkHttpClient$Builder) r0;	return $r2
;block_num 4