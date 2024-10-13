(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3438 0)
(declare-sort var861 0)
(declare-sort var1734 0)
(declare-sort var407 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var407-init () var407)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3438_dialectName/1251239281 (var3438) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/551030747 (var407 String) void)
(declare-const null-var3438 var3438)
(declare-const null-var861 var861)
(declare-const null-var1734 var1734)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1229 var3438) ; Statement: r2 := @this: cn.hutool.db.dialect.Dialect 
(assert (not (= var1229 null-var3438)))
(declare-const var3982 var861) ; Statement: r7 := @parameter0: java.sql.Connection 
(assert (not (= var3982 null-var861)))
(declare-const var535 var1734) ; Statement: r8 := @parameter1: cn.hutool.db.Entity 
(assert (not (= var535 null-var1734)))
(declare-const var3533 (Array Int String)) ; Statement: r9 := @parameter2: java.lang.String[] 
(assert (not (= var3533 null-__Array__Int__String__)))
(define-const var3733 var407 var407-init) ; Statement: $r0 = new java.sql.SQLException 
(define-const var178 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var178)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var178!1 String)
(assert (= var178!1 ""))
(assert true)
(define-const var1877 String (append/672562846 var178!1 "Unsupported upsert operation of ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported upsert operation of ") 
(declare-const var178!2 String)
(assert (= var178!2 (str.++ var178!1 "Unsupported upsert operation of ")))
(define-const var2226 String (var3438_dialectName/1251239281 var1229)) ; Statement: $r3 = interfaceinvoke r2.<cn.hutool.db.dialect.Dialect: java.lang.String dialectName()>() 
(assert true)
(define-const var1485 String (append/672562846 var1877 var2226)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1877!1 String)
(assert (= var1877!1 (str.++ var1877 var2226)))
(assert true)
(define-const var1475 String (toString/-2075883882 var1485)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/551030747 var3733 var1475)) ; Statement: specialinvoke $r0.<java.sql.SQLException: void <init>(java.lang.String)>($r6) 

(declare-const var3733!1 var407)
(declare-const var1475!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var407-init=([], java.sql.SQLException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3438_dialectName/1251239281=([cn.hutool.db.dialect.Dialect], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/551030747=([java.sql.SQLException, java.lang.String], void)}
; {var3438=cn.hutool.db.dialect.Dialect, var1229=r2, var861=java.sql.Connection, var3982=r7, var1734=cn.hutool.db.Entity, var535=r8, var3533=r9, var407=java.sql.SQLException, var3733=$r0, var178=$r1, var1877=$r4, var2226=$r3, var1485=$r5, var1475=$r6}
; {cn.hutool.db.dialect.Dialect=var3438, r2=var1229, java.sql.Connection=var861, r7=var3982, cn.hutool.db.Entity=var1734, r8=var535, r9=var3533, java.sql.SQLException=var407, $r0=var3733, $r1=var178, $r4=var1877, $r3=var2226, $r5=var1485, $r6=var1475}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: cn.hutool.db.dialect.Dialect;	r7 := @parameter0: java.sql.Connection;	r8 := @parameter1: cn.hutool.db.Entity;	r9 := @parameter2: java.lang.String[];	$r0 = new java.sql.SQLException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported upsert operation of ");	$r3 = interfaceinvoke r2.<cn.hutool.db.dialect.Dialect: java.lang.String dialectName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.sql.SQLException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1