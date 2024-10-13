(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2739 0)
(declare-sort var3622 0)
(declare-sort var3694 0)
(declare-sort var1242 0)
(declare-sort var1554 0)
(declare-sort var389 0)
(declare-sort var1627 0)
(declare-sort var2730 0)
(declare-sort var272 0)
(declare-sort var611 0)
(declare-sort var2332 0)
(declare-sort var2284 0)
(declare-sort var2090 0)
(declare-sort var3971 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1242-init () (Array Int var1242))
(declare-fun var1554_notEmpty/641213756 ((Array Int var1242) String (Array Int var1242)) (Array Int var1242))
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1242__ ((Array Int String)) (Array Int var1242))
(declare-fun var389_validateEntity/970713086 (var3694) void)
(declare-fun wrapper/1376218167 (var2730) var1627)
(declare-fun cast-from-var2739-to-var2730 (var2739) var2730)
(declare-fun var389_create/-1666572224 (var1627) var389)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var611_bootstrap$/1062383264 (var2739 String String var389) var272)
(declare-fun forEach/-83680035 (var2332 var272) void)
(declare-fun cast-from-var3694-to-var2332 (var3694) var2332)
(declare-fun getTableName/-517879498 (var3694) String)
(declare-fun append/-76071956 (var389 var1242) var389)
(declare-fun cast-from-String-to-var1242 (String) var1242)
(declare-fun var2284_join/481797010 ((Array Int var1242) String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3971_prepareStatement/1601996539 (var3622 var389) var2090)
(declare-const null-var2739 var2739)
(declare-const null-var3622 var3622)
(declare-const null-var3694 var3694)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1627 var1627)
(declare-const var1793 var2739) ; Statement: r2 := @this: cn.hutool.db.dialect.impl.H2Dialect 
(assert (not (= var1793 null-var2739)))
(declare-const var60 var3622) ; Statement: r18 := @parameter0: java.sql.Connection 
(assert (not (= var60 null-var3622)))
(declare-const var1897 var3694) ; Statement: r1 := @parameter1: cn.hutool.db.Entity 
(assert (not (= var1897 null-var3694)))
(declare-const var2764 (Array Int String)) ; Statement: r22 := @parameter2: java.lang.String[] 
(assert (not (= var2764 null-__Array__Int__String__)))
(define-const var320 (Array Int var1242) arr-var1242-init) ; Statement: $r0 = newarray (java.lang.Object)[0] 
;(assert (var1554_notEmpty/641213756 (cast-from-__Array__Int__String__-to-__Array__Int__var1242__ var2764) "Keys must be not empty for H2 MERGE SQL." var320)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object[] notEmpty(java.lang.Object[],java.lang.String,java.lang.Object[])>(r22, "Keys must be not empty for H2 MERGE SQL.", $r0) 

(declare-const var2764!1 (Array Int String))
(declare-const var774 String)
(declare-const var320!1 (Array Int var1242))
;(assert (var389_validateEntity/970713086 var1897)) ; Statement: staticinvoke <cn.hutool.db.sql.SqlBuilder: void validateEntity(cn.hutool.db.Entity)>(r1) 

(declare-const var1897!1 var3694)
(define-const var3296 var1627 (wrapper/1376218167 (cast-from-var2739-to-var2730 var1793))) ; Statement: $r3 = r2.<cn.hutool.db.dialect.impl.H2Dialect: cn.hutool.db.sql.Wrapper wrapper> 
(define-const var833 var389 (var389_create/-1666572224 var3296)) ; Statement: r4 = staticinvoke <cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder create(cn.hutool.db.sql.Wrapper)>($r3) 
(define-const var936 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var936)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var936!1 String)
(assert (= var936!1 ""))
(define-const var2828 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2828)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2828!1 String)
(assert (= var2828!1 ""))
(define-const var175 var272 (var611_bootstrap$/1062383264 var1793 var936!1 var2828!1 var833)) ; Statement: $r7 = staticinvoke <cn.hutool.db.dialect.impl.H2Dialect$lambda_psForUpsert_0__515: java.util.function.BiConsumer bootstrap$(cn.hutool.db.dialect.impl.H2Dialect,java.lang.StringBuilder,java.lang.StringBuilder,cn.hutool.db.sql.SqlBuilder)>(r2, $r5, $r6, r4) 
(assert true)
;(assert (forEach/-83680035 (cast-from-var3694-to-var2332 var1897!1) var175)) ; Statement: virtualinvoke r1.<cn.hutool.db.Entity: void forEach(java.util.function.BiConsumer)>($r7) 

(declare-const var1897!2 var3694)
(declare-const var175!1 var272)
(assert true)
(define-const var855 String (getTableName/-517879498 var1897!2)) ; Statement: r23 = virtualinvoke r1.<cn.hutool.db.Entity: java.lang.String getTableName()>() 
(define-const var2030 var1627 (wrapper/1376218167 (cast-from-var2739-to-var2730 var1793))) ; Statement: $r8 = r2.<cn.hutool.db.dialect.impl.H2Dialect: cn.hutool.db.sql.Wrapper wrapper> 
 ; Statement: if null == $r8 goto $r9 = virtualinvoke r4.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>("MERGE INTO ") 
(assert (= null-var1627 var2030)) ; Cond: null == $r8 
(assert true)
(define-const var2217 var389 (append/-76071956 var833 (cast-from-String-to-var1242 "MERGE INTO "))) ; Statement: $r9 = virtualinvoke r4.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>("MERGE INTO ") 
(assert true)
(define-const var1395 var389 (append/-76071956 var2217 (cast-from-String-to-var1242 var855))) ; Statement: $r10 = virtualinvoke $r9.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(r23) 
(assert true)
(define-const var1515 var389 (append/-76071956 var1395 (cast-from-String-to-var1242 " ("))) ; Statement: $r11 = virtualinvoke $r10.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(" (") 
(assert true)
(define-const var497 var389 (append/-76071956 var1515 (cast-from-String-to-var1242 var936!1))) ; Statement: $r12 = virtualinvoke $r11.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r5) 
(assert true)
(define-const var338 var389 (append/-76071956 var497 (cast-from-String-to-var1242 ") KEY("))) ; Statement: $r14 = virtualinvoke $r12.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(") KEY(") 
(define-const var2517 String (var2284_join/481797010 (cast-from-__Array__Int__String__-to-__Array__Int__var1242__ var2764!1) (cast-from-String-to-String ", "))) ; Statement: $r13 = staticinvoke <cn.hutool.core.util.ArrayUtil: java.lang.String join(java.lang.Object[],java.lang.CharSequence)>(r22, ", ") 
(assert true)
(define-const var246 var389 (append/-76071956 var338 (cast-from-String-to-var1242 var2517))) ; Statement: $r15 = virtualinvoke $r14.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r13) 
(assert true)
(define-const var3402 var389 (append/-76071956 var246 (cast-from-String-to-var1242 ") VALUES ("))) ; Statement: $r16 = virtualinvoke $r15.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(") VALUES (") 
(assert true)
(define-const var2576 var389 (append/-76071956 var3402 (cast-from-String-to-var1242 var2828!1))) ; Statement: $r17 = virtualinvoke $r16.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r6) 
(assert true)
;(assert (append/-76071956 var2576 (cast-from-String-to-var1242 ")"))) ; Statement: virtualinvoke $r17.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(")") 

(declare-const var2576!1 var389)
(declare-const var558 String)
(define-const var3983 var2090 (var3971_prepareStatement/1601996539 var60 var833)) ; Statement: $r19 = staticinvoke <cn.hutool.db.StatementUtil: java.sql.PreparedStatement prepareStatement(java.sql.Connection,cn.hutool.db.sql.SqlBuilder)>(r18, r4) 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1242-init=([], java.lang.Object[]), var1554_notEmpty/641213756=([java.lang.Object[], java.lang.String, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__String__-to-__Array__Int__var1242__=([java.lang.String[]], java.lang.Object[]), var389_validateEntity/970713086=([cn.hutool.db.Entity], void), wrapper/1376218167=([cn.hutool.db.dialect.impl.AnsiSqlDialect], cn.hutool.db.sql.Wrapper), cast-from-var2739-to-var2730=([cn.hutool.db.dialect.impl.H2Dialect], cn.hutool.db.dialect.impl.AnsiSqlDialect), var389_create/-1666572224=([cn.hutool.db.sql.Wrapper], cn.hutool.db.sql.SqlBuilder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var611_bootstrap$/1062383264=([cn.hutool.db.dialect.impl.H2Dialect, java.lang.StringBuilder, java.lang.StringBuilder, cn.hutool.db.sql.SqlBuilder], java.util.function.BiConsumer), forEach/-83680035=([java.util.LinkedHashMap, java.util.function.BiConsumer], void), cast-from-var3694-to-var2332=([cn.hutool.db.Entity], java.util.LinkedHashMap), getTableName/-517879498=([cn.hutool.db.Entity], java.lang.String), append/-76071956=([cn.hutool.db.sql.SqlBuilder, java.lang.Object], cn.hutool.db.sql.SqlBuilder), cast-from-String-to-var1242=([java.lang.String], java.lang.Object), var2284_join/481797010=([java.lang.Object[], java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3971_prepareStatement/1601996539=([java.sql.Connection, cn.hutool.db.sql.SqlBuilder], java.sql.PreparedStatement)}
; {var2739=cn.hutool.db.dialect.impl.H2Dialect, var1793=r2, var3622=java.sql.Connection, var60=r18, var3694=cn.hutool.db.Entity, var1897=r1, var2764=r22, var1242=java.lang.Object, var320=$r0, var1554=cn.hutool.core.lang.Assert, var774="Keys must be not empty for H2 MERGE SQL.", var389=cn.hutool.db.sql.SqlBuilder, var1627=cn.hutool.db.sql.Wrapper, var2730=cn.hutool.db.dialect.impl.AnsiSqlDialect, var3296=$r3, var833=r4, var936=$r5, var2828=$r6, var272=java.util.function.BiConsumer, var611=cn.hutool.db.dialect.impl.H2Dialect$lambda_psForUpsert_0__515, var175=$r7, var2332=java.util.LinkedHashMap, var855=r23, var2030=$r8, var2217=$r9, var1395=$r10, var1515=$r11, var497=$r12, var338=$r14, var2284=cn.hutool.core.util.ArrayUtil, var2517=$r13, var246=$r15, var3402=$r16, var2576=$r17, var558=")", var2090=java.sql.PreparedStatement, var3971=cn.hutool.db.StatementUtil, var3983=$r19}
; {cn.hutool.db.dialect.impl.H2Dialect=var2739, r2=var1793, java.sql.Connection=var3622, r18=var60, cn.hutool.db.Entity=var3694, r1=var1897, r22=var2764, java.lang.Object=var1242, $r0=var320, cn.hutool.core.lang.Assert=var1554, "Keys must be not empty for H2 MERGE SQL."=var774, cn.hutool.db.sql.SqlBuilder=var389, cn.hutool.db.sql.Wrapper=var1627, cn.hutool.db.dialect.impl.AnsiSqlDialect=var2730, $r3=var3296, r4=var833, $r5=var936, $r6=var2828, java.util.function.BiConsumer=var272, cn.hutool.db.dialect.impl.H2Dialect$lambda_psForUpsert_0__515=var611, $r7=var175, java.util.LinkedHashMap=var2332, r23=var855, $r8=var2030, $r9=var2217, $r10=var1395, $r11=var1515, $r12=var497, $r14=var338, cn.hutool.core.util.ArrayUtil=var2284, $r13=var2517, $r15=var246, $r16=var3402, $r17=var2576, ")"=var558, java.sql.PreparedStatement=var2090, cn.hutool.db.StatementUtil=var3971, $r19=var3983}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2}
;stmts r2 := @this: cn.hutool.db.dialect.impl.H2Dialect;	r18 := @parameter0: java.sql.Connection;	r1 := @parameter1: cn.hutool.db.Entity;	r22 := @parameter2: java.lang.String[];	$r0 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object[] notEmpty(java.lang.Object[],java.lang.String,java.lang.Object[])>(r22, "Keys must be not empty for H2 MERGE SQL.", $r0);	staticinvoke <cn.hutool.db.sql.SqlBuilder: void validateEntity(cn.hutool.db.Entity)>(r1);	$r3 = r2.<cn.hutool.db.dialect.impl.H2Dialect: cn.hutool.db.sql.Wrapper wrapper>;	r4 = staticinvoke <cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder create(cn.hutool.db.sql.Wrapper)>($r3);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = staticinvoke <cn.hutool.db.dialect.impl.H2Dialect$lambda_psForUpsert_0__515: java.util.function.BiConsumer bootstrap$(cn.hutool.db.dialect.impl.H2Dialect,java.lang.StringBuilder,java.lang.StringBuilder,cn.hutool.db.sql.SqlBuilder)>(r2, $r5, $r6, r4);	virtualinvoke r1.<cn.hutool.db.Entity: void forEach(java.util.function.BiConsumer)>($r7);	r23 = virtualinvoke r1.<cn.hutool.db.Entity: java.lang.String getTableName()>();	$r8 = r2.<cn.hutool.db.dialect.impl.H2Dialect: cn.hutool.db.sql.Wrapper wrapper>;	if null == $r8 goto $r9 = virtualinvoke r4.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>("MERGE INTO ");	$r9 = virtualinvoke r4.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>("MERGE INTO ");	$r10 = virtualinvoke $r9.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(r23);	$r11 = virtualinvoke $r10.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(" (");	$r12 = virtualinvoke $r11.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r5);	$r14 = virtualinvoke $r12.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(") KEY(");	$r13 = staticinvoke <cn.hutool.core.util.ArrayUtil: java.lang.String join(java.lang.Object[],java.lang.CharSequence)>(r22, ", ");	$r15 = virtualinvoke $r14.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r13);	$r16 = virtualinvoke $r15.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(") VALUES (");	$r17 = virtualinvoke $r16.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>($r6);	virtualinvoke $r17.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.SqlBuilder append(java.lang.Object)>(")");	$r19 = staticinvoke <cn.hutool.db.StatementUtil: java.sql.PreparedStatement prepareStatement(java.sql.Connection,cn.hutool.db.sql.SqlBuilder)>(r18, r4);	return $r19
;block_num 2