(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1048 0)
(declare-sort var3093 0)
(declare-sort var1863 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-1756266820 (var1048) var3093)
(declare-fun readable/-1756266820 (var1048) Bool)
(declare-const null-var1048 var1048)
(declare-const var1863-assertionsEnabled Bool)
(declare-const var791 var1048) ; Statement: r0 := @this: okhttp3.internal.cache.DiskLruCache$Entry 
(assert (not (= var791 null-var1048)))
(define-const var2177 var3093 (this$0/-1756266820 var791)) ; Statement: $r29 = r0.<okhttp3.internal.cache.DiskLruCache$Entry: okhttp3.internal.cache.DiskLruCache this$0> 
(define-const var2326 Bool var1863-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $z1 = r0.<okhttp3.internal.cache.DiskLruCache$Entry: boolean readable> 
(assert (= (ite var2326 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2485 Bool (readable/-1756266820 var791)) ; Statement: $z1 = r0.<okhttp3.internal.cache.DiskLruCache$Entry: boolean readable> 
 ; Statement: if $z1 != 0 goto $r1 = r0.<okhttp3.internal.cache.DiskLruCache$Entry: okhttp3.internal.cache.DiskLruCache this$0> 
(assert (not (not (= (ite var2485 1 0) 0)))) ; Negate: Cond: $z1 != 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-1756266820=([okhttp3.internal.cache.DiskLruCache$Entry], okhttp3.internal.cache.DiskLruCache), readable/-1756266820=([okhttp3.internal.cache.DiskLruCache$Entry], boolean)}
; {var1048=okhttp3.internal.cache.DiskLruCache$Entry, var791=r0, var3093=okhttp3.internal.cache.DiskLruCache, var2177=$r29, var1863=okhttp3.internal.Util, var2326=$z0, var2485=$z1}
; {okhttp3.internal.cache.DiskLruCache$Entry=var1048, r0=var791, okhttp3.internal.cache.DiskLruCache=var3093, $r29=var2177, okhttp3.internal.Util=var1863, $z0=var2326, $z1=var2485}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.cache.DiskLruCache$Entry;	$r29 = r0.<okhttp3.internal.cache.DiskLruCache$Entry: okhttp3.internal.cache.DiskLruCache this$0>;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $z1 = r0.<okhttp3.internal.cache.DiskLruCache$Entry: boolean readable>;	$z1 = r0.<okhttp3.internal.cache.DiskLruCache$Entry: boolean readable>;	if $z1 != 0 goto $r1 = r0.<okhttp3.internal.cache.DiskLruCache$Entry: okhttp3.internal.cache.DiskLruCache this$0>;	return null
;block_num 3