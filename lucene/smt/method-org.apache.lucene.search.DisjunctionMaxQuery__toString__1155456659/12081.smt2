(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2961 0)
(declare-sort var674 0)
(declare-sort var2438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun disjuncts/-1645973930 (var2961) var2438)
(declare-fun iterator/-157163744 (var2438) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun tieBreakerMultiplier/-1645973930 (var2961) Float32)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2961 var2961)
(declare-const null-String String)
(declare-const var3369 var2961) ; Statement: r1 := @this: org.apache.lucene.search.DisjunctionMaxQuery 
(assert (not (= var3369 null-var2961)))
(declare-const var1031 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var1031 null-String)))
(define-const var2728 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2728)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2728!1 String)
(assert (= var2728!1 ""))
(assert true)
;(assert (append/672562846 var2728!1 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2728!2 String)
(assert (= var2728!2 (str.++ var2728!1 "(")))
(define-const var917 var2438 (disjuncts/-1645973930 var3369)) ; Statement: $r2 = r1.<org.apache.lucene.search.DisjunctionMaxQuery: org.apache.lucene.search.Multiset disjuncts> 
(assert true)
(define-const var6 Iterator (iterator/-157163744 var917)) ; Statement: r3 = virtualinvoke $r2.<org.apache.lucene.search.Multiset: java.util.Iterator iterator()>() 
(define-const var3972 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3020 Bool (Iterator_hasNext/-1669924200 var6)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(assert (= (ite var3020 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var2728!2 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2728!3 String)
(assert (= var2728!3 (str.++ var2728!2 ")")))
(define-const var3990 Float32 (tieBreakerMultiplier/-1645973930 var3369)) ; Statement: $f0 = r1.<org.apache.lucene.search.DisjunctionMaxQuery: float tieBreakerMultiplier> 
(define-const var2279 Int (ite (fp.gt var3990 ((_ to_fp 8 24) #x00000000)) 1 (ite (fp.lt var3990 ((_ to_fp 8 24) #x00000000)) (- 1) 0))) ; Statement: $b0 = $f0 cmpl 0.0F 
 ; Statement: if $b0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2279 0)) ; Cond: $b0 == 0 
(assert true)
(define-const var3852 String (toString/-2075883882 var2728!3)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), disjuncts/-1645973930=([org.apache.lucene.search.DisjunctionMaxQuery], org.apache.lucene.search.Multiset), iterator/-157163744=([org.apache.lucene.search.Multiset], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), tieBreakerMultiplier/-1645973930=([org.apache.lucene.search.DisjunctionMaxQuery], float), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2961=org.apache.lucene.search.DisjunctionMaxQuery, var3369=r1, var1031=r7, var674=null_type, var2728=$r0, var2438=org.apache.lucene.search.Multiset, var917=$r2, var6=r3, var3972=i3, var3020=$z0, var3990=$f0, var2279=$b0, var3852=$r4}
; {org.apache.lucene.search.DisjunctionMaxQuery=var2961, r1=var3369, r7=var1031, null_type=var674, $r0=var2728, org.apache.lucene.search.Multiset=var2438, $r2=var917, r3=var6, i3=var3972, $z0=var3020, $f0=var3990, $b0=var2279, $r4=var3852}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.DisjunctionMaxQuery;	r7 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r2 = r1.<org.apache.lucene.search.DisjunctionMaxQuery: org.apache.lucene.search.Multiset disjuncts>;	r3 = virtualinvoke $r2.<org.apache.lucene.search.Multiset: java.util.Iterator iterator()>();	i3 = 0;	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$f0 = r1.<org.apache.lucene.search.DisjunctionMaxQuery: float tieBreakerMultiplier>;	$b0 = $f0 cmpl 0.0F;	if $b0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4