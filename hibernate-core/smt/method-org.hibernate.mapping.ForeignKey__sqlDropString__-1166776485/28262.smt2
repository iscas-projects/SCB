(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1463 0)
(declare-sort var495 0)
(declare-sort var2042 0)
(declare-sort var3056 0)
(declare-sort var1667 0)
(declare-sort var1688 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var495_getDialect/-253498657 (var495) var3056)
(declare-fun getTable/2028539592 (var1688) var1667)
(declare-fun cast-from-var1463-to-var1688 (var1463) var1688)
(declare-fun getQualifiedName/-1090669273 (var1667 var495) String)
(declare-fun String-init () String)
(declare-fun getAlterTableString/-573220996 (var3056 String) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getDropForeignKeyString/2090915637 (var3056) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun supportsIfExistsBeforeConstraintName/562498463 (var3056) Bool)
(declare-fun getName/-2142322286 (var1688) String)
(declare-fun quote/1287717023 (var3056 String) String)
(declare-fun supportsIfExistsAfterConstraintName/-744010832 (var3056) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1463 var1463)
(declare-const null-var495 var495)
(declare-const null-String String)
(declare-const var157 var1463) ; Statement: r2 := @this: org.hibernate.mapping.ForeignKey 
(assert (not (= var157 null-var1463)))
(declare-const var1766 var495) ; Statement: r0 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var1766 null-var495)))
(declare-const var593 String) ; Statement: r11 := @parameter1: java.lang.String 
(assert (not (= var593 null-String)))
(declare-const var663 String) ; Statement: r12 := @parameter2: java.lang.String 
(assert (not (= var663 null-String)))
(define-const var2566 var3056 (var495_getDialect/-253498657 var1766)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
(define-const var3626 var1667 (getTable/2028539592 (cast-from-var1463-to-var1688 var157))) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.mapping.ForeignKey: org.hibernate.mapping.Table getTable()>() 
(assert true)
(define-const var134 String (getQualifiedName/-1090669273 var3626 var1766)) ; Statement: r4 = virtualinvoke $r3.<org.hibernate.mapping.Table: java.lang.String getQualifiedName(org.hibernate.boot.model.relational.SqlStringGenerationContext)>(r0) 
(define-const var266 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
(define-const var2164 String (getAlterTableString/-573220996 var2566 var134)) ; Statement: $r6 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getAlterTableString(java.lang.String)>(r4) 
(assert true)
;(assert (<init>/-1061048412 var266 var2164)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>($r6) 
(declare-const var266!1 String)
(assert (= var266!1 var2164))
(assert true)
(define-const var1741 String (getDropForeignKeyString/2090915637 var2566)) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getDropForeignKeyString()>() 
(assert true)
;(assert (append/672562846 var266!1 var1741)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var266!2 String)
(assert (= var266!2 (str.++ var266!1 var1741)))
(assert true)
(define-const var2861 Bool (supportsIfExistsBeforeConstraintName/562498463 var2566)) ; Statement: $z0 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsIfExistsBeforeConstraintName()>() 
 ; Statement: if $z0 == 0 goto $r8 = virtualinvoke r2.<org.hibernate.mapping.ForeignKey: java.lang.String getName()>() 
(assert (= (ite var2861 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1529 String (getName/-2142322286 (cast-from-var1463-to-var1688 var157))) ; Statement: $r8 = virtualinvoke r2.<org.hibernate.mapping.ForeignKey: java.lang.String getName()>() 
(assert true)
(define-const var1074 String (quote/1287717023 var2566 var1529)) ; Statement: $r9 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String quote(java.lang.String)>($r8) 
(assert true)
;(assert (append/672562846 var266!2 var1074)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var266!3 String)
(assert (= var266!3 (str.++ var266!2 var1074)))
(assert true)
(define-const var3436 Bool (supportsIfExistsAfterConstraintName/-744010832 var2566)) ; Statement: $z1 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsIfExistsAfterConstraintName()>() 
 ; Statement: if $z1 == 0 goto $r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3436 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var511 String (toString/-2075883882 var266!3)) ; Statement: $r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var495_getDialect/-253498657=([org.hibernate.boot.model.relational.SqlStringGenerationContext], org.hibernate.dialect.Dialect), getTable/2028539592=([org.hibernate.mapping.Constraint], org.hibernate.mapping.Table), cast-from-var1463-to-var1688=([org.hibernate.mapping.ForeignKey], org.hibernate.mapping.Constraint), getQualifiedName/-1090669273=([org.hibernate.mapping.Table, org.hibernate.boot.model.relational.SqlStringGenerationContext], java.lang.String), String-init=([], java.lang.StringBuilder), getAlterTableString/-573220996=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getDropForeignKeyString/2090915637=([org.hibernate.dialect.Dialect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), supportsIfExistsBeforeConstraintName/562498463=([org.hibernate.dialect.Dialect], boolean), getName/-2142322286=([org.hibernate.mapping.Constraint], java.lang.String), quote/1287717023=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String), supportsIfExistsAfterConstraintName/-744010832=([org.hibernate.dialect.Dialect], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1463=org.hibernate.mapping.ForeignKey, var157=r2, var495=org.hibernate.boot.model.relational.SqlStringGenerationContext, var1766=r0, var593=r11, var2042=null_type, var663=r12, var3056=org.hibernate.dialect.Dialect, var2566=r1, var1667=org.hibernate.mapping.Table, var1688=org.hibernate.mapping.Constraint, var3626=$r3, var134=r4, var266=$r5, var2164=$r6, var1741=$r7, var2861=$z0, var1529=$r8, var1074=$r9, var3436=$z1, var511=$r10}
; {org.hibernate.mapping.ForeignKey=var1463, r2=var157, org.hibernate.boot.model.relational.SqlStringGenerationContext=var495, r0=var1766, r11=var593, null_type=var2042, r12=var663, org.hibernate.dialect.Dialect=var3056, r1=var2566, org.hibernate.mapping.Table=var1667, org.hibernate.mapping.Constraint=var1688, $r3=var3626, r4=var134, $r5=var266, $r6=var2164, $r7=var1741, $z0=var2861, $r8=var1529, $r9=var1074, $z1=var3436, $r10=var511}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.mapping.ForeignKey;	r0 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext;	r11 := @parameter1: java.lang.String;	r12 := @parameter2: java.lang.String;	r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: org.hibernate.dialect.Dialect getDialect()>();	$r3 = virtualinvoke r2.<org.hibernate.mapping.ForeignKey: org.hibernate.mapping.Table getTable()>();	r4 = virtualinvoke $r3.<org.hibernate.mapping.Table: java.lang.String getQualifiedName(org.hibernate.boot.model.relational.SqlStringGenerationContext)>(r0);	$r5 = new java.lang.StringBuilder;	$r6 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getAlterTableString(java.lang.String)>(r4);	specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>($r6);	$r7 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getDropForeignKeyString()>();	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$z0 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsIfExistsBeforeConstraintName()>();	if $z0 == 0 goto $r8 = virtualinvoke r2.<org.hibernate.mapping.ForeignKey: java.lang.String getName()>();	$r8 = virtualinvoke r2.<org.hibernate.mapping.ForeignKey: java.lang.String getName()>();	$r9 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String quote(java.lang.String)>($r8);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$z1 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsIfExistsAfterConstraintName()>();	if $z1 == 0 goto $r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3