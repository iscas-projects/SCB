(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lats/911321095 (var370) (Array Int Float64))
(declare-fun getLength-Arr-Float64-1 ((Array Int Float64)) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var370 var370)
(declare-const var3668 var370) ; Statement: r1 := @this: org.apache.lucene.geo.Line 
(assert (not (= var3668 null-var370)))
(define-const var1992 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1992)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1992!1 String)
(assert (= var1992!1 ""))
(assert true)
;(assert (append/672562846 var1992!1 "LINE(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("LINE(") 
(declare-const var1992!2 String)
(assert (= var1992!2 (str.++ var1992!1 "LINE(")))
(define-const var86 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var2277 (Array Int Float64) (lats/911321095 var3668)) ; Statement: $r2 = r1.<org.apache.lucene.geo.Line: double[] lats> 
(define-const var822 Int (getLength-Arr-Float64-1 var2277)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if i1 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (>= var86 var822)) ; Cond: i1 >= $i0 
(assert true)
;(assert (append/-1166366385 var1992!2 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1992!3 String)
(assert (str.prefixof var1992!2 var1992!3))
(assert true)
(define-const var1645 String (toString/-2075883882 var1992!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lats/911321095=([org.apache.lucene.geo.Line], double[]), getLength-Arr-Float64-1=([double[]], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var370=org.apache.lucene.geo.Line, var3668=r1, var1992=$r0, var86=i1, var2277=$r2, var822=$i0, var1645=$r3}
; {org.apache.lucene.geo.Line=var370, r1=var3668, $r0=var1992, i1=var86, $r2=var2277, $i0=var822, $r3=var1645}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.Line;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("LINE(");	i1 = 0;	$r2 = r1.<org.apache.lucene.geo.Line: double[] lats>;	$i0 = lengthof $r2;	if i1 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3