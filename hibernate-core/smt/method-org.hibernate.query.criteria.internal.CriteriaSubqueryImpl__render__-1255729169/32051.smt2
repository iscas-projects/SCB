(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1724 0)
(declare-sort var816 0)
(declare-sort var2220 0)
(declare-sort var2857 0)
(declare-sort var582 0)
(declare-sort var345 0)
(declare-sort var678 0)
(declare-sort var316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun criteriaBuilder/1170171335 (var2857) var2220)
(declare-fun cast-from-var1724-to-var2857 (var1724) var2857)
(declare-fun getEntityManagerFactory/-1647005728 (var2220) var582)
(declare-fun getSessionFactoryOptions/-1597626940 (var582) var345)
(declare-fun var345_getJpaCompliance/-122438972 (var345) var678)
(declare-fun var678_isJpaQueryComplianceEnabled/2044035563 (var678) Bool)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun queryStructure/-817465227 (var1724) var316)
(declare-fun render/-1876942504 (var316 String var816) void)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1724 var1724)
(declare-const null-var816 var816)
(declare-const var1029 var1724) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.CriteriaSubqueryImpl 
(assert (not (= var1029 null-var1724)))
(declare-const var1411 var816) ; Statement: r6 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var1411 null-var816)))
(assert true)
(define-const var734 var2220 (criteriaBuilder/1170171335 (cast-from-var1724-to-var2857 var1029))) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.query.criteria.internal.CriteriaSubqueryImpl: org.hibernate.query.criteria.internal.CriteriaBuilderImpl criteriaBuilder()>() 
(assert true)
(define-const var2772 var582 (getEntityManagerFactory/-1647005728 var734)) ; Statement: $r2 = virtualinvoke $r1.<org.hibernate.query.criteria.internal.CriteriaBuilderImpl: org.hibernate.internal.SessionFactoryImpl getEntityManagerFactory()>() 
(assert true)
(define-const var738 var345 (getSessionFactoryOptions/-1597626940 var2772)) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>() 
(define-const var3079 var678 (var345_getJpaCompliance/-122438972 var738)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.boot.spi.SessionFactoryOptions: org.hibernate.jpa.spi.JpaCompliance getJpaCompliance()>() 
(define-const var1373 Bool (var678_isJpaQueryComplianceEnabled/2044035563 var3079)) ; Statement: $z0 = interfaceinvoke $r4.<org.hibernate.jpa.spi.JpaCompliance: boolean isJpaQueryComplianceEnabled()>() 
 ; Statement: if $z0 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= (ite var1373 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2521 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2521 "(")) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>("(") 
(declare-const var2521!1 String)
(assert (= var2521!1 "("))
(define-const var550 var316 (queryStructure/-817465227 var1029)) ; Statement: $r7 = r0.<org.hibernate.query.criteria.internal.CriteriaSubqueryImpl: org.hibernate.query.criteria.internal.QueryStructure queryStructure> 
(assert true)
;(assert (render/-1876942504 var550 var2521!1 var1411)) ; Statement: virtualinvoke $r7.<org.hibernate.query.criteria.internal.QueryStructure: void render(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>($r5, r6) 

(declare-const var550!1 var316)
(declare-const var2521!2 String)
(declare-const var1411!1 var816)
(assert true)
;(assert (append/-1166366385 var2521!2 41)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2521!3 String)
(assert (str.prefixof var2521!2 var2521!3))
(assert true)
(define-const var1326 String (toString/-2075883882 var2521!3)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {criteriaBuilder/1170171335=([org.hibernate.query.criteria.internal.AbstractNode], org.hibernate.query.criteria.internal.CriteriaBuilderImpl), cast-from-var1724-to-var2857=([org.hibernate.query.criteria.internal.CriteriaSubqueryImpl], org.hibernate.query.criteria.internal.AbstractNode), getEntityManagerFactory/-1647005728=([org.hibernate.query.criteria.internal.CriteriaBuilderImpl], org.hibernate.internal.SessionFactoryImpl), getSessionFactoryOptions/-1597626940=([org.hibernate.internal.SessionFactoryImpl], org.hibernate.boot.spi.SessionFactoryOptions), var345_getJpaCompliance/-122438972=([org.hibernate.boot.spi.SessionFactoryOptions], org.hibernate.jpa.spi.JpaCompliance), var678_isJpaQueryComplianceEnabled/2044035563=([org.hibernate.jpa.spi.JpaCompliance], boolean), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), queryStructure/-817465227=([org.hibernate.query.criteria.internal.CriteriaSubqueryImpl], org.hibernate.query.criteria.internal.QueryStructure), render/-1876942504=([org.hibernate.query.criteria.internal.QueryStructure, java.lang.StringBuilder, org.hibernate.query.criteria.internal.compile.RenderingContext], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1724=org.hibernate.query.criteria.internal.CriteriaSubqueryImpl, var1029=r0, var816=org.hibernate.query.criteria.internal.compile.RenderingContext, var1411=r6, var2220=org.hibernate.query.criteria.internal.CriteriaBuilderImpl, var2857=org.hibernate.query.criteria.internal.AbstractNode, var734=$r1, var582=org.hibernate.internal.SessionFactoryImpl, var2772=$r2, var345=org.hibernate.boot.spi.SessionFactoryOptions, var738=$r3, var678=org.hibernate.jpa.spi.JpaCompliance, var3079=$r4, var1373=$z0, var2521=$r5, var316=org.hibernate.query.criteria.internal.QueryStructure, var550=$r7, var1326=$r8}
; {org.hibernate.query.criteria.internal.CriteriaSubqueryImpl=var1724, r0=var1029, org.hibernate.query.criteria.internal.compile.RenderingContext=var816, r6=var1411, org.hibernate.query.criteria.internal.CriteriaBuilderImpl=var2220, org.hibernate.query.criteria.internal.AbstractNode=var2857, $r1=var734, org.hibernate.internal.SessionFactoryImpl=var582, $r2=var2772, org.hibernate.boot.spi.SessionFactoryOptions=var345, $r3=var738, org.hibernate.jpa.spi.JpaCompliance=var678, $r4=var3079, $z0=var1373, $r5=var2521, org.hibernate.query.criteria.internal.QueryStructure=var316, $r7=var550, $r8=var1326}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.CriteriaSubqueryImpl;	r6 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r1 = virtualinvoke r0.<org.hibernate.query.criteria.internal.CriteriaSubqueryImpl: org.hibernate.query.criteria.internal.CriteriaBuilderImpl criteriaBuilder()>();	$r2 = virtualinvoke $r1.<org.hibernate.query.criteria.internal.CriteriaBuilderImpl: org.hibernate.internal.SessionFactoryImpl getEntityManagerFactory()>();	$r3 = virtualinvoke $r2.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>();	$r4 = interfaceinvoke $r3.<org.hibernate.boot.spi.SessionFactoryOptions: org.hibernate.jpa.spi.JpaCompliance getJpaCompliance()>();	$z0 = interfaceinvoke $r4.<org.hibernate.jpa.spi.JpaCompliance: boolean isJpaQueryComplianceEnabled()>();	if $z0 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>("(");	$r7 = r0.<org.hibernate.query.criteria.internal.CriteriaSubqueryImpl: org.hibernate.query.criteria.internal.QueryStructure queryStructure>;	virtualinvoke $r7.<org.hibernate.query.criteria.internal.QueryStructure: void render(java.lang.StringBuilder,org.hibernate.query.criteria.internal.compile.RenderingContext)>($r5, r6);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2