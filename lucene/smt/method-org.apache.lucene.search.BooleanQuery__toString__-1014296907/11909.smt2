(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3404 0)
(declare-sort var3889 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMinimumNumberShouldMatch/813057047 (var3404) Int)
(declare-fun iterator/150220311 (var3404) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3404 var3404)
(declare-const null-String String)
(declare-const var3305 var3404) ; Statement: r1 := @this: org.apache.lucene.search.BooleanQuery 
(assert (not (= var3305 null-var3404)))
(declare-const var3954 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var3954 null-String)))
(define-const var2602 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2602)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2602!1 String)
(assert (= var2602!1 ""))
(assert true)
(define-const var1348 Int (getMinimumNumberShouldMatch/813057047 var3305)) ; Statement: $i0 = virtualinvoke r1.<org.apache.lucene.search.BooleanQuery: int getMinimumNumberShouldMatch()>() 
 ; Statement: if $i0 <= 0 goto $z5 = 0 
(assert (<= var1348 0)) ; Cond: $i0 <= 0 
(define-const var3098 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(define-const var2492 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
(define-const var454 Bool var2492) ; Statement: z0 = $z4 
 ; Statement: if $z5 == 0 goto i5 = 0 
(assert (= (ite var3098 1 0) 0)) ; Cond: $z5 == 0 
(define-const var34 Int 0) ; Statement: i5 = 0 
(assert true)
(define-const var2260 Iterator (iterator/150220311 var3305)) ; Statement: $r12 = virtualinvoke r1.<org.apache.lucene.search.BooleanQuery: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2027 Bool (Iterator_hasNext/-1669924200 var2260)) ; Statement: $z3 = interfaceinvoke $r12.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto (branch) 
(assert (= (ite var2027 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: if z0 == 0 goto $i1 = virtualinvoke r1.<org.apache.lucene.search.BooleanQuery: int getMinimumNumberShouldMatch()>() 
(assert (= (ite var454 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2304 Int (getMinimumNumberShouldMatch/813057047 var3305)) ; Statement: $i1 = virtualinvoke r1.<org.apache.lucene.search.BooleanQuery: int getMinimumNumberShouldMatch()>() 
 ; Statement: if $i1 <= 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var2304 0)) ; Cond: $i1 <= 0 
(assert true)
(define-const var2086 String (toString/-2075883882 var2602!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMinimumNumberShouldMatch/813057047=([org.apache.lucene.search.BooleanQuery], int), iterator/150220311=([org.apache.lucene.search.BooleanQuery], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3404=org.apache.lucene.search.BooleanQuery, var3305=r1, var3954=r8, var3889=null_type, var2602=$r0, var1348=$i0, var3098=$z5, var2492=$z4, var454=z0, var34=i5, var2260=$r12, var2027=$z3, var2304=$i1, var2086=$r2}
; {org.apache.lucene.search.BooleanQuery=var3404, r1=var3305, r8=var3954, null_type=var3889, $r0=var2602, $i0=var1348, $z5=var3098, $z4=var2492, z0=var454, i5=var34, $r12=var2260, $z3=var2027, $i1=var2304, $r2=var2086}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.BooleanQuery;	r8 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = virtualinvoke r1.<org.apache.lucene.search.BooleanQuery: int getMinimumNumberShouldMatch()>();	if $i0 <= 0 goto $z5 = 0;	$z5 = 0;	$z4 = 0;	z0 = $z4;	if $z5 == 0 goto i5 = 0;	i5 = 0;	$r12 = virtualinvoke r1.<org.apache.lucene.search.BooleanQuery: java.util.Iterator iterator()>();	$z3 = interfaceinvoke $r12.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto (branch);	if z0 == 0 goto $i1 = virtualinvoke r1.<org.apache.lucene.search.BooleanQuery: int getMinimumNumberShouldMatch()>();	$i1 = virtualinvoke r1.<org.apache.lucene.search.BooleanQuery: int getMinimumNumberShouldMatch()>();	if $i1 <= 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 8