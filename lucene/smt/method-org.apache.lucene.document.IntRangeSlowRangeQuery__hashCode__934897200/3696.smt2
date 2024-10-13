(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1990 0)
(declare-sort var3440 0)
(declare-sort var3706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classHash/2131464770 (var3440) Int)
(declare-fun cast-from-var1990-to-var3440 (var1990) var3440)
(declare-fun field/-1521151305 (var1990) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun min/-1521151305 (var1990) (Array Int Int))
(declare-fun var3706_hashCode/-1170639002 ((Array Int Int)) Int)
(declare-fun max/-1521151305 (var1990) (Array Int Int))
(declare-const null-var1990 var1990)
(declare-const var1787 var1990) ; Statement: r0 := @this: org.apache.lucene.document.IntRangeSlowRangeQuery 
(assert (not (= var1787 null-var1990)))
(assert true)
(define-const var3050 Int (classHash/2131464770 (cast-from-var1990-to-var3440 var1787))) ; Statement: i6 = virtualinvoke r0.<org.apache.lucene.document.IntRangeSlowRangeQuery: int classHash()>() 
(define-const var3539 Int (* 31 var3050)) ; Statement: $i1 = 31 * i6 
(define-const var467 String (field/-1521151305 var1787)) ; Statement: $r1 = r0.<org.apache.lucene.document.IntRangeSlowRangeQuery: java.lang.String field> 
(assert true)
(define-const var2903 Int (hashCode/-467973558 var467)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var96 Int (+ var3539 var2903)) ; Statement: i7 = $i1 + $i0 
(define-const var3969 Int (* 31 var96)) ; Statement: $i3 = 31 * i7 
(define-const var2001 (Array Int Int) (min/-1521151305 var1787)) ; Statement: $r2 = r0.<org.apache.lucene.document.IntRangeSlowRangeQuery: int[] min> 
(define-const var1937 Int (var3706_hashCode/-1170639002 var2001)) ; Statement: $i2 = staticinvoke <java.util.Arrays: int hashCode(int[])>($r2) 
(define-const var3494 Int (+ var3969 var1937)) ; Statement: i8 = $i3 + $i2 
(define-const var1759 Int (* 31 var3494)) ; Statement: $i5 = 31 * i8 
(define-const var421 (Array Int Int) (max/-1521151305 var1787)) ; Statement: $r3 = r0.<org.apache.lucene.document.IntRangeSlowRangeQuery: int[] max> 
(define-const var3220 Int (var3706_hashCode/-1170639002 var421)) ; Statement: $i4 = staticinvoke <java.util.Arrays: int hashCode(int[])>($r3) 
(define-const var2884 Int (+ var1759 var3220)) ; Statement: i9 = $i5 + $i4 
 ; Statement: return i9 
(check-sat)
(get-model)
(get-unsat-core)
; {classHash/2131464770=([org.apache.lucene.search.Query], int), cast-from-var1990-to-var3440=([org.apache.lucene.document.IntRangeSlowRangeQuery], org.apache.lucene.search.Query), field/-1521151305=([org.apache.lucene.document.IntRangeSlowRangeQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int), min/-1521151305=([org.apache.lucene.document.IntRangeSlowRangeQuery], int[]), var3706_hashCode/-1170639002=([int[]], int), max/-1521151305=([org.apache.lucene.document.IntRangeSlowRangeQuery], int[])}
; {var1990=org.apache.lucene.document.IntRangeSlowRangeQuery, var1787=r0, var3440=org.apache.lucene.search.Query, var3050=i6, var3539=$i1, var467=$r1, var2903=$i0, var96=i7, var3969=$i3, var2001=$r2, var3706=java.util.Arrays, var1937=$i2, var3494=i8, var1759=$i5, var421=$r3, var3220=$i4, var2884=i9}
; {org.apache.lucene.document.IntRangeSlowRangeQuery=var1990, r0=var1787, org.apache.lucene.search.Query=var3440, i6=var3050, $i1=var3539, $r1=var467, $i0=var2903, i7=var96, $i3=var3969, $r2=var2001, java.util.Arrays=var3706, $i2=var1937, i8=var3494, $i5=var1759, $r3=var421, $i4=var3220, i9=var2884}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.document.IntRangeSlowRangeQuery;	i6 = virtualinvoke r0.<org.apache.lucene.document.IntRangeSlowRangeQuery: int classHash()>();	$i1 = 31 * i6;	$r1 = r0.<org.apache.lucene.document.IntRangeSlowRangeQuery: java.lang.String field>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i7 = $i1 + $i0;	$i3 = 31 * i7;	$r2 = r0.<org.apache.lucene.document.IntRangeSlowRangeQuery: int[] min>;	$i2 = staticinvoke <java.util.Arrays: int hashCode(int[])>($r2);	i8 = $i3 + $i2;	$i5 = 31 * i8;	$r3 = r0.<org.apache.lucene.document.IntRangeSlowRangeQuery: int[] max>;	$i4 = staticinvoke <java.util.Arrays: int hashCode(int[])>($r3);	i9 = $i5 + $i4;	return i9
;block_num 1