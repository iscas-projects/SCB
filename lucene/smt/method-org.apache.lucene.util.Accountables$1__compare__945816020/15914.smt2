(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var330 0)
(declare-sort var2782 0)
(declare-sort var3545 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-522406933 (var3545) String)
(declare-fun cast-from-var2782-to-var3545 (var2782) var3545)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var330 var330)
(declare-const null-var2782 var2782)
(declare-const var441 var330) ; Statement: r4 := @this: org.apache.lucene.util.Accountables$1 
(assert (not (= var441 null-var330)))
(declare-const var3007 var2782) ; Statement: r0 := @parameter0: org.apache.lucene.util.Accountable 
(assert (not (= var3007 null-var2782)))
(declare-const var2835 var2782) ; Statement: r1 := @parameter1: org.apache.lucene.util.Accountable 
(assert (not (= var2835 null-var2782)))
(assert true)
(define-const var3331 String (toString/-522406933 (cast-from-var2782-to-var3545 var3007))) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3891 String (toString/-522406933 (cast-from-var2782-to-var3545 var2835))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var331 Int (compareTo/1411385946 var3331 var3891)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var3331 var3891)) (this<=other (str.<= var3331 var3891)) (compareRes (compareTo/1411385946 var3331 var3891))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2782-to-var3545=([org.apache.lucene.util.Accountable], java.lang.Object), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var330=org.apache.lucene.util.Accountables$1, var441=r4, var2782=org.apache.lucene.util.Accountable, var3007=r0, var2835=r1, var3545=java.lang.Object, var3331=$r3, var3891=$r2, var331=$i0}
; {org.apache.lucene.util.Accountables$1=var330, r4=var441, org.apache.lucene.util.Accountable=var2782, r0=var3007, r1=var2835, java.lang.Object=var3545, $r3=var3331, $r2=var3891, $i0=var331}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r4 := @this: org.apache.lucene.util.Accountables$1;	r0 := @parameter0: org.apache.lucene.util.Accountable;	r1 := @parameter1: org.apache.lucene.util.Accountable;	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>();	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1