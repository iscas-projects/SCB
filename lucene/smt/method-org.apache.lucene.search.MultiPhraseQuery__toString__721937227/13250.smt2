(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1186 0)
(declare-sort var180 0)
(declare-sort var1412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/189896710 (var1186) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun termArrays/189896710 (var1186) (Array Int (Array Int var1412)))
(declare-fun getLength-Arr-var1412-2 ((Array Int (Array Int var1412))) Int)
(declare-fun slop/189896710 (var1186) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1186 var1186)
(declare-const null-String String)
(declare-const var1387 var1186) ; Statement: r1 := @this: org.apache.lucene.search.MultiPhraseQuery 
(assert (not (= var1387 null-var1186)))
(declare-const var3834 String) ; Statement: r12 := @parameter0: java.lang.String 
(assert (not (= var3834 null-String)))
(define-const var3803 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3803)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3803!1 String)
(assert (= var3803!1 ""))
(define-const var3992 String (field/189896710 var1387)) ; Statement: $r2 = r1.<org.apache.lucene.search.MultiPhraseQuery: java.lang.String field> 
 ; Statement: if $r2 == null goto $r3 = r1.<org.apache.lucene.search.MultiPhraseQuery: java.lang.String field> 
(assert (not (= var3992 null-String))) ; Negate: Cond: $r2 == null  
(define-const var3423 String (field/189896710 var1387)) ; Statement: $r13 = r1.<org.apache.lucene.search.MultiPhraseQuery: java.lang.String field> 
(assert true)
(define-const var1567 Bool (= var3423 var3834)) ; Statement: $z0 = virtualinvoke $r13.<java.lang.String: boolean equals(java.lang.Object)>(r12) 
 ; Statement: if $z0 != 0 goto virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(assert (not (= (ite var1567 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (append/672562846 var3803!1 "\u0022")) ; Statement: virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3803!2 String)
(assert (= var3803!2 (str.++ var3803!1 "\u0022")))
(define-const var3238 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
(define-const var624 Int var3238) ; Statement: i8 = $i14 
(define-const var3767 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
(define-const var56 (Array Int (Array Int var1412)) (termArrays/189896710 var1387)) ; Statement: $r14 = r1.<org.apache.lucene.search.MultiPhraseQuery: org.apache.lucene.index.Term[][] termArrays> 
(define-const var51 Int (getLength-Arr-var1412-2 var56)) ; Statement: $i10 = lengthof $r14 
 ; Statement: if i9 >= $i10 goto virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(assert (>= var3767 var51)) ; Cond: i9 >= $i10 
(assert true)
;(assert (append/672562846 var3803!2 "\u0022")) ; Statement: virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3803!3 String)
(assert (= var3803!3 (str.++ var3803!2 "\u0022")))
(define-const var2820 Int (slop/189896710 var1387)) ; Statement: $i0 = r1.<org.apache.lucene.search.MultiPhraseQuery: int slop> 
 ; Statement: if $i0 == 0 goto $r4 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2820 0)) ; Cond: $i0 == 0 
(assert true)
(define-const var3755 String (toString/-2075883882 var3803!3)) ; Statement: $r4 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/189896710=([org.apache.lucene.search.MultiPhraseQuery], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([int], int), termArrays/189896710=([org.apache.lucene.search.MultiPhraseQuery], org.apache.lucene.index.Term[][]), getLength-Arr-var1412-2=([org.apache.lucene.index.Term[][]], int), slop/189896710=([org.apache.lucene.search.MultiPhraseQuery], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1186=org.apache.lucene.search.MultiPhraseQuery, var1387=r1, var3834=r12, var180=null_type, var3803=$r15, var3992=$r2, var3423=$r13, var1567=$z0, var3238=$i14, var624=i8, var3767=i9, var1412=org.apache.lucene.index.Term, var56=$r14, var51=$i10, var2820=$i0, var3755=$r4}
; {org.apache.lucene.search.MultiPhraseQuery=var1186, r1=var1387, r12=var3834, null_type=var180, $r15=var3803, $r2=var3992, $r13=var3423, $z0=var1567, $i14=var3238, i8=var624, i9=var3767, org.apache.lucene.index.Term=var1412, $r14=var56, $i10=var51, $i0=var2820, $r4=var3755}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.MultiPhraseQuery;	r12 := @parameter0: java.lang.String;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.search.MultiPhraseQuery: java.lang.String field>;	if $r2 == null goto $r3 = r1.<org.apache.lucene.search.MultiPhraseQuery: java.lang.String field>;	$r13 = r1.<org.apache.lucene.search.MultiPhraseQuery: java.lang.String field>;	$z0 = virtualinvoke $r13.<java.lang.String: boolean equals(java.lang.Object)>(r12);	if $z0 != 0 goto virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$i14 = (int) -1;	i8 = $i14;	i9 = 0;	$r14 = r1.<org.apache.lucene.search.MultiPhraseQuery: org.apache.lucene.index.Term[][] termArrays>;	$i10 = lengthof $r14;	if i9 >= $i10 goto virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$i0 = r1.<org.apache.lucene.search.MultiPhraseQuery: int slop>;	if $i0 == 0 goto $r4 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 6