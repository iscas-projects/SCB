(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var224 0)
(declare-sort var3140 0)
(declare-sort var320 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var320_root/-814075225 (String) String)
(declare-fun getAliasName/2027875658 (var224 String) String)
(declare-const null-var224 var224)
(declare-const null-String String)
(declare-const var3681 var224) ; Statement: r2 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var3681 null-var224)))
(declare-const var2177 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2177 null-String)))
(define-const var397 String (var320_root/-814075225 var2177)) ; Statement: r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String root(java.lang.String)>(r0) 
(assert true)
(define-const var1897 String (getAliasName/2027875658 var3681 var397)) ; Statement: r3 = virtualinvoke r2.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.lang.String getAliasName(java.lang.String)>(r1) 
 ; Statement: if r3 == null goto return r0 
(assert (= var1897 null-String)) ; Cond: r3 == null 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var320_root/-814075225=([java.lang.String], java.lang.String), getAliasName/2027875658=([org.hibernate.hql.internal.classic.QueryTranslatorImpl, java.lang.String], java.lang.String)}
; {var224=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var3681=r2, var2177=r0, var3140=null_type, var320=org.hibernate.internal.util.StringHelper, var397=r1, var1897=r3}
; {org.hibernate.hql.internal.classic.QueryTranslatorImpl=var224, r2=var3681, r0=var2177, null_type=var3140, org.hibernate.internal.util.StringHelper=var320, r1=var397, r3=var1897}
;seq 
;cnt {}
;stmts r2 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	r0 := @parameter0: java.lang.String;	r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String root(java.lang.String)>(r0);	r3 = virtualinvoke r2.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.lang.String getAliasName(java.lang.String)>(r1);	if r3 == null goto return r0;	return r0
;block_num 2