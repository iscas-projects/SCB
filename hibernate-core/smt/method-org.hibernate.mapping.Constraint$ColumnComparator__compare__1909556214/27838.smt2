(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1126 0)
(declare-sort var3336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1923604921 (var3336) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1126 var1126)
(declare-const null-var3336 var3336)
(declare-const var1858 var1126) ; Statement: r4 := @this: org.hibernate.mapping.Constraint$ColumnComparator 
(assert (not (= var1858 null-var1126)))
(declare-const var2493 var3336) ; Statement: r0 := @parameter0: org.hibernate.mapping.Column 
(assert (not (= var2493 null-var3336)))
(declare-const var1921 var3336) ; Statement: r1 := @parameter1: org.hibernate.mapping.Column 
(assert (not (= var1921 null-var3336)))
(assert true)
(define-const var3563 String (getName/1923604921 var2493)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.mapping.Column: java.lang.String getName()>() 
(assert true)
(define-const var3181 String (getName/1923604921 var1921)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.mapping.Column: java.lang.String getName()>() 
(assert true)
(define-const var1958 Int (compareTo/1411385946 var3563 var3181)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var3563 var3181)) (this<=other (str.<= var3563 var3181)) (compareRes (compareTo/1411385946 var3563 var3181))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1923604921=([org.hibernate.mapping.Column], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1126=org.hibernate.mapping.Constraint$ColumnComparator, var1858=r4, var3336=org.hibernate.mapping.Column, var2493=r0, var1921=r1, var3563=$r3, var3181=$r2, var1958=$i0}
; {org.hibernate.mapping.Constraint$ColumnComparator=var1126, r4=var1858, org.hibernate.mapping.Column=var3336, r0=var2493, r1=var1921, $r3=var3563, $r2=var3181, $i0=var1958}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r4 := @this: org.hibernate.mapping.Constraint$ColumnComparator;	r0 := @parameter0: org.hibernate.mapping.Column;	r1 := @parameter1: org.hibernate.mapping.Column;	$r3 = virtualinvoke r0.<org.hibernate.mapping.Column: java.lang.String getName()>();	$r2 = virtualinvoke r1.<org.hibernate.mapping.Column: java.lang.String getName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1