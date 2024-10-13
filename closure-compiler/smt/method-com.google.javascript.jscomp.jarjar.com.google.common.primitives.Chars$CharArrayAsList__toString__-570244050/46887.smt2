(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1882 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun size/303498643 (var1882) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun array/-1691660778 (var1882) (Array Int Int))
(declare-fun start/-1691660778 (var1882) Int)
(declare-fun end/-1691660778 (var1882) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1882 var1882)
(declare-const var2047 var1882) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars$CharArrayAsList 
(assert (not (= var2047 null-var1882)))
(define-const var2604 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var608 Int (size/303498643 var2047)) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars$CharArrayAsList: int size()>() 
(define-const var134 Int (* var608 3)) ; Statement: $i1 = $i0 * 3 
(assert true)
;(assert (<init>/543593434 var2604 var134)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var2604!1 String)
(declare-const var134!1 Int)
(assert true)
(define-const var1293 String (append/-1166366385 var2604!1 91)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2604!2 String)
(assert (str.prefixof var2604!1 var2604!2))
(define-const var3459 (Array Int Int) (array/-1691660778 var2047)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars$CharArrayAsList: char[] array> 
(define-const var2831 Int (start/-1691660778 var2047)) ; Statement: $i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars$CharArrayAsList: int start> 
(define-const var589 Int (select var3459 var2831)) ; Statement: $c3 = $r2[$i2] 
(assert true)
;(assert (append/-1166366385 var1293 var589)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3) 
(declare-const var1293!1 String)
(assert (str.prefixof var1293 var1293!1))
(define-const var1760 Int (start/-1691660778 var2047)) ; Statement: $i4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars$CharArrayAsList: int start> 
(define-const var3835 Int (+ var1760 1)) ; Statement: i7 = $i4 + 1 
(assert true) ; Non Conditional
(define-const var768 Int (end/-1691660778 var2047)) ; Statement: $i5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars$CharArrayAsList: int end> 
 ; Statement: if i7 >= $i5 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var3835 var768)) ; Cond: i7 >= $i5 
(assert true)
(define-const var581 String (append/-1166366385 var2604!2 93)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var2604!3 String)
(assert (str.prefixof var2604!2 var2604!3))
(assert true)
(define-const var3215 String (toString/-2075883882 var581)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), size/303498643=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars$CharArrayAsList], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), array/-1691660778=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars$CharArrayAsList], char[]), start/-1691660778=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars$CharArrayAsList], int), end/-1691660778=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars$CharArrayAsList], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1882=com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars$CharArrayAsList, var2047=r1, var2604=$r0, var608=$i0, var134=$i1, var1293=$r3, var3459=$r2, var2831=$i2, var589=$c3, var1760=$i4, var3835=i7, var768=$i5, var581=$r4, var3215=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars$CharArrayAsList=var1882, r1=var2047, $r0=var2604, $i0=var608, $i1=var134, $r3=var1293, $r2=var3459, $i2=var2831, $c3=var589, $i4=var1760, i7=var3835, $i5=var768, $r4=var581, $r5=var3215}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars$CharArrayAsList;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars$CharArrayAsList: int size()>();	$i1 = $i0 * 3;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars$CharArrayAsList: char[] array>;	$i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars$CharArrayAsList: int start>;	$c3 = $r2[$i2];	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3);	$i4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars$CharArrayAsList: int start>;	i7 = $i4 + 1;	$i5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Chars$CharArrayAsList: int end>;	if i7 >= $i5 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3