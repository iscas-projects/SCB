(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2570 0)
(declare-sort var1456 0)
(declare-sort var2519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/189896710 (var2570) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun termArrays/189896710 (var2570) (Array Int (Array Int var2519)))
(declare-fun getLength-Arr-var2519-2 ((Array Int (Array Int var2519))) Int)
(declare-fun slop/189896710 (var2570) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2570 var2570)
(declare-const null-String String)
(declare-const var2958 var2570) ; Statement: r1 := @this: org.apache.lucene.search.MultiPhraseQuery 
(assert (not (= var2958 null-var2570)))
(declare-const var1224 String) ; Statement: r12 := @parameter0: java.lang.String 
(assert (not (= var1224 null-String)))
(define-const var3793 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3793)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3793!1 String)
(assert (= var3793!1 ""))
(define-const var991 String (field/189896710 var2958)) ; Statement: $r2 = r1.<org.apache.lucene.search.MultiPhraseQuery: java.lang.String field> 
 ; Statement: if $r2 == null goto $r3 = r1.<org.apache.lucene.search.MultiPhraseQuery: java.lang.String field> 
(assert (= var991 null-String)) ; Cond: $r2 == null 
(define-const var521 String (field/189896710 var2958)) ; Statement: $r3 = r1.<org.apache.lucene.search.MultiPhraseQuery: java.lang.String field> 
(assert true)
;(assert (append/672562846 var3793!1 var521)) ; Statement: virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3793!2 String)
(assert (= var3793!2 (str.++ var3793!1 var521)))
(assert true)
;(assert (append/672562846 var3793!2 ":")) ; Statement: virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3793!3 String)
(assert (= var3793!3 (str.++ var3793!2 ":")))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3793!3 "\u0022")) ; Statement: virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3793!4 String)
(assert (= var3793!4 (str.++ var3793!3 "\u0022")))
(define-const var3233 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
(define-const var3833 Int var3233) ; Statement: i8 = $i14 
(define-const var871 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
(define-const var3678 (Array Int (Array Int var2519)) (termArrays/189896710 var2958)) ; Statement: $r14 = r1.<org.apache.lucene.search.MultiPhraseQuery: org.apache.lucene.index.Term[][] termArrays> 
(define-const var371 Int (getLength-Arr-var2519-2 var3678)) ; Statement: $i10 = lengthof $r14 
 ; Statement: if i9 >= $i10 goto virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(assert (>= var871 var371)) ; Cond: i9 >= $i10 
(assert true)
;(assert (append/672562846 var3793!4 "\u0022")) ; Statement: virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3793!5 String)
(assert (= var3793!5 (str.++ var3793!4 "\u0022")))
(define-const var1177 Int (slop/189896710 var2958)) ; Statement: $i0 = r1.<org.apache.lucene.search.MultiPhraseQuery: int slop> 
 ; Statement: if $i0 == 0 goto $r4 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1177 0)) ; Cond: $i0 == 0 
(assert true)
(define-const var3998 String (toString/-2075883882 var3793!5)) ; Statement: $r4 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/189896710=([org.apache.lucene.search.MultiPhraseQuery], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([int], int), termArrays/189896710=([org.apache.lucene.search.MultiPhraseQuery], org.apache.lucene.index.Term[][]), getLength-Arr-var2519-2=([org.apache.lucene.index.Term[][]], int), slop/189896710=([org.apache.lucene.search.MultiPhraseQuery], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2570=org.apache.lucene.search.MultiPhraseQuery, var2958=r1, var1224=r12, var1456=null_type, var3793=$r15, var991=$r2, var521=$r3, var3233=$i14, var3833=i8, var871=i9, var2519=org.apache.lucene.index.Term, var3678=$r14, var371=$i10, var1177=$i0, var3998=$r4}
; {org.apache.lucene.search.MultiPhraseQuery=var2570, r1=var2958, r12=var1224, null_type=var1456, $r15=var3793, $r2=var991, $r3=var521, $i14=var3233, i8=var3833, i9=var871, org.apache.lucene.index.Term=var2519, $r14=var3678, $i10=var371, $i0=var1177, $r4=var3998}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.MultiPhraseQuery;	r12 := @parameter0: java.lang.String;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.search.MultiPhraseQuery: java.lang.String field>;	if $r2 == null goto $r3 = r1.<org.apache.lucene.search.MultiPhraseQuery: java.lang.String field>;	$r3 = r1.<org.apache.lucene.search.MultiPhraseQuery: java.lang.String field>;	virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$i14 = (int) -1;	i8 = $i14;	i9 = 0;	$r14 = r1.<org.apache.lucene.search.MultiPhraseQuery: org.apache.lucene.index.Term[][] termArrays>;	$i10 = lengthof $r14;	if i9 >= $i10 goto virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$i0 = r1.<org.apache.lucene.search.MultiPhraseQuery: int slop>;	if $i0 == 0 goto $r4 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 6