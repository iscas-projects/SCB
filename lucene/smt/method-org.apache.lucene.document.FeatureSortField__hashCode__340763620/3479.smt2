(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2761 0)
(declare-sort var11 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/1814600707 (var11) Int)
(declare-fun cast-from-var2761-to-var11 (var2761) var11)
(declare-fun featureName/-924212349 (var2761) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2761 var2761)
(declare-const var3083 var2761) ; Statement: r0 := @this: org.apache.lucene.document.FeatureSortField 
(assert (not (= var3083 null-var2761)))
(assert true)
(define-const var1530 Int (hashCode/1814600707 (cast-from-var2761-to-var11 var3083))) ; Statement: i2 = specialinvoke r0.<org.apache.lucene.search.SortField: int hashCode()>() 
(define-const var1934 Int (* 31 var1530)) ; Statement: $i1 = 31 * i2 
(define-const var2298 String (featureName/-924212349 var3083)) ; Statement: $r1 = r0.<org.apache.lucene.document.FeatureSortField: java.lang.String featureName> 
(assert true)
(define-const var2844 Int (hashCode/-467973558 var2298)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var479 Int (+ var1934 var2844)) ; Statement: i3 = $i1 + $i0 
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/1814600707=([org.apache.lucene.search.SortField], int), cast-from-var2761-to-var11=([org.apache.lucene.document.FeatureSortField], org.apache.lucene.search.SortField), featureName/-924212349=([org.apache.lucene.document.FeatureSortField], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2761=org.apache.lucene.document.FeatureSortField, var3083=r0, var11=org.apache.lucene.search.SortField, var1530=i2, var1934=$i1, var2298=$r1, var2844=$i0, var479=i3}
; {org.apache.lucene.document.FeatureSortField=var2761, r0=var3083, org.apache.lucene.search.SortField=var11, i2=var1530, $i1=var1934, $r1=var2298, $i0=var2844, i3=var479}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.document.FeatureSortField;	i2 = specialinvoke r0.<org.apache.lucene.search.SortField: int hashCode()>();	$i1 = 31 * i2;	$r1 = r0.<org.apache.lucene.document.FeatureSortField: java.lang.String featureName>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i3 = $i1 + $i0;	return i3
;block_num 1