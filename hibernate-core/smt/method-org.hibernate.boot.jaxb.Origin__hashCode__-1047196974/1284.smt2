(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2032 0)
(declare-sort var1203 0)
(declare-sort var429 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/673402333 (var2032) var1203)
(declare-fun name/673402333 (var2032) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2032 var2032)
(declare-const null-var1203 var1203)
(declare-const null-String String)
(declare-const var441 var2032) ; Statement: r0 := @this: org.hibernate.boot.jaxb.Origin 
(assert (not (= var441 null-var2032)))
(define-const var3141 var1203 (type/673402333 var441)) ; Statement: $r1 = r0.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType type> 
 ; Statement: if $r1 == null goto $i2 = 0 
(assert (= var3141 null-var1203)) ; Cond: $r1 == null 
(define-const var3453 Int 0) ; Statement: $i2 = 0 
(assert true) ; Non Conditional
(define-const var3350 Int (* 31 var3453)) ; Statement: $i0 = 31 * $i2 
(define-const var668 String (name/673402333 var441)) ; Statement: $r2 = r0.<org.hibernate.boot.jaxb.Origin: java.lang.String name> 
 ; Statement: if $r2 == null goto $i3 = 0 
(assert (not (= var668 null-String))) ; Negate: Cond: $r2 == null  
(define-const var2682 String (name/673402333 var441)) ; Statement: $r3 = r0.<org.hibernate.boot.jaxb.Origin: java.lang.String name> 
(assert true)
(define-const var459 Int (hashCode/-467973558 var2682)) ; Statement: $i3 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i1 = $i0 + $i3] 
(assert true) ; Non Conditional
(define-const var3891 Int (+ var3350 var459)) ; Statement: $i1 = $i0 + $i3 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {type/673402333=([org.hibernate.boot.jaxb.Origin], org.hibernate.boot.jaxb.SourceType), name/673402333=([org.hibernate.boot.jaxb.Origin], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2032=org.hibernate.boot.jaxb.Origin, var441=r0, var1203=org.hibernate.boot.jaxb.SourceType, var3141=$r1, var3453=$i2, var3350=$i0, var668=$r2, var429=null_type, var2682=$r3, var459=$i3, var3891=$i1}
; {org.hibernate.boot.jaxb.Origin=var2032, r0=var441, org.hibernate.boot.jaxb.SourceType=var1203, $r1=var3141, $i2=var3453, $i0=var3350, $r2=var668, null_type=var429, $r3=var2682, $i3=var459, $i1=var3891}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.jaxb.Origin;	$r1 = r0.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType type>;	if $r1 == null goto $i2 = 0;	$i2 = 0;	$i0 = 31 * $i2;	$r2 = r0.<org.hibernate.boot.jaxb.Origin: java.lang.String name>;	if $r2 == null goto $i3 = 0;	$r3 = r0.<org.hibernate.boot.jaxb.Origin: java.lang.String name>;	$i3 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	goto [?= $i1 = $i0 + $i3];	$i1 = $i0 + $i3;	return $i1
;block_num 5