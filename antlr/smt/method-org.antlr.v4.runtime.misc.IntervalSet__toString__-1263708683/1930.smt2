(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2813 0)
(declare-sort var1058 0)
(declare-sort var2748 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun intervals/125188790 (var2813) var2748)
(declare-fun var2748_isEmpty/-153543822 (var2748) Bool)
(declare-fun size/-1574469653 (var2813) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2748_iterator/-912451715 (var2748) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2813 var2813)
(declare-const null-var1058 var1058)
(declare-const null-var2748 var2748)
(declare-const var1405 var2813) ; Statement: r1 := @this: org.antlr.v4.runtime.misc.IntervalSet 
(assert (not (= var1405 null-var2813)))
(declare-const var1024 var1058) ; Statement: r8 := @parameter0: org.antlr.v4.runtime.Vocabulary 
(assert (not (= var1024 null-var1058)))
(define-const var2754 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2754)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2754!1 String)
(assert (= var2754!1 ""))
(define-const var3041 var2748 (intervals/125188790 var1405)) ; Statement: $r2 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals> 
 ; Statement: if $r2 == null goto return "{}" 
(assert (not (= var3041 null-var2748))) ; Negate: Cond: $r2 == null  
(define-const var1323 var2748 (intervals/125188790 var1405)) ; Statement: $r3 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals> 
(define-const var2807 Bool (var2748_isEmpty/-153543822 var1323)) ; Statement: $z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>() 
(assert (= (ite var2807 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var436 Int (size/-1574469653 var1405)) ; Statement: $i0 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>() 
 ; Statement: if $i0 <= 1 goto $r4 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals> 
(assert (not (<= var436 1))) ; Negate: Cond: $i0 <= 1  
(assert true)
;(assert (append/672562846 var2754!1 "{")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var2754!2 String)
(assert (= var2754!2 (str.++ var2754!1 "{")))
(assert true) ; Non Conditional
(define-const var1846 var2748 (intervals/125188790 var1405)) ; Statement: $r4 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals> 
(define-const var3868 Iterator (var2748_iterator/-912451715 var1846)) ; Statement: $r11 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3866 Bool (Iterator_hasNext/-1669924200 var3868)) ; Statement: $z2 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto $i1 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>() 
(assert (= (ite var3866 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var338 Int (size/-1574469653 var1405)) ; Statement: $i1 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>() 
 ; Statement: if $i1 <= 1 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var338 1)) ; Cond: $i1 <= 1 
(assert true)
(define-const var31 String (toString/-2075883882 var2754!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), intervals/125188790=([org.antlr.v4.runtime.misc.IntervalSet], java.util.List), var2748_isEmpty/-153543822=([java.util.List], boolean), size/-1574469653=([org.antlr.v4.runtime.misc.IntervalSet], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2748_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2813=org.antlr.v4.runtime.misc.IntervalSet, var1405=r1, var1058=org.antlr.v4.runtime.Vocabulary, var1024=r8, var2754=$r0, var2748=java.util.List, var3041=$r2, var1323=$r3, var2807=$z0, var436=$i0, var1846=$r4, var3868=$r11, var3866=$z2, var338=$i1, var31=$r5}
; {org.antlr.v4.runtime.misc.IntervalSet=var2813, r1=var1405, org.antlr.v4.runtime.Vocabulary=var1058, r8=var1024, $r0=var2754, java.util.List=var2748, $r2=var3041, $r3=var1323, $z0=var2807, $i0=var436, $r4=var1846, $r11=var3868, $z2=var3866, $i1=var338, $r5=var31}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.misc.IntervalSet;	r8 := @parameter0: org.antlr.v4.runtime.Vocabulary;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals>;	if $r2 == null goto return "{}";	$r3 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals>;	$z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $i0 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>();	$i0 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>();	if $i0 <= 1 goto $r4 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r4 = r1.<org.antlr.v4.runtime.misc.IntervalSet: java.util.List intervals>;	$r11 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>();	$z2 = interfaceinvoke $r11.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto $i1 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>();	$i1 = virtualinvoke r1.<org.antlr.v4.runtime.misc.IntervalSet: int size()>();	if $i1 <= 1 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 8