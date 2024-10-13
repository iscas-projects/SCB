(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2997 0)
(declare-sort var247 0)
(declare-sort var3831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/970643265 (var2997) Int)
(declare-fun var247-init () var247)
(declare-fun <init>/2025708098 (var247 var2997 Int) void)
(declare-fun cast-from-var247-to-var3831 (var247) var3831)
(declare-const null-var2997 var2997)
(declare-const null-Int Int)
(declare-const var3835 var2997) ; Statement: r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var3835 null-var2997)))
(declare-const var32 Int) ; Statement: l1 := @parameter0: long 
(assert (not (= var32 null-Int)))
(define-const var543 Int (state/970643265 var3835)) ; Statement: $i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 != 4 goto $z0 = 0 
(assert (not (not (= var543 4)))) ; Negate: Cond: $i0 != 4  
(define-const var776 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5 
(assert (not (= (ite var776 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var3835!1 var2997)
(assert (not (= var3835!1 null-var2997)))
(assert (= (state/970643265 var3835!1) 5)) ; Statement: r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5 
(define-const var2665 var247 var247-init) ; Statement: $r1 = new okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource 
(assert true)
;(assert (<init>/2025708098 var2665 var3835!1 var32)) ; Statement: specialinvoke $r1.<okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource: void <init>(okhttp3.internal.http1.Http1ExchangeCodec,long)>(r0, l1) 

(declare-const var2665!1 var247)
(declare-const var3835!2 var2997)
(declare-const var32!1 Int)
(define-const var1064 var3831 (cast-from-var247-to-var3831 var2665!1)) ; Statement: $r2 = (okio.Source) $r1 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), var247-init=([], okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource), <init>/2025708098=([okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource, okhttp3.internal.http1.Http1ExchangeCodec, long], void), cast-from-var247-to-var3831=([okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource], okio.Source)}
; {var2997=okhttp3.internal.http1.Http1ExchangeCodec, var3835=r0, var32=l1, var543=$i0, var776=$z0, var247=okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource, var2665=$r1, var3831=okio.Source, var1064=$r2}
; {okhttp3.internal.http1.Http1ExchangeCodec=var2997, r0=var3835, l1=var32, $i0=var543, $z0=var776, okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource=var247, $r1=var2665, okio.Source=var3831, $r2=var1064}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	l1 := @parameter0: long;	$i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 != 4 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5;	r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5;	$r1 = new okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource;	specialinvoke $r1.<okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource: void <init>(okhttp3.internal.http1.Http1ExchangeCodec,long)>(r0, l1);	$r2 = (okio.Source) $r1;	return $r2
;block_num 4