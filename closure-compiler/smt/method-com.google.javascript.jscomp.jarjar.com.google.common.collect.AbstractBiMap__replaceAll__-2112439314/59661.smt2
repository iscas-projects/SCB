(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1181 0)
(declare-sort var3031 0)
(declare-sort var839 0)
(declare-sort var2618 0)
(declare-sort var694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun delegate/1917347715 (var1181) var839)
(declare-fun var839_replaceAll/-1214686731 (var839 var3031) void)
(declare-fun inverse/1917347715 (var1181) var1181)
(declare-fun var839_clear/2125668534 (var839) void)
(declare-fun var839_entrySet/1101202697 (var839) var694)
(declare-fun var694_iterator/1911472585 (var694) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var1181 var1181)
(declare-const null-var3031 var3031)
(declare-const null-var2618 var2618)
(declare-const var3341 var1181) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap 
(assert (not (= var3341 null-var1181)))
(declare-const var2202 var3031) ; Statement: r1 := @parameter0: java.util.function.BiFunction 
(assert (not (= var2202 null-var3031)))
(define-const var2682 var839 (delegate/1917347715 var3341)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap: java.util.Map delegate> 
;(assert (var839_replaceAll/-1214686731 var2682 var2202)) ; Statement: interfaceinvoke $r2.<java.util.Map: void replaceAll(java.util.function.BiFunction)>(r1) 

(declare-const var2682!1 var839)
(declare-const var2202!1 var3031)
(define-const var3532 var1181 (inverse/1917347715 var3341)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap inverse> 
(define-const var2857 var839 (delegate/1917347715 var3532)) ; Statement: $r4 = $r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap: java.util.Map delegate> 
;(assert (var839_clear/2125668534 var2857)) ; Statement: interfaceinvoke $r4.<java.util.Map: void clear()>() 

(declare-const var2857!1 var839)
(define-const var3286 var2618 null-var2618) ; Statement: r21 = null 
(define-const var2214 var839 (delegate/1917347715 var3341)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap: java.util.Map delegate> 
(define-const var2825 var694 (var839_entrySet/1101202697 var2214)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.Map: java.util.Set entrySet()>() 
(define-const var3718 Iterator (var694_iterator/1911472585 var2825)) ; Statement: r7 = interfaceinvoke $r6.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var55 Bool (Iterator_hasNext/-1669924200 var3718)) ; Statement: $z0 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var55 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r21 == null goto return 
(assert (= var3286 null-var2618)) ; Cond: r21 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {delegate/1917347715=([com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap], java.util.Map), var839_replaceAll/-1214686731=([java.util.Map, java.util.function.BiFunction], void), inverse/1917347715=([com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap], com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap), var839_clear/2125668534=([java.util.Map], void), var839_entrySet/1101202697=([java.util.Map], java.util.Set), var694_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var1181=com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap, var3341=r0, var3031=java.util.function.BiFunction, var2202=r1, var839=java.util.Map, var2682=$r2, var3532=$r3, var2857=$r4, var2618=java.util.Map$Entry, var3286=r21, var2214=$r5, var694=java.util.Set, var2825=$r6, var3718=r7, var55=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap=var1181, r0=var3341, java.util.function.BiFunction=var3031, r1=var2202, java.util.Map=var839, $r2=var2682, $r3=var3532, $r4=var2857, java.util.Map$Entry=var2618, r21=var3286, $r5=var2214, java.util.Set=var694, $r6=var2825, r7=var3718, $z0=var55}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap;	r1 := @parameter0: java.util.function.BiFunction;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap: java.util.Map delegate>;	interfaceinvoke $r2.<java.util.Map: void replaceAll(java.util.function.BiFunction)>(r1);	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap inverse>;	$r4 = $r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap: java.util.Map delegate>;	interfaceinvoke $r4.<java.util.Map: void clear()>();	r21 = null;	$r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.AbstractBiMap: java.util.Map delegate>;	$r6 = interfaceinvoke $r5.<java.util.Map: java.util.Set entrySet()>();	r7 = interfaceinvoke $r6.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto (branch);	if r21 == null goto return;	return
;block_num 4