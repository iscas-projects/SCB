(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3024 0)
(declare-sort var2113 0)
(declare-sort var690 0)
(declare-sort var1965 0)
(declare-sort var689 0)
(declare-sort var1748 0)
(declare-sort var3691 0)
(declare-sort var1035 0)
(declare-sort var1345 0)
(declare-sort var726 0)
(declare-sort var1876 0)
(declare-sort var3676 0)
(declare-sort var2868 0)
(declare-sort var1735 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1965-init () (Array Int var1965))
(declare-fun var689_notEmpty/641213756 ((Array Int var1965) String (Array Int var1965)) (Array Int var1965))
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1965__ ((Array Int String)) (Array Int var1965))
(declare-fun var1748_validateEntity/970713086 (var690) void)
(declare-fun wrapper/1376218167 (var1035) var3691)
(declare-fun cast-from-var3024-to-var1035 (var3024) var1035)
(declare-fun var1748_create/-1666572224 (var3691) var1748)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var726_bootstrap$/904869208 (var3024 String String String var1748) var1345)
(declare-fun forEach/-83680035 (var1876 var1345) void)
(declare-fun cast-from-var690-to-var1876 (var690) var1876)
(declare-fun getTableName/-517879498 (var690) String)
(declare-fun append/-76071956 (var1748 var1965) var1748)
(declare-fun cast-from-String-to-var1965 (String) var1965)
(declare-fun var3676_join/481797010 ((Array Int var1965) String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1735_prepareStatement/1601996539 (var2113 var1748) var2868)
(declare-const null-var3024 var3024)
(declare-const null-var2113 var2113)
(declare-const null-var690 var690)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var3691 var3691)
(declare-const var3853 var3024) ; Statement: r2 := @this: cn.hutool.db.dialect.impl.PostgresqlDialect 
(assert (not (= var3853 null-var3024)))
(declare-const var2364 var2113) ; Statement: r20 := @parameter0: java.sql.Connection 
(assert (not (= var2364 null-var2113)))
(declare-const var945 var690) ; Statement: r1 := @parameter1: cn.hutool.db.Entity 
(assert (not (= var945 null-var690)))
(declare-const var1064 (Array Int String)) ; Statement: r24 := @parameter2: java.lang.String[] 
(assert (not (= var1064 null-__Array__Int__String__)))
(define-const var3392 (Array Int var1965) arr-var1965-init) ; Statement: $r0 = newarray (java.lang.Object)[0] 
;(assert (var689_notEmpty/641213756 (cast-from-__Array__Int__String__-to-__Array__Int__var1965__ var1064) "Keys must be not empty for Postgres." var3392)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object[] notEmpty(java.lang.Object[],java.lang.String,java.lang.Object[])>(r24, "Keys must be not empty for Postgres.", $r0) 

(declare-const var1064!1 (Array Int String))
(declare-const var1853 String)
(declare-const var3392!1 (Array Int var1965))
;(assert (var1748_validateEntity/970713086 var945)) ; Statement: staticinvoke <cn.hutool.db.sql.SqlBuilder: void validateEntity(cn.hutool.db.Entity)>(r1) 

(declare-const var945!1 var690)
(define-const var823 var3691 (wrapper/1376218167 (cast-from-var3024-to-var1035 var3853))) ; Statement: $r3 = r2.<cn.hutool.db.dialect.impl.PostgresqlDialect: cn.hutool.db.sql.Wrapper wrapper> 
(define-const var824 var1748 (var1748_create/-1666572224 var823)) ; Statement: r4 = staticinvoke <cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder create(cn.hutool.db.sql.Wrapper)>($r3) 
(define-const var1492 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1492)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1492!1 String)
(assert (= var1492!1 ""))
(define-const var3186 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3186)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3186!1 String)
(assert (= var3186!1 ""))
(define-const var1954 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1954)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1954!1 String)
(assert (= var1954!1 ""))
(define-const var2687 var1345 (var726_bootstrap$/904869208 var3853 var1492!1 var3186!1 var1954!1 var824)) ; Statement: $r8 = staticinvoke <cn.hutool.db.dialect.impl.PostgresqlDialect$lambda_psForUpsert_0__517: java.util.function.BiConsumer bootstrap$(cn.hutool.db.dialect.impl.PostgresqlDialect,java.lang.StringBuilder,java.lang.StringBuilder,java.lang.StringBuilder,cn.hutool.db.sql.SqlBuilder)>(r2, $r5, $r6, $r7, r4) 
(assert true)
;(assert (forEach/-83680035 (cast-from-var690-to-var1876 var945!1) var2687)) ; Statement: virtualinvoke r1.<cn.hutool.db.Entity: void forEach(java.util.function.BiConsumer)>($r8) 

(declare-const var945!2 var690)
(declare-const var2687!1 var1345)
(assert true)
(define-const var3547 String (getTableName/-517879498 var945!2)) ; Statement: r25 = virtualinvoke r1.<cn.hutool.db.Entity: java.lang.String getTableName()>() 
(define-const var3611 var3691 (wrapper/1376218167 (cast-from-var3024-to-var1035 var3853))) ; Statement: $r9 = r2.<cn.hutool.db.dialect.impl.PostgresqlDialect: cn.hutool.db.sql.Wrapper wrapper> 
 ; Statement: if null == $r9 goto $r10 = virtualinvoke r4.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>("INSERT INTO ") 
(assert (= null-var3691 var3611)) ; Cond: null == $r9 
(assert true)
(define-const var2953 var1748 (append/-76071956 var824 (cast-from-String-to-var1965 "INSERT INTO "))) ; Statement: $r10 = virtualinvoke r4.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>("INSERT INTO ") 
(assert true)
(define-const var2577 var1748 (append/-76071956 var2953 (cast-from-String-to-var1965 var3547))) ; Statement: $r11 = virtualinvoke $r10.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(r25) 
(assert true)
(define-const var3086 var1748 (append/-76071956 var2577 (cast-from-String-to-var1965 " ("))) ; Statement: $r12 = virtualinvoke $r11.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(" (") 
(assert true)
(define-const var337 var1748 (append/-76071956 var3086 (cast-from-String-to-var1965 var1492!1))) ; Statement: $r13 = virtualinvoke $r12.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r5) 
(assert true)
(define-const var913 var1748 (append/-76071956 var337 (cast-from-String-to-var1965 ") VALUES ("))) ; Statement: $r14 = virtualinvoke $r13.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(") VALUES (") 
(assert true)
(define-const var2106 var1748 (append/-76071956 var913 (cast-from-String-to-var1965 var3186!1))) ; Statement: $r15 = virtualinvoke $r14.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r6) 
(assert true)
(define-const var1140 var1748 (append/-76071956 var2106 (cast-from-String-to-var1965 ") ON CONFLICT ("))) ; Statement: $r17 = virtualinvoke $r15.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(") ON CONFLICT (") 
(define-const var34 String (var3676_join/481797010 (cast-from-__Array__Int__String__-to-__Array__Int__var1965__ var1064!1) (cast-from-String-to-String ", "))) ; Statement: $r16 = staticinvoke <cn.hutool.core.util.ArrayUtil: java.lang.String join(java.lang.Object[],java.lang.CharSequence)>(r24, ", ") 
(assert true)
(define-const var3288 var1748 (append/-76071956 var1140 (cast-from-String-to-var1965 var34))) ; Statement: $r18 = virtualinvoke $r17.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r16) 
(assert true)
(define-const var3896 var1748 (append/-76071956 var3288 (cast-from-String-to-var1965 ") DO UPDATE SET "))) ; Statement: $r19 = virtualinvoke $r18.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(") DO UPDATE SET ") 
(assert true)
;(assert (append/-76071956 var3896 (cast-from-String-to-var1965 var1954!1))) ; Statement: virtualinvoke $r19.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r7) 

(declare-const var3896!1 var1748)
(declare-const var1954!2 String)
(define-const var1387 var2868 (var1735_prepareStatement/1601996539 var2364 var824)) ; Statement: $r21 = staticinvoke <cn.hutool.db.StatementUtil: java.sql.PreparedStatement prepareStatement(java.sql.Connection,cn.hutool.db.sql.SqlBuilder)>(r20, r4) 
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1965-init=([], java.lang.Object[]), var689_notEmpty/641213756=([java.lang.Object[], java.lang.String, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__String__-to-__Array__Int__var1965__=([java.lang.String[]], java.lang.Object[]), var1748_validateEntity/970713086=([cn.hutool.db.Entity], void), wrapper/1376218167=([cn.hutool.db.dialect.impl.AnsiSqlDialect], cn.hutool.db.sql.Wrapper), cast-from-var3024-to-var1035=([cn.hutool.db.dialect.impl.PostgresqlDialect], cn.hutool.db.dialect.impl.AnsiSqlDialect), var1748_create/-1666572224=([cn.hutool.db.sql.Wrapper], cn.hutool.db.sql.SqlBuilder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var726_bootstrap$/904869208=([cn.hutool.db.dialect.impl.PostgresqlDialect, java.lang.StringBuilder, java.lang.StringBuilder, java.lang.StringBuilder, cn.hutool.db.sql.SqlBuilder], java.util.function.BiConsumer), forEach/-83680035=([java.util.LinkedHashMap, java.util.function.BiConsumer], void), cast-from-var690-to-var1876=([cn.hutool.db.Entity], java.util.LinkedHashMap), getTableName/-517879498=([cn.hutool.db.Entity], java.lang.String), append/-76071956=([cn.hutool.db.sql.SqlBuilder, java.lang.Object], cn.hutool.db.sql.SqlBuilder), cast-from-String-to-var1965=([java.lang.String], java.lang.Object), var3676_join/481797010=([java.lang.Object[], java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1735_prepareStatement/1601996539=([java.sql.Connection, cn.hutool.db.sql.SqlBuilder], java.sql.PreparedStatement)}
; {var3024=cn.hutool.db.dialect.impl.PostgresqlDialect, var3853=r2, var2113=java.sql.Connection, var2364=r20, var690=cn.hutool.db.Entity, var945=r1, var1064=r24, var1965=java.lang.Object, var3392=$r0, var689=cn.hutool.core.lang.Assert, var1853="Keys must be not empty for Postgres.", var1748=cn.hutool.db.sql.SqlBuilder, var3691=cn.hutool.db.sql.Wrapper, var1035=cn.hutool.db.dialect.impl.AnsiSqlDialect, var823=$r3, var824=r4, var1492=$r5, var3186=$r6, var1954=$r7, var1345=java.util.function.BiConsumer, var726=cn.hutool.db.dialect.impl.PostgresqlDialect$lambda_psForUpsert_0__517, var2687=$r8, var1876=java.util.LinkedHashMap, var3547=r25, var3611=$r9, var2953=$r10, var2577=$r11, var3086=$r12, var337=$r13, var913=$r14, var2106=$r15, var1140=$r17, var3676=cn.hutool.core.util.ArrayUtil, var34=$r16, var3288=$r18, var3896=$r19, var2868=java.sql.PreparedStatement, var1735=cn.hutool.db.StatementUtil, var1387=$r21}
; {cn.hutool.db.dialect.impl.PostgresqlDialect=var3024, r2=var3853, java.sql.Connection=var2113, r20=var2364, cn.hutool.db.Entity=var690, r1=var945, r24=var1064, java.lang.Object=var1965, $r0=var3392, cn.hutool.core.lang.Assert=var689, "Keys must be not empty for Postgres."=var1853, cn.hutool.db.sql.SqlBuilder=var1748, cn.hutool.db.sql.Wrapper=var3691, cn.hutool.db.dialect.impl.AnsiSqlDialect=var1035, $r3=var823, r4=var824, $r5=var1492, $r6=var3186, $r7=var1954, java.util.function.BiConsumer=var1345, cn.hutool.db.dialect.impl.PostgresqlDialect$lambda_psForUpsert_0__517=var726, $r8=var2687, java.util.LinkedHashMap=var1876, r25=var3547, $r9=var3611, $r10=var2953, $r11=var2577, $r12=var3086, $r13=var337, $r14=var913, $r15=var2106, $r17=var1140, cn.hutool.core.util.ArrayUtil=var3676, $r16=var34, $r18=var3288, $r19=var3896, java.sql.PreparedStatement=var2868, cn.hutool.db.StatementUtil=var1735, $r21=var1387}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3}
;stmts r2 := @this: cn.hutool.db.dialect.impl.PostgresqlDialect;	r20 := @parameter0: java.sql.Connection;	r1 := @parameter1: cn.hutool.db.Entity;	r24 := @parameter2: java.lang.String[];	$r0 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object[] notEmpty(java.lang.Object[],java.lang.String,java.lang.Object[])>(r24, "Keys must be not empty for Postgres.", $r0);	staticinvoke <cn.hutool.db.sql.SqlBuilder: void validateEntity(cn.hutool.db.Entity)>(r1);	$r3 = r2.<cn.hutool.db.dialect.impl.PostgresqlDialect: cn.hutool.db.sql.Wrapper wrapper>;	r4 = staticinvoke <cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder create(cn.hutool.db.sql.Wrapper)>($r3);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = staticinvoke <cn.hutool.db.dialect.impl.PostgresqlDialect$lambda_psForUpsert_0__517: java.util.function.BiConsumer bootstrap$(cn.hutool.db.dialect.impl.PostgresqlDialect,java.lang.StringBuilder,java.lang.StringBuilder,java.lang.StringBuilder,cn.hutool.db.sql.SqlBuilder)>(r2, $r5, $r6, $r7, r4);	virtualinvoke r1.<cn.hutool.db.Entity: void forEach(java.util.function.BiConsumer)>($r8);	r25 = virtualinvoke r1.<cn.hutool.db.Entity: java.lang.String getTableName()>();	$r9 = r2.<cn.hutool.db.dialect.impl.PostgresqlDialect: cn.hutool.db.sql.Wrapper wrapper>;	if null == $r9 goto $r10 = virtualinvoke r4.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>("INSERT INTO ");	$r10 = virtualinvoke r4.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>("INSERT INTO ");	$r11 = virtualinvoke $r10.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(r25);	$r12 = virtualinvoke $r11.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(" (");	$r13 = virtualinvoke $r12.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r5);	$r14 = virtualinvoke $r13.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(") VALUES (");	$r15 = virtualinvoke $r14.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r6);	$r17 = virtualinvoke $r15.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(") ON CONFLICT (");	$r16 = staticinvoke <cn.hutool.core.util.ArrayUtil: java.lang.String join(java.lang.Object[],java.lang.CharSequence)>(r24, ", ");	$r18 = virtualinvoke $r17.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r16);	$r19 = virtualinvoke $r18.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(") DO UPDATE SET ");	virtualinvoke $r19.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r7);	$r21 = staticinvoke <cn.hutool.db.StatementUtil: java.sql.PreparedStatement prepareStatement(java.sql.Connection,cn.hutool.db.sql.SqlBuilder)>(r20, r4);	return $r21
;block_num 2