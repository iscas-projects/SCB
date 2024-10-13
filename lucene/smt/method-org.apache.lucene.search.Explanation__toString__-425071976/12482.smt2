(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1664 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getSummary/961921277 (var1664) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDetails/1704519047 (var1664) (Array Int var1664))
(declare-fun getLength-Arr-var1664-1 ((Array Int var1664)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1664 var1664)
(declare-const null-Int Int)
(declare-const var3365 var1664) ; Statement: r1 := @this: org.apache.lucene.search.Explanation 
(assert (not (= var3365 null-var1664)))
(declare-const var2949 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2949 null-Int)))
(define-const var674 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var674)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var674!1 String)
(assert (= var674!1 ""))
(define-const var1016 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r2 = virtualinvoke r1.<org.apache.lucene.search.Explanation: java.lang.String getSummary()>() 
(assert (>= var1016 var2949)) ; Cond: i3 >= i0 
(assert true)
(define-const var2392 String (getSummary/961921277 var3365)) ; Statement: $r2 = virtualinvoke r1.<org.apache.lucene.search.Explanation: java.lang.String getSummary()>() 
(assert true)
;(assert (append/672562846 var674!1 var2392)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var674!2 String)
(assert (= var674!2 (str.++ var674!1 var2392)))
(assert true)
;(assert (append/672562846 var674!2 "\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var674!3 String)
(assert (= var674!3 (str.++ var674!2 "\n")))
(assert true)
(define-const var521 (Array Int var1664) (getDetails/1704519047 var3365)) ; Statement: r6 = virtualinvoke r1.<org.apache.lucene.search.Explanation: org.apache.lucene.search.Explanation[] getDetails()>() 
(define-const var144 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var1389 Int (getLength-Arr-var1664-1 var521)) ; Statement: $i1 = lengthof r6 
 ; Statement: if i4 >= $i1 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var144 var1389)) ; Cond: i4 >= $i1 
(assert true)
(define-const var440 String (toString/-2075883882 var674!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getSummary/961921277=([org.apache.lucene.search.Explanation], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDetails/1704519047=([org.apache.lucene.search.Explanation], org.apache.lucene.search.Explanation[]), getLength-Arr-var1664-1=([org.apache.lucene.search.Explanation[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1664=org.apache.lucene.search.Explanation, var3365=r1, var2949=i0, var674=$r0, var1016=i3, var2392=$r2, var521=r6, var144=i4, var1389=$i1, var440=$r3}
; {org.apache.lucene.search.Explanation=var1664, r1=var3365, i0=var2949, $r0=var674, i3=var1016, $r2=var2392, r6=var521, i4=var144, $i1=var1389, $r3=var440}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.Explanation;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i3 = 0;	if i3 >= i0 goto $r2 = virtualinvoke r1.<org.apache.lucene.search.Explanation: java.lang.String getSummary()>();	$r2 = virtualinvoke r1.<org.apache.lucene.search.Explanation: java.lang.String getSummary()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	r6 = virtualinvoke r1.<org.apache.lucene.search.Explanation: org.apache.lucene.search.Explanation[] getDetails()>();	i4 = 0;	$i1 = lengthof r6;	if i4 >= $i1 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 5