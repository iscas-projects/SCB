(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3551 0)
(declare-sort var315 0)
(declare-sort var2191 0)
(declare-sort var3548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/673402333 (var3551) var315)
(declare-fun hashCode/385986394 (var2191) Int)
(declare-fun cast-from-var315-to-var2191 (var315) var2191)
(declare-fun name/673402333 (var3551) String)
(declare-const null-var3551 var3551)
(declare-const null-var315 var315)
(declare-const null-String String)
(declare-const var2501 var3551) ; Statement: r0 := @this: org.hibernate.boot.jaxb.Origin 
(assert (not (= var2501 null-var3551)))
(define-const var1497 var315 (type/673402333 var2501)) ; Statement: $r1 = r0.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType type> 
 ; Statement: if $r1 == null goto $i2 = 0 
(assert (not (= var1497 null-var315))) ; Negate: Cond: $r1 == null  
(define-const var2684 var315 (type/673402333 var2501)) ; Statement: $r4 = r0.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType type> 
(assert true)
(define-const var3194 Int (hashCode/385986394 (cast-from-var315-to-var2191 var2684))) ; Statement: $i2 = virtualinvoke $r4.<org.hibernate.boot.jaxb.SourceType: int hashCode()>() 
 ; Statement: goto [?= $i0 = 31 * $i2] 
(assert true) ; Non Conditional
(define-const var1306 Int (* 31 var3194)) ; Statement: $i0 = 31 * $i2 
(define-const var902 String (name/673402333 var2501)) ; Statement: $r2 = r0.<org.hibernate.boot.jaxb.Origin: java.lang.String name> 
 ; Statement: if $r2 == null goto $i3 = 0 
(assert (= var902 null-String)) ; Cond: $r2 == null 
(define-const var1624 Int 0) ; Statement: $i3 = 0 
(assert true) ; Non Conditional
(define-const var914 Int (+ var1306 var1624)) ; Statement: $i1 = $i0 + $i3 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {type/673402333=([org.hibernate.boot.jaxb.Origin], org.hibernate.boot.jaxb.SourceType), hashCode/385986394=([java.lang.Enum], int), cast-from-var315-to-var2191=([org.hibernate.boot.jaxb.SourceType], java.lang.Enum), name/673402333=([org.hibernate.boot.jaxb.Origin], java.lang.String)}
; {var3551=org.hibernate.boot.jaxb.Origin, var2501=r0, var315=org.hibernate.boot.jaxb.SourceType, var1497=$r1, var2684=$r4, var2191=java.lang.Enum, var3194=$i2, var1306=$i0, var902=$r2, var3548=null_type, var1624=$i3, var914=$i1}
; {org.hibernate.boot.jaxb.Origin=var3551, r0=var2501, org.hibernate.boot.jaxb.SourceType=var315, $r1=var1497, $r4=var2684, java.lang.Enum=var2191, $i2=var3194, $i0=var1306, $r2=var902, null_type=var3548, $i3=var1624, $i1=var914}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.jaxb.Origin;	$r1 = r0.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType type>;	if $r1 == null goto $i2 = 0;	$r4 = r0.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType type>;	$i2 = virtualinvoke $r4.<org.hibernate.boot.jaxb.SourceType: int hashCode()>();	goto [?= $i0 = 31 * $i2];	$i0 = 31 * $i2;	$r2 = r0.<org.hibernate.boot.jaxb.Origin: java.lang.String name>;	if $r2 == null goto $i3 = 0;	$i3 = 0;	$i1 = $i0 + $i3;	return $i1
;block_num 5