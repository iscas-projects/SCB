(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var819 0)
(declare-sort var1764 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classHash/2131464770 (var1764) Int)
(declare-fun cast-from-var819-to-var1764 (var819) var1764)
(declare-fun field/627397090 (var819) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var819 var819)
(declare-const var3509 var819) ; Statement: r0 := @this: org.apache.lucene.search.FieldExistsQuery 
(assert (not (= var3509 null-var819)))
(assert true)
(define-const var1800 Int (classHash/2131464770 (cast-from-var819-to-var1764 var3509))) ; Statement: i2 = virtualinvoke r0.<org.apache.lucene.search.FieldExistsQuery: int classHash()>() 
(define-const var1446 Int (* 31 var1800)) ; Statement: $i1 = 31 * i2 
(define-const var1435 String (field/627397090 var3509)) ; Statement: $r1 = r0.<org.apache.lucene.search.FieldExistsQuery: java.lang.String field> 
(assert true)
(define-const var3835 Int (hashCode/-467973558 var1435)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3875 Int (+ var1446 var3835)) ; Statement: i3 = $i1 + $i0 
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {classHash/2131464770=([org.apache.lucene.search.Query], int), cast-from-var819-to-var1764=([org.apache.lucene.search.FieldExistsQuery], org.apache.lucene.search.Query), field/627397090=([org.apache.lucene.search.FieldExistsQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var819=org.apache.lucene.search.FieldExistsQuery, var3509=r0, var1764=org.apache.lucene.search.Query, var1800=i2, var1446=$i1, var1435=$r1, var3835=$i0, var3875=i3}
; {org.apache.lucene.search.FieldExistsQuery=var819, r0=var3509, org.apache.lucene.search.Query=var1764, i2=var1800, $i1=var1446, $r1=var1435, $i0=var3835, i3=var3875}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.search.FieldExistsQuery;	i2 = virtualinvoke r0.<org.apache.lucene.search.FieldExistsQuery: int classHash()>();	$i1 = 31 * i2;	$r1 = r0.<org.apache.lucene.search.FieldExistsQuery: java.lang.String field>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i3 = $i1 + $i0;	return i3
;block_num 1