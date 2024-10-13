(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var622 0)
(declare-sort var639 0)
(declare-sort var240 0)
(declare-sort var2609 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2609_access$000/-1856867008 (var639 var240) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var622 var622)
(declare-const null-var639 var639)
(declare-const null-var240 var240)
(declare-const var3167 var622) ; Statement: r7 := @this: org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$SchemaNameCatalogFormat 
(assert (not (= var3167 null-var622)))
(declare-const var1468 var639) ; Statement: r5 := @parameter0: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var1468 null-var639)))
(declare-const var2578 var639) ; Statement: r1 := @parameter1: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var2578 null-var639)))
(declare-const var909 var639) ; Statement: r2 := @parameter2: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var909 null-var639)))
(declare-const var1978 var240) ; Statement: r3 := @parameter3: org.hibernate.dialect.Dialect 
(assert (not (= var1978 null-var240)))
(define-const var2841 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2841)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2841!1 String)
(assert (= var2841!1 ""))
 ; Statement: if r1 == null goto $r4 = staticinvoke <org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl: java.lang.String access$000(org.hibernate.boot.model.naming.Identifier,org.hibernate.dialect.Dialect)>(r2, r3) 
(assert (= var2578 null-var639)) ; Cond: r1 == null 
(define-const var1569 String (var2609_access$000/-1856867008 var909 var1978)) ; Statement: $r4 = staticinvoke <org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl: java.lang.String access$000(org.hibernate.boot.model.naming.Identifier,org.hibernate.dialect.Dialect)>(r2, r3) 
(assert true)
;(assert (append/672562846 var2841!1 var1569)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2841!2 String)
(assert (= var2841!2 (str.++ var2841!1 var1569)))
 ; Statement: if r5 == null goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1468 null-var639)) ; Cond: r5 == null 
(assert true)
(define-const var1578 String (toString/-2075883882 var2841!2)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2609_access$000/-1856867008=([org.hibernate.boot.model.naming.Identifier, org.hibernate.dialect.Dialect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var622=org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$SchemaNameCatalogFormat, var3167=r7, var639=org.hibernate.boot.model.naming.Identifier, var1468=r5, var2578=r1, var909=r2, var240=org.hibernate.dialect.Dialect, var1978=r3, var2841=$r0, var2609=org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl, var1569=$r4, var1578=$r6}
; {org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$SchemaNameCatalogFormat=var622, r7=var3167, org.hibernate.boot.model.naming.Identifier=var639, r5=var1468, r1=var2578, r2=var909, org.hibernate.dialect.Dialect=var240, r3=var1978, $r0=var2841, org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl=var2609, $r4=var1569, $r6=var1578}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$SchemaNameCatalogFormat;	r5 := @parameter0: org.hibernate.boot.model.naming.Identifier;	r1 := @parameter1: org.hibernate.boot.model.naming.Identifier;	r2 := @parameter2: org.hibernate.boot.model.naming.Identifier;	r3 := @parameter3: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if r1 == null goto $r4 = staticinvoke <org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl: java.lang.String access$000(org.hibernate.boot.model.naming.Identifier,org.hibernate.dialect.Dialect)>(r2, r3);	$r4 = staticinvoke <org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl: java.lang.String access$000(org.hibernate.boot.model.naming.Identifier,org.hibernate.dialect.Dialect)>(r2, r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	if r5 == null goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3