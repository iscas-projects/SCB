(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1850 0)
(declare-sort var2127 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun supportsIfExistsBeforeTableName/2116380602 (var1850) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCascadeConstraintsString/1107348749 (var1850) String)
(declare-fun supportsIfExistsAfterTableName/21995785 (var1850) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1850 var1850)
(declare-const null-String String)
(declare-const var2965 var1850) ; Statement: r1 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var2965 null-var1850)))
(declare-const var988 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var988 null-String)))
(define-const var3822 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3822 "drop table ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("drop table ") 
(declare-const var3822!1 String)
(assert (= var3822!1 "drop table "))
(assert true)
(define-const var498 Bool (supportsIfExistsBeforeTableName/2116380602 var2965)) ; Statement: $z0 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsIfExistsBeforeTableName()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(assert (= (ite var498 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var490 String (append/672562846 var3822!1 var988)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3822!2 String)
(assert (= var3822!2 (str.++ var3822!1 var988)))
(assert true)
(define-const var3828 String (getCascadeConstraintsString/1107348749 var2965)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getCascadeConstraintsString()>() 
(assert true)
;(assert (append/672562846 var490 var3828)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var490!1 String)
(assert (= var490!1 (str.++ var490 var3828)))
(assert true)
(define-const var2282 Bool (supportsIfExistsAfterTableName/21995785 var2965)) ; Statement: $z1 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsIfExistsAfterTableName()>() 
 ; Statement: if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2282 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3690 String (toString/-2075883882 var3822!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), supportsIfExistsBeforeTableName/2116380602=([org.hibernate.dialect.Dialect], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCascadeConstraintsString/1107348749=([org.hibernate.dialect.Dialect], java.lang.String), supportsIfExistsAfterTableName/21995785=([org.hibernate.dialect.Dialect], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1850=org.hibernate.dialect.Dialect, var2965=r1, var988=r2, var2127=null_type, var3822=$r0, var498=$z0, var490=$r4, var3828=$r3, var2282=$z1, var3690=$r5}
; {org.hibernate.dialect.Dialect=var1850, r1=var2965, r2=var988, null_type=var2127, $r0=var3822, $z0=var498, $r4=var490, $r3=var3828, $z1=var2282, $r5=var3690}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.Dialect;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("drop table ");	$z0 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsIfExistsBeforeTableName()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r3 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String getCascadeConstraintsString()>();	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$z1 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsIfExistsAfterTableName()>();	if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3