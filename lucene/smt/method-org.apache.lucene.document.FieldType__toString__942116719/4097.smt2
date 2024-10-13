(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1333 0)
(declare-sort var1739 0)
(declare-sort var3949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun stored/-1718026935 (var1333) Bool)
(declare-fun indexOptions/1670449687 (var1333) var1739)
(declare-fun dimensionCount/1670449687 (var1333) Int)
(declare-fun docValuesType/1670449687 (var1333) var3949)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1333 var1333)
(declare-const var1739-NONE var1739)
(declare-const var3949-NONE var3949)
(declare-const var2700 var1333) ; Statement: r1 := @this: org.apache.lucene.document.FieldType 
(assert (not (= var2700 null-var1333)))
(define-const var3372 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3372)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3372!1 String)
(assert (= var3372!1 ""))
(assert true)
(define-const var2497 Bool (stored/-1718026935 var2700)) ; Statement: $z0 = virtualinvoke r1.<org.apache.lucene.document.FieldType: boolean stored()>() 
 ; Statement: if $z0 == 0 goto $r3 = r1.<org.apache.lucene.document.FieldType: org.apache.lucene.index.IndexOptions indexOptions> 
(assert (= (ite var2497 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1845 var1739 (indexOptions/1670449687 var2700)) ; Statement: $r3 = r1.<org.apache.lucene.document.FieldType: org.apache.lucene.index.IndexOptions indexOptions> 
(define-const var2201 var1739 var1739-NONE) ; Statement: $r2 = <org.apache.lucene.index.IndexOptions: org.apache.lucene.index.IndexOptions NONE> 
 ; Statement: if $r3 == $r2 goto $i6 = r1.<org.apache.lucene.document.FieldType: int dimensionCount> 
(assert (= var1845 var2201)) ; Cond: $r3 == $r2 
(define-const var1541 Int (dimensionCount/1670449687 var2700)) ; Statement: $i6 = r1.<org.apache.lucene.document.FieldType: int dimensionCount> 
 ; Statement: if $i6 == 0 goto $r8 = r1.<org.apache.lucene.document.FieldType: org.apache.lucene.index.DocValuesType docValuesType> 
(assert (= var1541 0)) ; Cond: $i6 == 0 
(define-const var955 var3949 (docValuesType/1670449687 var2700)) ; Statement: $r8 = r1.<org.apache.lucene.document.FieldType: org.apache.lucene.index.DocValuesType docValuesType> 
(define-const var2355 var3949 var3949-NONE) ; Statement: $r9 = <org.apache.lucene.index.DocValuesType: org.apache.lucene.index.DocValuesType NONE> 
 ; Statement: if $r8 == $r9 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var955 var2355)) ; Cond: $r8 == $r9 
(assert true)
(define-const var2304 String (toString/-2075883882 var3372!1)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), stored/-1718026935=([org.apache.lucene.document.FieldType], boolean), indexOptions/1670449687=([org.apache.lucene.document.FieldType], org.apache.lucene.index.IndexOptions), dimensionCount/1670449687=([org.apache.lucene.document.FieldType], int), docValuesType/1670449687=([org.apache.lucene.document.FieldType], org.apache.lucene.index.DocValuesType), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1333=org.apache.lucene.document.FieldType, var2700=r1, var3372=$r0, var2497=$z0, var1739=org.apache.lucene.index.IndexOptions, var1845=$r3, var2201=$r2, var1541=$i6, var3949=org.apache.lucene.index.DocValuesType, var955=$r8, var2355=$r9, var2304=$r10}
; {org.apache.lucene.document.FieldType=var1333, r1=var2700, $r0=var3372, $z0=var2497, org.apache.lucene.index.IndexOptions=var1739, $r3=var1845, $r2=var2201, $i6=var1541, org.apache.lucene.index.DocValuesType=var3949, $r8=var955, $r9=var2355, $r10=var2304}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.FieldType;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = virtualinvoke r1.<org.apache.lucene.document.FieldType: boolean stored()>();	if $z0 == 0 goto $r3 = r1.<org.apache.lucene.document.FieldType: org.apache.lucene.index.IndexOptions indexOptions>;	$r3 = r1.<org.apache.lucene.document.FieldType: org.apache.lucene.index.IndexOptions indexOptions>;	$r2 = <org.apache.lucene.index.IndexOptions: org.apache.lucene.index.IndexOptions NONE>;	if $r3 == $r2 goto $i6 = r1.<org.apache.lucene.document.FieldType: int dimensionCount>;	$i6 = r1.<org.apache.lucene.document.FieldType: int dimensionCount>;	if $i6 == 0 goto $r8 = r1.<org.apache.lucene.document.FieldType: org.apache.lucene.index.DocValuesType docValuesType>;	$r8 = r1.<org.apache.lucene.document.FieldType: org.apache.lucene.index.DocValuesType docValuesType>;	$r9 = <org.apache.lucene.index.DocValuesType: org.apache.lucene.index.DocValuesType NONE>;	if $r8 == $r9 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 5