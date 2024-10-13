(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2896 0)
(declare-sort var1736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun quoted/568060284 (var2896) Bool)
(declare-fun name/568060284 (var2896) String)
(declare-fun var1736_safeInterning/-733881672 (String) String)
(declare-const null-var2896 var2896)
(declare-const var1642 var2896) ; Statement: r0 := @this: org.hibernate.mapping.Column 
(assert (not (= var1642 null-var2896)))
(define-const var3332 Bool (quoted/568060284 var1642)) ; Statement: $z0 = r0.<org.hibernate.mapping.Column: boolean quoted> 
 ; Statement: if $z0 == 0 goto $r7 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(assert (= (ite var3332 1 0) 0)) ; Cond: $z0 == 0 
(define-const var204 String (name/568060284 var1642)) ; Statement: $r7 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(assert true) ; Non Conditional
(define-const var2736 String (var1736_safeInterning/-733881672 var204)) ; Statement: $r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String safeInterning(java.lang.String)>($r7) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {quoted/568060284=([org.hibernate.mapping.Column], boolean), name/568060284=([org.hibernate.mapping.Column], java.lang.String), var1736_safeInterning/-733881672=([java.lang.String], java.lang.String)}
; {var2896=org.hibernate.mapping.Column, var1642=r0, var3332=$z0, var204=$r7, var1736=org.hibernate.internal.util.StringHelper, var2736=$r1}
; {org.hibernate.mapping.Column=var2896, r0=var1642, $z0=var3332, $r7=var204, org.hibernate.internal.util.StringHelper=var1736, $r1=var2736}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.mapping.Column;	$z0 = r0.<org.hibernate.mapping.Column: boolean quoted>;	if $z0 == 0 goto $r7 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$r7 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String safeInterning(java.lang.String)>($r7);	return $r1
;block_num 3