(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1194 0)
(declare-sort var2252 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1547163094 (var1194) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun buckets/-1682346005 (var1194) (Array Int (Array Int var2252)))
(declare-fun getLength-Arr-var2252-2 ((Array Int (Array Int var2252))) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1194 var1194)
(declare-const var2758 var1194) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet 
(assert (not (= var2758 null-var1194)))
(assert true)
(define-const var3507 Int (size/1547163094 var2758)) ; Statement: $i0 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet: int size()>() 
 ; Statement: if $i0 != 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= var3507 0))) ; Cond: $i0 != 0 
(define-const var811 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var811)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var811!1 String)
(assert (= var811!1 ""))
(assert true)
;(assert (append/-1166366385 var811!1 123)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123) 
(declare-const var811!2 String)
(assert (str.prefixof var811!1 var811!2))
(define-const var1766 Bool (ite (= 1 1) true false)) ; Statement: z0 = 1 
(define-const var1874 (Array Int (Array Int var2252)) (buckets/-1682346005 var2758)) ; Statement: r2 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet: java.lang.Object[][] buckets> 
(define-const var3683 Int (getLength-Arr-var2252-2 var1874)) ; Statement: i1 = lengthof r2 
(define-const var1653 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i1 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (>= var1653 var3683)) ; Cond: i3 >= i1 
(assert true)
;(assert (append/-1166366385 var811!2 125)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var811!3 String)
(assert (str.prefixof var811!2 var811!3))
(assert true)
(define-const var930 String (toString/-2075883882 var811!3)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1547163094=([com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), buckets/-1682346005=([com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet], java.lang.Object[][]), getLength-Arr-var2252-2=([java.lang.Object[][]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1194=com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet, var2758=r0, var3507=$i0, var811=$r1, var1766=z0, var2252=java.lang.Object, var1874=r2, var3683=i1, var1653=i3, var930=$r3}
; {com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet=var1194, r0=var2758, $i0=var3507, $r1=var811, z0=var1766, java.lang.Object=var2252, r2=var1874, i1=var3683, i3=var1653, $r3=var930}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet;	$i0 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet: int size()>();	if $i0 != 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123);	z0 = 1;	r2 = r0.<com.github.jknack.handlebars.internal.antlr.misc.Array2DHashSet: java.lang.Object[][] buckets>;	i1 = lengthof r2;	i3 = 0;	if i3 >= i1 goto virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 4