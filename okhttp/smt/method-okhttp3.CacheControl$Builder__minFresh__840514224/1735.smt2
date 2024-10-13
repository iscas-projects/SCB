(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2293 0)
(declare-sort var2737 0)
(declare-sort var796 0)
(declare-sort var886 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var796_checkNotNullParameter/-2060636419 (var886 String) void)
(declare-fun cast-from-var2737-to-var886 (var2737) var886)
(define-fun cast-from-var2293-to-var2293 ((arg var2293)) var2293 arg)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun toSeconds/-1402532089 (var2737 Int) Int)
(declare-fun clampToInt/2100285276 (var2293 Int) Int)
(declare-fun minFreshSeconds/1354008497 (var2293) Int)
(declare-const null-var2293 var2293)
(declare-const null-Int Int)
(declare-const null-var2737 var2737)
(declare-const var2869 var2293) ; Statement: r1 := @this: okhttp3.CacheControl$Builder 
(assert (not (= var2869 null-var2293)))
(declare-const var1346 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1346 null-Int)))
(declare-const var1197 var2737) ; Statement: r0 := @parameter1: java.util.concurrent.TimeUnit 
(assert (not (= var1197 null-var2737)))
;(assert (var796_checkNotNullParameter/-2060636419 (cast-from-var2737-to-var886 var1197) "timeUnit")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit") 

(declare-const var1197!1 var2737)
(declare-const var556 String)
(define-const var3842 var2293 (cast-from-var2293-to-var2293 var2869)) ; Statement: $r2 = (okhttp3.CacheControl$Builder) r1 
 ; Statement: if i0 < 0 goto $z0 = 0 
(assert (not (< var1346 0))) ; Negate: Cond: i0 < 0  
(define-const var986 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $l1 = (long) i0 
(assert (not (= (ite var986 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1393 Int (cast-from-Int-to-Int var1346)) ; Statement: $l1 = (long) i0 
(assert true)
(define-const var237 Int (toSeconds/-1402532089 var1197!1 var1393)) ; Statement: l2 = virtualinvoke r0.<java.util.concurrent.TimeUnit: long toSeconds(long)>($l1) 
(assert true)
(define-const var548 Int (clampToInt/2100285276 var3842 var237)) ; Statement: $i3 = specialinvoke $r2.<okhttp3.CacheControl$Builder: int clampToInt(long)>(l2) 
(declare-const var3842!1 var2293)
(assert (not (= var3842!1 null-var2293)))
(assert (= (minFreshSeconds/1354008497 var3842!1) var548)) ; Statement: $r2.<okhttp3.CacheControl$Builder: int minFreshSeconds> = $i3 
(define-const var115 var2293 (cast-from-var2293-to-var2293 var2869)) ; Statement: $r3 = (okhttp3.CacheControl$Builder) r1 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var796_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2737-to-var886=([java.util.concurrent.TimeUnit], java.lang.Object), cast-from-var2293-to-var2293=([okhttp3.CacheControl$Builder], okhttp3.CacheControl$Builder), cast-from-Int-to-Int=([int], long), toSeconds/-1402532089=([java.util.concurrent.TimeUnit, long], long), clampToInt/2100285276=([okhttp3.CacheControl$Builder, long], int), minFreshSeconds/1354008497=([okhttp3.CacheControl$Builder], int)}
; {var2293=okhttp3.CacheControl$Builder, var2869=r1, var1346=i0, var2737=java.util.concurrent.TimeUnit, var1197=r0, var796=kotlin.jvm.internal.Intrinsics, var886=java.lang.Object, var556="timeUnit", var3842=$r2, var986=$z0, var1393=$l1, var237=l2, var548=$i3, var115=$r3}
; {okhttp3.CacheControl$Builder=var2293, r1=var2869, i0=var1346, java.util.concurrent.TimeUnit=var2737, r0=var1197, kotlin.jvm.internal.Intrinsics=var796, java.lang.Object=var886, "timeUnit"=var556, $r2=var3842, $z0=var986, $l1=var1393, l2=var237, $i3=var548, $r3=var115}
;seq 
;cnt {}
;stmts r1 := @this: okhttp3.CacheControl$Builder;	i0 := @parameter0: int;	r0 := @parameter1: java.util.concurrent.TimeUnit;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit");	$r2 = (okhttp3.CacheControl$Builder) r1;	if i0 < 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto $l1 = (long) i0;	$l1 = (long) i0;	l2 = virtualinvoke r0.<java.util.concurrent.TimeUnit: long toSeconds(long)>($l1);	$i3 = specialinvoke $r2.<okhttp3.CacheControl$Builder: int clampToInt(long)>(l2);	$r2.<okhttp3.CacheControl$Builder: int minFreshSeconds> = $i3;	$r3 = (okhttp3.CacheControl$Builder) r1;	return $r3
;block_num 4