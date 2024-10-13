(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3033 0)
(declare-sort var3089 0)
(declare-sort var3595 0)
(declare-sort var13 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var13_access$000/-1856867008 (var3089 var3595) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3033 var3033)
(declare-const null-var3089 var3089)
(declare-const null-var3595 var3595)
(declare-const var2991 var3033) ; Statement: r6 := @this: org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$NameCatalogFormat 
(assert (not (= var2991 null-var3033)))
(declare-const var640 var3089) ; Statement: r4 := @parameter0: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var640 null-var3089)))
(declare-const var430 var3089) ; Statement: r10 := @parameter1: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var430 null-var3089)))
(declare-const var918 var3089) ; Statement: r1 := @parameter2: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var918 null-var3089)))
(declare-const var485 var3595) ; Statement: r2 := @parameter3: org.hibernate.dialect.Dialect 
(assert (not (= var485 null-var3595)))
(define-const var2441 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2441)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2441!1 String)
(assert (= var2441!1 ""))
(define-const var2433 String (var13_access$000/-1856867008 var918 var485)) ; Statement: $r3 = staticinvoke <org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl: java.lang.String access$000(org.hibernate.boot.model.naming.Identifier,org.hibernate.dialect.Dialect)>(r1, r2) 
(assert true)
;(assert (append/672562846 var2441!1 var2433)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2441!2 String)
(assert (= var2441!2 (str.++ var2441!1 var2433)))
 ; Statement: if r4 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var640 null-var3089)) ; Cond: r4 == null 
(assert true)
(define-const var2436 String (toString/-2075883882 var2441!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var13_access$000/-1856867008=([org.hibernate.boot.model.naming.Identifier, org.hibernate.dialect.Dialect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3033=org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$NameCatalogFormat, var2991=r6, var3089=org.hibernate.boot.model.naming.Identifier, var640=r4, var430=r10, var918=r1, var3595=org.hibernate.dialect.Dialect, var485=r2, var2441=$r0, var13=org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl, var2433=$r3, var2436=$r5}
; {org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$NameCatalogFormat=var3033, r6=var2991, org.hibernate.boot.model.naming.Identifier=var3089, r4=var640, r10=var430, r1=var918, org.hibernate.dialect.Dialect=var3595, r2=var485, $r0=var2441, org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl=var13, $r3=var2433, $r5=var2436}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl$NameCatalogFormat;	r4 := @parameter0: org.hibernate.boot.model.naming.Identifier;	r10 := @parameter1: org.hibernate.boot.model.naming.Identifier;	r1 := @parameter2: org.hibernate.boot.model.naming.Identifier;	r2 := @parameter3: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = staticinvoke <org.hibernate.engine.jdbc.env.internal.QualifiedObjectNameFormatterStandardImpl: java.lang.String access$000(org.hibernate.boot.model.naming.Identifier,org.hibernate.dialect.Dialect)>(r1, r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	if r4 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 2