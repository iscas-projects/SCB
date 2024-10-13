(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var304 0)
(declare-sort var2448 0)
(declare-sort var3239 0)
(declare-sort var1689 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3239_checkNotNullParameter/-2060636419 (var1689 String) void)
(declare-fun cast-from-var2448-to-var1689 (var2448) var1689)
(define-fun cast-from-var304-to-var304 ((arg var304)) var304 arg)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun toSeconds/-1402532089 (var2448 Int) Int)
(declare-fun clampToInt/2100285276 (var304 Int) Int)
(declare-fun maxAgeSeconds/1354008497 (var304) Int)
(declare-const null-var304 var304)
(declare-const null-Int Int)
(declare-const null-var2448 var2448)
(declare-const var385 var304) ; Statement: r1 := @this: okhttp3.CacheControl$Builder 
(assert (not (= var385 null-var304)))
(declare-const var2106 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2106 null-Int)))
(declare-const var1219 var2448) ; Statement: r0 := @parameter1: java.util.concurrent.TimeUnit 
(assert (not (= var1219 null-var2448)))
;(assert (var3239_checkNotNullParameter/-2060636419 (cast-from-var2448-to-var1689 var1219) "timeUnit")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit") 

(declare-const var1219!1 var2448)
(declare-const var3971 String)
(define-const var2193 var304 (cast-from-var304-to-var304 var385)) ; Statement: $r2 = (okhttp3.CacheControl$Builder) r1 
 ; Statement: if i0 < 0 goto $z0 = 0 
(assert (not (< var2106 0))) ; Negate: Cond: i0 < 0  
(define-const var954 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $l1 = (long) i0 
(assert (not (= (ite var954 1 0) 0))) ; Cond: $z0 != 0 
(define-const var349 Int (cast-from-Int-to-Int var2106)) ; Statement: $l1 = (long) i0 
(assert true)
(define-const var1275 Int (toSeconds/-1402532089 var1219!1 var349)) ; Statement: l2 = virtualinvoke r0.<java.util.concurrent.TimeUnit: long toSeconds(long)>($l1) 
(assert true)
(define-const var1404 Int (clampToInt/2100285276 var2193 var1275)) ; Statement: $i3 = specialinvoke $r2.<okhttp3.CacheControl$Builder: int clampToInt(long)>(l2) 
(declare-const var2193!1 var304)
(assert (not (= var2193!1 null-var304)))
(assert (= (maxAgeSeconds/1354008497 var2193!1) var1404)) ; Statement: $r2.<okhttp3.CacheControl$Builder: int maxAgeSeconds> = $i3 
(define-const var846 var304 (cast-from-var304-to-var304 var385)) ; Statement: $r3 = (okhttp3.CacheControl$Builder) r1 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3239_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2448-to-var1689=([java.util.concurrent.TimeUnit], java.lang.Object), cast-from-var304-to-var304=([okhttp3.CacheControl$Builder], okhttp3.CacheControl$Builder), cast-from-Int-to-Int=([int], long), toSeconds/-1402532089=([java.util.concurrent.TimeUnit, long], long), clampToInt/2100285276=([okhttp3.CacheControl$Builder, long], int), maxAgeSeconds/1354008497=([okhttp3.CacheControl$Builder], int)}
; {var304=okhttp3.CacheControl$Builder, var385=r1, var2106=i0, var2448=java.util.concurrent.TimeUnit, var1219=r0, var3239=kotlin.jvm.internal.Intrinsics, var1689=java.lang.Object, var3971="timeUnit", var2193=$r2, var954=$z0, var349=$l1, var1275=l2, var1404=$i3, var846=$r3}
; {okhttp3.CacheControl$Builder=var304, r1=var385, i0=var2106, java.util.concurrent.TimeUnit=var2448, r0=var1219, kotlin.jvm.internal.Intrinsics=var3239, java.lang.Object=var1689, "timeUnit"=var3971, $r2=var2193, $z0=var954, $l1=var349, l2=var1275, $i3=var1404, $r3=var846}
;seq 
;cnt {}
;stmts r1 := @this: okhttp3.CacheControl$Builder;	i0 := @parameter0: int;	r0 := @parameter1: java.util.concurrent.TimeUnit;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "timeUnit");	$r2 = (okhttp3.CacheControl$Builder) r1;	if i0 < 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto $l1 = (long) i0;	$l1 = (long) i0;	l2 = virtualinvoke r0.<java.util.concurrent.TimeUnit: long toSeconds(long)>($l1);	$i3 = specialinvoke $r2.<okhttp3.CacheControl$Builder: int clampToInt(long)>(l2);	$r2.<okhttp3.CacheControl$Builder: int maxAgeSeconds> = $i3;	$r3 = (okhttp3.CacheControl$Builder) r1;	return $r3
;block_num 4