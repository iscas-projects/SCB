(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var11 0)
(declare-sort var806 0)
(declare-sort var3397 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun generateIdTableName/735499089 (var3397 String) String)
(declare-fun cast-from-var11-to-var3397 (var11) var3397)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var11 var11)
(declare-const null-String String)
(declare-const var2619 var11) ; Statement: r1 := @this: org.hibernate.dialect.IngresDialect$1 
(assert (not (= var2619 null-var11)))
(declare-const var1840 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1840 null-String)))
(define-const var423 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var423)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var423!1 String)
(assert (= var423!1 ""))
(assert true)
(define-const var1943 String (append/672562846 var423!1 "session.")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("session.") 
(declare-const var423!2 String)
(assert (= var423!2 (str.++ var423!1 "session.")))
(assert true)
(define-const var2394 String (generateIdTableName/735499089 (cast-from-var11-to-var3397 var2619) var1840)) ; Statement: $r3 = specialinvoke r1.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r2) 
(assert true)
(define-const var998 String (append/672562846 var1943 var2394)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1943!1 String)
(assert (= var1943!1 (str.++ var1943 var2394)))
(assert true)
(define-const var1729 String (toString/-2075883882 var998)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), generateIdTableName/735499089=([org.hibernate.hql.spi.id.IdTableSupportStandardImpl, java.lang.String], java.lang.String), cast-from-var11-to-var3397=([org.hibernate.dialect.IngresDialect$1], org.hibernate.hql.spi.id.IdTableSupportStandardImpl), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var11=org.hibernate.dialect.IngresDialect$1, var2619=r1, var1840=r2, var806=null_type, var423=$r0, var1943=$r4, var3397=org.hibernate.hql.spi.id.IdTableSupportStandardImpl, var2394=$r3, var998=$r5, var1729=$r6}
; {org.hibernate.dialect.IngresDialect$1=var11, r1=var2619, r2=var1840, null_type=var806, $r0=var423, $r4=var1943, org.hibernate.hql.spi.id.IdTableSupportStandardImpl=var3397, $r3=var2394, $r5=var998, $r6=var1729}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.IngresDialect$1;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("session.");	$r3 = specialinvoke r1.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1