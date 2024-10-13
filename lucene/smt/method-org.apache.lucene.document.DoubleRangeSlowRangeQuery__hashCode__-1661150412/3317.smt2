(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1038 0)
(declare-sort var772 0)
(declare-sort var1866 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classHash/2131464770 (var772) Int)
(declare-fun cast-from-var1038-to-var772 (var1038) var772)
(declare-fun field/-1381320133 (var1038) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun min/-1381320133 (var1038) (Array Int Float64))
(declare-fun var1866_hashCode/-345747320 ((Array Int Float64)) Int)
(declare-fun max/-1381320133 (var1038) (Array Int Float64))
(declare-const null-var1038 var1038)
(declare-const var1661 var1038) ; Statement: r0 := @this: org.apache.lucene.document.DoubleRangeSlowRangeQuery 
(assert (not (= var1661 null-var1038)))
(assert true)
(define-const var1140 Int (classHash/2131464770 (cast-from-var1038-to-var772 var1661))) ; Statement: i6 = virtualinvoke r0.<org.apache.lucene.document.DoubleRangeSlowRangeQuery: int classHash()>() 
(define-const var3922 Int (* 31 var1140)) ; Statement: $i1 = 31 * i6 
(define-const var2299 String (field/-1381320133 var1661)) ; Statement: $r1 = r0.<org.apache.lucene.document.DoubleRangeSlowRangeQuery: java.lang.String field> 
(assert true)
(define-const var2447 Int (hashCode/-467973558 var2299)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var2339 Int (+ var3922 var2447)) ; Statement: i7 = $i1 + $i0 
(define-const var1881 Int (* 31 var2339)) ; Statement: $i3 = 31 * i7 
(define-const var3637 (Array Int Float64) (min/-1381320133 var1661)) ; Statement: $r2 = r0.<org.apache.lucene.document.DoubleRangeSlowRangeQuery: double[] min> 
(define-const var2385 Int (var1866_hashCode/-345747320 var3637)) ; Statement: $i2 = staticinvoke <java.util.Arrays: int hashCode(double[])>($r2) 
(define-const var2202 Int (+ var1881 var2385)) ; Statement: i8 = $i3 + $i2 
(define-const var1115 Int (* 31 var2202)) ; Statement: $i5 = 31 * i8 
(define-const var305 (Array Int Float64) (max/-1381320133 var1661)) ; Statement: $r3 = r0.<org.apache.lucene.document.DoubleRangeSlowRangeQuery: double[] max> 
(define-const var2983 Int (var1866_hashCode/-345747320 var305)) ; Statement: $i4 = staticinvoke <java.util.Arrays: int hashCode(double[])>($r3) 
(define-const var269 Int (+ var1115 var2983)) ; Statement: i9 = $i5 + $i4 
 ; Statement: return i9 
(check-sat)
(get-model)
(get-unsat-core)
; {classHash/2131464770=([org.apache.lucene.search.Query], int), cast-from-var1038-to-var772=([org.apache.lucene.document.DoubleRangeSlowRangeQuery], org.apache.lucene.search.Query), field/-1381320133=([org.apache.lucene.document.DoubleRangeSlowRangeQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int), min/-1381320133=([org.apache.lucene.document.DoubleRangeSlowRangeQuery], double[]), var1866_hashCode/-345747320=([double[]], int), max/-1381320133=([org.apache.lucene.document.DoubleRangeSlowRangeQuery], double[])}
; {var1038=org.apache.lucene.document.DoubleRangeSlowRangeQuery, var1661=r0, var772=org.apache.lucene.search.Query, var1140=i6, var3922=$i1, var2299=$r1, var2447=$i0, var2339=i7, var1881=$i3, var3637=$r2, var1866=java.util.Arrays, var2385=$i2, var2202=i8, var1115=$i5, var305=$r3, var2983=$i4, var269=i9}
; {org.apache.lucene.document.DoubleRangeSlowRangeQuery=var1038, r0=var1661, org.apache.lucene.search.Query=var772, i6=var1140, $i1=var3922, $r1=var2299, $i0=var2447, i7=var2339, $i3=var1881, $r2=var3637, java.util.Arrays=var1866, $i2=var2385, i8=var2202, $i5=var1115, $r3=var305, $i4=var2983, i9=var269}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.document.DoubleRangeSlowRangeQuery;	i6 = virtualinvoke r0.<org.apache.lucene.document.DoubleRangeSlowRangeQuery: int classHash()>();	$i1 = 31 * i6;	$r1 = r0.<org.apache.lucene.document.DoubleRangeSlowRangeQuery: java.lang.String field>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i7 = $i1 + $i0;	$i3 = 31 * i7;	$r2 = r0.<org.apache.lucene.document.DoubleRangeSlowRangeQuery: double[] min>;	$i2 = staticinvoke <java.util.Arrays: int hashCode(double[])>($r2);	i8 = $i3 + $i2;	$i5 = 31 * i8;	$r3 = r0.<org.apache.lucene.document.DoubleRangeSlowRangeQuery: double[] max>;	$i4 = staticinvoke <java.util.Arrays: int hashCode(double[])>($r3);	i9 = $i5 + $i4;	return i9
;block_num 1