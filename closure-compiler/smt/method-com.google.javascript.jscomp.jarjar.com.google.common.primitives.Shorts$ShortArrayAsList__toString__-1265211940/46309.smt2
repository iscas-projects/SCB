(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var133 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun size/-937895387 (var133) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun array/1518818116 (var133) (Array Int Int))
(declare-fun start/1518818116 (var133) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun end/1518818116 (var133) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var133 var133)
(declare-const var2574 var133) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.primitives.Shorts$ShortArrayAsList 
(assert (not (= var2574 null-var133)))
(define-const var50 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var3351 Int (size/-937895387 var2574)) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Shorts$ShortArrayAsList: int size()>() 
(define-const var3618 Int (* var3351 6)) ; Statement: $i1 = $i0 * 6 
(assert true)
;(assert (<init>/543593434 var50 var3618)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var50!1 String)
(declare-const var3618!1 Int)
(assert true)
(define-const var2193 String (append/-1166366385 var50!1 91)) ; Statement: $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var50!2 String)
(assert (str.prefixof var50!1 var50!2))
(define-const var3151 (Array Int Int) (array/1518818116 var2574)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Shorts$ShortArrayAsList: short[] array> 
(define-const var315 Int (start/1518818116 var2574)) ; Statement: $i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Shorts$ShortArrayAsList: int start> 
(define-const var1876 Int (select var3151 var315)) ; Statement: $s3 = $r2[$i2] 
(define-const var2563 Int (cast-from-Int-to-Int var1876)) ; Statement: $i8 = (int) $s3 
(assert true)
;(assert (append/-1001720160 var2193 var2563)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i8) 
(declare-const var2193!1 String)
(assert (str.prefixof var2193 var2193!1))
(define-const var1671 Int (start/1518818116 var2574)) ; Statement: $i4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Shorts$ShortArrayAsList: int start> 
(define-const var3456 Int (+ var1671 1)) ; Statement: i7 = $i4 + 1 
(assert true) ; Non Conditional
(define-const var2969 Int (end/1518818116 var2574)) ; Statement: $i5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Shorts$ShortArrayAsList: int end> 
 ; Statement: if i7 >= $i5 goto $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var3456 var2969)) ; Cond: i7 >= $i5 
(assert true)
(define-const var3635 String (append/-1166366385 var50!2 93)) ; Statement: $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var50!3 String)
(assert (str.prefixof var50!2 var50!3))
(assert true)
(define-const var759 String (toString/-2075883882 var3635)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), size/-937895387=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Shorts$ShortArrayAsList], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), array/1518818116=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Shorts$ShortArrayAsList], short[]), start/1518818116=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Shorts$ShortArrayAsList], int), cast-from-Int-to-Int=([short], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), end/1518818116=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.Shorts$ShortArrayAsList], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var133=com.google.javascript.jscomp.jarjar.com.google.common.primitives.Shorts$ShortArrayAsList, var2574=r1, var50=$r8, var3351=$i0, var3618=$i1, var2193=$r3, var3151=$r2, var315=$i2, var1876=$s3, var2563=$i8, var1671=$i4, var3456=i7, var2969=$i5, var3635=$r4, var759=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.primitives.Shorts$ShortArrayAsList=var133, r1=var2574, $r8=var50, $i0=var3351, $i1=var3618, $r3=var2193, $r2=var3151, $i2=var315, $s3=var1876, $i8=var2563, $i4=var1671, i7=var3456, $i5=var2969, $r4=var3635, $r5=var759}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.primitives.Shorts$ShortArrayAsList;	$r8 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Shorts$ShortArrayAsList: int size()>();	$i1 = $i0 * 6;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i1);	$r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Shorts$ShortArrayAsList: short[] array>;	$i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Shorts$ShortArrayAsList: int start>;	$s3 = $r2[$i2];	$i8 = (int) $s3;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i8);	$i4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Shorts$ShortArrayAsList: int start>;	i7 = $i4 + 1;	$i5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.Shorts$ShortArrayAsList: int end>;	if i7 >= $i5 goto $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3