(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2313 0)
(declare-sort var3980 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/-1228602023 (var2313) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun buckets/-818340976 (var2313) (Array Int (Array Int var3980)))
(declare-fun getLength-Arr-var3980-2 ((Array Int (Array Int var3980))) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2313 var2313)
(declare-const var737 var2313) ; Statement: r0 := @this: org.antlr.v4.runtime.misc.Array2DHashSet 
(assert (not (= var737 null-var2313)))
(assert true)
(define-const var201 Int (size/-1228602023 var737)) ; Statement: $i0 = virtualinvoke r0.<org.antlr.v4.runtime.misc.Array2DHashSet: int size()>() 
 ; Statement: if $i0 != 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= var201 0))) ; Cond: $i0 != 0 
(define-const var3426 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3426)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3426!1 String)
(assert (= var3426!1 ""))
(assert true)
;(assert (append/-1166366385 var3426!1 123)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123) 
(declare-const var3426!2 String)
(assert (str.prefixof var3426!1 var3426!2))
(define-const var2410 Bool (ite (= 1 1) true false)) ; Statement: z0 = 1 
(define-const var3416 (Array Int (Array Int var3980)) (buckets/-818340976 var737)) ; Statement: r2 = r0.<org.antlr.v4.runtime.misc.Array2DHashSet: java.lang.Object[][] buckets> 
(define-const var3424 Int (getLength-Arr-var3980-2 var3416)) ; Statement: i1 = lengthof r2 
(define-const var1501 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i1 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (>= var1501 var3424)) ; Cond: i3 >= i1 
(assert true)
;(assert (append/-1166366385 var3426!2 125)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var3426!3 String)
(assert (str.prefixof var3426!2 var3426!3))
(assert true)
(define-const var2468 String (toString/-2075883882 var3426!3)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {size/-1228602023=([org.antlr.v4.runtime.misc.Array2DHashSet], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), buckets/-818340976=([org.antlr.v4.runtime.misc.Array2DHashSet], java.lang.Object[][]), getLength-Arr-var3980-2=([java.lang.Object[][]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2313=org.antlr.v4.runtime.misc.Array2DHashSet, var737=r0, var201=$i0, var3426=$r1, var2410=z0, var3980=java.lang.Object, var3416=r2, var3424=i1, var1501=i3, var2468=$r3}
; {org.antlr.v4.runtime.misc.Array2DHashSet=var2313, r0=var737, $i0=var201, $r1=var3426, z0=var2410, java.lang.Object=var3980, r2=var3416, i1=var3424, i3=var1501, $r3=var2468}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.misc.Array2DHashSet;	$i0 = virtualinvoke r0.<org.antlr.v4.runtime.misc.Array2DHashSet: int size()>();	if $i0 != 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123);	z0 = 1;	r2 = r0.<org.antlr.v4.runtime.misc.Array2DHashSet: java.lang.Object[][] buckets>;	i1 = lengthof r2;	i3 = 0;	if i3 >= i1 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 4