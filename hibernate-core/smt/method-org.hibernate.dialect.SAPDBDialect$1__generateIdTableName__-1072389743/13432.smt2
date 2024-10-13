(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2793 0)
(declare-sort var2761 0)
(declare-sort var620 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun generateIdTableName/735499089 (var620 String) String)
(declare-fun cast-from-var2793-to-var620 (var2793) var620)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2793 var2793)
(declare-const null-String String)
(declare-const var3063 var2793) ; Statement: r1 := @this: org.hibernate.dialect.SAPDBDialect$1 
(assert (not (= var3063 null-var2793)))
(declare-const var3913 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3913 null-String)))
(define-const var946 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var946)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var946!1 String)
(assert (= var946!1 ""))
(assert true)
(define-const var3306 String (append/672562846 var946!1 "temp.")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("temp.") 
(declare-const var946!2 String)
(assert (= var946!2 (str.++ var946!1 "temp.")))
(assert true)
(define-const var430 String (generateIdTableName/735499089 (cast-from-var2793-to-var620 var3063) var3913)) ; Statement: $r3 = specialinvoke r1.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r2) 
(assert true)
(define-const var2139 String (append/672562846 var3306 var430)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3306!1 String)
(assert (= var3306!1 (str.++ var3306 var430)))
(assert true)
(define-const var1419 String (toString/-2075883882 var2139)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), generateIdTableName/735499089=([org.hibernate.hql.spi.id.IdTableSupportStandardImpl, java.lang.String], java.lang.String), cast-from-var2793-to-var620=([org.hibernate.dialect.SAPDBDialect$1], org.hibernate.hql.spi.id.IdTableSupportStandardImpl), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2793=org.hibernate.dialect.SAPDBDialect$1, var3063=r1, var3913=r2, var2761=null_type, var946=$r0, var3306=$r4, var620=org.hibernate.hql.spi.id.IdTableSupportStandardImpl, var430=$r3, var2139=$r5, var1419=$r6}
; {org.hibernate.dialect.SAPDBDialect$1=var2793, r1=var3063, r2=var3913, null_type=var2761, $r0=var946, $r4=var3306, org.hibernate.hql.spi.id.IdTableSupportStandardImpl=var620, $r3=var430, $r5=var2139, $r6=var1419}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.SAPDBDialect$1;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("temp.");	$r3 = specialinvoke r1.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1