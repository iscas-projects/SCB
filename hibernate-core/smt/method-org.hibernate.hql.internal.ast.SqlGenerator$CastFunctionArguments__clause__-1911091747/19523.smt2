(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2266 0)
(declare-sort var751 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun startedType/1455619788 (var2266) Bool)
(declare-fun castExpression/1455619788 (var2266) String)
(declare-const null-var2266 var2266)
(declare-const null-String String)
(declare-const var162 var2266) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments 
(assert (not (= var162 null-var2266)))
(declare-const var3125 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3125 null-String)))
(define-const var2661 Bool (startedType/1455619788 var162)) ; Statement: $z0 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: boolean startedType> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castExpression> 
(assert (= (ite var2661 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2923 String (castExpression/1455619788 var162)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castExpression> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= var2923 null-String)))) ; Negate: Cond: $r1 != null  
(declare-const var162!1 var2266)
(assert (not (= var162!1 null-var2266)))
(assert (= (castExpression/1455619788 var162!1) var3125)) ; Statement: r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castExpression> = r4 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startedType/1455619788=([org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments], boolean), castExpression/1455619788=([org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments], java.lang.String)}
; {var2266=org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments, var162=r0, var3125=r4, var751=null_type, var2661=$z0, var2923=$r1}
; {org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments=var2266, r0=var162, r4=var3125, null_type=var751, $z0=var2661, $r1=var2923}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments;	r4 := @parameter0: java.lang.String;	$z0 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: boolean startedType>;	if $z0 == 0 goto $r1 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castExpression>;	$r1 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castExpression>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castExpression> = r4;	goto [?= return];	return
;block_num 4