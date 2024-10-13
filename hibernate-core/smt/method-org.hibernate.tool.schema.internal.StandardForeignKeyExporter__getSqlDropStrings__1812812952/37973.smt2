(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2566 0)
(declare-sort var2532 0)
(declare-sort var357 0)
(declare-sort var3627 0)
(declare-sort var3728 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getAlterTableString/-573220996 (var3627 String) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getDropForeignKeyString/2090915637 (var3627) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun supportsIfExistsBeforeConstraintName/562498463 (var3627) Bool)
(declare-fun getName/-2142322286 (var3728) String)
(declare-fun cast-from-var357-to-var3728 (var357) var3728)
(declare-fun quote/1287717023 (var3627 String) String)
(declare-fun supportsIfExistsAfterConstraintName/-744010832 (var3627) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2566 var2566)
(declare-const null-String String)
(declare-const null-var357 var357)
(declare-const null-var3627 var3627)
(declare-const var2852 var2566) ; Statement: r9 := @this: org.hibernate.tool.schema.internal.StandardForeignKeyExporter 
(assert (not (= var2852 null-var2566)))
(declare-const var2419 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2419 null-String)))
(declare-const var1563 var357) ; Statement: r5 := @parameter1: org.hibernate.mapping.ForeignKey 
(assert (not (= var1563 null-var357)))
(declare-const var1118 var3627) ; Statement: r1 := @parameter2: org.hibernate.dialect.Dialect 
(assert (not (= var1118 null-var3627)))
(define-const var2265 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var2227 String (getAlterTableString/-573220996 var1118 var2419)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getAlterTableString(java.lang.String)>(r2) 
(assert true)
;(assert (<init>/-1061048412 var2265 var2227)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3) 
(declare-const var2265!1 String)
(assert (= var2265!1 var2227))
(assert true)
(define-const var1159 String (getDropForeignKeyString/2090915637 var1118)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getDropForeignKeyString()>() 
(assert true)
;(assert (append/672562846 var2265!1 var1159)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2265!2 String)
(assert (= var2265!2 (str.++ var2265!1 var1159)))
(assert true)
(define-const var2439 Bool (supportsIfExistsBeforeConstraintName/562498463 var1118)) ; Statement: $z0 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsIfExistsBeforeConstraintName()>() 
 ; Statement: if $z0 == 0 goto $r6 = virtualinvoke r5.<org.hibernate.mapping.ForeignKey: java.lang.String getName()>() 
(assert (= (ite var2439 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2155 String (getName/-2142322286 (cast-from-var357-to-var3728 var1563))) ; Statement: $r6 = virtualinvoke r5.<org.hibernate.mapping.ForeignKey: java.lang.String getName()>() 
(assert true)
(define-const var3615 String (quote/1287717023 var1118 var2155)) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String quote(java.lang.String)>($r6) 
(assert true)
;(assert (append/672562846 var2265!2 var3615)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2265!3 String)
(assert (= var2265!3 (str.++ var2265!2 var3615)))
(assert true)
(define-const var3131 Bool (supportsIfExistsAfterConstraintName/-744010832 var1118)) ; Statement: $z1 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsIfExistsAfterConstraintName()>() 
 ; Statement: if $z1 == 0 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3131 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var597 String (toString/-2075883882 var2265!3)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), getAlterTableString/-573220996=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getDropForeignKeyString/2090915637=([org.hibernate.dialect.Dialect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), supportsIfExistsBeforeConstraintName/562498463=([org.hibernate.dialect.Dialect], boolean), getName/-2142322286=([org.hibernate.mapping.Constraint], java.lang.String), cast-from-var357-to-var3728=([org.hibernate.mapping.ForeignKey], org.hibernate.mapping.Constraint), quote/1287717023=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String), supportsIfExistsAfterConstraintName/-744010832=([org.hibernate.dialect.Dialect], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2566=org.hibernate.tool.schema.internal.StandardForeignKeyExporter, var2852=r9, var2419=r2, var2532=null_type, var357=org.hibernate.mapping.ForeignKey, var1563=r5, var3627=org.hibernate.dialect.Dialect, var1118=r1, var2265=$r0, var2227=$r3, var1159=$r4, var2439=$z0, var3728=org.hibernate.mapping.Constraint, var2155=$r6, var3615=$r7, var3131=$z1, var597=$r8}
; {org.hibernate.tool.schema.internal.StandardForeignKeyExporter=var2566, r9=var2852, r2=var2419, null_type=var2532, org.hibernate.mapping.ForeignKey=var357, r5=var1563, org.hibernate.dialect.Dialect=var3627, r1=var1118, $r0=var2265, $r3=var2227, $r4=var1159, $z0=var2439, org.hibernate.mapping.Constraint=var3728, $r6=var2155, $r7=var3615, $z1=var3131, $r8=var597}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.tool.schema.internal.StandardForeignKeyExporter;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: org.hibernate.mapping.ForeignKey;	r1 := @parameter2: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	$r3 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getAlterTableString(java.lang.String)>(r2);	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3);	$r4 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getDropForeignKeyString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$z0 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsIfExistsBeforeConstraintName()>();	if $z0 == 0 goto $r6 = virtualinvoke r5.<org.hibernate.mapping.ForeignKey: java.lang.String getName()>();	$r6 = virtualinvoke r5.<org.hibernate.mapping.ForeignKey: java.lang.String getName()>();	$r7 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String quote(java.lang.String)>($r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$z1 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsIfExistsAfterConstraintName()>();	if $z1 == 0 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3