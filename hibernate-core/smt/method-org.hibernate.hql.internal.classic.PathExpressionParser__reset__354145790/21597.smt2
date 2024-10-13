(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1993 0)
(declare-sort var3013 0)
(declare-sort var3778 0)
(declare-sort var3752 0)
(declare-sort var855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dotcount/2096745176 (var1993) Int)
(declare-fun currentName/2096745176 (var1993) String)
(declare-fun currentProperty/2096745176 (var1993) String)
(declare-fun collectionName/2096745176 (var1993) String)
(declare-fun collectionRole/2096745176 (var1993) String)
(declare-fun componentPath/2096745176 (var1993) String)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun type/2096745176 (var1993) var3752)
(declare-fun columns/2096745176 (var1993) (Array Int String))
(declare-fun expectingCollectionIndex/2096745176 (var1993) Bool)
(declare-fun continuation/2096745176 (var1993) Bool)
(declare-fun currentPropertyMapping/2096745176 (var1993) var855)
(declare-const null-var1993 var1993)
(declare-const null-var3013 var3013)
(declare-const null-String String)
(declare-const null-var3752 var3752)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var855 var855)
(declare-const var3621 var1993) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser 
(assert (not (= var3621 null-var1993)))
(declare-const var235 var3013) ; Statement: r2 := @parameter0: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var235 null-var3013)))
(declare-const var3621!1 var1993)
(assert (not (= var3621!1 null-var1993)))
(assert (= (dotcount/2096745176 var3621!1) 0)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: int dotcount> = 0 
(declare-const var3621!2 var1993)
(assert (not (= var3621!2 null-var1993)))
(assert (= (currentName/2096745176 var3621!2) null-String)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentName> = null 
(declare-const var3621!3 var1993)
(assert (not (= var3621!3 null-var1993)))
(assert (= (currentProperty/2096745176 var3621!3) null-String)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentProperty> = null 
(declare-const var3621!4 var1993)
(assert (not (= var3621!4 null-var1993)))
(assert (= (collectionName/2096745176 var3621!4) null-String)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String collectionName> = null 
(declare-const var3621!5 var1993)
(assert (not (= var3621!5 null-var1993)))
(assert (= (collectionRole/2096745176 var3621!5) null-String)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String collectionRole> = null 
(define-const var3422 String (componentPath/2096745176 var3621!5)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath> 
(assert true)
;(assert (setLength/1276735992 var3422 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var3422!1 String)
(declare-const var3311 Int)
(declare-const var3621!6 var1993)
(assert (not (= var3621!6 null-var1993)))
(assert (= (type/2096745176 var3621!6) null-var3752)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.type.Type type> = null 
(declare-const var3621!7 var1993)
(assert (not (= var3621!7 null-var1993)))
(assert (= (collectionName/2096745176 var3621!7) null-String)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String collectionName> = null 
(declare-const var3621!8 var1993)
(assert (not (= var3621!8 null-var1993)))
(assert (= (columns/2096745176 var3621!8) null-__Array__Int__String__)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String[] columns> = null 
(declare-const var3621!9 var1993)
(assert (not (= var3621!9 null-var1993)))
(assert (= (expectingCollectionIndex/2096745176 var3621!9) (ite (= 1 0) true false))) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: boolean expectingCollectionIndex> = 0 
(declare-const var3621!10 var1993)
(assert (not (= var3621!10 null-var1993)))
(assert (= (continuation/2096745176 var3621!10) (ite (= 1 0) true false))) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: boolean continuation> = 0 
(declare-const var3621!11 var1993)
(assert (not (= var3621!11 null-var1993)))
(assert (= (currentPropertyMapping/2096745176 var3621!11) null-var855)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.persister.entity.PropertyMapping currentPropertyMapping> = null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {dotcount/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], int), currentName/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), currentProperty/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), collectionName/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), collectionRole/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), componentPath/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void), type/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], org.hibernate.type.Type), columns/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String[]), expectingCollectionIndex/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], boolean), continuation/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], boolean), currentPropertyMapping/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], org.hibernate.persister.entity.PropertyMapping)}
; {var1993=org.hibernate.hql.internal.classic.PathExpressionParser, var3621=r0, var3013=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var235=r2, var3778=null_type, var3422=$r1, var3311=0, var3752=org.hibernate.type.Type, var855=org.hibernate.persister.entity.PropertyMapping}
; {org.hibernate.hql.internal.classic.PathExpressionParser=var1993, r0=var3621, org.hibernate.hql.internal.classic.QueryTranslatorImpl=var3013, r2=var235, null_type=var3778, $r1=var3422, 0=var3311, org.hibernate.type.Type=var3752, org.hibernate.persister.entity.PropertyMapping=var855}
;seq <java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser;	r2 := @parameter0: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: int dotcount> = 0;	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentName> = null;	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentProperty> = null;	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String collectionName> = null;	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String collectionRole> = null;	$r1 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath>;	virtualinvoke $r1.<java.lang.StringBuilder: void setLength(int)>(0);	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.type.Type type> = null;	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String collectionName> = null;	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String[] columns> = null;	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: boolean expectingCollectionIndex> = 0;	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: boolean continuation> = 0;	r0.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.persister.entity.PropertyMapping currentPropertyMapping> = null;	return
;block_num 1