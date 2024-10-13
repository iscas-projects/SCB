(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3018 0)
(declare-sort var70 0)
(declare-sort var2371 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classHash/2131464770 (var70) Int)
(declare-fun cast-from-var3018-to-var70 (var3018) var70)
(declare-fun field/1452521072 (var3018) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun min/1452521072 (var3018) (Array Int Int))
(declare-fun var2371_hashCode/-269806157 ((Array Int Int)) Int)
(declare-fun max/1452521072 (var3018) (Array Int Int))
(declare-const null-var3018 var3018)
(declare-const var2225 var3018) ; Statement: r0 := @this: org.apache.lucene.document.LongRangeSlowRangeQuery 
(assert (not (= var2225 null-var3018)))
(assert true)
(define-const var3136 Int (classHash/2131464770 (cast-from-var3018-to-var70 var2225))) ; Statement: i6 = virtualinvoke r0.<org.apache.lucene.document.LongRangeSlowRangeQuery: int classHash()>() 
(define-const var2807 Int (* 31 var3136)) ; Statement: $i1 = 31 * i6 
(define-const var1931 String (field/1452521072 var2225)) ; Statement: $r1 = r0.<org.apache.lucene.document.LongRangeSlowRangeQuery: java.lang.String field> 
(assert true)
(define-const var3020 Int (hashCode/-467973558 var1931)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3681 Int (+ var2807 var3020)) ; Statement: i7 = $i1 + $i0 
(define-const var2791 Int (* 31 var3681)) ; Statement: $i3 = 31 * i7 
(define-const var3453 (Array Int Int) (min/1452521072 var2225)) ; Statement: $r2 = r0.<org.apache.lucene.document.LongRangeSlowRangeQuery: long[] min> 
(define-const var3544 Int (var2371_hashCode/-269806157 var3453)) ; Statement: $i2 = staticinvoke <java.util.Arrays: int hashCode(long[])>($r2) 
(define-const var3455 Int (+ var2791 var3544)) ; Statement: i8 = $i3 + $i2 
(define-const var1430 Int (* 31 var3455)) ; Statement: $i5 = 31 * i8 
(define-const var399 (Array Int Int) (max/1452521072 var2225)) ; Statement: $r3 = r0.<org.apache.lucene.document.LongRangeSlowRangeQuery: long[] max> 
(define-const var225 Int (var2371_hashCode/-269806157 var399)) ; Statement: $i4 = staticinvoke <java.util.Arrays: int hashCode(long[])>($r3) 
(define-const var1628 Int (+ var1430 var225)) ; Statement: i9 = $i5 + $i4 
 ; Statement: return i9 
(check-sat)
(get-model)
(get-unsat-core)
; {classHash/2131464770=([org.apache.lucene.search.Query], int), cast-from-var3018-to-var70=([org.apache.lucene.document.LongRangeSlowRangeQuery], org.apache.lucene.search.Query), field/1452521072=([org.apache.lucene.document.LongRangeSlowRangeQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int), min/1452521072=([org.apache.lucene.document.LongRangeSlowRangeQuery], long[]), var2371_hashCode/-269806157=([long[]], int), max/1452521072=([org.apache.lucene.document.LongRangeSlowRangeQuery], long[])}
; {var3018=org.apache.lucene.document.LongRangeSlowRangeQuery, var2225=r0, var70=org.apache.lucene.search.Query, var3136=i6, var2807=$i1, var1931=$r1, var3020=$i0, var3681=i7, var2791=$i3, var3453=$r2, var2371=java.util.Arrays, var3544=$i2, var3455=i8, var1430=$i5, var399=$r3, var225=$i4, var1628=i9}
; {org.apache.lucene.document.LongRangeSlowRangeQuery=var3018, r0=var2225, org.apache.lucene.search.Query=var70, i6=var3136, $i1=var2807, $r1=var1931, $i0=var3020, i7=var3681, $i3=var2791, $r2=var3453, java.util.Arrays=var2371, $i2=var3544, i8=var3455, $i5=var1430, $r3=var399, $i4=var225, i9=var1628}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.document.LongRangeSlowRangeQuery;	i6 = virtualinvoke r0.<org.apache.lucene.document.LongRangeSlowRangeQuery: int classHash()>();	$i1 = 31 * i6;	$r1 = r0.<org.apache.lucene.document.LongRangeSlowRangeQuery: java.lang.String field>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i7 = $i1 + $i0;	$i3 = 31 * i7;	$r2 = r0.<org.apache.lucene.document.LongRangeSlowRangeQuery: long[] min>;	$i2 = staticinvoke <java.util.Arrays: int hashCode(long[])>($r2);	i8 = $i3 + $i2;	$i5 = 31 * i8;	$r3 = r0.<org.apache.lucene.document.LongRangeSlowRangeQuery: long[] max>;	$i4 = staticinvoke <java.util.Arrays: int hashCode(long[])>($r3);	i9 = $i5 + $i4;	return i9
;block_num 1