(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var475 0)
(declare-sort var1343 0)
(declare-sort var1748 0)
(declare-sort var994 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1748_checkNotNullParameter/-2060636419 (var994 String) void)
(declare-fun cast-from-var1343-to-var994 (var1343) var994)
(define-fun cast-from-var475-to-var475 ((arg var475)) var475 arg)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun toSeconds/-1402532089 (var1343 Int) Int)
(declare-fun clampToInt/2100285276 (var475 Int) Int)
(declare-fun minFreshSeconds/1354008497 (var475) Int)
(declare-const null-var475 var475)
(declare-const null-Int Int)
(declare-const null-var1343 var1343)
(declare-const var3650 var475) ; Statement: r1 := @this: okhttp3.CacheControl$Builder 
(assert (not (= var3650 null-var475)))
(declare-const var1893 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1893 null-Int)))
(declare-const var2848 var1343) ; Statement: r0 := @parameter1: java.util.concurrent.TimeUnit 
(assert (not (= var2848 null-var1343)))
;(assert (var1748_checkNotNullParameter/-2060636419 (cast-from-var1343-to-var994 var2848) "timeUnit")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit") 

(declare-const var2848!1 var1343)
(declare-const var3988 String)
(define-const var3570 var475 (cast-from-var475-to-var475 var3650)) ; Statement: $r2 = (okhttp3.CacheControl$Builder) r1 
 ; Statement: if i0 < 0 goto $z0 = 0 
(assert (< var1893 0)) ; Cond: i0 < 0 
(define-const var2812 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $l1 = (long) i0 
(assert (not (= (ite var2812 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3020 Int (cast-from-Int-to-Int var1893)) ; Statement: $l1 = (long) i0 
(assert true)
(define-const var881 Int (toSeconds/-1402532089 var2848!1 var3020)) ; Statement: l2 = virtualinvoke r0.<java.util.concurrent.TimeUnit: long toSeconds(long)>($l1) 
(assert true)
(define-const var1658 Int (clampToInt/2100285276 var3570 var881)) ; Statement: $i3 = specialinvoke $r2.<okhttp3.CacheControl$Builder: int clampToInt(long)>(l2) 
(declare-const var3570!1 var475)
(assert (not (= var3570!1 null-var475)))
(assert (= (minFreshSeconds/1354008497 var3570!1) var1658)) ; Statement: $r2.<okhttp3.CacheControl$Builder: int minFreshSeconds> = $i3 
(define-const var1325 var475 (cast-from-var475-to-var475 var3650)) ; Statement: $r3 = (okhttp3.CacheControl$Builder) r1 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1748_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var1343-to-var994=([java.util.concurrent.TimeUnit], java.lang.Object), cast-from-var475-to-var475=([okhttp3.CacheControl$Builder], okhttp3.CacheControl$Builder), cast-from-Int-to-Int=([int], long), toSeconds/-1402532089=([java.util.concurrent.TimeUnit, long], long), clampToInt/2100285276=([okhttp3.CacheControl$Builder, long], int), minFreshSeconds/1354008497=([okhttp3.CacheControl$Builder], int)}
; {var475=okhttp3.CacheControl$Builder, var3650=r1, var1893=i0, var1343=java.util.concurrent.TimeUnit, var2848=r0, var1748=kotlin.jvm.internal.Intrinsics, var994=java.lang.Object, var3988="timeUnit", var3570=$r2, var2812=$z0, var3020=$l1, var881=l2, var1658=$i3, var1325=$r3}
; {okhttp3.CacheControl$Builder=var475, r1=var3650, i0=var1893, java.util.concurrent.TimeUnit=var1343, r0=var2848, kotlin.jvm.internal.Intrinsics=var1748, java.lang.Object=var994, "timeUnit"=var3988, $r2=var3570, $z0=var2812, $l1=var3020, l2=var881, $i3=var1658, $r3=var1325}
;seq 
;cnt {}
;stmts r1 := @this: okhttp3.CacheControl$Builder;	i0 := @parameter0: int;	r0 := @parameter1: java.util.concurrent.TimeUnit;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit");	$r2 = (okhttp3.CacheControl$Builder) r1;	if i0 < 0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $l1 = (long) i0;	$l1 = (long) i0;	l2 = virtualinvoke r0.<java.util.concurrent.TimeUnit: long toSeconds(long)>($l1);	$i3 = specialinvoke $r2.<okhttp3.CacheControl$Builder: int clampToInt(long)>(l2);	$r2.<okhttp3.CacheControl$Builder: int minFreshSeconds> = $i3;	$r3 = (okhttp3.CacheControl$Builder) r1;	return $r3
;block_num 4