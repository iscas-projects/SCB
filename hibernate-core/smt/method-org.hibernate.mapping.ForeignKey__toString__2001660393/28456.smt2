(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1585 0)
(declare-sort var2171 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isReferenceToPrimaryKey/2098061679 (var1585) Bool)
(declare-fun toString/1873889115 (var2171) String)
(declare-fun cast-from-var1585-to-var2171 (var1585) var2171)
(declare-const null-var1585 var1585)
(declare-const var3028 var1585) ; Statement: r0 := @this: org.hibernate.mapping.ForeignKey 
(assert (not (= var3028 null-var1585)))
(assert true)
(define-const var3608 Bool (isReferenceToPrimaryKey/2098061679 var3028)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.mapping.ForeignKey: boolean isReferenceToPrimaryKey()>() 
 ; Statement: if $z0 != 0 goto $r1 = specialinvoke r0.<org.hibernate.mapping.Constraint: java.lang.String toString()>() 
(assert (not (= (ite var3608 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var288 String (toString/1873889115 (cast-from-var1585-to-var2171 var3028))) ; Statement: $r1 = specialinvoke r0.<org.hibernate.mapping.Constraint: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isReferenceToPrimaryKey/2098061679=([org.hibernate.mapping.ForeignKey], boolean), toString/1873889115=([org.hibernate.mapping.Constraint], java.lang.String), cast-from-var1585-to-var2171=([org.hibernate.mapping.ForeignKey], org.hibernate.mapping.Constraint)}
; {var1585=org.hibernate.mapping.ForeignKey, var3028=r0, var3608=$z0, var2171=org.hibernate.mapping.Constraint, var288=$r1}
; {org.hibernate.mapping.ForeignKey=var1585, r0=var3028, $z0=var3608, org.hibernate.mapping.Constraint=var2171, $r1=var288}
;seq <org.hibernate.mapping.Constraint: java.lang.String toString()>
;cnt {}
;stmts r0 := @this: org.hibernate.mapping.ForeignKey;	$z0 = virtualinvoke r0.<org.hibernate.mapping.ForeignKey: boolean isReferenceToPrimaryKey()>();	if $z0 != 0 goto $r1 = specialinvoke r0.<org.hibernate.mapping.Constraint: java.lang.String toString()>();	$r1 = specialinvoke r0.<org.hibernate.mapping.Constraint: java.lang.String toString()>();	return $r1
;block_num 2