(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3552 0)
(declare-sort var3440 0)
(declare-sort var121 0)
(declare-sort var479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var479_access$000/-1856867008 (var3440 var121) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3552 var3552)
(declare-const null-var3440 var3440)
(declare-const null-var121 var121)
(declare-const var3274 var3552) ; Statement: r8 := @this: org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$SchemaNameFormat 
(assert (not (= var3274 null-var3552)))
(declare-const var2622 var3440) ; Statement: r9 := @parameter0: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var2622 null-var3440)))
(declare-const var664 var3440) ; Statement: r1 := @parameter1: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var664 null-var3440)))
(declare-const var3813 var3440) ; Statement: r2 := @parameter2: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var3813 null-var3440)))
(declare-const var2020 var121) ; Statement: r3 := @parameter3: org.hibernate.dialect.Dialect 
(assert (not (= var2020 null-var121)))
(define-const var351 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var351)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var351!1 String)
(assert (= var351!1 ""))
 ; Statement: if r1 == null goto $r4 = staticinvoke <org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl: java.lang.String access$000(org.hibernate.boot.model.naming.Identifier,org.hibernate.dialect.Dialect)>(r2, r3) 
(assert (= var664 null-var3440)) ; Cond: r1 == null 
(define-const var1801 String (var479_access$000/-1856867008 var3813 var2020)) ; Statement: $r4 = staticinvoke <org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl: java.lang.String access$000(org.hibernate.boot.model.naming.Identifier,org.hibernate.dialect.Dialect)>(r2, r3) 
(assert true)
;(assert (append/672562846 var351!1 var1801)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var351!2 String)
(assert (= var351!2 (str.++ var351!1 var1801)))
(assert true)
(define-const var107 String (toString/-2075883882 var351!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var479_access$000/-1856867008=([org.hibernate.boot.model.naming.Identifier, org.hibernate.dialect.Dialect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3552=org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$SchemaNameFormat, var3274=r8, var3440=org.hibernate.boot.model.naming.Identifier, var2622=r9, var664=r1, var3813=r2, var121=org.hibernate.dialect.Dialect, var2020=r3, var351=$r0, var479=org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl, var1801=$r4, var107=$r5}
; {org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$SchemaNameFormat=var3552, r8=var3274, org.hibernate.boot.model.naming.Identifier=var3440, r9=var2622, r1=var664, r2=var3813, org.hibernate.dialect.Dialect=var121, r3=var2020, $r0=var351, org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl=var479, $r4=var1801, $r5=var107}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$SchemaNameFormat;	r9 := @parameter0: org.hibernate.boot.model.naming.Identifier;	r1 := @parameter1: org.hibernate.boot.model.naming.Identifier;	r2 := @parameter2: org.hibernate.boot.model.naming.Identifier;	r3 := @parameter3: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if r1 == null goto $r4 = staticinvoke <org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl: java.lang.String access$000(org.hibernate.boot.model.naming.Identifier,org.hibernate.dialect.Dialect)>(r2, r3);	$r4 = staticinvoke <org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl: java.lang.String access$000(org.hibernate.boot.model.naming.Identifier,org.hibernate.dialect.Dialect)>(r2, r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 2