(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3333 0)
(declare-sort var787 0)
(declare-sort var1640 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/2048324127 (var3333) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun positions/2048324127 (var3333) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-String-init () (Array Int String))
(declare-fun terms/2048324127 (var3333) (Array Int var1640))
(declare-fun getLength-Arr-var1640-1 ((Array Int var1640)) Int)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun slop/2048324127 (var3333) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3333 var3333)
(declare-const null-String String)
(declare-const var3222 var3333) ; Statement: r1 := @this: org.apache.lucene.search.PhraseQuery 
(assert (not (= var3222 null-var3333)))
(declare-const var2143 String) ; Statement: r14 := @parameter0: java.lang.String 
(assert (not (= var2143 null-String)))
(define-const var204 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var204)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var204!1 String)
(assert (= var204!1 ""))
(define-const var3067 String (field/2048324127 var3222)) ; Statement: $r2 = r1.<org.apache.lucene.search.PhraseQuery: java.lang.String field> 
 ; Statement: if $r2 == null goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(assert (= var3067 null-String)) ; Cond: $r2 == null 
(assert true)
;(assert (append/672562846 var204!1 "\u0022")) ; Statement: virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var204!2 String)
(assert (= var204!2 (str.++ var204!1 "\u0022")))
(define-const var419 (Array Int Int) (positions/2048324127 var3222)) ; Statement: $r17 = r1.<org.apache.lucene.search.PhraseQuery: int[] positions> 
(define-const var117 Int (getLength-Arr-Int-1 var419)) ; Statement: $i6 = lengthof $r17 
 ; Statement: if $i6 != 0 goto $r4 = r1.<org.apache.lucene.search.PhraseQuery: int[] positions> 
(assert (not (not (= var117 0)))) ; Negate: Cond: $i6 != 0  
(define-const var3108 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
(define-const var3041 Int var3108) ; Statement: i7 = $i13 
 ; Statement: goto [?= $i2 = i7 + 1] 
(assert true) ; Non Conditional
(define-const var2630 Int (+ var3041 1)) ; Statement: $i2 = i7 + 1 
(define-const var2697 (Array Int String) arr-String-init) ; Statement: $r13 = newarray (java.lang.String)[$i2] 
(define-const var827 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var663 (Array Int var1640) (terms/2048324127 var3222)) ; Statement: $r18 = r1.<org.apache.lucene.search.PhraseQuery: org.apache.lucene.index.Term[] terms> 
(define-const var2432 Int (getLength-Arr-var1640-1 var663)) ; Statement: $i9 = lengthof $r18 
 ; Statement: if i8 >= $i9 goto i11 = 0 
(assert (>= var827 var2432)) ; Cond: i8 >= $i9 
(define-const var40 Int 0) ; Statement: i11 = 0 
(assert true) ; Non Conditional
(define-const var272 Int (getLength-Arr-String-1 var2697)) ; Statement: $i3 = lengthof $r13 
 ; Statement: if i11 >= $i3 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(assert (>= var40 var272)) ; Cond: i11 >= $i3 
(assert true)
;(assert (append/672562846 var204!2 "\u0022")) ; Statement: virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var204!3 String)
(assert (= var204!3 (str.++ var204!2 "\u0022")))
(define-const var2132 Int (slop/2048324127 var3222)) ; Statement: $i4 = r1.<org.apache.lucene.search.PhraseQuery: int slop> 
 ; Statement: if $i4 == 0 goto $r5 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2132 0)) ; Cond: $i4 == 0 
(assert true)
(define-const var660 String (toString/-2075883882 var204!3)) ; Statement: $r5 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/2048324127=([org.apache.lucene.search.PhraseQuery], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), positions/2048324127=([org.apache.lucene.search.PhraseQuery], int[]), getLength-Arr-Int-1=([int[]], int), cast-from-Int-to-Int=([int], int), arr-String-init=([], java.lang.String[]), terms/2048324127=([org.apache.lucene.search.PhraseQuery], org.apache.lucene.index.Term[]), getLength-Arr-var1640-1=([org.apache.lucene.index.Term[]], int), getLength-Arr-String-1=([java.lang.String[]], int), slop/2048324127=([org.apache.lucene.search.PhraseQuery], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3333=org.apache.lucene.search.PhraseQuery, var3222=r1, var2143=r14, var787=null_type, var204=$r21, var3067=$r2, var419=$r17, var117=$i6, var3108=$i13, var3041=i7, var2630=$i2, var2697=$r13, var827=i8, var1640=org.apache.lucene.index.Term, var663=$r18, var2432=$i9, var40=i11, var272=$i3, var2132=$i4, var660=$r5}
; {org.apache.lucene.search.PhraseQuery=var3333, r1=var3222, r14=var2143, null_type=var787, $r21=var204, $r2=var3067, $r17=var419, $i6=var117, $i13=var3108, i7=var3041, $i2=var2630, $r13=var2697, i8=var827, org.apache.lucene.index.Term=var1640, $r18=var663, $i9=var2432, i11=var40, $i3=var272, $i4=var2132, $r5=var660}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.PhraseQuery;	r14 := @parameter0: java.lang.String;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.search.PhraseQuery: java.lang.String field>;	if $r2 == null goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r17 = r1.<org.apache.lucene.search.PhraseQuery: int[] positions>;	$i6 = lengthof $r17;	if $i6 != 0 goto $r4 = r1.<org.apache.lucene.search.PhraseQuery: int[] positions>;	$i13 = (int) -1;	i7 = $i13;	goto [?= $i2 = i7 + 1];	$i2 = i7 + 1;	$r13 = newarray (java.lang.String)[$i2];	i8 = 0;	$r18 = r1.<org.apache.lucene.search.PhraseQuery: org.apache.lucene.index.Term[] terms>;	$i9 = lengthof $r18;	if i8 >= $i9 goto i11 = 0;	i11 = 0;	$i3 = lengthof $r13;	if i11 >= $i3 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$i4 = r1.<org.apache.lucene.search.PhraseQuery: int slop>;	if $i4 == 0 goto $r5 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 9