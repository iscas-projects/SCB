(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3226 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun size/1569840613 (var3226) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun array/865842564 (var3226) (Array Int Bool))
(declare-fun start/865842564 (var3226) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun end/865842564 (var3226) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3226 var3226)
(declare-const var1205 var3226) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList 
(assert (not (= var1205 null-var3226)))
(define-const var1890 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var2630 Int (size/1569840613 var1205)) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: int size()>() 
(define-const var2288 Int (* var2630 7)) ; Statement: $i1 = $i0 * 7 
(assert true)
;(assert (<init>/543593434 var1890 var2288)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1890!1 String)
(declare-const var2288!1 Int)
(define-const var3846 (Array Int Bool) (array/865842564 var1205)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: boolean[] array> 
(define-const var2091 Int (start/865842564 var1205)) ; Statement: $i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: int start> 
(define-const var536 Bool (select var3846 var2091)) ; Statement: $z0 = $r2[$i2] 
 ; Statement: if $z0 == 0 goto $r6 = "[false" 
(assert (= (ite var536 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2860 String "[false") ; Statement: $r6 = "[false" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1890!1 var2860)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1890!2 String)
(assert (= var1890!2 (str.++ var1890!1 var2860)))
(define-const var1298 Int (start/865842564 var1205)) ; Statement: $i3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: int start> 
(define-const var812 Int (+ var1298 1)) ; Statement: i4 = $i3 + 1 
(assert true) ; Non Conditional
(define-const var3679 Int (end/865842564 var1205)) ; Statement: $i5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: int end> 
 ; Statement: if i4 >= $i5 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var812 var3679)) ; Cond: i4 >= $i5 
(assert true)
(define-const var3615 String (append/-1166366385 var1890!2 93)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1890!3 String)
(assert (str.prefixof var1890!2 var1890!3))
(assert true)
(define-const var2727 String (toString/-2075883882 var3615)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), size/1569840613=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList], int), <init>/543593434=([java.lang.StringBuilder, int], void), array/865842564=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList], boolean[]), start/865842564=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), end/865842564=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3226=com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList, var1205=r1, var1890=$r0, var2630=$i0, var2288=$i1, var3846=$r2, var2091=$i2, var536=$z0, var2860=$r6, var1298=$i3, var812=i4, var3679=$i5, var3615=$r3, var2727=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList=var3226, r1=var1205, $r0=var1890, $i0=var2630, $i1=var2288, $r2=var3846, $i2=var2091, $z0=var536, $r6=var2860, $i3=var1298, i4=var812, $i5=var3679, $r3=var3615, $r4=var2727}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: int size()>();	$i1 = $i0 * 7;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: boolean[] array>;	$i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: int start>;	$z0 = $r2[$i2];	if $z0 == 0 goto $r6 = "[false";	$r6 = "[false";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$i3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: int start>;	i4 = $i3 + 1;	$i5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Booleans$BooleanArrayAsList: int end>;	if i4 >= $i5 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 5