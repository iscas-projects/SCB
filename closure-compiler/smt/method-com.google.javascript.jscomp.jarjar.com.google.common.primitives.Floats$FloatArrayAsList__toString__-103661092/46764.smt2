(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1990 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun size/-1413906907 (var1990) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun array/1789669188 (var1990) (Array Int Float32))
(declare-fun start/1789669188 (var1990) Int)
(declare-fun append/991902413 (String Float32) String)
(declare-fun end/1789669188 (var1990) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1990 var1990)
(declare-const var782 var1990) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.primitives.Floats$FloatArrayAsList 
(assert (not (= var782 null-var1990)))
(define-const var2734 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var3805 Int (size/-1413906907 var782)) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Floats$FloatArrayAsList: int size()>() 
(define-const var1619 Int (* var3805 12)) ; Statement: $i1 = $i0 * 12 
(assert true)
;(assert (<init>/543593434 var2734 var1619)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var2734!1 String)
(declare-const var1619!1 Int)
(assert true)
(define-const var1373 String (append/-1166366385 var2734!1 91)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2734!2 String)
(assert (str.prefixof var2734!1 var2734!2))
(define-const var2766 (Array Int Float32) (array/1789669188 var782)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Floats$FloatArrayAsList: float[] array> 
(define-const var3133 Int (start/1789669188 var782)) ; Statement: $i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Floats$FloatArrayAsList: int start> 
(define-const var2422 Float32 (select var2766 var3133)) ; Statement: $f0 = $r2[$i2] 
(assert true)
;(assert (append/991902413 var1373 var2422)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f0) 
(declare-const var1373!1 String)
(assert (str.prefixof var1373 var1373!1))
(define-const var1765 Int (start/1789669188 var782)) ; Statement: $i3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Floats$FloatArrayAsList: int start> 
(define-const var193 Int (+ var1765 1)) ; Statement: i5 = $i3 + 1 
(assert true) ; Non Conditional
(define-const var2259 Int (end/1789669188 var782)) ; Statement: $i4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Floats$FloatArrayAsList: int end> 
 ; Statement: if i5 >= $i4 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var193 var2259)) ; Cond: i5 >= $i4 
(assert true)
(define-const var1514 String (append/-1166366385 var2734!2 93)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var2734!3 String)
(assert (str.prefixof var2734!2 var2734!3))
(assert true)
(define-const var2868 String (toString/-2075883882 var1514)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), size/-1413906907=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Floats$FloatArrayAsList], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), array/1789669188=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Floats$FloatArrayAsList], float[]), start/1789669188=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Floats$FloatArrayAsList], int), append/991902413=([java.lang.StringBuilder, float], java.lang.StringBuilder), end/1789669188=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Floats$FloatArrayAsList], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1990=com.google.javascript.jscomp.jarjar.com.google.common.primitives.Floats$FloatArrayAsList, var782=r1, var2734=$r0, var3805=$i0, var1619=$i1, var1373=$r3, var2766=$r2, var3133=$i2, var2422=$f0, var1765=$i3, var193=i5, var2259=$i4, var1514=$r4, var2868=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.primitives.Floats$FloatArrayAsList=var1990, r1=var782, $r0=var2734, $i0=var3805, $i1=var1619, $r3=var1373, $r2=var2766, $i2=var3133, $f0=var2422, $i3=var1765, i5=var193, $i4=var2259, $r4=var1514, $r5=var2868}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(float)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.primitives.Floats$FloatArrayAsList;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Floats$FloatArrayAsList: int size()>();	$i1 = $i0 * 12;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Floats$FloatArrayAsList: float[] array>;	$i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Floats$FloatArrayAsList: int start>;	$f0 = $r2[$i2];	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f0);	$i3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Floats$FloatArrayAsList: int start>;	i5 = $i3 + 1;	$i4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Floats$FloatArrayAsList: int end>;	if i5 >= $i4 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3