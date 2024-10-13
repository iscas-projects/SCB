(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2300 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isQuoted/-101612203 (var2300) Bool)
(declare-fun name/568060284 (var2300) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2300 var2300)
(declare-const var1089 var2300) ; Statement: r0 := @this: org.hibernate.mapping.Column 
(assert (not (= var1089 null-var2300)))
(assert true)
(define-const var3352 Bool (isQuoted/-101612203 var1089)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.mapping.Column: boolean isQuoted()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(assert (not (= (ite var3352 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3245 String (name/568060284 var1089)) ; Statement: $r4 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(assert true)
(define-const var2928 Int (hashCode/-467973558 var3245)) ; Statement: $i0 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= return $i0] 
(assert true) ; Non Conditional
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {isQuoted/-101612203=([org.hibernate.mapping.Column], boolean), name/568060284=([org.hibernate.mapping.Column], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2300=org.hibernate.mapping.Column, var1089=r0, var3352=$z0, var3245=$r4, var2928=$i0}
; {org.hibernate.mapping.Column=var2300, r0=var1089, $z0=var3352, $r4=var3245, $i0=var2928}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.mapping.Column;	$z0 = virtualinvoke r0.<org.hibernate.mapping.Column: boolean isQuoted()>();	if $z0 == 0 goto $r2 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$r4 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$i0 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	goto [?= return $i0];	return $i0
;block_num 3