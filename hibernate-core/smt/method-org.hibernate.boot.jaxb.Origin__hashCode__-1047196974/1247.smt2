(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1662 0)
(declare-sort var384 0)
(declare-sort var3926 0)
(declare-sort var2596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/673402333 (var1662) var384)
(declare-fun hashCode/385986394 (var3926) Int)
(declare-fun cast-from-var384-to-var3926 (var384) var3926)
(declare-fun name/673402333 (var1662) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1662 var1662)
(declare-const null-var384 var384)
(declare-const null-String String)
(declare-const var1230 var1662) ; Statement: r0 := @this: org.hibernate.boot.jaxb.Origin 
(assert (not (= var1230 null-var1662)))
(define-const var2625 var384 (type/673402333 var1230)) ; Statement: $r1 = r0.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType type> 
 ; Statement: if $r1 == null goto $i2 = 0 
(assert (not (= var2625 null-var384))) ; Negate: Cond: $r1 == null  
(define-const var857 var384 (type/673402333 var1230)) ; Statement: $r4 = r0.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType type> 
(assert true)
(define-const var3766 Int (hashCode/385986394 (cast-from-var384-to-var3926 var857))) ; Statement: $i2 = virtualinvoke $r4.<org.hibernate.boot.jaxb.SourceType: int hashCode()>() 
 ; Statement: goto [?= $i0 = 31 * $i2] 
(assert true) ; Non Conditional
(define-const var3071 Int (* 31 var3766)) ; Statement: $i0 = 31 * $i2 
(define-const var2488 String (name/673402333 var1230)) ; Statement: $r2 = r0.<org.hibernate.boot.jaxb.Origin: java.lang.String name> 
 ; Statement: if $r2 == null goto $i3 = 0 
(assert (not (= var2488 null-String))) ; Negate: Cond: $r2 == null  
(define-const var2813 String (name/673402333 var1230)) ; Statement: $r3 = r0.<org.hibernate.boot.jaxb.Origin: java.lang.String name> 
(assert true)
(define-const var2428 Int (hashCode/-467973558 var2813)) ; Statement: $i3 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i1 = $i0 + $i3] 
(assert true) ; Non Conditional
(define-const var3504 Int (+ var3071 var2428)) ; Statement: $i1 = $i0 + $i3 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {type/673402333=([org.hibernate.boot.jaxb.Origin], org.hibernate.boot.jaxb.SourceType), hashCode/385986394=([java.lang.Enum], int), cast-from-var384-to-var3926=([org.hibernate.boot.jaxb.SourceType], java.lang.Enum), name/673402333=([org.hibernate.boot.jaxb.Origin], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1662=org.hibernate.boot.jaxb.Origin, var1230=r0, var384=org.hibernate.boot.jaxb.SourceType, var2625=$r1, var857=$r4, var3926=java.lang.Enum, var3766=$i2, var3071=$i0, var2488=$r2, var2596=null_type, var2813=$r3, var2428=$i3, var3504=$i1}
; {org.hibernate.boot.jaxb.Origin=var1662, r0=var1230, org.hibernate.boot.jaxb.SourceType=var384, $r1=var2625, $r4=var857, java.lang.Enum=var3926, $i2=var3766, $i0=var3071, $r2=var2488, null_type=var2596, $r3=var2813, $i3=var2428, $i1=var3504}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.jaxb.Origin;	$r1 = r0.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType type>;	if $r1 == null goto $i2 = 0;	$r4 = r0.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType type>;	$i2 = virtualinvoke $r4.<org.hibernate.boot.jaxb.SourceType: int hashCode()>();	goto [?= $i0 = 31 * $i2];	$i0 = 31 * $i2;	$r2 = r0.<org.hibernate.boot.jaxb.Origin: java.lang.String name>;	if $r2 == null goto $i3 = 0;	$r3 = r0.<org.hibernate.boot.jaxb.Origin: java.lang.String name>;	$i3 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	goto [?= $i1 = $i0 + $i3];	$i1 = $i0 + $i3;	return $i1
;block_num 5