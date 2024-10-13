(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3869 0)
(declare-sort var2959 0)
(declare-sort var2615 0)
(declare-sort var2524 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2615_checkNotNullParameter/-2060636419 (var2524 String) void)
(declare-fun cast-from-var2959-to-var2524 (var2959) var2524)
(define-fun cast-from-var3869-to-var3869 ((arg var3869)) var3869 arg)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun toSeconds/-1402532089 (var2959 Int) Int)
(declare-fun clampToInt/2100285276 (var3869 Int) Int)
(declare-fun maxAgeSeconds/1354008497 (var3869) Int)
(declare-const null-var3869 var3869)
(declare-const null-Int Int)
(declare-const null-var2959 var2959)
(declare-const var2158 var3869) ; Statement: r1 := @this: okhttp3.CacheControl$Builder 
(assert (not (= var2158 null-var3869)))
(declare-const var3654 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3654 null-Int)))
(declare-const var2012 var2959) ; Statement: r0 := @parameter1: java.util.concurrent.TimeUnit 
(assert (not (= var2012 null-var2959)))
;(assert (var2615_checkNotNullParameter/-2060636419 (cast-from-var2959-to-var2524 var2012) "timeUnit")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit") 

(declare-const var2012!1 var2959)
(declare-const var1204 String)
(define-const var2276 var3869 (cast-from-var3869-to-var3869 var2158)) ; Statement: $r2 = (okhttp3.CacheControl$Builder) r1 
 ; Statement: if i0 < 0 goto $z0 = 0 
(assert (< var3654 0)) ; Cond: i0 < 0 
(define-const var3727 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $l1 = (long) i0 
(assert (not (= (ite var3727 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3236 Int (cast-from-Int-to-Int var3654)) ; Statement: $l1 = (long) i0 
(assert true)
(define-const var2409 Int (toSeconds/-1402532089 var2012!1 var3236)) ; Statement: l2 = virtualinvoke r0.<java.util.concurrent.TimeUnit: long toSeconds(long)>($l1) 
(assert true)
(define-const var3030 Int (clampToInt/2100285276 var2276 var2409)) ; Statement: $i3 = specialinvoke $r2.<okhttp3.CacheControl$Builder: int clampToInt(long)>(l2) 
(declare-const var2276!1 var3869)
(assert (not (= var2276!1 null-var3869)))
(assert (= (maxAgeSeconds/1354008497 var2276!1) var3030)) ; Statement: $r2.<okhttp3.CacheControl$Builder: int maxAgeSeconds> = $i3 
(define-const var3955 var3869 (cast-from-var3869-to-var3869 var2158)) ; Statement: $r3 = (okhttp3.CacheControl$Builder) r1 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2615_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2959-to-var2524=([java.util.concurrent.TimeUnit], java.lang.Object), cast-from-var3869-to-var3869=([okhttp3.CacheControl$Builder], okhttp3.CacheControl$Builder), cast-from-Int-to-Int=([int], long), toSeconds/-1402532089=([java.util.concurrent.TimeUnit, long], long), clampToInt/2100285276=([okhttp3.CacheControl$Builder, long], int), maxAgeSeconds/1354008497=([okhttp3.CacheControl$Builder], int)}
; {var3869=okhttp3.CacheControl$Builder, var2158=r1, var3654=i0, var2959=java.util.concurrent.TimeUnit, var2012=r0, var2615=kotlin.jvm.internal.Intrinsics, var2524=java.lang.Object, var1204="timeUnit", var2276=$r2, var3727=$z0, var3236=$l1, var2409=l2, var3030=$i3, var3955=$r3}
; {okhttp3.CacheControl$Builder=var3869, r1=var2158, i0=var3654, java.util.concurrent.TimeUnit=var2959, r0=var2012, kotlin.jvm.internal.Intrinsics=var2615, java.lang.Object=var2524, "timeUnit"=var1204, $r2=var2276, $z0=var3727, $l1=var3236, l2=var2409, $i3=var3030, $r3=var3955}
;seq 
;cnt {}
;stmts r1 := @this: okhttp3.CacheControl$Builder;	i0 := @parameter0: int;	r0 := @parameter1: java.util.concurrent.TimeUnit;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit");	$r2 = (okhttp3.CacheControl$Builder) r1;	if i0 < 0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $l1 = (long) i0;	$l1 = (long) i0;	l2 = virtualinvoke r0.<java.util.concurrent.TimeUnit: long toSeconds(long)>($l1);	$i3 = specialinvoke $r2.<okhttp3.CacheControl$Builder: int clampToInt(long)>(l2);	$r2.<okhttp3.CacheControl$Builder: int maxAgeSeconds> = $i3;	$r3 = (okhttp3.CacheControl$Builder) r1;	return $r3
;block_num 4