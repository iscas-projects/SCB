(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1746 0)
(declare-sort var1136 0)
(declare-sort var1283 0)
(declare-sort var3473 0)
(declare-sort var871 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classHash/2131464770 (var1136) Int)
(declare-fun cast-from-var1746-to-var1136 (var1746) var1136)
(declare-fun field/1960285582 (var1746) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun numDims/1960285582 (var1746) Int)
(declare-fun queryType/1960285582 (var1746) var1283)
(declare-fun hashCode/385986394 (var3473) Int)
(declare-fun cast-from-var1283-to-var3473 (var1283) var3473)
(declare-fun ranges/1960285582 (var1746) (Array Int Int))
(declare-fun var871_hashCode/-63010241 ((Array Int Int)) Int)
(declare-const null-var1746 var1746)
(declare-const var425 var1746) ; Statement: r0 := @this: org.apache.lucene.document.RangeFieldQuery 
(assert (not (= var425 null-var1746)))
(assert true)
(define-const var3283 Int (classHash/2131464770 (cast-from-var1746-to-var1136 var425))) ; Statement: i8 = virtualinvoke r0.<org.apache.lucene.document.RangeFieldQuery: int classHash()>() 
(define-const var3656 Int (* 31 var3283)) ; Statement: $i1 = 31 * i8 
(define-const var3736 String (field/1960285582 var425)) ; Statement: $r1 = r0.<org.apache.lucene.document.RangeFieldQuery: java.lang.String field> 
(assert true)
(define-const var2460 Int (hashCode/-467973558 var3736)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var2146 Int (+ var3656 var2460)) ; Statement: i9 = $i1 + $i0 
(define-const var47 Int (* 31 var2146)) ; Statement: $i3 = 31 * i9 
(define-const var2570 Int (numDims/1960285582 var425)) ; Statement: $i2 = r0.<org.apache.lucene.document.RangeFieldQuery: int numDims> 
(define-const var3902 Int (+ var47 var2570)) ; Statement: i10 = $i3 + $i2 
(define-const var3705 Int (* 31 var3902)) ; Statement: $i5 = 31 * i10 
(define-const var2442 var1283 (queryType/1960285582 var425)) ; Statement: $r2 = r0.<org.apache.lucene.document.RangeFieldQuery: org.apache.lucene.document.RangeFieldQuery$QueryType queryType> 
(assert true)
(define-const var3334 Int (hashCode/385986394 (cast-from-var1283-to-var3473 var2442))) ; Statement: $i4 = virtualinvoke $r2.<org.apache.lucene.document.RangeFieldQuery$QueryType: int hashCode()>() 
(define-const var2058 Int (+ var3705 var3334)) ; Statement: i11 = $i5 + $i4 
(define-const var444 Int (* 31 var2058)) ; Statement: $i7 = 31 * i11 
(define-const var3401 (Array Int Int) (ranges/1960285582 var425)) ; Statement: $r3 = r0.<org.apache.lucene.document.RangeFieldQuery: byte[] ranges> 
(define-const var3499 Int (var871_hashCode/-63010241 var3401)) ; Statement: $i6 = staticinvoke <java.util.Arrays: int hashCode(byte[])>($r3) 
(define-const var419 Int (+ var444 var3499)) ; Statement: i12 = $i7 + $i6 
 ; Statement: return i12 
(check-sat)
(get-model)
(get-unsat-core)
; {classHash/2131464770=([org.apache.lucene.search.Query], int), cast-from-var1746-to-var1136=([org.apache.lucene.document.RangeFieldQuery], org.apache.lucene.search.Query), field/1960285582=([org.apache.lucene.document.RangeFieldQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int), numDims/1960285582=([org.apache.lucene.document.RangeFieldQuery], int), queryType/1960285582=([org.apache.lucene.document.RangeFieldQuery], org.apache.lucene.document.RangeFieldQuery$QueryType), hashCode/385986394=([java.lang.Enum], int), cast-from-var1283-to-var3473=([org.apache.lucene.document.RangeFieldQuery$QueryType], java.lang.Enum), ranges/1960285582=([org.apache.lucene.document.RangeFieldQuery], byte[]), var871_hashCode/-63010241=([byte[]], int)}
; {var1746=org.apache.lucene.document.RangeFieldQuery, var425=r0, var1136=org.apache.lucene.search.Query, var3283=i8, var3656=$i1, var3736=$r1, var2460=$i0, var2146=i9, var47=$i3, var2570=$i2, var3902=i10, var3705=$i5, var1283=org.apache.lucene.document.RangeFieldQuery$QueryType, var2442=$r2, var3473=java.lang.Enum, var3334=$i4, var2058=i11, var444=$i7, var3401=$r3, var871=java.util.Arrays, var3499=$i6, var419=i12}
; {org.apache.lucene.document.RangeFieldQuery=var1746, r0=var425, org.apache.lucene.search.Query=var1136, i8=var3283, $i1=var3656, $r1=var3736, $i0=var2460, i9=var2146, $i3=var47, $i2=var2570, i10=var3902, $i5=var3705, org.apache.lucene.document.RangeFieldQuery$QueryType=var1283, $r2=var2442, java.lang.Enum=var3473, $i4=var3334, i11=var2058, $i7=var444, $r3=var3401, java.util.Arrays=var871, $i6=var3499, i12=var419}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.document.RangeFieldQuery;	i8 = virtualinvoke r0.<org.apache.lucene.document.RangeFieldQuery: int classHash()>();	$i1 = 31 * i8;	$r1 = r0.<org.apache.lucene.document.RangeFieldQuery: java.lang.String field>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i9 = $i1 + $i0;	$i3 = 31 * i9;	$i2 = r0.<org.apache.lucene.document.RangeFieldQuery: int numDims>;	i10 = $i3 + $i2;	$i5 = 31 * i10;	$r2 = r0.<org.apache.lucene.document.RangeFieldQuery: org.apache.lucene.document.RangeFieldQuery$QueryType queryType>;	$i4 = virtualinvoke $r2.<org.apache.lucene.document.RangeFieldQuery$QueryType: int hashCode()>();	i11 = $i5 + $i4;	$i7 = 31 * i11;	$r3 = r0.<org.apache.lucene.document.RangeFieldQuery: byte[] ranges>;	$i6 = staticinvoke <java.util.Arrays: int hashCode(byte[])>($r3);	i12 = $i7 + $i6;	return i12
;block_num 1