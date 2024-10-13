(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3113 0)
(declare-sort var3645 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classHash/2131464770 (var3645) Int)
(declare-fun cast-from-var3113-to-var3645 (var3113) var3645)
(declare-fun field/828881907 (var3113) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3113 var3113)
(declare-const var1489 var3113) ; Statement: r0 := @this: org.apache.lucene.search.MultiTermQuery 
(assert (not (= var1489 null-var3113)))
(assert true)
(define-const var2199 Int (classHash/2131464770 (cast-from-var3113-to-var3645 var1489))) ; Statement: i2 = virtualinvoke r0.<org.apache.lucene.search.MultiTermQuery: int classHash()>() 
(define-const var2474 Int (* 31 var2199)) ; Statement: $i1 = 31 * i2 
(define-const var2963 String (field/828881907 var1489)) ; Statement: $r1 = r0.<org.apache.lucene.search.MultiTermQuery: java.lang.String field> 
(assert true)
(define-const var328 Int (hashCode/-467973558 var2963)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1834 Int (+ var2474 var328)) ; Statement: i3 = $i1 + $i0 
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {classHash/2131464770=([org.apache.lucene.search.Query], int), cast-from-var3113-to-var3645=([org.apache.lucene.search.MultiTermQuery], org.apache.lucene.search.Query), field/828881907=([org.apache.lucene.search.MultiTermQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3113=org.apache.lucene.search.MultiTermQuery, var1489=r0, var3645=org.apache.lucene.search.Query, var2199=i2, var2474=$i1, var2963=$r1, var328=$i0, var1834=i3}
; {org.apache.lucene.search.MultiTermQuery=var3113, r0=var1489, org.apache.lucene.search.Query=var3645, i2=var2199, $i1=var2474, $r1=var2963, $i0=var328, i3=var1834}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.search.MultiTermQuery;	i2 = virtualinvoke r0.<org.apache.lucene.search.MultiTermQuery: int classHash()>();	$i1 = 31 * i2;	$r1 = r0.<org.apache.lucene.search.MultiTermQuery: java.lang.String field>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i3 = $i1 + $i0;	return i3
;block_num 1