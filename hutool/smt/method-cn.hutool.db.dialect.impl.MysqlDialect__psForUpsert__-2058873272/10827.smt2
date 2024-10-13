(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2997 0)
(declare-sort var334 0)
(declare-sort var3964 0)
(declare-sort var805 0)
(declare-sort var2565 0)
(declare-sort var3444 0)
(declare-sort var185 0)
(declare-sort var2207 0)
(declare-sort var3826 0)
(declare-sort var3804 0)
(declare-sort var3859 0)
(declare-sort var3337 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var805_validateEntity/970713086 (var3964) void)
(declare-fun wrapper/1376218167 (var3444) var2565)
(declare-fun cast-from-var2997-to-var3444 (var2997) var3444)
(declare-fun var805_create/-1666572224 (var2565) var805)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2207_bootstrap$/1555049721 (var2997 String String String var805) var185)
(declare-fun forEach/-83680035 (var3826 var185) void)
(declare-fun cast-from-var3964-to-var3826 (var3964) var3826)
(declare-fun getTableName/-517879498 (var3964) String)
(declare-fun append/-76071956 (var805 var3804) var805)
(declare-fun cast-from-String-to-var3804 (String) var3804)
(declare-fun var3337_prepareStatement/1601996539 (var334 var805) var3859)
(declare-const null-var2997 var2997)
(declare-const null-var334 var334)
(declare-const null-var3964 var3964)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var2565 var2565)
(declare-const var3898 var2997) ; Statement: r1 := @this: cn.hutool.db.dialect.impl.MysqlDialect 
(assert (not (= var3898 null-var2997)))
(declare-const var1870 var334) ; Statement: r16 := @parameter0: java.sql.Connection 
(assert (not (= var1870 null-var334)))
(declare-const var234 var3964) ; Statement: r0 := @parameter1: cn.hutool.db.Entity 
(assert (not (= var234 null-var3964)))
(declare-const var2303 (Array Int String)) ; Statement: r19 := @parameter2: java.lang.String[] 
(assert (not (= var2303 null-__Array__Int__String__)))
;(assert (var805_validateEntity/970713086 var234)) ; Statement: staticinvoke <cn.hutool.db.sql.SqlBuilder: void validateEntity(cn.hutool.db.Entity)>(r0) 

(declare-const var234!1 var3964)
(define-const var615 var2565 (wrapper/1376218167 (cast-from-var2997-to-var3444 var3898))) ; Statement: $r2 = r1.<cn.hutool.db.dialect.impl.MysqlDialect: cn.hutool.db.sql.Wrapper wrapper> 
(define-const var1892 var805 (var805_create/-1666572224 var615)) ; Statement: r3 = staticinvoke <cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder create(cn.hutool.db.sql.Wrapper)>($r2) 
(define-const var445 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var445)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var445!1 String)
(assert (= var445!1 ""))
(define-const var2435 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2435)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2435!1 String)
(assert (= var2435!1 ""))
(define-const var958 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var958)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var958!1 String)
(assert (= var958!1 ""))
(define-const var3505 var185 (var2207_bootstrap$/1555049721 var3898 var445!1 var2435!1 var958!1 var1892)) ; Statement: $r7 = staticinvoke <cn.hutool.db.dialect.impl.MysqlDialect$lambda_psForUpsert_0__516: java.util.function.BiConsumer bootstrap$(cn.hutool.db.dialect.impl.MysqlDialect,java.lang.StringBuilder,java.lang.StringBuilder,java.lang.StringBuilder,cn.hutool.db.sql.SqlBuilder)>(r1, $r4, $r5, $r6, r3) 
(assert true)
;(assert (forEach/-83680035 (cast-from-var3964-to-var3826 var234!1) var3505)) ; Statement: virtualinvoke r0.<cn.hutool.db.Entity: void forEach(java.util.function.BiConsumer)>($r7) 

(declare-const var234!2 var3964)
(declare-const var3505!1 var185)
(assert true)
(define-const var3106 String (getTableName/-517879498 var234!2)) ; Statement: r20 = virtualinvoke r0.<cn.hutool.db.Entity: java.lang.String getTableName()>() 
(define-const var1450 var2565 (wrapper/1376218167 (cast-from-var2997-to-var3444 var3898))) ; Statement: $r8 = r1.<cn.hutool.db.dialect.impl.MysqlDialect: cn.hutool.db.sql.Wrapper wrapper> 
 ; Statement: if null == $r8 goto $r9 = virtualinvoke r3.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>("INSERT INTO ") 
(assert (= null-var2565 var1450)) ; Cond: null == $r8 
(assert true)
(define-const var2848 var805 (append/-76071956 var1892 (cast-from-String-to-var3804 "INSERT INTO "))) ; Statement: $r9 = virtualinvoke r3.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>("INSERT INTO ") 
(assert true)
(define-const var1635 var805 (append/-76071956 var2848 (cast-from-String-to-var3804 var3106))) ; Statement: $r10 = virtualinvoke $r9.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(r20) 
(assert true)
(define-const var3670 var805 (append/-76071956 var1635 (cast-from-String-to-var3804 " ("))) ; Statement: $r11 = virtualinvoke $r10.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(" (") 
(assert true)
(define-const var326 var805 (append/-76071956 var3670 (cast-from-String-to-var3804 var445!1))) ; Statement: $r12 = virtualinvoke $r11.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r4) 
(assert true)
(define-const var697 var805 (append/-76071956 var326 (cast-from-String-to-var3804 ") VALUES ("))) ; Statement: $r13 = virtualinvoke $r12.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(") VALUES (") 
(assert true)
(define-const var2878 var805 (append/-76071956 var697 (cast-from-String-to-var3804 var2435!1))) ; Statement: $r14 = virtualinvoke $r13.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r5) 
(assert true)
(define-const var2824 var805 (append/-76071956 var2878 (cast-from-String-to-var3804 ") ON DUPLICATE KEY UPDATE "))) ; Statement: $r15 = virtualinvoke $r14.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(") ON DUPLICATE KEY UPDATE ") 
(assert true)
;(assert (append/-76071956 var2824 (cast-from-String-to-var3804 var958!1))) ; Statement: virtualinvoke $r15.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r6) 

(declare-const var2824!1 var805)
(declare-const var958!2 String)
(define-const var1716 var3859 (var3337_prepareStatement/1601996539 var1870 var1892)) ; Statement: $r17 = staticinvoke <cn.hutool.db.StatementUtil: java.sql.PreparedStatement prepareStatement(java.sql.Connection,cn.hutool.db.sql.SqlBuilder)>(r16, r3) 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var805_validateEntity/970713086=([cn.hutool.db.Entity], void), wrapper/1376218167=([cn.hutool.db.dialect.impl.AnsiSqlDialect], cn.hutool.db.sql.Wrapper), cast-from-var2997-to-var3444=([cn.hutool.db.dialect.impl.MysqlDialect], cn.hutool.db.dialect.impl.AnsiSqlDialect), var805_create/-1666572224=([cn.hutool.db.sql.Wrapper], cn.hutool.db.sql.SqlBuilder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2207_bootstrap$/1555049721=([cn.hutool.db.dialect.impl.MysqlDialect, java.lang.StringBuilder, java.lang.StringBuilder, java.lang.StringBuilder, cn.hutool.db.sql.SqlBuilder], java.util.function.BiConsumer), forEach/-83680035=([java.util.LinkedHashMap, java.util.function.BiConsumer], void), cast-from-var3964-to-var3826=([cn.hutool.db.Entity], java.util.LinkedHashMap), getTableName/-517879498=([cn.hutool.db.Entity], java.lang.String), append/-76071956=([cn.hutool.db.sql.SqlBuilder, java.lang.Object], cn.hutool.db.sql.SqlBuilder), cast-from-String-to-var3804=([java.lang.String], java.lang.Object), var3337_prepareStatement/1601996539=([java.sql.Connection, cn.hutool.db.sql.SqlBuilder], java.sql.PreparedStatement)}
; {var2997=cn.hutool.db.dialect.impl.MysqlDialect, var3898=r1, var334=java.sql.Connection, var1870=r16, var3964=cn.hutool.db.Entity, var234=r0, var2303=r19, var805=cn.hutool.db.sql.SqlBuilder, var2565=cn.hutool.db.sql.Wrapper, var3444=cn.hutool.db.dialect.impl.AnsiSqlDialect, var615=$r2, var1892=r3, var445=$r4, var2435=$r5, var958=$r6, var185=java.util.function.BiConsumer, var2207=cn.hutool.db.dialect.impl.MysqlDialect$lambda_psForUpsert_0__516, var3505=$r7, var3826=java.util.LinkedHashMap, var3106=r20, var1450=$r8, var3804=java.lang.Object, var2848=$r9, var1635=$r10, var3670=$r11, var326=$r12, var697=$r13, var2878=$r14, var2824=$r15, var3859=java.sql.PreparedStatement, var3337=cn.hutool.db.StatementUtil, var1716=$r17}
; {cn.hutool.db.dialect.impl.MysqlDialect=var2997, r1=var3898, java.sql.Connection=var334, r16=var1870, cn.hutool.db.Entity=var3964, r0=var234, r19=var2303, cn.hutool.db.sql.SqlBuilder=var805, cn.hutool.db.sql.Wrapper=var2565, cn.hutool.db.dialect.impl.AnsiSqlDialect=var3444, $r2=var615, r3=var1892, $r4=var445, $r5=var2435, $r6=var958, java.util.function.BiConsumer=var185, cn.hutool.db.dialect.impl.MysqlDialect$lambda_psForUpsert_0__516=var2207, $r7=var3505, java.util.LinkedHashMap=var3826, r20=var3106, $r8=var1450, java.lang.Object=var3804, $r9=var2848, $r10=var1635, $r11=var3670, $r12=var326, $r13=var697, $r14=var2878, $r15=var2824, java.sql.PreparedStatement=var3859, cn.hutool.db.StatementUtil=var3337, $r17=var1716}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3}
;stmts r1 := @this: cn.hutool.db.dialect.impl.MysqlDialect;	r16 := @parameter0: java.sql.Connection;	r0 := @parameter1: cn.hutool.db.Entity;	r19 := @parameter2: java.lang.String[];	staticinvoke <cn.hutool.db.sql.SqlBuilder: void validateEntity(cn.hutool.db.Entity)>(r0);	$r2 = r1.<cn.hutool.db.dialect.impl.MysqlDialect: cn.hutool.db.sql.Wrapper wrapper>;	r3 = staticinvoke <cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder create(cn.hutool.db.sql.Wrapper)>($r2);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = staticinvoke <cn.hutool.db.dialect.impl.MysqlDialect$lambda_psForUpsert_0__516: java.util.function.BiConsumer bootstrap$(cn.hutool.db.dialect.impl.MysqlDialect,java.lang.StringBuilder,java.lang.StringBuilder,java.lang.StringBuilder,cn.hutool.db.sql.SqlBuilder)>(r1, $r4, $r5, $r6, r3);	virtualinvoke r0.<cn.hutool.db.Entity: void forEach(java.util.function.BiConsumer)>($r7);	r20 = virtualinvoke r0.<cn.hutool.db.Entity: java.lang.String getTableName()>();	$r8 = r1.<cn.hutool.db.dialect.impl.MysqlDialect: cn.hutool.db.sql.Wrapper wrapper>;	if null == $r8 goto $r9 = virtualinvoke r3.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>("INSERT INTO ");	$r9 = virtualinvoke r3.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>("INSERT INTO ");	$r10 = virtualinvoke $r9.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(r20);	$r11 = virtualinvoke $r10.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(" (");	$r12 = virtualinvoke $r11.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r4);	$r13 = virtualinvoke $r12.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(") VALUES (");	$r14 = virtualinvoke $r13.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r5);	$r15 = virtualinvoke $r14.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(") ON DUPLICATE KEY UPDATE ");	virtualinvoke $r15.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r6);	$r17 = staticinvoke <cn.hutool.db.StatementUtil: java.sql.PreparedStatement prepareStatement(java.sql.Connection,cn.hutool.db.sql.SqlBuilder)>(r16, r3);	return $r17
;block_num 2