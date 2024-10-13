(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var759 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun size/-2041862281 (var759) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun array/773941682 (var759) (Array Int Int))
(declare-fun start/773941682 (var759) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun end/773941682 (var759) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var759 var759)
(declare-const var2922 var759) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.primitives.Bytes$ByteArrayAsList 
(assert (not (= var2922 null-var759)))
(define-const var3799 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var1790 Int (size/-2041862281 var2922)) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Bytes$ByteArrayAsList: int size()>() 
(define-const var3527 Int (* var1790 5)) ; Statement: $i1 = $i0 * 5 
(assert true)
;(assert (<init>/543593434 var3799 var3527)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3799!1 String)
(declare-const var3527!1 Int)
(assert true)
(define-const var3261 String (append/-1166366385 var3799!1 91)) ; Statement: $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3799!2 String)
(assert (str.prefixof var3799!1 var3799!2))
(define-const var428 (Array Int Int) (array/773941682 var2922)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Bytes$ByteArrayAsList: byte[] array> 
(define-const var3562 Int (start/773941682 var2922)) ; Statement: $i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Bytes$ByteArrayAsList: int start> 
(define-const var3189 Int (select var428 var3562)) ; Statement: $b3 = $r2[$i2] 
(define-const var1517 Int (cast-from-Int-to-Int var3189)) ; Statement: $i8 = (int) $b3 
(assert true)
;(assert (append/-1001720160 var3261 var1517)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i8) 
(declare-const var3261!1 String)
(assert (str.prefixof var3261 var3261!1))
(define-const var3661 Int (start/773941682 var2922)) ; Statement: $i4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Bytes$ByteArrayAsList: int start> 
(define-const var2391 Int (+ var3661 1)) ; Statement: i7 = $i4 + 1 
(assert true) ; Non Conditional
(define-const var3132 Int (end/773941682 var2922)) ; Statement: $i5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Bytes$ByteArrayAsList: int end> 
 ; Statement: if i7 >= $i5 goto $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var2391 var3132)) ; Cond: i7 >= $i5 
(assert true)
(define-const var307 String (append/-1166366385 var3799!2 93)) ; Statement: $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3799!3 String)
(assert (str.prefixof var3799!2 var3799!3))
(assert true)
(define-const var2847 String (toString/-2075883882 var307)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), size/-2041862281=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Bytes$ByteArrayAsList], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), array/773941682=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Bytes$ByteArrayAsList], byte[]), start/773941682=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Bytes$ByteArrayAsList], int), cast-from-Int-to-Int=([byte], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), end/773941682=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Bytes$ByteArrayAsList], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var759=com.google.javascript.jscomp.jarjar.com.google.common.primitives.Bytes$ByteArrayAsList, var2922=r1, var3799=$r8, var1790=$i0, var3527=$i1, var3261=$r3, var428=$r2, var3562=$i2, var3189=$b3, var1517=$i8, var3661=$i4, var2391=i7, var3132=$i5, var307=$r4, var2847=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.primitives.Bytes$ByteArrayAsList=var759, r1=var2922, $r8=var3799, $i0=var1790, $i1=var3527, $r3=var3261, $r2=var428, $i2=var3562, $b3=var3189, $i8=var1517, $i4=var3661, i7=var2391, $i5=var3132, $r4=var307, $r5=var2847}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.primitives.Bytes$ByteArrayAsList;	$r8 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Bytes$ByteArrayAsList: int size()>();	$i1 = $i0 * 5;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i1);	$r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Bytes$ByteArrayAsList: byte[] array>;	$i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Bytes$ByteArrayAsList: int start>;	$b3 = $r2[$i2];	$i8 = (int) $b3;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i8);	$i4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Bytes$ByteArrayAsList: int start>;	i7 = $i4 + 1;	$i5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Bytes$ByteArrayAsList: int end>;	if i7 >= $i5 goto $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3