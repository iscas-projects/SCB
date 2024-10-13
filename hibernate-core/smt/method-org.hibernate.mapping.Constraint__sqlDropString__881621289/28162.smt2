(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var134 0)
(declare-sort var3106 0)
(declare-sort var3037 0)
(declare-sort var1706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3106_getDialect/-253498657 (var3106) var1706)
(declare-fun isGenerated/-403195155 (var134 var1706) Bool)
(declare-const null-var134 var134)
(declare-const null-var3106 var3106)
(declare-const null-String String)
(declare-const var2796 var134) ; Statement: r2 := @this: org.hibernate.mapping.Constraint 
(assert (not (= var2796 null-var134)))
(declare-const var1002 var3106) ; Statement: r0 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var1002 null-var3106)))
(declare-const var466 String) ; Statement: r11 := @parameter1: java.lang.String 
(assert (not (= var466 null-String)))
(declare-const var47 String) ; Statement: r12 := @parameter2: java.lang.String 
(assert (not (= var47 null-String)))
(define-const var1643 var1706 (var3106_getDialect/-253498657 var1002)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
(define-const var2084 Bool (isGenerated/-403195155 var2796 var1643)) ; Statement: $z0 = virtualinvoke r2.<org.hibernate.mapping.Constraint: boolean isGenerated(org.hibernate.dialect.Dialect)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var2084 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var3106_getDialect/-253498657=([org.hibernate.boot.model.relational.SqlStringGenerationContext], org.hibernate.dialect.Dialect), isGenerated/-403195155=([org.hibernate.mapping.Constraint, org.hibernate.dialect.Dialect], boolean)}
; {var134=org.hibernate.mapping.Constraint, var2796=r2, var3106=org.hibernate.boot.model.relational.SqlStringGenerationContext, var1002=r0, var466=r11, var3037=null_type, var47=r12, var1706=org.hibernate.dialect.Dialect, var1643=r1, var2084=$z0}
; {org.hibernate.mapping.Constraint=var134, r2=var2796, org.hibernate.boot.model.relational.SqlStringGenerationContext=var3106, r0=var1002, r11=var466, null_type=var3037, r12=var47, org.hibernate.dialect.Dialect=var1706, r1=var1643, $z0=var2084}
;seq 
;cnt {}
;stmts r2 := @this: org.hibernate.mapping.Constraint;	r0 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext;	r11 := @parameter1: java.lang.String;	r12 := @parameter2: java.lang.String;	r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: org.hibernate.dialect.Dialect getDialect()>();	$z0 = virtualinvoke r2.<org.hibernate.mapping.Constraint: boolean isGenerated(org.hibernate.dialect.Dialect)>(r1);	if $z0 == 0 goto return null;	return null
;block_num 2