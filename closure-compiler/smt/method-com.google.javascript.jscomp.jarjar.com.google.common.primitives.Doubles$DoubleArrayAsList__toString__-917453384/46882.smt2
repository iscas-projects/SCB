(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun size/1804261065 (var2765) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun array/-205669600 (var2765) (Array Int Float64))
(declare-fun start/-205669600 (var2765) Int)
(declare-fun append/33611274 (String Float64) String)
(declare-fun end/-205669600 (var2765) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2765 var2765)
(declare-const var3202 var2765) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.primitives.Doubles$DoubleArrayAsList 
(assert (not (= var3202 null-var2765)))
(define-const var3460 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var288 Int (size/1804261065 var3202)) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Doubles$DoubleArrayAsList: int size()>() 
(define-const var3405 Int (* var288 12)) ; Statement: $i1 = $i0 * 12 
(assert true)
;(assert (<init>/543593434 var3460 var3405)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3460!1 String)
(declare-const var3405!1 Int)
(assert true)
(define-const var2338 String (append/-1166366385 var3460!1 91)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3460!2 String)
(assert (str.prefixof var3460!1 var3460!2))
(define-const var537 (Array Int Float64) (array/-205669600 var3202)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Doubles$DoubleArrayAsList: double[] array> 
(define-const var2684 Int (start/-205669600 var3202)) ; Statement: $i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Doubles$DoubleArrayAsList: int start> 
(define-const var3255 Float64 (select var537 var2684)) ; Statement: $d0 = $r2[$i2] 
(assert true)
;(assert (append/33611274 var2338 var3255)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0) 
(declare-const var2338!1 String)
(assert (str.prefixof var2338 var2338!1))
(define-const var1764 Int (start/-205669600 var3202)) ; Statement: $i3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Doubles$DoubleArrayAsList: int start> 
(define-const var2474 Int (+ var1764 1)) ; Statement: i5 = $i3 + 1 
(assert true) ; Non Conditional
(define-const var2541 Int (end/-205669600 var3202)) ; Statement: $i4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Doubles$DoubleArrayAsList: int end> 
 ; Statement: if i5 >= $i4 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var2474 var2541)) ; Cond: i5 >= $i4 
(assert true)
(define-const var2107 String (append/-1166366385 var3460!2 93)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3460!3 String)
(assert (str.prefixof var3460!2 var3460!3))
(assert true)
(define-const var3635 String (toString/-2075883882 var2107)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), size/1804261065=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Doubles$DoubleArrayAsList], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), array/-205669600=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Doubles$DoubleArrayAsList], double[]), start/-205669600=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Doubles$DoubleArrayAsList], int), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), end/-205669600=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Doubles$DoubleArrayAsList], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2765=com.google.javascript.jscomp.jarjar.com.google.common.primitives.Doubles$DoubleArrayAsList, var3202=r1, var3460=$r0, var288=$i0, var3405=$i1, var2338=$r3, var537=$r2, var2684=$i2, var3255=$d0, var1764=$i3, var2474=i5, var2541=$i4, var2107=$r4, var3635=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.primitives.Doubles$DoubleArrayAsList=var2765, r1=var3202, $r0=var3460, $i0=var288, $i1=var3405, $r3=var2338, $r2=var537, $i2=var2684, $d0=var3255, $i3=var1764, i5=var2474, $i4=var2541, $r4=var2107, $r5=var3635}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.primitives.Doubles$DoubleArrayAsList;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Doubles$DoubleArrayAsList: int size()>();	$i1 = $i0 * 12;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Doubles$DoubleArrayAsList: double[] array>;	$i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Doubles$DoubleArrayAsList: int start>;	$d0 = $r2[$i2];	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0);	$i3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Doubles$DoubleArrayAsList: int start>;	i5 = $i3 + 1;	$i4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Doubles$DoubleArrayAsList: int end>;	if i5 >= $i4 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3