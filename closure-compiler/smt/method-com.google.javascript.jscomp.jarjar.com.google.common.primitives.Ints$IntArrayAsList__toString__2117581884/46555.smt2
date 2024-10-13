(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var206 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun size/-1368229947 (var206) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun array/-853109852 (var206) (Array Int Int))
(declare-fun start/-853109852 (var206) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun end/-853109852 (var206) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var206 var206)
(declare-const var3799 var206) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.primitives.Ints$IntArrayAsList 
(assert (not (= var3799 null-var206)))
(define-const var740 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var1917 Int (size/-1368229947 var3799)) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Ints$IntArrayAsList: int size()>() 
(define-const var271 Int (* var1917 5)) ; Statement: $i1 = $i0 * 5 
(assert true)
;(assert (<init>/543593434 var740 var271)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var740!1 String)
(declare-const var271!1 Int)
(assert true)
(define-const var277 String (append/-1166366385 var740!1 91)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var740!2 String)
(assert (str.prefixof var740!1 var740!2))
(define-const var1481 (Array Int Int) (array/-853109852 var3799)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Ints$IntArrayAsList: int[] array> 
(define-const var1794 Int (start/-853109852 var3799)) ; Statement: $i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Ints$IntArrayAsList: int start> 
(define-const var688 Int (select var1481 var1794)) ; Statement: $i3 = $r2[$i2] 
(assert true)
;(assert (append/-1001720160 var277 var688)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var277!1 String)
(assert (str.prefixof var277 var277!1))
(define-const var661 Int (start/-853109852 var3799)) ; Statement: $i4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Ints$IntArrayAsList: int start> 
(define-const var3210 Int (+ var661 1)) ; Statement: i7 = $i4 + 1 
(assert true) ; Non Conditional
(define-const var784 Int (end/-853109852 var3799)) ; Statement: $i5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Ints$IntArrayAsList: int end> 
 ; Statement: if i7 >= $i5 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var3210 var784)) ; Cond: i7 >= $i5 
(assert true)
(define-const var1108 String (append/-1166366385 var740!2 93)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var740!3 String)
(assert (str.prefixof var740!2 var740!3))
(assert true)
(define-const var2107 String (toString/-2075883882 var1108)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), size/-1368229947=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Ints$IntArrayAsList], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), array/-853109852=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Ints$IntArrayAsList], int[]), start/-853109852=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Ints$IntArrayAsList], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), end/-853109852=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Ints$IntArrayAsList], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var206=com.google.javascript.jscomp.jarjar.com.google.common.primitives.Ints$IntArrayAsList, var3799=r1, var740=$r0, var1917=$i0, var271=$i1, var277=$r3, var1481=$r2, var1794=$i2, var688=$i3, var661=$i4, var3210=i7, var784=$i5, var1108=$r4, var2107=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.primitives.Ints$IntArrayAsList=var206, r1=var3799, $r0=var740, $i0=var1917, $i1=var271, $r3=var277, $r2=var1481, $i2=var1794, $i3=var688, $i4=var661, i7=var3210, $i5=var784, $r4=var1108, $r5=var2107}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.primitives.Ints$IntArrayAsList;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Ints$IntArrayAsList: int size()>();	$i1 = $i0 * 5;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Ints$IntArrayAsList: int[] array>;	$i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Ints$IntArrayAsList: int start>;	$i3 = $r2[$i2];	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$i4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Ints$IntArrayAsList: int start>;	i7 = $i4 + 1;	$i5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Ints$IntArrayAsList: int end>;	if i7 >= $i5 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3