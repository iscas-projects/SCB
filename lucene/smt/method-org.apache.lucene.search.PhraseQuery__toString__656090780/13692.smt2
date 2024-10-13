(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2237 0)
(declare-sort var3521 0)
(declare-sort var2186 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/2048324127 (var2237) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun positions/2048324127 (var2237) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun terms/2048324127 (var2237) (Array Int var2186))
(declare-fun getLength-Arr-var2186-1 ((Array Int var2186)) Int)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun slop/2048324127 (var2237) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2237 var2237)
(declare-const null-String String)
(declare-const var3981 var2237) ; Statement: r1 := @this: org.apache.lucene.search.PhraseQuery 
(assert (not (= var3981 null-var2237)))
(declare-const var1691 String) ; Statement: r14 := @parameter0: java.lang.String 
(assert (not (= var1691 null-String)))
(define-const var1613 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1613)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1613!1 String)
(assert (= var1613!1 ""))
(define-const var2097 String (field/2048324127 var3981)) ; Statement: $r2 = r1.<org.apache.lucene.search.PhraseQuery: java.lang.String field> 
 ; Statement: if $r2 == null goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(assert (= var2097 null-String)) ; Cond: $r2 == null 
(assert true)
;(assert (append/672562846 var1613!1 "\u0022")) ; Statement: virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var1613!2 String)
(assert (= var1613!2 (str.++ var1613!1 "\u0022")))
(define-const var1750 (Array Int Int) (positions/2048324127 var3981)) ; Statement: $r17 = r1.<org.apache.lucene.search.PhraseQuery: int[] positions> 
(define-const var340 Int (getLength-Arr-Int-1 var1750)) ; Statement: $i6 = lengthof $r17 
 ; Statement: if $i6 != 0 goto $r4 = r1.<org.apache.lucene.search.PhraseQuery: int[] positions> 
(assert (not (= var340 0))) ; Cond: $i6 != 0 
(define-const var2472 (Array Int Int) (positions/2048324127 var3981)) ; Statement: $r4 = r1.<org.apache.lucene.search.PhraseQuery: int[] positions> 
(define-const var3497 (Array Int Int) (positions/2048324127 var3981)) ; Statement: $r3 = r1.<org.apache.lucene.search.PhraseQuery: int[] positions> 
(define-const var2729 Int (getLength-Arr-Int-1 var3497)) ; Statement: $i0 = lengthof $r3 
(define-const var607 Int (- var2729 1)) ; Statement: $i1 = $i0 - 1 
(define-const var2609 Int (select var2472 var607)) ; Statement: i7 = $r4[$i1] 
(assert true) ; Non Conditional
(define-const var996 Int (+ var2609 1)) ; Statement: $i2 = i7 + 1 
(define-const var929 (Array Int String) arr-String-init) ; Statement: $r13 = newarray (java.lang.String)[$i2] 
(define-const var3571 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var1392 (Array Int var2186) (terms/2048324127 var3981)) ; Statement: $r18 = r1.<org.apache.lucene.search.PhraseQuery: org.apache.lucene.index.Term[] terms> 
(define-const var1270 Int (getLength-Arr-var2186-1 var1392)) ; Statement: $i9 = lengthof $r18 
 ; Statement: if i8 >= $i9 goto i11 = 0 
(assert (>= var3571 var1270)) ; Cond: i8 >= $i9 
(define-const var2967 Int 0) ; Statement: i11 = 0 
(assert true) ; Non Conditional
(define-const var3841 Int (getLength-Arr-String-1 var929)) ; Statement: $i3 = lengthof $r13 
 ; Statement: if i11 >= $i3 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(assert (>= var2967 var3841)) ; Cond: i11 >= $i3 
(assert true)
;(assert (append/672562846 var1613!2 "\u0022")) ; Statement: virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var1613!3 String)
(assert (= var1613!3 (str.++ var1613!2 "\u0022")))
(define-const var1747 Int (slop/2048324127 var3981)) ; Statement: $i4 = r1.<org.apache.lucene.search.PhraseQuery: int slop> 
 ; Statement: if $i4 == 0 goto $r5 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1747 0)) ; Cond: $i4 == 0 
(assert true)
(define-const var381 String (toString/-2075883882 var1613!3)) ; Statement: $r5 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/2048324127=([org.apache.lucene.search.PhraseQuery], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), positions/2048324127=([org.apache.lucene.search.PhraseQuery], int[]), getLength-Arr-Int-1=([int[]], int), arr-String-init=([], java.lang.String[]), terms/2048324127=([org.apache.lucene.search.PhraseQuery], org.apache.lucene.index.Term[]), getLength-Arr-var2186-1=([org.apache.lucene.index.Term[]], int), getLength-Arr-String-1=([java.lang.String[]], int), slop/2048324127=([org.apache.lucene.search.PhraseQuery], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2237=org.apache.lucene.search.PhraseQuery, var3981=r1, var1691=r14, var3521=null_type, var1613=$r21, var2097=$r2, var1750=$r17, var340=$i6, var2472=$r4, var3497=$r3, var2729=$i0, var607=$i1, var2609=i7, var996=$i2, var929=$r13, var3571=i8, var2186=org.apache.lucene.index.Term, var1392=$r18, var1270=$i9, var2967=i11, var3841=$i3, var1747=$i4, var381=$r5}
; {org.apache.lucene.search.PhraseQuery=var2237, r1=var3981, r14=var1691, null_type=var3521, $r21=var1613, $r2=var2097, $r17=var1750, $i6=var340, $r4=var2472, $r3=var3497, $i0=var2729, $i1=var607, i7=var2609, $i2=var996, $r13=var929, i8=var3571, org.apache.lucene.index.Term=var2186, $r18=var1392, $i9=var1270, i11=var2967, $i3=var3841, $i4=var1747, $r5=var381}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.PhraseQuery;	r14 := @parameter0: java.lang.String;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.search.PhraseQuery: java.lang.String field>;	if $r2 == null goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r17 = r1.<org.apache.lucene.search.PhraseQuery: int[] positions>;	$i6 = lengthof $r17;	if $i6 != 0 goto $r4 = r1.<org.apache.lucene.search.PhraseQuery: int[] positions>;	$r4 = r1.<org.apache.lucene.search.PhraseQuery: int[] positions>;	$r3 = r1.<org.apache.lucene.search.PhraseQuery: int[] positions>;	$i0 = lengthof $r3;	$i1 = $i0 - 1;	i7 = $r4[$i1];	$i2 = i7 + 1;	$r13 = newarray (java.lang.String)[$i2];	i8 = 0;	$r18 = r1.<org.apache.lucene.search.PhraseQuery: org.apache.lucene.index.Term[] terms>;	$i9 = lengthof $r18;	if i8 >= $i9 goto i11 = 0;	i11 = 0;	$i3 = lengthof $r13;	if i11 >= $i3 goto virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$i4 = r1.<org.apache.lucene.search.PhraseQuery: int slop>;	if $i4 == 0 goto $r5 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 9