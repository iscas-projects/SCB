(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun size/538202975 (var503) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun array/2133296330 (var503) (Array Int Int))
(declare-fun start/2133296330 (var503) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun end/2133296330 (var503) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var503 var503)
(declare-const var1448 var503) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.primitives.Longs$LongArrayAsList 
(assert (not (= var1448 null-var503)))
(define-const var3236 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var2669 Int (size/538202975 var1448)) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Longs$LongArrayAsList: int size()>() 
(define-const var2307 Int (* var2669 10)) ; Statement: $i1 = $i0 * 10 
(assert true)
;(assert (<init>/543593434 var3236 var2307)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3236!1 String)
(declare-const var2307!1 Int)
(assert true)
(define-const var3656 String (append/-1166366385 var3236!1 91)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3236!2 String)
(assert (str.prefixof var3236!1 var3236!2))
(define-const var1755 (Array Int Int) (array/2133296330 var1448)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Longs$LongArrayAsList: long[] array> 
(define-const var878 Int (start/2133296330 var1448)) ; Statement: $i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Longs$LongArrayAsList: int start> 
(define-const var376 Int (select var1755 var878)) ; Statement: $l3 = $r2[$i2] 
(assert true)
;(assert (append/-901862667 var3656 var376)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var3656!1 String)
(assert (str.prefixof var3656 var3656!1))
(define-const var1730 Int (start/2133296330 var1448)) ; Statement: $i4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Longs$LongArrayAsList: int start> 
(define-const var933 Int (+ var1730 1)) ; Statement: i7 = $i4 + 1 
(assert true) ; Non Conditional
(define-const var448 Int (end/2133296330 var1448)) ; Statement: $i5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Longs$LongArrayAsList: int end> 
 ; Statement: if i7 >= $i5 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var933 var448)) ; Cond: i7 >= $i5 
(assert true)
(define-const var1421 String (append/-1166366385 var3236!2 93)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3236!3 String)
(assert (str.prefixof var3236!2 var3236!3))
(assert true)
(define-const var3242 String (toString/-2075883882 var1421)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), size/538202975=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Longs$LongArrayAsList], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), array/2133296330=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Longs$LongArrayAsList], long[]), start/2133296330=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Longs$LongArrayAsList], int), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), end/2133296330=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Longs$LongArrayAsList], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var503=com.google.javascript.jscomp.jarjar.com.google.common.primitives.Longs$LongArrayAsList, var1448=r1, var3236=$r0, var2669=$i0, var2307=$i1, var3656=$r3, var1755=$r2, var878=$i2, var376=$l3, var1730=$i4, var933=i7, var448=$i5, var1421=$r4, var3242=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.primitives.Longs$LongArrayAsList=var503, r1=var1448, $r0=var3236, $i0=var2669, $i1=var2307, $r3=var3656, $r2=var1755, $i2=var878, $l3=var376, $i4=var1730, i7=var933, $i5=var448, $r4=var1421, $r5=var3242}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.primitives.Longs$LongArrayAsList;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Longs$LongArrayAsList: int size()>();	$i1 = $i0 * 10;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Longs$LongArrayAsList: long[] array>;	$i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Longs$LongArrayAsList: int start>;	$l3 = $r2[$i2];	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$i4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Longs$LongArrayAsList: int start>;	i7 = $i4 + 1;	$i5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Longs$LongArrayAsList: int end>;	if i7 >= $i5 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3