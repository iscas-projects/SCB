(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun size/1569840613 (var406) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun array/865842564 (var406) (Array Int Bool))
(declare-fun start/865842564 (var406) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun end/865842564 (var406) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var406 var406)
(declare-const var3754 var406) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList 
(assert (not (= var3754 null-var406)))
(define-const var2960 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var848 Int (size/1569840613 var3754)) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: int size()>() 
(define-const var3554 Int (* var848 7)) ; Statement: $i1 = $i0 * 7 
(assert true)
;(assert (<init>/543593434 var2960 var3554)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var2960!1 String)
(declare-const var3554!1 Int)
(define-const var2299 (Array Int Bool) (array/865842564 var3754)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: boolean[] array> 
(define-const var3839 Int (start/865842564 var3754)) ; Statement: $i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: int start> 
(define-const var2964 Bool (select var2299 var3839)) ; Statement: $z0 = $r2[$i2] 
 ; Statement: if $z0 == 0 goto $r6 = "[false" 
(assert (not (= (ite var2964 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3807 String "[true") ; Statement: $r6 = "[true" 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2960!1 var3807)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2960!2 String)
(assert (= var2960!2 (str.++ var2960!1 var3807)))
(define-const var1860 Int (start/865842564 var3754)) ; Statement: $i3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: int start> 
(define-const var3111 Int (+ var1860 1)) ; Statement: i4 = $i3 + 1 
(assert true) ; Non Conditional
(define-const var2458 Int (end/865842564 var3754)) ; Statement: $i5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: int end> 
 ; Statement: if i4 >= $i5 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var3111 var2458)) ; Cond: i4 >= $i5 
(assert true)
(define-const var3043 String (append/-1166366385 var2960!2 93)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var2960!3 String)
(assert (str.prefixof var2960!2 var2960!3))
(assert true)
(define-const var854 String (toString/-2075883882 var3043)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), size/1569840613=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList], int), <init>/543593434=([java.lang.StringBuilder, int], void), array/865842564=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList], boolean[]), start/865842564=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), end/865842564=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var406=com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList, var3754=r1, var2960=$r0, var848=$i0, var3554=$i1, var2299=$r2, var3839=$i2, var2964=$z0, var3807=$r6, var1860=$i3, var3111=i4, var2458=$i5, var3043=$r3, var854=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList=var406, r1=var3754, $r0=var2960, $i0=var848, $i1=var3554, $r2=var2299, $i2=var3839, $z0=var2964, $r6=var3807, $i3=var1860, i4=var3111, $i5=var2458, $r3=var3043, $r4=var854}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: int size()>();	$i1 = $i0 * 7;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: boolean[] array>;	$i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: int start>;	$z0 = $r2[$i2];	if $z0 == 0 goto $r6 = "[false";	$r6 = "[true";	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$i3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: int start>;	i4 = $i3 + 1;	$i5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: int end>;	if i4 >= $i5 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 5