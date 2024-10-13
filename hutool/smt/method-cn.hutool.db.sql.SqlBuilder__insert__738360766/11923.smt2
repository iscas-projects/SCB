(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1754 0)
(declare-sort var644 0)
(declare-sort var518 0)
(declare-sort var2359 0)
(declare-sort var1004 0)
(declare-sort var3060 0)
(declare-sort var1927 0)
(declare-sort var1319 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1754_validateEntity/970713086 (var644) void)
(declare-fun match/219096662 (var2359 String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3060_bootstrap$/-1962249857 (var1754 String String Bool) var1004)
(declare-fun forEach/-83680035 (var1927 var1004) void)
(declare-fun cast-from-var644-to-var1927 (var644) var1927)
(declare-fun sql/-1710938057 (var1754) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTableName/-517879498 (var644) String)
(declare-fun wrapper/-1710938057 (var1754) var1319)
(define-fun append/-13659068 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var1754 var1754)
(declare-const null-var644 var644)
(declare-const null-String String)
(declare-const var2359-ORACLE var2359)
(declare-const var2359-PHOENIX var2359)
(declare-const null-var1319 var1319)
(declare-const var710 var1754) ; Statement: r5 := @this: cn.hutool.db.sql.SqlBuilder 
(assert (not (= var710 null-var1754)))
(declare-const var222 var644) ; Statement: r0 := @parameter0: cn.hutool.db.Entity 
(assert (not (= var222 null-var644)))
(declare-const var2871 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2871 null-String)))
;(assert (var1754_validateEntity/970713086 var222)) ; Statement: staticinvoke <cn.hutool.db.sql.SqlBuilder: void validateEntity(cn.hutool.db.Entity)>(r0) 

(declare-const var222!1 var644)
(define-const var2518 var2359 var2359-ORACLE) ; Statement: $r2 = <cn.hutool.db.dialect.DialectName: cn.hutool.db.dialect.DialectName ORACLE> 
(assert true)
(define-const var3489 Bool (match/219096662 var2518 var2871)) ; Statement: z0 = virtualinvoke $r2.<cn.hutool.db.dialect.DialectName: boolean match(java.lang.String)>(r1) 
(define-const var1369 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1369)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1369!1 String)
(assert (= var1369!1 ""))
(define-const var3754 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3754)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3754!1 String)
(assert (= var3754!1 ""))
(define-const var839 var1004 (var3060_bootstrap$/-1962249857 var710 var1369!1 var3754!1 var3489)) ; Statement: $r6 = staticinvoke <cn.hutool.db.sql.SqlBuilder$lambda_insert_0__528: java.util.function.BiConsumer bootstrap$(cn.hutool.db.sql.SqlBuilder,java.lang.StringBuilder,java.lang.StringBuilder,boolean)>(r5, $r3, $r4, z0) 
(assert true)
;(assert (forEach/-83680035 (cast-from-var644-to-var1927 var222!1) var839)) ; Statement: virtualinvoke r0.<cn.hutool.db.Entity: void forEach(java.util.function.BiConsumer)>($r6) 

(declare-const var222!2 var644)
(declare-const var839!1 var1004)
(define-const var481 var2359 var2359-PHOENIX) ; Statement: $r7 = <cn.hutool.db.dialect.DialectName: cn.hutool.db.dialect.DialectName PHOENIX> 
(assert true)
(define-const var1380 Bool (match/219096662 var481 var2871)) ; Statement: $z1 = virtualinvoke $r7.<cn.hutool.db.dialect.DialectName: boolean match(java.lang.String)>(r1) 
 ; Statement: if $z1 == 0 goto $r8 = r5.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> 
(assert (= (ite var1380 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1522 String (sql/-1710938057 var710)) ; Statement: $r8 = r5.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> 
(assert true)
;(assert (append/672562846 var1522 "INSERT INTO ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("INSERT INTO ") 
(declare-const var1522!1 String)
(assert (= var1522!1 (str.++ var1522 "INSERT INTO ")))
(assert true) ; Non Conditional
(assert true)
(define-const var3267 String (getTableName/-517879498 var222!2)) ; Statement: $r18 = virtualinvoke r0.<cn.hutool.db.Entity: java.lang.String getTableName()>() 
(define-const var3495 String var3267) ; Statement: r19 = $r18 
(define-const var3461 var1319 (wrapper/-1710938057 var710)) ; Statement: $r9 = r5.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.Wrapper wrapper> 
 ; Statement: if null == $r9 goto $r10 = r5.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> 
(assert (= null-var1319 var3461)) ; Cond: null == $r9 
(define-const var1546 String (sql/-1710938057 var710)) ; Statement: $r10 = r5.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> 
(assert true)
(define-const var478 String (append/672562846 var1546 var3495)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r19) 
(declare-const var1546!1 String)
(assert (= var1546!1 (str.++ var1546 var3495)))
(assert true)
(define-const var944 String (append/672562846 var478 " (")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var478!1 String)
(assert (= var478!1 (str.++ var478 " (")))
(assert true)
(define-const var3165 String (append/-13659068 var944 (cast-from-String-to-String var1369!1))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r3) 
(declare-const var944!1 String)
(assert (str.prefixof var944 var944!1))
(assert true)
(define-const var2146 String (append/672562846 var3165 ") VALUES (")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") VALUES (") 
(declare-const var3165!1 String)
(assert (= var3165!1 (str.++ var3165 ") VALUES (")))
(assert true)
(define-const var3813 String (append/-13659068 var2146 (cast-from-String-to-String var3754!1))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r4) 
(declare-const var2146!1 String)
(assert (str.prefixof var2146 var2146!1))
(assert true)
;(assert (append/672562846 var3813 ")")) ; Statement: virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3813!1 String)
(assert (= var3813!1 (str.++ var3813 ")")))
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var1754_validateEntity/970713086=([cn.hutool.db.Entity], void), match/219096662=([cn.hutool.db.dialect.DialectName, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3060_bootstrap$/-1962249857=([cn.hutool.db.sql.SqlBuilder, java.lang.StringBuilder, java.lang.StringBuilder, boolean], java.util.function.BiConsumer), forEach/-83680035=([java.util.LinkedHashMap, java.util.function.BiConsumer], void), cast-from-var644-to-var1927=([cn.hutool.db.Entity], java.util.LinkedHashMap), sql/-1710938057=([cn.hutool.db.sql.SqlBuilder], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTableName/-517879498=([cn.hutool.db.Entity], java.lang.String), wrapper/-1710938057=([cn.hutool.db.sql.SqlBuilder], cn.hutool.db.sql.Wrapper), append/-13659068=([java.lang.StringBuilder, java.lang.CharSequence], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.StringBuilder], java.lang.CharSequence)}
; {var1754=cn.hutool.db.sql.SqlBuilder, var710=r5, var644=cn.hutool.db.Entity, var222=r0, var2871=r1, var518=null_type, var2359=cn.hutool.db.dialect.DialectName, var2518=$r2, var3489=z0, var1369=$r3, var3754=$r4, var1004=java.util.function.BiConsumer, var3060=cn.hutool.db.sql.SqlBuilder$lambda_insert_0__528, var839=$r6, var1927=java.util.LinkedHashMap, var481=$r7, var1380=$z1, var1522=$r8, var3267=$r18, var3495=r19, var1319=cn.hutool.db.sql.Wrapper, var3461=$r9, var1546=$r10, var478=$r11, var944=$r12, var3165=$r13, var2146=$r14, var3813=$r15}
; {cn.hutool.db.sql.SqlBuilder=var1754, r5=var710, cn.hutool.db.Entity=var644, r0=var222, r1=var2871, null_type=var518, cn.hutool.db.dialect.DialectName=var2359, $r2=var2518, z0=var3489, $r3=var1369, $r4=var3754, java.util.function.BiConsumer=var1004, cn.hutool.db.sql.SqlBuilder$lambda_insert_0__528=var3060, $r6=var839, java.util.LinkedHashMap=var1927, $r7=var481, $z1=var1380, $r8=var1522, $r18=var3267, r19=var3495, cn.hutool.db.sql.Wrapper=var1319, $r9=var3461, $r10=var1546, $r11=var478, $r12=var944, $r13=var3165, $r14=var2146, $r15=var3813}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>": 2}
;stmts r5 := @this: cn.hutool.db.sql.SqlBuilder;	r0 := @parameter0: cn.hutool.db.Entity;	r1 := @parameter1: java.lang.String;	staticinvoke <cn.hutool.db.sql.SqlBuilder: void validateEntity(cn.hutool.db.Entity)>(r0);	$r2 = <cn.hutool.db.dialect.DialectName: cn.hutool.db.dialect.DialectName ORACLE>;	z0 = virtualinvoke $r2.<cn.hutool.db.dialect.DialectName: boolean match(java.lang.String)>(r1);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = staticinvoke <cn.hutool.db.sql.SqlBuilder$lambda_insert_0__528: java.util.function.BiConsumer bootstrap$(cn.hutool.db.sql.SqlBuilder,java.lang.StringBuilder,java.lang.StringBuilder,boolean)>(r5, $r3, $r4, z0);	virtualinvoke r0.<cn.hutool.db.Entity: void forEach(java.util.function.BiConsumer)>($r6);	$r7 = <cn.hutool.db.dialect.DialectName: cn.hutool.db.dialect.DialectName PHOENIX>;	$z1 = virtualinvoke $r7.<cn.hutool.db.dialect.DialectName: boolean match(java.lang.String)>(r1);	if $z1 == 0 goto $r8 = r5.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql>;	$r8 = r5.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("INSERT INTO ");	$r18 = virtualinvoke r0.<cn.hutool.db.Entity: java.lang.String getTableName()>();	r19 = $r18;	$r9 = r5.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.Wrapper wrapper>;	if null == $r9 goto $r10 = r5.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql>;	$r10 = r5.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r19);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r3);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") VALUES (");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r4);	virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	return r5
;block_num 4