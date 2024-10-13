(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1058 0)
(declare-sort var350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMinimumNumberShouldMatch/813057047 (var1058) Int)
(declare-fun iterator/150220311 (var1058) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1058 var1058)
(declare-const null-String String)
(declare-const var3945 var1058) ; Statement: r1 := @this: org.apache.lucene.search.BooleanQuery 
(assert (not (= var3945 null-var1058)))
(declare-const var296 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var296 null-String)))
(define-const var3299 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3299)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3299!1 String)
(assert (= var3299!1 ""))
(assert true)
(define-const var1106 Int (getMinimumNumberShouldMatch/813057047 var3945)) ; Statement: $i0 = virtualinvoke r1.<org.apache.lucene.search.BooleanQuery: int getMinimumNumberShouldMatch()>() 
 ; Statement: if $i0 <= 0 goto $z5 = 0 
(assert (not (<= var1106 0))) ; Negate: Cond: $i0 <= 0  
(define-const var336 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
(define-const var2868 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= z0 = $z4] 
(assert true) ; Non Conditional
(define-const var3513 Bool var2868) ; Statement: z0 = $z4 
 ; Statement: if $z5 == 0 goto i5 = 0 
(assert (= (ite var336 1 0) 0)) ; Cond: $z5 == 0 
(define-const var2801 Int 0) ; Statement: i5 = 0 
(assert true)
(define-const var2092 Iterator (iterator/150220311 var3945)) ; Statement: $r12 = virtualinvoke r1.<org.apache.lucene.search.BooleanQuery: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1224 Bool (Iterator_hasNext/-1669924200 var2092)) ; Statement: $z3 = interfaceinvoke $r12.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto (branch) 
(assert (= (ite var1224 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: if z0 == 0 goto $i1 = virtualinvoke r1.<org.apache.lucene.search.BooleanQuery: int getMinimumNumberShouldMatch()>() 
(assert (= (ite var3513 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1255 Int (getMinimumNumberShouldMatch/813057047 var3945)) ; Statement: $i1 = virtualinvoke r1.<org.apache.lucene.search.BooleanQuery: int getMinimumNumberShouldMatch()>() 
 ; Statement: if $i1 <= 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var1255 0)) ; Cond: $i1 <= 0 
(assert true)
(define-const var326 String (toString/-2075883882 var3299!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMinimumNumberShouldMatch/813057047=([org.apache.lucene.search.BooleanQuery], int), iterator/150220311=([org.apache.lucene.search.BooleanQuery], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1058=org.apache.lucene.search.BooleanQuery, var3945=r1, var296=r8, var350=null_type, var3299=$r0, var1106=$i0, var336=$z5, var2868=$z4, var3513=z0, var2801=i5, var2092=$r12, var1224=$z3, var1255=$i1, var326=$r2}
; {org.apache.lucene.search.BooleanQuery=var1058, r1=var3945, r8=var296, null_type=var350, $r0=var3299, $i0=var1106, $z5=var336, $z4=var2868, z0=var3513, i5=var2801, $r12=var2092, $z3=var1224, $i1=var1255, $r2=var326}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.BooleanQuery;	r8 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = virtualinvoke r1.<org.apache.lucene.search.BooleanQuery: int getMinimumNumberShouldMatch()>();	if $i0 <= 0 goto $z5 = 0;	$z5 = 1;	$z4 = 1;	goto [?= z0 = $z4];	z0 = $z4;	if $z5 == 0 goto i5 = 0;	i5 = 0;	$r12 = virtualinvoke r1.<org.apache.lucene.search.BooleanQuery: java.util.Iterator iterator()>();	$z3 = interfaceinvoke $r12.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto (branch);	if z0 == 0 goto $i1 = virtualinvoke r1.<org.apache.lucene.search.BooleanQuery: int getMinimumNumberShouldMatch()>();	$i1 = virtualinvoke r1.<org.apache.lucene.search.BooleanQuery: int getMinimumNumberShouldMatch()>();	if $i1 <= 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 8