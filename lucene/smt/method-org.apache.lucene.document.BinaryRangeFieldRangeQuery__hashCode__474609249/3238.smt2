(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1047 0)
(declare-sort var3924 0)
(declare-sort var833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classHash/2131464770 (var3924) Int)
(declare-fun cast-from-var1047-to-var3924 (var1047) var3924)
(declare-fun field/94484582 (var1047) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun queryPackedValue/94484582 (var1047) (Array Int Int))
(declare-fun var833_hashCode/-63010241 ((Array Int Int)) Int)
(declare-const null-var1047 var1047)
(declare-const var2523 var1047) ; Statement: r0 := @this: org.apache.lucene.document.BinaryRangeFieldRangeQuery 
(assert (not (= var2523 null-var1047)))
(assert true)
(define-const var3264 Int (classHash/2131464770 (cast-from-var1047-to-var3924 var2523))) ; Statement: i4 = virtualinvoke r0.<org.apache.lucene.document.BinaryRangeFieldRangeQuery: int classHash()>() 
(define-const var2747 Int (* 31 var3264)) ; Statement: $i1 = 31 * i4 
(define-const var3864 String (field/94484582 var2523)) ; Statement: $r1 = r0.<org.apache.lucene.document.BinaryRangeFieldRangeQuery: java.lang.String field> 
(assert true)
(define-const var2960 Int (hashCode/-467973558 var3864)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var767 Int (+ var2747 var2960)) ; Statement: i5 = $i1 + $i0 
(define-const var686 Int (* 31 var767)) ; Statement: $i3 = 31 * i5 
(define-const var1089 (Array Int Int) (queryPackedValue/94484582 var2523)) ; Statement: $r2 = r0.<org.apache.lucene.document.BinaryRangeFieldRangeQuery: byte[] queryPackedValue> 
(define-const var2857 Int (var833_hashCode/-63010241 var1089)) ; Statement: $i2 = staticinvoke <java.util.Arrays: int hashCode(byte[])>($r2) 
(define-const var1731 Int (+ var686 var2857)) ; Statement: i6 = $i3 + $i2 
 ; Statement: return i6 
(check-sat)
(get-model)
(get-unsat-core)
; {classHash/2131464770=([org.apache.lucene.search.Query], int), cast-from-var1047-to-var3924=([org.apache.lucene.document.BinaryRangeFieldRangeQuery], org.apache.lucene.search.Query), field/94484582=([org.apache.lucene.document.BinaryRangeFieldRangeQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int), queryPackedValue/94484582=([org.apache.lucene.document.BinaryRangeFieldRangeQuery], byte[]), var833_hashCode/-63010241=([byte[]], int)}
; {var1047=org.apache.lucene.document.BinaryRangeFieldRangeQuery, var2523=r0, var3924=org.apache.lucene.search.Query, var3264=i4, var2747=$i1, var3864=$r1, var2960=$i0, var767=i5, var686=$i3, var1089=$r2, var833=java.util.Arrays, var2857=$i2, var1731=i6}
; {org.apache.lucene.document.BinaryRangeFieldRangeQuery=var1047, r0=var2523, org.apache.lucene.search.Query=var3924, i4=var3264, $i1=var2747, $r1=var3864, $i0=var2960, i5=var767, $i3=var686, $r2=var1089, java.util.Arrays=var833, $i2=var2857, i6=var1731}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.document.BinaryRangeFieldRangeQuery;	i4 = virtualinvoke r0.<org.apache.lucene.document.BinaryRangeFieldRangeQuery: int classHash()>();	$i1 = 31 * i4;	$r1 = r0.<org.apache.lucene.document.BinaryRangeFieldRangeQuery: java.lang.String field>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i5 = $i1 + $i0;	$i3 = 31 * i5;	$r2 = r0.<org.apache.lucene.document.BinaryRangeFieldRangeQuery: byte[] queryPackedValue>;	$i2 = staticinvoke <java.util.Arrays: int hashCode(byte[])>($r2);	i6 = $i3 + $i2;	return i6
;block_num 1