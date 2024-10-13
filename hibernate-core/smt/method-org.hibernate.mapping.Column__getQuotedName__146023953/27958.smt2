(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2906 0)
(declare-sort var1185 0)
(declare-sort var3762 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun quoted/568060284 (var2906) Bool)
(declare-fun name/568060284 (var2906) String)
(declare-fun var3762_safeInterning/-733881672 (String) String)
(declare-const null-var2906 var2906)
(declare-const null-var1185 var1185)
(declare-const var1511 var2906) ; Statement: r0 := @this: org.hibernate.mapping.Column 
(assert (not (= var1511 null-var2906)))
(declare-const var213 var1185) ; Statement: r3 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var213 null-var1185)))
(define-const var3331 Bool (quoted/568060284 var1511)) ; Statement: $z0 = r0.<org.hibernate.mapping.Column: boolean quoted> 
 ; Statement: if $z0 == 0 goto $r8 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(assert (= (ite var3331 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3025 String (name/568060284 var1511)) ; Statement: $r8 = r0.<org.hibernate.mapping.Column: java.lang.String name> 
(assert true) ; Non Conditional
(define-const var1383 String (var3762_safeInterning/-733881672 var3025)) ; Statement: $r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String safeInterning(java.lang.String)>($r8) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {quoted/568060284=([org.hibernate.mapping.Column], boolean), name/568060284=([org.hibernate.mapping.Column], java.lang.String), var3762_safeInterning/-733881672=([java.lang.String], java.lang.String)}
; {var2906=org.hibernate.mapping.Column, var1511=r0, var1185=org.hibernate.dialect.Dialect, var213=r3, var3331=$z0, var3025=$r8, var3762=org.hibernate.internal.util.StringHelper, var1383=$r1}
; {org.hibernate.mapping.Column=var2906, r0=var1511, org.hibernate.dialect.Dialect=var1185, r3=var213, $z0=var3331, $r8=var3025, org.hibernate.internal.util.StringHelper=var3762, $r1=var1383}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.mapping.Column;	r3 := @parameter0: org.hibernate.dialect.Dialect;	$z0 = r0.<org.hibernate.mapping.Column: boolean quoted>;	if $z0 == 0 goto $r8 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$r8 = r0.<org.hibernate.mapping.Column: java.lang.String name>;	$r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String safeInterning(java.lang.String)>($r8);	return $r1
;block_num 3