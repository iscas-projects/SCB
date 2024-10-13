(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var101 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun offset/1903577593 (var101) Int)
(declare-fun length/1903577593 (var101) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var101 var101)
(declare-const var3901 var101) ; Statement: r1 := @this: org.apache.lucene.util.IntsRef 
(assert (not (= var3901 null-var101)))
(define-const var1992 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1992)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1992!1 String)
(assert (= var1992!1 ""))
(assert true)
;(assert (append/-1166366385 var1992!1 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var1992!2 String)
(assert (str.prefixof var1992!1 var1992!2))
(define-const var2486 Int (offset/1903577593 var3901)) ; Statement: $i1 = r1.<org.apache.lucene.util.IntsRef: int offset> 
(define-const var2497 Int (length/1903577593 var3901)) ; Statement: $i0 = r1.<org.apache.lucene.util.IntsRef: int length> 
(define-const var2879 Int (+ var2486 var2497)) ; Statement: i2 = $i1 + $i0 
(define-const var1399 Int (offset/1903577593 var3901)) ; Statement: i5 = r1.<org.apache.lucene.util.IntsRef: int offset> 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i2 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var1399 var2879)) ; Cond: i5 >= i2 
(assert true)
;(assert (append/-1166366385 var1992!2 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1992!3 String)
(assert (str.prefixof var1992!2 var1992!3))
(assert true)
(define-const var3981 String (toString/-2075883882 var1992!3)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), offset/1903577593=([org.apache.lucene.util.IntsRef], int), length/1903577593=([org.apache.lucene.util.IntsRef], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var101=org.apache.lucene.util.IntsRef, var3901=r1, var1992=$r0, var2486=$i1, var2497=$i0, var2879=i2, var1399=i5, var3981=$r2}
; {org.apache.lucene.util.IntsRef=var101, r1=var3901, $r0=var1992, $i1=var2486, $i0=var2497, i2=var2879, i5=var1399, $r2=var3981}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.util.IntsRef;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$i1 = r1.<org.apache.lucene.util.IntsRef: int offset>;	$i0 = r1.<org.apache.lucene.util.IntsRef: int length>;	i2 = $i1 + $i0;	i5 = r1.<org.apache.lucene.util.IntsRef: int offset>;	if i5 >= i2 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3