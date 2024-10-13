(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2338 0)
(declare-sort var1316 0)
(declare-sort var1225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classHash/2131464770 (var1316) Int)
(declare-fun cast-from-var2338-to-var1316 (var2338) var1316)
(declare-fun field/-349275158 (var2338) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun min/-349275158 (var2338) (Array Int Float32))
(declare-fun var1225_hashCode/-2008888493 ((Array Int Float32)) Int)
(declare-fun max/-349275158 (var2338) (Array Int Float32))
(declare-const null-var2338 var2338)
(declare-const var2326 var2338) ; Statement: r0 := @this: org.apache.lucene.document.FloatRangeSlowRangeQuery 
(assert (not (= var2326 null-var2338)))
(assert true)
(define-const var1520 Int (classHash/2131464770 (cast-from-var2338-to-var1316 var2326))) ; Statement: i6 = virtualinvoke r0.<org.apache.lucene.document.FloatRangeSlowRangeQuery: int classHash()>() 
(define-const var2588 Int (* 31 var1520)) ; Statement: $i1 = 31 * i6 
(define-const var3324 String (field/-349275158 var2326)) ; Statement: $r1 = r0.<org.apache.lucene.document.FloatRangeSlowRangeQuery: java.lang.String field> 
(assert true)
(define-const var1029 Int (hashCode/-467973558 var3324)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1637 Int (+ var2588 var1029)) ; Statement: i7 = $i1 + $i0 
(define-const var2402 Int (* 31 var1637)) ; Statement: $i3 = 31 * i7 
(define-const var3349 (Array Int Float32) (min/-349275158 var2326)) ; Statement: $r2 = r0.<org.apache.lucene.document.FloatRangeSlowRangeQuery: float[] min> 
(define-const var42 Int (var1225_hashCode/-2008888493 var3349)) ; Statement: $i2 = staticinvoke <java.util.Arrays: int hashCode(float[])>($r2) 
(define-const var1757 Int (+ var2402 var42)) ; Statement: i8 = $i3 + $i2 
(define-const var394 Int (* 31 var1757)) ; Statement: $i5 = 31 * i8 
(define-const var2618 (Array Int Float32) (max/-349275158 var2326)) ; Statement: $r3 = r0.<org.apache.lucene.document.FloatRangeSlowRangeQuery: float[] max> 
(define-const var1960 Int (var1225_hashCode/-2008888493 var2618)) ; Statement: $i4 = staticinvoke <java.util.Arrays: int hashCode(float[])>($r3) 
(define-const var3609 Int (+ var394 var1960)) ; Statement: i9 = $i5 + $i4 
 ; Statement: return i9 
(check-sat)
(get-model)
(get-unsat-core)
; {classHash/2131464770=([org.apache.lucene.search.Query], int), cast-from-var2338-to-var1316=([org.apache.lucene.document.FloatRangeSlowRangeQuery], org.apache.lucene.search.Query), field/-349275158=([org.apache.lucene.document.FloatRangeSlowRangeQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int), min/-349275158=([org.apache.lucene.document.FloatRangeSlowRangeQuery], float[]), var1225_hashCode/-2008888493=([float[]], int), max/-349275158=([org.apache.lucene.document.FloatRangeSlowRangeQuery], float[])}
; {var2338=org.apache.lucene.document.FloatRangeSlowRangeQuery, var2326=r0, var1316=org.apache.lucene.search.Query, var1520=i6, var2588=$i1, var3324=$r1, var1029=$i0, var1637=i7, var2402=$i3, var3349=$r2, var1225=java.util.Arrays, var42=$i2, var1757=i8, var394=$i5, var2618=$r3, var1960=$i4, var3609=i9}
; {org.apache.lucene.document.FloatRangeSlowRangeQuery=var2338, r0=var2326, org.apache.lucene.search.Query=var1316, i6=var1520, $i1=var2588, $r1=var3324, $i0=var1029, i7=var1637, $i3=var2402, $r2=var3349, java.util.Arrays=var1225, $i2=var42, i8=var1757, $i5=var394, $r3=var2618, $i4=var1960, i9=var3609}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.document.FloatRangeSlowRangeQuery;	i6 = virtualinvoke r0.<org.apache.lucene.document.FloatRangeSlowRangeQuery: int classHash()>();	$i1 = 31 * i6;	$r1 = r0.<org.apache.lucene.document.FloatRangeSlowRangeQuery: java.lang.String field>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i7 = $i1 + $i0;	$i3 = 31 * i7;	$r2 = r0.<org.apache.lucene.document.FloatRangeSlowRangeQuery: float[] min>;	$i2 = staticinvoke <java.util.Arrays: int hashCode(float[])>($r2);	i8 = $i3 + $i2;	$i5 = 31 * i8;	$r3 = r0.<org.apache.lucene.document.FloatRangeSlowRangeQuery: float[] max>;	$i4 = staticinvoke <java.util.Arrays: int hashCode(float[])>($r3);	i9 = $i5 + $i4;	return i9
;block_num 1