(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2634 0)
(declare-sort var3962 0)
(declare-sort var1834 0)
(declare-sort var1696 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1696_access$000/-1856867008 (var3962 var1834) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2634 var2634)
(declare-const null-var3962 var3962)
(declare-const null-var1834 var1834)
(declare-const var3174 var2634) ; Statement: r7 := @this: org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$CatalogNameFormat 
(assert (not (= var3174 null-var2634)))
(declare-const var2807 var3962) ; Statement: r1 := @parameter0: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var2807 null-var3962)))
(declare-const var2025 var3962) ; Statement: r10 := @parameter1: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var2025 null-var3962)))
(declare-const var3638 var3962) ; Statement: r2 := @parameter2: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var3638 null-var3962)))
(declare-const var3788 var1834) ; Statement: r3 := @parameter3: org.hibernate.dialect.Dialect 
(assert (not (= var3788 null-var1834)))
(define-const var3349 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3349)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3349!1 String)
(assert (= var3349!1 ""))
 ; Statement: if r1 == null goto $r4 = staticinvoke <org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl: java.lang.String access$000(org.hibernate.boot.model.naming.Identifier,org.hibernate.dialect.Dialect)>(r2, r3) 
(assert (= var2807 null-var3962)) ; Cond: r1 == null 
(define-const var1613 String (var1696_access$000/-1856867008 var3638 var3788)) ; Statement: $r4 = staticinvoke <org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl: java.lang.String access$000(org.hibernate.boot.model.naming.Identifier,org.hibernate.dialect.Dialect)>(r2, r3) 
(assert true)
;(assert (append/672562846 var3349!1 var1613)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3349!2 String)
(assert (= var3349!2 (str.++ var3349!1 var1613)))
(assert true)
(define-const var1993 String (toString/-2075883882 var3349!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1696_access$000/-1856867008=([org.hibernate.boot.model.naming.Identifier, org.hibernate.dialect.Dialect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2634=org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$CatalogNameFormat, var3174=r7, var3962=org.hibernate.boot.model.naming.Identifier, var2807=r1, var2025=r10, var3638=r2, var1834=org.hibernate.dialect.Dialect, var3788=r3, var3349=$r0, var1696=org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl, var1613=$r4, var1993=$r5}
; {org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$CatalogNameFormat=var2634, r7=var3174, org.hibernate.boot.model.naming.Identifier=var3962, r1=var2807, r10=var2025, r2=var3638, org.hibernate.dialect.Dialect=var1834, r3=var3788, $r0=var3349, org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl=var1696, $r4=var1613, $r5=var1993}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$CatalogNameFormat;	r1 := @parameter0: org.hibernate.boot.model.naming.Identifier;	r10 := @parameter1: org.hibernate.boot.model.naming.Identifier;	r2 := @parameter2: org.hibernate.boot.model.naming.Identifier;	r3 := @parameter3: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if r1 == null goto $r4 = staticinvoke <org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl: java.lang.String access$000(org.hibernate.boot.model.naming.Identifier,org.hibernate.dialect.Dialect)>(r2, r3);	$r4 = staticinvoke <org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl: java.lang.String access$000(org.hibernate.boot.model.naming.Identifier,org.hibernate.dialect.Dialect)>(r2, r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 2