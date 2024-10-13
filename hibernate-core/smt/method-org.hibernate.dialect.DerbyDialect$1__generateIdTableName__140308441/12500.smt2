(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1211 0)
(declare-sort var667 0)
(declare-sort var57 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun generateIdTableName/735499089 (var57 String) String)
(declare-fun cast-from-var1211-to-var57 (var1211) var57)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1211 var1211)
(declare-const null-String String)
(declare-const var3762 var1211) ; Statement: r1 := @this: org.hibernate.dialect.DerbyDialect$1 
(assert (not (= var3762 null-var1211)))
(declare-const var1669 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1669 null-String)))
(define-const var2037 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2037)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2037!1 String)
(assert (= var2037!1 ""))
(assert true)
(define-const var1555 String (append/672562846 var2037!1 "session.")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("session.") 
(declare-const var2037!2 String)
(assert (= var2037!2 (str.++ var2037!1 "session.")))
(assert true)
(define-const var1487 String (generateIdTableName/735499089 (cast-from-var1211-to-var57 var3762) var1669)) ; Statement: $r3 = specialinvoke r1.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r2) 
(assert true)
(define-const var1199 String (append/672562846 var1555 var1487)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1555!1 String)
(assert (= var1555!1 (str.++ var1555 var1487)))
(assert true)
(define-const var1027 String (toString/-2075883882 var1199)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), generateIdTableName/735499089=([org.hibernate.hql.spi.id.IdTableSupportStandardImpl, java.lang.String], java.lang.String), cast-from-var1211-to-var57=([org.hibernate.dialect.DerbyDialect$1], org.hibernate.hql.spi.id.IdTableSupportStandardImpl), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1211=org.hibernate.dialect.DerbyDialect$1, var3762=r1, var1669=r2, var667=null_type, var2037=$r0, var1555=$r4, var57=org.hibernate.hql.spi.id.IdTableSupportStandardImpl, var1487=$r3, var1199=$r5, var1027=$r6}
; {org.hibernate.dialect.DerbyDialect$1=var1211, r1=var3762, r2=var1669, null_type=var667, $r0=var2037, $r4=var1555, org.hibernate.hql.spi.id.IdTableSupportStandardImpl=var57, $r3=var1487, $r5=var1199, $r6=var1027}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.DerbyDialect$1;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("session.");	$r3 = specialinvoke r1.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1