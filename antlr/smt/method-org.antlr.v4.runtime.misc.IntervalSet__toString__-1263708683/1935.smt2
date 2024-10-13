(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2102 0)
(declare-sort var771 0)
(declare-sort var1913 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun intervals/125188790 (var2102) var1913)
(declare-fun var1913_isEmpty/-153543822 (var1913) Bool)
(declare-fun size/-1574469653 (var2102) Int)
(declare-fun var1913_iterator/-912451715 (var1913) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2102 var2102)
(declare-const null-var771 var771)
(declare-const null-var1913 var1913)
(declare-const var826 var2102) ; Statement: r1 := @this: org.antlr.v4.runtime.misc.IntervalSet 
(assert (not (= var826 null-var2102)))
(declare-const var2683 var771) ; Statement: r8 := @parameter0: org.antlr.v4.runtime.Vocabulary 
(assert (not (= var2683 null-var771)))
(define-const var1770 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1770)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1770!1 String)
(assert (= var1770!1 ""))
(define-const var927 var1913 (intervals/125188790 var826)) ; Statement: $r2 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals> 
 ; Statement: if $r2 == null goto return "{}" 
(assert (not (= var927 null-var1913))) ; Negate: Cond: $r2 == null  
(define-const var3728 var1913 (intervals/125188790 var826)) ; Statement: $r3 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals> 
(define-const var710 Bool (var1913_isEmpty/-153543822 var3728)) ; Statement: $z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>() 
(assert (= (ite var710 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2637 Int (size/-1574469653 var826)) ; Statement: $i0 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>() 
 ; Statement: if $i0 <= 1 goto $r4 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals> 
(assert (<= var2637 1)) ; Cond: $i0 <= 1 
(define-const var404 var1913 (intervals/125188790 var826)) ; Statement: $r4 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals> 
(define-const var1994 Iterator (var1913_iterator/-912451715 var404)) ; Statement: $r11 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var910 Bool (Iterator_hasNext/-1669924200 var1994)) ; Statement: $z2 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto $i1 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>() 
(assert (= (ite var910 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var3245 Int (size/-1574469653 var826)) ; Statement: $i1 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>() 
 ; Statement: if $i1 <= 1 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (<= var3245 1))) ; Negate: Cond: $i1 <= 1  
(assert true)
;(assert (append/672562846 var1770!1 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1770!2 String)
(assert (= var1770!2 (str.++ var1770!1 "}")))
(assert true) ; Non Conditional
(assert true)
(define-const var819 String (toString/-2075883882 var1770!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), intervals/125188790=([org.antlr.v4.runtime.misc.IntervalSet], java.util.List), var1913_isEmpty/-153543822=([java.util.List], boolean), size/-1574469653=([org.antlr.v4.runtime.misc.IntervalSet], int), var1913_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2102=org.antlr.v4.runtime.misc.IntervalSet, var826=r1, var771=org.antlr.v4.runtime.Vocabulary, var2683=r8, var1770=$r0, var1913=java.util.List, var927=$r2, var3728=$r3, var710=$z0, var2637=$i0, var404=$r4, var1994=$r11, var910=$z2, var3245=$i1, var819=$r5}
; {org.antlr.v4.runtime.misc.IntervalSet=var2102, r1=var826, org.antlr.v4.runtime.Vocabulary=var771, r8=var2683, $r0=var1770, java.util.List=var1913, $r2=var927, $r3=var3728, $z0=var710, $i0=var2637, $r4=var404, $r11=var1994, $z2=var910, $i1=var3245, $r5=var819}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.misc.IntervalSet;	r8 := @parameter0: org.antlr.v4.runtime.Vocabulary;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals>;	if $r2 == null goto return "{}";	$r3 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals>;	$z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $i0 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>();	$i0 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>();	if $i0 <= 1 goto $r4 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals>;	$r4 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals>;	$r11 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>();	$z2 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto $i1 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>();	$i1 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>();	if $i1 <= 1 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 8