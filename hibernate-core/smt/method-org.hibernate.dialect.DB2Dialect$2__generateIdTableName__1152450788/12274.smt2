(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2157 0)
(declare-sort var1934 0)
(declare-sort var3357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun generateIdTableName/735499089 (var3357 String) String)
(declare-fun cast-from-var2157-to-var3357 (var2157) var3357)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2157 var2157)
(declare-const null-String String)
(declare-const var3722 var2157) ; Statement: r1 := @this: org.hibernate.dialect.DB2Dialect$2 
(assert (not (= var3722 null-var2157)))
(declare-const var1517 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1517 null-String)))
(define-const var1716 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1716)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1716!1 String)
(assert (= var1716!1 ""))
(assert true)
(define-const var1925 String (append/672562846 var1716!1 "session.")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("session.") 
(declare-const var1716!2 String)
(assert (= var1716!2 (str.++ var1716!1 "session.")))
(assert true)
(define-const var1001 String (generateIdTableName/735499089 (cast-from-var2157-to-var3357 var3722) var1517)) ; Statement: $r3 = specialinvoke r1.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r2) 
(assert true)
(define-const var2966 String (append/672562846 var1925 var1001)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1925!1 String)
(assert (= var1925!1 (str.++ var1925 var1001)))
(assert true)
(define-const var3816 String (toString/-2075883882 var2966)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), generateIdTableName/735499089=([org.hibernate.hql.spi.id.IdTableSupportStandardImpl, java.lang.String], java.lang.String), cast-from-var2157-to-var3357=([org.hibernate.dialect.DB2Dialect$2], org.hibernate.hql.spi.id.IdTableSupportStandardImpl), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2157=org.hibernate.dialect.DB2Dialect$2, var3722=r1, var1517=r2, var1934=null_type, var1716=$r0, var1925=$r4, var3357=org.hibernate.hql.spi.id.IdTableSupportStandardImpl, var1001=$r3, var2966=$r5, var3816=$r6}
; {org.hibernate.dialect.DB2Dialect$2=var2157, r1=var3722, r2=var1517, null_type=var1934, $r0=var1716, $r4=var1925, org.hibernate.hql.spi.id.IdTableSupportStandardImpl=var3357, $r3=var1001, $r5=var2966, $r6=var3816}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.DB2Dialect$2;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("session.");	$r3 = specialinvoke r1.<org.hibernate.hql.spi.id.IdTableSupportStandardImpl: java.lang.String generateIdTableName(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1