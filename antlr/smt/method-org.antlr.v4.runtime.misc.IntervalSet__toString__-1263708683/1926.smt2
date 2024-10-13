(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3698 0)
(declare-sort var3330 0)
(declare-sort var1768 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun intervals/125188790 (var3698) var1768)
(declare-fun var1768_isEmpty/-153543822 (var1768) Bool)
(declare-fun size/-1574469653 (var3698) Int)
(declare-fun var1768_iterator/-912451715 (var1768) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3698 var3698)
(declare-const null-var3330 var3330)
(declare-const null-var1768 var1768)
(declare-const var3677 var3698) ; Statement: r1 := @this: org.antlr.v4.runtime.misc.IntervalSet 
(assert (not (= var3677 null-var3698)))
(declare-const var1297 var3330) ; Statement: r8 := @parameter0: org.antlr.v4.runtime.Vocabulary 
(assert (not (= var1297 null-var3330)))
(define-const var384 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var384)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var384!1 String)
(assert (= var384!1 ""))
(define-const var1830 var1768 (intervals/125188790 var3677)) ; Statement: $r2 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals> 
 ; Statement: if $r2 == null goto return "{}" 
(assert (not (= var1830 null-var1768))) ; Negate: Cond: $r2 == null  
(define-const var504 var1768 (intervals/125188790 var3677)) ; Statement: $r3 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals> 
(define-const var986 Bool (var1768_isEmpty/-153543822 var504)) ; Statement: $z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>() 
(assert (= (ite var986 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3158 Int (size/-1574469653 var3677)) ; Statement: $i0 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>() 
 ; Statement: if $i0 <= 1 goto $r4 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals> 
(assert (<= var3158 1)) ; Cond: $i0 <= 1 
(define-const var650 var1768 (intervals/125188790 var3677)) ; Statement: $r4 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals> 
(define-const var3791 Iterator (var1768_iterator/-912451715 var650)) ; Statement: $r11 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3597 Bool (Iterator_hasNext/-1669924200 var3791)) ; Statement: $z2 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto $i1 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>() 
(assert (= (ite var3597 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var1810 Int (size/-1574469653 var3677)) ; Statement: $i1 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>() 
 ; Statement: if $i1 <= 1 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var1810 1)) ; Cond: $i1 <= 1 
(assert true)
(define-const var2145 String (toString/-2075883882 var384!1)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), intervals/125188790=([org.antlr.v4.runtime.misc.IntervalSet], java.util.List), var1768_isEmpty/-153543822=([java.util.List], boolean), size/-1574469653=([org.antlr.v4.runtime.misc.IntervalSet], int), var1768_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3698=org.antlr.v4.runtime.misc.IntervalSet, var3677=r1, var3330=org.antlr.v4.runtime.Vocabulary, var1297=r8, var384=$r0, var1768=java.util.List, var1830=$r2, var504=$r3, var986=$z0, var3158=$i0, var650=$r4, var3791=$r11, var3597=$z2, var1810=$i1, var2145=$r5}
; {org.antlr.v4.runtime.misc.IntervalSet=var3698, r1=var3677, org.antlr.v4.runtime.Vocabulary=var3330, r8=var1297, $r0=var384, java.util.List=var1768, $r2=var1830, $r3=var504, $z0=var986, $i0=var3158, $r4=var650, $r11=var3791, $z2=var3597, $i1=var1810, $r5=var2145}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.misc.IntervalSet;	r8 := @parameter0: org.antlr.v4.runtime.Vocabulary;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals>;	if $r2 == null goto return "{}";	$r3 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals>;	$z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $i0 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>();	$i0 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>();	if $i0 <= 1 goto $r4 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals>;	$r4 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals>;	$r11 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>();	$z2 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto $i1 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>();	$i1 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>();	if $i1 <= 1 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 7