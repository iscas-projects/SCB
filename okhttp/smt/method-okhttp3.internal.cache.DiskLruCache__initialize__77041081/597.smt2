(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3156 0)
(declare-sort var3253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun initialized/1990431374 (var3156) Bool)
(declare-const null-var3156 var3156)
(declare-const var3253-assertionsEnabled Bool)
(declare-const var986 var3156) ; Statement: r0 := @this: okhttp3.internal.cache.DiskLruCache 
(assert (not (= var986 null-var3156)))
(define-const var1199 Bool var3253-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $z1 = r0.<okhttp3.internal.cache.DiskLruCache: boolean initialized> 
(assert (= (ite var1199 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3596 Bool (initialized/1990431374 var986)) ; Statement: $z1 = r0.<okhttp3.internal.cache.DiskLruCache: boolean initialized> 
 ; Statement: if $z1 == 0 goto $r2 = r0.<okhttp3.internal.cache.DiskLruCache: okhttp3.internal.io.FileSystem fileSystem> 
(assert (not (= (ite var3596 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {initialized/1990431374=([okhttp3.internal.cache.DiskLruCache], boolean)}
; {var3156=okhttp3.internal.cache.DiskLruCache, var986=r0, var3253=okhttp3.internal.Util, var1199=$z0, var3596=$z1}
; {okhttp3.internal.cache.DiskLruCache=var3156, r0=var986, okhttp3.internal.Util=var3253, $z0=var1199, $z1=var3596}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.cache.DiskLruCache;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $z1 = r0.<okhttp3.internal.cache.DiskLruCache: boolean initialized>;	$z1 = r0.<okhttp3.internal.cache.DiskLruCache: boolean initialized>;	if $z1 == 0 goto $r2 = r0.<okhttp3.internal.cache.DiskLruCache: okhttp3.internal.io.FileSystem fileSystem>;	return
;block_num 3