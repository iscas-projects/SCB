(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2349 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isQuoted/-2065986092 (var2349) Bool)
(declare-fun text/-2065986092 (var2349) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2349 var2349)
(declare-const var1663 var2349) ; Statement: r0 := @this: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var1663 null-var2349)))
(define-const var2494 Bool (isQuoted/-2065986092 var1663)) ; Statement: $z0 = r0.<org.hibernate.boot.model.naming.Identifier: boolean isQuoted> 
 ; Statement: if $z0 == 0 goto $r2 = r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String text> 
(assert (not (= (ite var2494 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3572 String (text/-2065986092 var1663)) ; Statement: $r4 = r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String text> 
(assert true)
(define-const var462 Int (hashCode/-467973558 var3572)) ; Statement: $i0 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= return $i0] 
(assert true) ; Non Conditional
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {isQuoted/-2065986092=([org.hibernate.boot.model.naming.Identifier], boolean), text/-2065986092=([org.hibernate.boot.model.naming.Identifier], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2349=org.hibernate.boot.model.naming.Identifier, var1663=r0, var2494=$z0, var3572=$r4, var462=$i0}
; {org.hibernate.boot.model.naming.Identifier=var2349, r0=var1663, $z0=var2494, $r4=var3572, $i0=var462}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.naming.Identifier;	$z0 = r0.<org.hibernate.boot.model.naming.Identifier: boolean isQuoted>;	if $z0 == 0 goto $r2 = r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String text>;	$r4 = r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String text>;	$i0 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	goto [?= return $i0];	return $i0
;block_num 3