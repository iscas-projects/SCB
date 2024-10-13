(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var611 0)
(declare-sort var3090 0)
(declare-sort var1400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$propertyName/-1482999275 (var611) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun val$collectionPropertyMapping/-1482999275 (var611) var1400)
(declare-fun var1400_toColumns/701355653 (var1400 String String) (Array Int String))
(declare-const null-var611 var611)
(declare-const null-String String)
(declare-const var1756 var611) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.FromElementType$1 
(assert (not (= var1756 null-var611)))
(declare-const var2227 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var2227 null-String)))
(define-const var2967 String (val$propertyName/-1482999275 var1756)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: java.lang.String val$propertyName> 
(assert true)
(define-const var1272 Bool (equalsIgnoreCase/-92311102 var2967 "index")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("index") 
 ; Statement: if $z0 == 0 goto $r2 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: org.hibernate.hql.internal.ast.tree.FromElementType this$0> 
(assert (not (= (ite var1272 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2485 var1400 (val$collectionPropertyMapping/-1482999275 var1756)) ; Statement: $r24 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: org.hibernate.persister.entity.PropertyMapping val$collectionPropertyMapping> 
(define-const var2565 String (val$propertyName/-1482999275 var1756)) ; Statement: $r23 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: java.lang.String val$propertyName> 
(define-const var3376 (Array Int String) (var1400_toColumns/701355653 var2485 var2227 var2565)) ; Statement: $r25 = interfaceinvoke $r24.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String,java.lang.String)>(r9, $r23) 
 ; Statement: return $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {val$propertyName/-1482999275=([org.hibernate.hql.internal.ast.tree.FromElementType$1], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), val$collectionPropertyMapping/-1482999275=([org.hibernate.hql.internal.ast.tree.FromElementType$1], org.hibernate.persister.entity.PropertyMapping), var1400_toColumns/701355653=([org.hibernate.persister.entity.PropertyMapping, java.lang.String, java.lang.String], java.lang.String[])}
; {var611=org.hibernate.hql.internal.ast.tree.FromElementType$1, var1756=r0, var2227=r9, var3090=null_type, var2967=$r1, var1272=$z0, var1400=org.hibernate.persister.entity.PropertyMapping, var2485=$r24, var2565=$r23, var3376=$r25}
; {org.hibernate.hql.internal.ast.tree.FromElementType$1=var611, r0=var1756, r9=var2227, null_type=var3090, $r1=var2967, $z0=var1272, org.hibernate.persister.entity.PropertyMapping=var1400, $r24=var2485, $r23=var2565, $r25=var3376}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.FromElementType$1;	r9 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: java.lang.String val$propertyName>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("index");	if $z0 == 0 goto $r2 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: org.hibernate.hql.internal.ast.tree.FromElementType this$0>;	$r24 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: org.hibernate.persister.entity.PropertyMapping val$collectionPropertyMapping>;	$r23 = r0.<org.hibernate.hql.internal.ast.tree.FromElementType$1: java.lang.String val$propertyName>;	$r25 = interfaceinvoke $r24.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String,java.lang.String)>(r9, $r23);	return $r25
;block_num 2