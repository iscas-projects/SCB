(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1407 0)
(declare-sort var2642 0)
(declare-sort var3162 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dir/1990760591 (var1407) var2642)
(declare-fun hashCode/1739917532 (var3162) Int)
(declare-fun cast-from-var2642-to-var3162 (var2642) var3162)
(declare-fun name/1990760591 (var1407) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1407 var1407)
(declare-const var1060 var1407) ; Statement: r0 := @this: org.apache.lucene.index.SegmentInfo 
(assert (not (= var1060 null-var1407)))
(define-const var471 var2642 (dir/1990760591 var1060)) ; Statement: $r1 = r0.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.store.Directory dir> 
(assert true)
(define-const var1180 Int (hashCode/1739917532 (cast-from-var2642-to-var3162 var471))) ; Statement: $i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var3061 String (name/1990760591 var1060)) ; Statement: $r2 = r0.<org.apache.lucene.index.SegmentInfo: java.lang.String name> 
(assert true)
(define-const var2593 Int (hashCode/-467973558 var3061)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var2135 Int (+ var1180 var2593)) ; Statement: $i2 = $i1 + $i0 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {dir/1990760591=([org.apache.lucene.index.SegmentInfo], org.apache.lucene.store.Directory), hashCode/1739917532=([java.lang.Object], int), cast-from-var2642-to-var3162=([org.apache.lucene.store.Directory], java.lang.Object), name/1990760591=([org.apache.lucene.index.SegmentInfo], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1407=org.apache.lucene.index.SegmentInfo, var1060=r0, var2642=org.apache.lucene.store.Directory, var471=$r1, var3162=java.lang.Object, var1180=$i1, var3061=$r2, var2593=$i0, var2135=$i2}
; {org.apache.lucene.index.SegmentInfo=var1407, r0=var1060, org.apache.lucene.store.Directory=var2642, $r1=var471, java.lang.Object=var3162, $i1=var1180, $r2=var3061, $i0=var2593, $i2=var2135}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.index.SegmentInfo;	$r1 = r0.<org.apache.lucene.index.SegmentInfo: org.apache.lucene.store.Directory dir>;	$i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	$r2 = r0.<org.apache.lucene.index.SegmentInfo: java.lang.String name>;	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i2 = $i1 + $i0;	return $i2
;block_num 1