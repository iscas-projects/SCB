(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1880 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun length/727234302 (var1880) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun offset/727234302 (var1880) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1880 var1880)
(declare-const var2998 var1880) ; Statement: r1 := @this: org.apache.lucene.util.BytesRef 
(assert (not (= var2998 null-var1880)))
(define-const var1064 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(define-const var2232 Int (length/727234302 var2998)) ; Statement: $i0 = r1.<org.apache.lucene.util.BytesRef: int length> 
(define-const var2242 Int (* 3 var2232)) ; Statement: $i1 = 3 * $i0 
(define-const var12 Int (+ 2 var2242)) ; Statement: $i2 = 2 + $i1 
(assert true)
;(assert (<init>/543593434 var1064 var12)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var1064!1 String)
(declare-const var12!1 Int)
(assert true)
;(assert (append/-1166366385 var1064!1 91)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var1064!2 String)
(assert (str.prefixof var1064!1 var1064!2))
(define-const var1338 Int (offset/727234302 var2998)) ; Statement: $i4 = r1.<org.apache.lucene.util.BytesRef: int offset> 
(define-const var1534 Int (length/727234302 var2998)) ; Statement: $i3 = r1.<org.apache.lucene.util.BytesRef: int length> 
(define-const var674 Int (+ var1338 var1534)) ; Statement: i5 = $i4 + $i3 
(define-const var48 Int (offset/727234302 var2998)) ; Statement: i9 = r1.<org.apache.lucene.util.BytesRef: int offset> 
(assert true) ; Non Conditional
 ; Statement: if i9 >= i5 goto virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var48 var674)) ; Cond: i9 >= i5 
(assert true)
;(assert (append/-1166366385 var1064!2 93)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1064!3 String)
(assert (str.prefixof var1064!2 var1064!3))
(assert true)
(define-const var2769 String (toString/-2075883882 var1064!3)) ; Statement: $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/727234302=([org.apache.lucene.util.BytesRef], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), offset/727234302=([org.apache.lucene.util.BytesRef], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1880=org.apache.lucene.util.BytesRef, var2998=r1, var1064=$r5, var2232=$i0, var2242=$i1, var12=$i2, var1338=$i4, var1534=$i3, var674=i5, var48=i9, var2769=$r2}
; {org.apache.lucene.util.BytesRef=var1880, r1=var2998, $r5=var1064, $i0=var2232, $i1=var2242, $i2=var12, $i4=var1338, $i3=var1534, i5=var674, i9=var48, $r2=var2769}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.util.BytesRef;	$r5 = new java.lang.StringBuilder;	$i0 = r1.<org.apache.lucene.util.BytesRef: int length>;	$i1 = 3 * $i0;	$i2 = 2 + $i1;	specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>($i2);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$i4 = r1.<org.apache.lucene.util.BytesRef: int offset>;	$i3 = r1.<org.apache.lucene.util.BytesRef: int length>;	i5 = $i4 + $i3;	i9 = r1.<org.apache.lucene.util.BytesRef: int offset>;	if i9 >= i5 goto virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3