(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3416 0)
(declare-sort var3469 0)
(declare-sort var1270 0)
(declare-sort var965 0)
(declare-sort var1345 0)
(declare-sort var561 0)
(declare-sort var3663 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMaxDigits/-854572371 (var3416) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun prettyPrint/-1981039295 (var3416) Bool)
(declare-fun events/-1981039295 (var3416) var1270)
(declare-fun iterator/529268990 (var1270) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun outstandingEvents/-1981039295 (var3416) var965)
(declare-fun isEmpty/-395756336 (var1345) Bool)
(declare-fun cast-from-var965-to-var1345 (var965) var1345)
(declare-fun stats/-1981039295 (var3416) var561)
(declare-fun var561_entrySet/1101202697 (var561) var3663)
(declare-fun var3663_iterator/1911472585 (var3663) Iterator)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3416 var3416)
(declare-const null-var3469 var3469)
(declare-const var219 var3416) ; Statement: r0 := @this: com.google.javascript.jscomp.Tracer$ThreadTrace 
(assert (not (= var219 null-var3416)))
(assert true)
(define-const var53 Int (getMaxDigits/-854572371 var219)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: int getMaxDigits()>() 
(define-const var1830 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1830)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1830!1 String)
(assert (= var1830!1 ""))
(define-const var1416 Int (- 1)) ; Statement: l9 = -1L 
(define-const var1775 Bool (prettyPrint/-1981039295 var219)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: boolean prettyPrint> 
 ; Statement: if $z0 == 0 goto $r44 = null 
(assert (= (ite var1775 1 0) 0)) ; Cond: $z0 == 0 
(define-const var168 var3469 null-var3469) ; Statement: $r44 = null 
(assert true) ; Non Conditional
(define-const var1093 var3469 var168) ; Statement: r2 = $r44 
(define-const var2788 var1270 (events/-1981039295 var219)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.ArrayList events> 
(assert true)
(define-const var3162 Iterator (iterator/529268990 var2788)) ; Statement: $r43 = virtualinvoke $r3.<java.util.ArrayList: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3352 Bool (Iterator_hasNext/-1669924200 var3162)) ; Statement: $z8 = interfaceinvoke $r43.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z8 == 0 goto $r4 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.LinkedHashSet outstandingEvents> 
(assert (= (ite var3352 1 0) 0)) ; Cond: $z8 == 0 
(define-const var2571 var965 (outstandingEvents/-1981039295 var219)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.LinkedHashSet outstandingEvents> 
(assert true)
(define-const var2726 Bool (isEmpty/-395756336 (cast-from-var965-to-var1345 var2571))) ; Statement: $z1 = virtualinvoke $r4.<java.util.LinkedHashSet: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $r5 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.Map stats> 
(assert (not (= (ite var2726 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1793 var561 (stats/-1981039295 var219)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.Map stats> 
(define-const var588 var3663 (var561_entrySet/1101202697 var1793)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.Map: java.util.Set entrySet()>() 
(define-const var3136 Iterator (var3663_iterator/1911472585 var588)) ; Statement: $r29 = interfaceinvoke $r6.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1918 Bool (Iterator_hasNext/-1669924200 var3136)) ; Statement: $z10 = interfaceinvoke $r29.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z10 == 0 goto $r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1918 1 0) 0)) ; Cond: $z10 == 0 
(assert true)
(define-const var1183 String (toString/-2075883882 var1830!1)) ; Statement: $r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getMaxDigits/-854572371=([com.google.javascript.jscomp.Tracer$ThreadTrace], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), prettyPrint/-1981039295=([com.google.javascript.jscomp.Tracer$ThreadTrace], boolean), events/-1981039295=([com.google.javascript.jscomp.Tracer$ThreadTrace], java.util.ArrayList), iterator/529268990=([java.util.ArrayList], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), outstandingEvents/-1981039295=([com.google.javascript.jscomp.Tracer$ThreadTrace], java.util.LinkedHashSet), isEmpty/-395756336=([java.util.HashSet], boolean), cast-from-var965-to-var1345=([java.util.LinkedHashSet], java.util.HashSet), stats/-1981039295=([com.google.javascript.jscomp.Tracer$ThreadTrace], java.util.Map), var561_entrySet/1101202697=([java.util.Map], java.util.Set), var3663_iterator/1911472585=([java.util.Set], java.util.Iterator), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3416=com.google.javascript.jscomp.Tracer$ThreadTrace, var219=r0, var53=i0, var1830=$r1, var1416=l9, var1775=$z0, var3469=java.util.ArrayDeque, var168=$r44, var1093=r2, var1270=java.util.ArrayList, var2788=$r3, var3162=$r43, var3352=$z8, var965=java.util.LinkedHashSet, var2571=$r4, var1345=java.util.HashSet, var2726=$z1, var561=java.util.Map, var1793=$r5, var3663=java.util.Set, var588=$r6, var3136=$r29, var1918=$z10, var1183=$r7}
; {com.google.javascript.jscomp.Tracer$ThreadTrace=var3416, r0=var219, i0=var53, $r1=var1830, l9=var1416, $z0=var1775, java.util.ArrayDeque=var3469, $r44=var168, r2=var1093, java.util.ArrayList=var1270, $r3=var2788, $r43=var3162, $z8=var3352, java.util.LinkedHashSet=var965, $r4=var2571, java.util.HashSet=var1345, $z1=var2726, java.util.Map=var561, $r5=var1793, java.util.Set=var3663, $r6=var588, $r29=var3136, $z10=var1918, $r7=var1183}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.Tracer$ThreadTrace;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: int getMaxDigits()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	l9 = -1L;	$z0 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: boolean prettyPrint>;	if $z0 == 0 goto $r44 = null;	$r44 = null;	r2 = $r44;	$r3 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.ArrayList events>;	$r43 = virtualinvoke $r3.<java.util.ArrayList: java.util.Iterator iterator()>();	$z8 = interfaceinvoke $r43.<java.util.Iterator: boolean hasNext()>();	if $z8 == 0 goto $r4 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.LinkedHashSet outstandingEvents>;	$r4 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.LinkedHashSet outstandingEvents>;	$z1 = virtualinvoke $r4.<java.util.LinkedHashSet: boolean isEmpty()>();	if $z1 != 0 goto $r5 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.Map stats>;	$r5 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.Map stats>;	$r6 = interfaceinvoke $r5.<java.util.Map: java.util.Set entrySet()>();	$r29 = interfaceinvoke $r6.<java.util.Set: java.util.Iterator iterator()>();	$z10 = interfaceinvoke $r29.<java.util.Iterator: boolean hasNext()>();	if $z10 == 0 goto $r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 8