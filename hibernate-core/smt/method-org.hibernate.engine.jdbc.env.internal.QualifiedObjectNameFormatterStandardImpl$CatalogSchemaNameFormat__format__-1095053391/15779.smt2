(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3927 0)
(declare-sort var2697 0)
(declare-sort var349 0)
(declare-sort var793 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var793_access$000/-1856867008 (var2697 var349) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3927 var3927)
(declare-const null-var2697 var2697)
(declare-const null-var349 var349)
(declare-const var3698 var3927) ; Statement: r10 := @this: org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$CatalogSchemaNameFormat 
(assert (not (= var3698 null-var3927)))
(declare-const var3693 var2697) ; Statement: r1 := @parameter0: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var3693 null-var2697)))
(declare-const var3084 var2697) ; Statement: r2 := @parameter1: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var3084 null-var2697)))
(declare-const var268 var2697) ; Statement: r3 := @parameter2: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var268 null-var2697)))
(declare-const var836 var349) ; Statement: r4 := @parameter3: org.hibernate.dialect.Dialect 
(assert (not (= var836 null-var349)))
(define-const var2290 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2290)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2290!1 String)
(assert (= var2290!1 ""))
 ; Statement: if r1 == null goto (branch) 
(assert (= var3693 null-var2697)) ; Cond: r1 == null 
 ; Statement: if r2 == null goto $r5 = staticinvoke <org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl: java.lang.String access$000(org.hibernate.boot.model.naming.Identifier,org.hibernate.dialect.Dialect)>(r3, r4) 
(assert (= var3084 null-var2697)) ; Cond: r2 == null 
(define-const var2127 String (var793_access$000/-1856867008 var268 var836)) ; Statement: $r5 = staticinvoke <org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl: java.lang.String access$000(org.hibernate.boot.model.naming.Identifier,org.hibernate.dialect.Dialect)>(r3, r4) 
(assert true)
;(assert (append/672562846 var2290!1 var2127)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2290!2 String)
(assert (= var2290!2 (str.++ var2290!1 var2127)))
(assert true)
(define-const var352 String (toString/-2075883882 var2290!2)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var793_access$000/-1856867008=([org.hibernate.boot.model.naming.Identifier, org.hibernate.dialect.Dialect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3927=org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$CatalogSchemaNameFormat, var3698=r10, var2697=org.hibernate.boot.model.naming.Identifier, var3693=r1, var3084=r2, var268=r3, var349=org.hibernate.dialect.Dialect, var836=r4, var2290=$r0, var793=org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl, var2127=$r5, var352=$r6}
; {org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$CatalogSchemaNameFormat=var3927, r10=var3698, org.hibernate.boot.model.naming.Identifier=var2697, r1=var3693, r2=var3084, r3=var268, org.hibernate.dialect.Dialect=var349, r4=var836, $r0=var2290, org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl=var793, $r5=var2127, $r6=var352}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$CatalogSchemaNameFormat;	r1 := @parameter0: org.hibernate.boot.model.naming.Identifier;	r2 := @parameter1: org.hibernate.boot.model.naming.Identifier;	r3 := @parameter2: org.hibernate.boot.model.naming.Identifier;	r4 := @parameter3: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if r1 == null goto (branch);	if r2 == null goto $r5 = staticinvoke <org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl: java.lang.String access$000(org.hibernate.boot.model.naming.Identifier,org.hibernate.dialect.Dialect)>(r3, r4);	$r5 = staticinvoke <org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl: java.lang.String access$000(org.hibernate.boot.model.naming.Identifier,org.hibernate.dialect.Dialect)>(r3, r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3