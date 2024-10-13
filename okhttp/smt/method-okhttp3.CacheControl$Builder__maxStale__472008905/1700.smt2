(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1544 0)
(declare-sort var3882 0)
(declare-sort var3962 0)
(declare-sort var1683 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3962_checkNotNullParameter/-2060636419 (var1683 String) void)
(declare-fun cast-from-var3882-to-var1683 (var3882) var1683)
(define-fun cast-from-var1544-to-var1544 ((arg var1544)) var1544 arg)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun toSeconds/-1402532089 (var3882 Int) Int)
(declare-fun clampToInt/2100285276 (var1544 Int) Int)
(declare-fun maxStaleSeconds/1354008497 (var1544) Int)
(declare-const null-var1544 var1544)
(declare-const null-Int Int)
(declare-const null-var3882 var3882)
(declare-const var1915 var1544) ; Statement: r1 := @this: okhttp3.CacheControl$Builder 
(assert (not (= var1915 null-var1544)))
(declare-const var1181 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1181 null-Int)))
(declare-const var2366 var3882) ; Statement: r0 := @parameter1: java.util.concurrent.TimeUnit 
(assert (not (= var2366 null-var3882)))
;(assert (var3962_checkNotNullParameter/-2060636419 (cast-from-var3882-to-var1683 var2366) "timeUnit")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit") 

(declare-const var2366!1 var3882)
(declare-const var2121 String)
(define-const var2600 var1544 (cast-from-var1544-to-var1544 var1915)) ; Statement: $r2 = (okhttp3.CacheControl$Builder) r1 
 ; Statement: if i0 < 0 goto $z0 = 0 
(assert (< var1181 0)) ; Cond: i0 < 0 
(define-const var3953 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $l1 = (long) i0 
(assert (not (= (ite var3953 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1625 Int (cast-from-Int-to-Int var1181)) ; Statement: $l1 = (long) i0 
(assert true)
(define-const var2429 Int (toSeconds/-1402532089 var2366!1 var1625)) ; Statement: l2 = virtualinvoke r0.<java.util.concurrent.TimeUnit: long toSeconds(long)>($l1) 
(assert true)
(define-const var1065 Int (clampToInt/2100285276 var2600 var2429)) ; Statement: $i3 = specialinvoke $r2.<okhttp3.CacheControl$Builder: int clampToInt(long)>(l2) 
(declare-const var2600!1 var1544)
(assert (not (= var2600!1 null-var1544)))
(assert (= (maxStaleSeconds/1354008497 var2600!1) var1065)) ; Statement: $r2.<okhttp3.CacheControl$Builder: int maxStaleSeconds> = $i3 
(define-const var999 var1544 (cast-from-var1544-to-var1544 var1915)) ; Statement: $r3 = (okhttp3.CacheControl$Builder) r1 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3962_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var3882-to-var1683=([java.util.concurrent.TimeUnit], java.lang.Object), cast-from-var1544-to-var1544=([okhttp3.CacheControl$Builder], okhttp3.CacheControl$Builder), cast-from-Int-to-Int=([int], long), toSeconds/-1402532089=([java.util.concurrent.TimeUnit, long], long), clampToInt/2100285276=([okhttp3.CacheControl$Builder, long], int), maxStaleSeconds/1354008497=([okhttp3.CacheControl$Builder], int)}
; {var1544=okhttp3.CacheControl$Builder, var1915=r1, var1181=i0, var3882=java.util.concurrent.TimeUnit, var2366=r0, var3962=kotlin.jvm.internal.Intrinsics, var1683=java.lang.Object, var2121="timeUnit", var2600=$r2, var3953=$z0, var1625=$l1, var2429=l2, var1065=$i3, var999=$r3}
; {okhttp3.CacheControl$Builder=var1544, r1=var1915, i0=var1181, java.util.concurrent.TimeUnit=var3882, r0=var2366, kotlin.jvm.internal.Intrinsics=var3962, java.lang.Object=var1683, "timeUnit"=var2121, $r2=var2600, $z0=var3953, $l1=var1625, l2=var2429, $i3=var1065, $r3=var999}
;seq 
;cnt {}
;stmts r1 := @this: okhttp3.CacheControl$Builder;	i0 := @parameter0: int;	r0 := @parameter1: java.util.concurrent.TimeUnit;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit");	$r2 = (okhttp3.CacheControl$Builder) r1;	if i0 < 0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $l1 = (long) i0;	$l1 = (long) i0;	l2 = virtualinvoke r0.<java.util.concurrent.TimeUnit: long toSeconds(long)>($l1);	$i3 = specialinvoke $r2.<okhttp3.CacheControl$Builder: int clampToInt(long)>(l2);	$r2.<okhttp3.CacheControl$Builder: int maxStaleSeconds> = $i3;	$r3 = (okhttp3.CacheControl$Builder) r1;	return $r3
;block_num 4