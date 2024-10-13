(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2581 0)
(declare-sort var488 0)
(declare-sort var877 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/1973579149 (var2581) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun numbers/1973579149 (var2581) var877)
(declare-fun toString/-941490885 (var877) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2581 var2581)
(declare-const null-String String)
(declare-const var1979 var2581) ; Statement: r1 := @this: org.apache.lucene.document.SortedNumericDocValuesSetQuery 
(assert (not (= var1979 null-var2581)))
(declare-const var422 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var422 null-String)))
(define-const var1279 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1279)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1279!1 String)
(assert (= var1279!1 ""))
(define-const var606 String (field/1973579149 var1979)) ; Statement: $r2 = r1.<org.apache.lucene.document.SortedNumericDocValuesSetQuery: java.lang.String field> 
(assert true)
(define-const var2125 String (append/672562846 var1279!1 var606)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1279!2 String)
(assert (= var1279!2 (str.++ var1279!1 var606)))
(assert true)
(define-const var342 String (append/672562846 var2125 ": ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2125!1 String)
(assert (= var2125!1 (str.++ var2125 ": ")))
(define-const var3091 var877 (numbers/1973579149 var1979)) ; Statement: $r4 = r1.<org.apache.lucene.document.SortedNumericDocValuesSetQuery: org.apache.lucene.document.DocValuesLongHashSet numbers> 
(assert true)
(define-const var2825 String (toString/-941490885 var3091)) ; Statement: $r5 = virtualinvoke $r4.<org.apache.lucene.document.DocValuesLongHashSet: java.lang.String toString()>() 
(assert true)
(define-const var91 String (append/672562846 var342 var2825)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var342!1 String)
(assert (= var342!1 (str.++ var342 var2825)))
(assert true)
(define-const var812 String (toString/-2075883882 var91)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/1973579149=([org.apache.lucene.document.SortedNumericDocValuesSetQuery], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), numbers/1973579149=([org.apache.lucene.document.SortedNumericDocValuesSetQuery], org.apache.lucene.document.DocValuesLongHashSet), toString/-941490885=([org.apache.lucene.document.DocValuesLongHashSet], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2581=org.apache.lucene.document.SortedNumericDocValuesSetQuery, var1979=r1, var422=r9, var488=null_type, var1279=$r0, var606=$r2, var2125=$r3, var342=$r6, var877=org.apache.lucene.document.DocValuesLongHashSet, var3091=$r4, var2825=$r5, var91=$r7, var812=$r8}
; {org.apache.lucene.document.SortedNumericDocValuesSetQuery=var2581, r1=var1979, r9=var422, null_type=var488, $r0=var1279, $r2=var606, $r3=var2125, $r6=var342, org.apache.lucene.document.DocValuesLongHashSet=var877, $r4=var3091, $r5=var2825, $r7=var91, $r8=var812}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.apache.lucene.document.DocValuesLongHashSet: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.SortedNumericDocValuesSetQuery;	r9 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.lucene.document.SortedNumericDocValuesSetQuery: java.lang.String field>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r4 = r1.<org.apache.lucene.document.SortedNumericDocValuesSetQuery: org.apache.lucene.document.DocValuesLongHashSet numbers>;	$r5 = virtualinvoke $r4.<org.apache.lucene.document.DocValuesLongHashSet: java.lang.String toString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1