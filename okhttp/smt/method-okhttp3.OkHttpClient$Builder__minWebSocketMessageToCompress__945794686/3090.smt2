(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2963 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-var2963-to-var2963 ((arg var2963)) var2963 arg)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun minWebSocketMessageToCompress/1595524517 (var2963) Int)
(declare-const null-var2963 var2963)
(declare-const null-Int Int)
(declare-const var1689 var2963) ; Statement: r0 := @this: okhttp3.OkHttpClient$Builder 
(assert (not (= var1689 null-var2963)))
(declare-const var1465 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1465 null-Int)))
(define-const var2077 var2963 (cast-from-var2963-to-var2963 var1689)) ; Statement: $r1 = (okhttp3.OkHttpClient$Builder) r0 
(define-const var2921 Int (ite (> var1465 0) 1 (ite (< var1465 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var943 Int (cast-from-Int-to-Int var2921)) ; Statement: $i2 = (int) $b1 
 ; Statement: if $i2 < 0 goto $z0 = 0 
(assert (< var943 0)) ; Cond: $i2 < 0 
(define-const var1747 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r1.<okhttp3.OkHttpClient$Builder: long minWebSocketMessageToCompress> = l0 
(assert (not (= (ite var1747 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var2077!1 var2963)
(assert (not (= var2077!1 null-var2963)))
(assert (= (minWebSocketMessageToCompress/1595524517 var2077!1) var1465)) ; Statement: $r1.<okhttp3.OkHttpClient$Builder: long minWebSocketMessageToCompress> = l0 
(define-const var1452 var2963 (cast-from-var2963-to-var2963 var1689)) ; Statement: $r2 = (okhttp3.OkHttpClient$Builder) r0 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2963-to-var2963=([okhttp3.OkHttpClient$Builder], okhttp3.OkHttpClient$Builder), cast-from-Int-to-Int=([byte], int), minWebSocketMessageToCompress/1595524517=([okhttp3.OkHttpClient$Builder], long)}
; {var2963=okhttp3.OkHttpClient$Builder, var1689=r0, var1465=l0, var2077=$r1, var2921=$b1, var943=$i2, var1747=$z0, var1452=$r2}
; {okhttp3.OkHttpClient$Builder=var2963, r0=var1689, l0=var1465, $r1=var2077, $b1=var2921, $i2=var943, $z0=var1747, $r2=var1452}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.OkHttpClient$Builder;	l0 := @parameter0: long;	$r1 = (okhttp3.OkHttpClient$Builder) r0;	$b1 = l0 cmp 0L;	$i2 = (int) $b1;	if $i2 < 0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $r1.<okhttp3.OkHttpClient$Builder: long minWebSocketMessageToCompress> = l0;	$r1.<okhttp3.OkHttpClient$Builder: long minWebSocketMessageToCompress> = l0;	$r2 = (okhttp3.OkHttpClient$Builder) r0;	return $r2
;block_num 4