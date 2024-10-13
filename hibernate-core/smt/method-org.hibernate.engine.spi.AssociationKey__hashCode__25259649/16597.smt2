(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1899 0)
(declare-sort var3811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ownerKey/-1338264250 (var1899) var3811)
(declare-fun hashCode/1455284283 (var3811) Int)
(declare-fun propertyName/-1338264250 (var1899) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1899 var1899)
(declare-const var1534 var1899) ; Statement: r0 := @this: org.hibernate.engine.spi.AssociationKey 
(assert (not (= var1534 null-var1899)))
(define-const var2774 var3811 (ownerKey/-1338264250 var1534)) ; Statement: $r1 = r0.<org.hibernate.engine.spi.AssociationKey: org.hibernate.engine.spi.EntityKey ownerKey> 
(assert true)
(define-const var2503 Int (hashCode/1455284283 var2774)) ; Statement: i2 = virtualinvoke $r1.<org.hibernate.engine.spi.EntityKey: int hashCode()>() 
(define-const var577 Int (* 31 var2503)) ; Statement: $i1 = 31 * i2 
(define-const var2884 String (propertyName/-1338264250 var1534)) ; Statement: $r2 = r0.<org.hibernate.engine.spi.AssociationKey: java.lang.String propertyName> 
(assert true)
(define-const var2671 Int (hashCode/-467973558 var2884)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1456 Int (+ var577 var2671)) ; Statement: i3 = $i1 + $i0 
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {ownerKey/-1338264250=([org.hibernate.engine.spi.AssociationKey], org.hibernate.engine.spi.EntityKey), hashCode/1455284283=([org.hibernate.engine.spi.EntityKey], int), propertyName/-1338264250=([org.hibernate.engine.spi.AssociationKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1899=org.hibernate.engine.spi.AssociationKey, var1534=r0, var3811=org.hibernate.engine.spi.EntityKey, var2774=$r1, var2503=i2, var577=$i1, var2884=$r2, var2671=$i0, var1456=i3}
; {org.hibernate.engine.spi.AssociationKey=var1899, r0=var1534, org.hibernate.engine.spi.EntityKey=var3811, $r1=var2774, i2=var2503, $i1=var577, $r2=var2884, $i0=var2671, i3=var1456}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.spi.AssociationKey;	$r1 = r0.<org.hibernate.engine.spi.AssociationKey: org.hibernate.engine.spi.EntityKey ownerKey>;	i2 = virtualinvoke $r1.<org.hibernate.engine.spi.EntityKey: int hashCode()>();	$i1 = 31 * i2;	$r2 = r0.<org.hibernate.engine.spi.AssociationKey: java.lang.String propertyName>;	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i3 = $i1 + $i0;	return i3
;block_num 1