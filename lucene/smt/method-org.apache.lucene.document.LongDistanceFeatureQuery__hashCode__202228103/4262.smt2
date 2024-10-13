(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3671 0)
(declare-sort var971 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classHash/2131464770 (var971) Int)
(declare-fun cast-from-var3671-to-var971 (var3671) var971)
(declare-fun field/1804198784 (var3671) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun origin/1804198784 (var3671) Int)
(declare-fun Int_hashCode/899106235 (Int) Int)
(declare-fun pivotDistance/1804198784 (var3671) Int)
(declare-const null-var3671 var3671)
(declare-const var2545 var3671) ; Statement: r0 := @this: org.apache.lucene.document.LongDistanceFeatureQuery 
(assert (not (= var2545 null-var3671)))
(assert true)
(define-const var2014 Int (classHash/2131464770 (cast-from-var3671-to-var971 var2545))) ; Statement: i8 = virtualinvoke r0.<org.apache.lucene.document.LongDistanceFeatureQuery: int classHash()>() 
(define-const var1734 Int (* 31 var2014)) ; Statement: $i1 = 31 * i8 
(define-const var1387 String (field/1804198784 var2545)) ; Statement: $r1 = r0.<org.apache.lucene.document.LongDistanceFeatureQuery: java.lang.String field> 
(assert true)
(define-const var1877 Int (hashCode/-467973558 var1387)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1845 Int (+ var1734 var1877)) ; Statement: i9 = $i1 + $i0 
(define-const var434 Int (* 31 var1845)) ; Statement: $i4 = 31 * i9 
(define-const var1767 Int (origin/1804198784 var2545)) ; Statement: $l2 = r0.<org.apache.lucene.document.LongDistanceFeatureQuery: long origin> 
(define-const var801 Int (Int_hashCode/899106235 var1767)) ; Statement: $i3 = staticinvoke <java.lang.Long: int hashCode(long)>($l2) 
(define-const var1559 Int (+ var434 var801)) ; Statement: i10 = $i4 + $i3 
(define-const var3144 Int (* 31 var1559)) ; Statement: $i7 = 31 * i10 
(define-const var811 Int (pivotDistance/1804198784 var2545)) ; Statement: $l5 = r0.<org.apache.lucene.document.LongDistanceFeatureQuery: long pivotDistance> 
(define-const var1445 Int (Int_hashCode/899106235 var811)) ; Statement: $i6 = staticinvoke <java.lang.Long: int hashCode(long)>($l5) 
(define-const var1307 Int (+ var3144 var1445)) ; Statement: i11 = $i7 + $i6 
 ; Statement: return i11 
(check-sat)
(get-model)
(get-unsat-core)
; {classHash/2131464770=([org.apache.lucene.search.Query], int), cast-from-var3671-to-var971=([org.apache.lucene.document.LongDistanceFeatureQuery], org.apache.lucene.search.Query), field/1804198784=([org.apache.lucene.document.LongDistanceFeatureQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int), origin/1804198784=([org.apache.lucene.document.LongDistanceFeatureQuery], long), Int_hashCode/899106235=([long], int), pivotDistance/1804198784=([org.apache.lucene.document.LongDistanceFeatureQuery], long)}
; {var3671=org.apache.lucene.document.LongDistanceFeatureQuery, var2545=r0, var971=org.apache.lucene.search.Query, var2014=i8, var1734=$i1, var1387=$r1, var1877=$i0, var1845=i9, var434=$i4, var1767=$l2, var801=$i3, var1559=i10, var3144=$i7, var811=$l5, var1445=$i6, var1307=i11}
; {org.apache.lucene.document.LongDistanceFeatureQuery=var3671, r0=var2545, org.apache.lucene.search.Query=var971, i8=var2014, $i1=var1734, $r1=var1387, $i0=var1877, i9=var1845, $i4=var434, $l2=var1767, $i3=var801, i10=var1559, $i7=var3144, $l5=var811, $i6=var1445, i11=var1307}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.document.LongDistanceFeatureQuery;	i8 = virtualinvoke r0.<org.apache.lucene.document.LongDistanceFeatureQuery: int classHash()>();	$i1 = 31 * i8;	$r1 = r0.<org.apache.lucene.document.LongDistanceFeatureQuery: java.lang.String field>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i9 = $i1 + $i0;	$i4 = 31 * i9;	$l2 = r0.<org.apache.lucene.document.LongDistanceFeatureQuery: long origin>;	$i3 = staticinvoke <java.lang.Long: int hashCode(long)>($l2);	i10 = $i4 + $i3;	$i7 = 31 * i10;	$l5 = r0.<org.apache.lucene.document.LongDistanceFeatureQuery: long pivotDistance>;	$i6 = staticinvoke <java.lang.Long: int hashCode(long)>($l5);	i11 = $i7 + $i6;	return i11
;block_num 1