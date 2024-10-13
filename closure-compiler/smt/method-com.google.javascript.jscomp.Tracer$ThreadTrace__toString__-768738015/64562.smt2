(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3658 0)
(declare-sort var3241 0)
(declare-sort var3113 0)
(declare-sort var2665 0)
(declare-sort var3554 0)
(declare-sort var1057 0)
(declare-sort var2279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMaxDigits/-854572371 (var3658) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun prettyPrint/-1981039295 (var3658) Bool)
(declare-fun var3241-init () var3241)
(declare-fun <init>/-1300283768 (var3241) void)
(declare-fun events/-1981039295 (var3658) var3113)
(declare-fun iterator/529268990 (var3113) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun outstandingEvents/-1981039295 (var3658) var2665)
(declare-fun isEmpty/-395756336 (var3554) Bool)
(declare-fun cast-from-var2665-to-var3554 (var2665) var3554)
(declare-fun stats/-1981039295 (var3658) var1057)
(declare-fun var1057_entrySet/1101202697 (var1057) var2279)
(declare-fun var2279_iterator/1911472585 (var2279) Iterator)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3658 var3658)
(declare-const var2751 var3658) ; Statement: r0 := @this: com.google.javascript.jscomp.Tracer$ThreadTrace 
(assert (not (= var2751 null-var3658)))
(assert true)
(define-const var2632 Int (getMaxDigits/-854572371 var2751)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: int getMaxDigits()>() 
(define-const var3546 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3546)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3546!1 String)
(assert (= var3546!1 ""))
(define-const var1618 Int (- 1)) ; Statement: l9 = -1L 
(define-const var3854 Bool (prettyPrint/-1981039295 var2751)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: boolean prettyPrint> 
 ; Statement: if $z0 == 0 goto $r44 = null 
(assert (not (= (ite var3854 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3445 var3241 var3241-init) ; Statement: $r44 = new java.util.ArrayDeque 
(assert true)
;(assert (<init>/-1300283768 var3445)) ; Statement: specialinvoke $r44.<java.util.ArrayDeque: void <init>()>() 

(declare-const var3445!1 var3241)
 ; Statement: goto [?= r2 = $r44] 
(assert true) ; Non Conditional
(define-const var3996 var3241 var3445!1) ; Statement: r2 = $r44 
(define-const var3454 var3113 (events/-1981039295 var2751)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.ArrayList events> 
(assert true)
(define-const var2978 Iterator (iterator/529268990 var3454)) ; Statement: $r43 = virtualinvoke $r3.<java.util.ArrayList: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2798 Bool (Iterator_hasNext/-1669924200 var2978)) ; Statement: $z8 = interfaceinvoke $r43.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z8 == 0 goto $r4 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.LinkedHashSet outstandingEvents> 
(assert (= (ite var2798 1 0) 0)) ; Cond: $z8 == 0 
(define-const var1066 var2665 (outstandingEvents/-1981039295 var2751)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.LinkedHashSet outstandingEvents> 
(assert true)
(define-const var1789 Bool (isEmpty/-395756336 (cast-from-var2665-to-var3554 var1066))) ; Statement: $z1 = virtualinvoke $r4.<java.util.LinkedHashSet: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $r5 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.Map stats> 
(assert (not (= (ite var1789 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3604 var1057 (stats/-1981039295 var2751)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.Map stats> 
(define-const var200 var2279 (var1057_entrySet/1101202697 var3604)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.Map: java.util.Set entrySet()>() 
(define-const var1884 Iterator (var2279_iterator/1911472585 var200)) ; Statement: $r29 = interfaceinvoke $r6.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3259 Bool (Iterator_hasNext/-1669924200 var1884)) ; Statement: $z10 = interfaceinvoke $r29.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z10 == 0 goto $r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3259 1 0) 0)) ; Cond: $z10 == 0 
(assert true)
(define-const var3428 String (toString/-2075883882 var3546!1)) ; Statement: $r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getMaxDigits/-854572371=([com.google.javascript.jscomp.Tracer$ThreadTrace], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), prettyPrint/-1981039295=([com.google.javascript.jscomp.Tracer$ThreadTrace], boolean), var3241-init=([], java.util.ArrayDeque), <init>/-1300283768=([java.util.ArrayDeque], void), events/-1981039295=([com.google.javascript.jscomp.Tracer$ThreadTrace], java.util.ArrayList), iterator/529268990=([java.util.ArrayList], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), outstandingEvents/-1981039295=([com.google.javascript.jscomp.Tracer$ThreadTrace], java.util.LinkedHashSet), isEmpty/-395756336=([java.util.HashSet], boolean), cast-from-var2665-to-var3554=([java.util.LinkedHashSet], java.util.HashSet), stats/-1981039295=([com.google.javascript.jscomp.Tracer$ThreadTrace], java.util.Map), var1057_entrySet/1101202697=([java.util.Map], java.util.Set), var2279_iterator/1911472585=([java.util.Set], java.util.Iterator), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3658=com.google.javascript.jscomp.Tracer$ThreadTrace, var2751=r0, var2632=i0, var3546=$r1, var1618=l9, var3854=$z0, var3241=java.util.ArrayDeque, var3445=$r44, var3996=r2, var3113=java.util.ArrayList, var3454=$r3, var2978=$r43, var2798=$z8, var2665=java.util.LinkedHashSet, var1066=$r4, var3554=java.util.HashSet, var1789=$z1, var1057=java.util.Map, var3604=$r5, var2279=java.util.Set, var200=$r6, var1884=$r29, var3259=$z10, var3428=$r7}
; {com.google.javascript.jscomp.Tracer$ThreadTrace=var3658, r0=var2751, i0=var2632, $r1=var3546, l9=var1618, $z0=var3854, java.util.ArrayDeque=var3241, $r44=var3445, r2=var3996, java.util.ArrayList=var3113, $r3=var3454, $r43=var2978, $z8=var2798, java.util.LinkedHashSet=var2665, $r4=var1066, java.util.HashSet=var3554, $z1=var1789, java.util.Map=var1057, $r5=var3604, java.util.Set=var2279, $r6=var200, $r29=var1884, $z10=var3259, $r7=var3428}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.Tracer$ThreadTrace;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: int getMaxDigits()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	l9 = -1L;	$z0 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: boolean prettyPrint>;	if $z0 == 0 goto $r44 = null;	$r44 = new java.util.ArrayDeque;	specialinvoke $r44.<java.util.ArrayDeque: void <init>()>();	goto [?= r2 = $r44];	r2 = $r44;	$r3 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.ArrayList events>;	$r43 = virtualinvoke $r3.<java.util.ArrayList: java.util.Iterator iterator()>();	$z8 = interfaceinvoke $r43.<java.util.Iterator: boolean hasNext()>();	if $z8 == 0 goto $r4 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.LinkedHashSet outstandingEvents>;	$r4 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.LinkedHashSet outstandingEvents>;	$z1 = virtualinvoke $r4.<java.util.LinkedHashSet: boolean isEmpty()>();	if $z1 != 0 goto $r5 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.Map stats>;	$r5 = r0.<com.google.javascript.jscomp.Tracer$ThreadTrace: java.util.Map stats>;	$r6 = interfaceinvoke $r5.<java.util.Map: java.util.Set entrySet()>();	$r29 = interfaceinvoke $r6.<java.util.Set: java.util.Iterator iterator()>();	$z10 = interfaceinvoke $r29.<java.util.Iterator: boolean hasNext()>();	if $z10 == 0 goto $r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 8