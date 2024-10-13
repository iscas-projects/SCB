(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2929 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun offset/520438386 (var2929) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun length/520438386 (var2929) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2929 var2929)
(declare-const var2339 var2929) ; Statement: r1 := @this: org.apache.lucene.util.LongsRef 
(assert (not (= var2339 null-var2929)))
(define-const var1550 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1550)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1550!1 String)
(assert (= var1550!1 ""))
(assert true)
;(assert (append/-1166366385 var1550!1 91)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var1550!2 String)
(assert (str.prefixof var1550!1 var1550!2))
(define-const var50 Int (offset/520438386 var2339)) ; Statement: $i0 = r1.<org.apache.lucene.util.LongsRef: int offset> 
(define-const var3715 Int (cast-from-Int-to-Int var50)) ; Statement: $l3 = (long) $i0 
(define-const var710 Int (length/520438386 var2339)) ; Statement: $i1 = r1.<org.apache.lucene.util.LongsRef: int length> 
(define-const var2951 Int (cast-from-Int-to-Int var710)) ; Statement: $l2 = (long) $i1 
(define-const var3161 Int (+ var3715 var2951)) ; Statement: l4 = $l3 + $l2 
(define-const var833 Int (offset/520438386 var2339)) ; Statement: i9 = r1.<org.apache.lucene.util.LongsRef: int offset> 
(assert true) ; Non Conditional
(define-const var724 Int (cast-from-Int-to-Int var833)) ; Statement: $l5 = (long) i9 
(define-const var198 Int (ite (> var724 var3161) 1 (ite (< var724 var3161) (- 1) 0))) ; Statement: $b6 = $l5 cmp l4 
(define-const var3713 Int (cast-from-Int-to-Int var198)) ; Statement: $i10 = (int) $b6 
 ; Statement: if $i10 >= 0 goto virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var3713 0)) ; Cond: $i10 >= 0 
(assert true)
;(assert (append/-1166366385 var1550!2 93)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1550!3 String)
(assert (str.prefixof var1550!2 var1550!3))
(assert true)
(define-const var698 String (toString/-2075883882 var1550!3)) ; Statement: $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), offset/520438386=([org.apache.lucene.util.LongsRef], int), cast-from-Int-to-Int=([int], long), length/520438386=([org.apache.lucene.util.LongsRef], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2929=org.apache.lucene.util.LongsRef, var2339=r1, var1550=$r5, var50=$i0, var3715=$l3, var710=$i1, var2951=$l2, var3161=l4, var833=i9, var724=$l5, var198=$b6, var3713=$i10, var698=$r2}
; {org.apache.lucene.util.LongsRef=var2929, r1=var2339, $r5=var1550, $i0=var50, $l3=var3715, $i1=var710, $l2=var2951, l4=var3161, i9=var833, $l5=var724, $b6=var198, $i10=var3713, $r2=var698}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.util.LongsRef;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$i0 = r1.<org.apache.lucene.util.LongsRef: int offset>;	$l3 = (long) $i0;	$i1 = r1.<org.apache.lucene.util.LongsRef: int length>;	$l2 = (long) $i1;	l4 = $l3 + $l2;	i9 = r1.<org.apache.lucene.util.LongsRef: int offset>;	$l5 = (long) i9;	$b6 = $l5 cmp l4;	$i10 = (int) $b6;	if $i10 >= 0 goto virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3