(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3765 0)
(declare-sort var1711 0)
(declare-sort var3150 0)
(declare-sort var2754 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3150_checkNotNullParameter/-2060636419 (var2754 String) void)
(declare-fun cast-from-var1711-to-var2754 (var1711) var2754)
(define-fun cast-from-var3765-to-var3765 ((arg var3765)) var3765 arg)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun toSeconds/-1402532089 (var1711 Int) Int)
(declare-fun clampToInt/2100285276 (var3765 Int) Int)
(declare-fun maxStaleSeconds/1354008497 (var3765) Int)
(declare-const null-var3765 var3765)
(declare-const null-Int Int)
(declare-const null-var1711 var1711)
(declare-const var764 var3765) ; Statement: r1 := @this: okhttp3.CacheControl$Builder 
(assert (not (= var764 null-var3765)))
(declare-const var1501 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1501 null-Int)))
(declare-const var1245 var1711) ; Statement: r0 := @parameter1: java.util.concurrent.TimeUnit 
(assert (not (= var1245 null-var1711)))
;(assert (var3150_checkNotNullParameter/-2060636419 (cast-from-var1711-to-var2754 var1245) "timeUnit")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit") 

(declare-const var1245!1 var1711)
(declare-const var3047 String)
(define-const var927 var3765 (cast-from-var3765-to-var3765 var764)) ; Statement: $r2 = (okhttp3.CacheControl$Builder) r1 
 ; Statement: if i0 < 0 goto $z0 = 0 
(assert (not (< var1501 0))) ; Negate: Cond: i0 < 0  
(define-const var222 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $l1 = (long) i0 
(assert (not (= (ite var222 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2964 Int (cast-from-Int-to-Int var1501)) ; Statement: $l1 = (long) i0 
(assert true)
(define-const var97 Int (toSeconds/-1402532089 var1245!1 var2964)) ; Statement: l2 = virtualinvoke r0.<java.util.concurrent.TimeUnit: long toSeconds(long)>($l1) 
(assert true)
(define-const var3763 Int (clampToInt/2100285276 var927 var97)) ; Statement: $i3 = specialinvoke $r2.<okhttp3.CacheControl$Builder: int clampToInt(long)>(l2) 
(declare-const var927!1 var3765)
(assert (not (= var927!1 null-var3765)))
(assert (= (maxStaleSeconds/1354008497 var927!1) var3763)) ; Statement: $r2.<okhttp3.CacheControl$Builder: int maxStaleSeconds> = $i3 
(define-const var2721 var3765 (cast-from-var3765-to-var3765 var764)) ; Statement: $r3 = (okhttp3.CacheControl$Builder) r1 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3150_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var1711-to-var2754=([java.util.concurrent.TimeUnit], java.lang.Object), cast-from-var3765-to-var3765=([okhttp3.CacheControl$Builder], okhttp3.CacheControl$Builder), cast-from-Int-to-Int=([int], long), toSeconds/-1402532089=([java.util.concurrent.TimeUnit, long], long), clampToInt/2100285276=([okhttp3.CacheControl$Builder, long], int), maxStaleSeconds/1354008497=([okhttp3.CacheControl$Builder], int)}
; {var3765=okhttp3.CacheControl$Builder, var764=r1, var1501=i0, var1711=java.util.concurrent.TimeUnit, var1245=r0, var3150=kotlin.jvm.internal.Intrinsics, var2754=java.lang.Object, var3047="timeUnit", var927=$r2, var222=$z0, var2964=$l1, var97=l2, var3763=$i3, var2721=$r3}
; {okhttp3.CacheControl$Builder=var3765, r1=var764, i0=var1501, java.util.concurrent.TimeUnit=var1711, r0=var1245, kotlin.jvm.internal.Intrinsics=var3150, java.lang.Object=var2754, "timeUnit"=var3047, $r2=var927, $z0=var222, $l1=var2964, l2=var97, $i3=var3763, $r3=var2721}
;seq 
;cnt {}
;stmts r1 := @this: okhttp3.CacheControl$Builder;	i0 := @parameter0: int;	r0 := @parameter1: java.util.concurrent.TimeUnit;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit");	$r2 = (okhttp3.CacheControl$Builder) r1;	if i0 < 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto $l1 = (long) i0;	$l1 = (long) i0;	l2 = virtualinvoke r0.<java.util.concurrent.TimeUnit: long toSeconds(long)>($l1);	$i3 = specialinvoke $r2.<okhttp3.CacheControl$Builder: int clampToInt(long)>(l2);	$r2.<okhttp3.CacheControl$Builder: int maxStaleSeconds> = $i3;	$r3 = (okhttp3.CacheControl$Builder) r1;	return $r3
;block_num 4