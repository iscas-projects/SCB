(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var376 0)
(declare-sort var3953 0)
(declare-sort var411 0)
(declare-sort var3458 0)
(declare-sort var2376 0)
(declare-sort var818 0)
(declare-sort var512 0)
(declare-sort var2662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var376_validateEntity/970713086 (var3953) void)
(declare-fun match/219096662 (var3458 String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var818_bootstrap$/-1962249857 (var376 String String Bool) var2376)
(declare-fun forEach/-83680035 (var512 var2376) void)
(declare-fun cast-from-var3953-to-var512 (var3953) var512)
(declare-fun sql/-1710938057 (var376) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTableName/-517879498 (var3953) String)
(declare-fun wrapper/-1710938057 (var376) var2662)
(define-fun append/-13659068 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var376 var376)
(declare-const null-var3953 var3953)
(declare-const null-String String)
(declare-const var3458-ORACLE var3458)
(declare-const var3458-PHOENIX var3458)
(declare-const null-var2662 var2662)
(declare-const var4 var376) ; Statement: r5 := @this: cn.hutool.db.sql.SqlBuilder 
(assert (not (= var4 null-var376)))
(declare-const var1646 var3953) ; Statement: r0 := @parameter0: cn.hutool.db.Entity 
(assert (not (= var1646 null-var3953)))
(declare-const var2798 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2798 null-String)))
;(assert (var376_validateEntity/970713086 var1646)) ; Statement: staticinvoke <cn.hutool.db.sql.SqlBuilder: void validateEntity(cn.hutool.db.Entity)>(r0) 

(declare-const var1646!1 var3953)
(define-const var1846 var3458 var3458-ORACLE) ; Statement: $r2 = <cn.hutool.db.dialect.DialectName: cn.hutool.db.dialect.DialectName ORACLE> 
(assert true)
(define-const var3321 Bool (match/219096662 var1846 var2798)) ; Statement: z0 = virtualinvoke $r2.<cn.hutool.db.dialect.DialectName: boolean match(java.lang.String)>(r1) 
(define-const var3443 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3443)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3443!1 String)
(assert (= var3443!1 ""))
(define-const var3129 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3129)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3129!1 String)
(assert (= var3129!1 ""))
(define-const var1330 var2376 (var818_bootstrap$/-1962249857 var4 var3443!1 var3129!1 var3321)) ; Statement: $r6 = staticinvoke <cn.hutool.db.sql.SqlBuilder$lambda_insert_0__528: java.util.function.BiConsumer bootstrap$(cn.hutool.db.sql.SqlBuilder,java.lang.StringBuilder,java.lang.StringBuilder,boolean)>(r5, $r3, $r4, z0) 
(assert true)
;(assert (forEach/-83680035 (cast-from-var3953-to-var512 var1646!1) var1330)) ; Statement: virtualinvoke r0.<cn.hutool.db.Entity: void forEach(java.util.function.BiConsumer)>($r6) 

(declare-const var1646!2 var3953)
(declare-const var1330!1 var2376)
(define-const var3510 var3458 var3458-PHOENIX) ; Statement: $r7 = <cn.hutool.db.dialect.DialectName: cn.hutool.db.dialect.DialectName PHOENIX> 
(assert true)
(define-const var3267 Bool (match/219096662 var3510 var2798)) ; Statement: $z1 = virtualinvoke $r7.<cn.hutool.db.dialect.DialectName: boolean match(java.lang.String)>(r1) 
 ; Statement: if $z1 == 0 goto $r8 = r5.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> 
(assert (not (= (ite var3267 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var934 String (sql/-1710938057 var4)) ; Statement: $r17 = r5.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> 
(assert true)
;(assert (append/672562846 var934 "UPSERT INTO ")) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UPSERT INTO ") 
(declare-const var934!1 String)
(assert (= var934!1 (str.++ var934 "UPSERT INTO ")))
 ; Statement: goto [?= $r18 = virtualinvoke r0.<cn.hutool.db.Entity: java.lang.String getTableName()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1213 String (getTableName/-517879498 var1646!2)) ; Statement: $r18 = virtualinvoke r0.<cn.hutool.db.Entity: java.lang.String getTableName()>() 
(define-const var2012 String var1213) ; Statement: r19 = $r18 
(define-const var122 var2662 (wrapper/-1710938057 var4)) ; Statement: $r9 = r5.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.Wrapper wrapper> 
 ; Statement: if null == $r9 goto $r10 = r5.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> 
(assert (= null-var2662 var122)) ; Cond: null == $r9 
(define-const var2334 String (sql/-1710938057 var4)) ; Statement: $r10 = r5.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> 
(assert true)
(define-const var3674 String (append/672562846 var2334 var2012)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r19) 
(declare-const var2334!1 String)
(assert (= var2334!1 (str.++ var2334 var2012)))
(assert true)
(define-const var2828 String (append/672562846 var3674 " (")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var3674!1 String)
(assert (= var3674!1 (str.++ var3674 " (")))
(assert true)
(define-const var139 String (append/-13659068 var2828 (cast-from-String-to-String var3443!1))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r3) 
(declare-const var2828!1 String)
(assert (str.prefixof var2828 var2828!1))
(assert true)
(define-const var2743 String (append/672562846 var139 ") VALUES (")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") VALUES (") 
(declare-const var139!1 String)
(assert (= var139!1 (str.++ var139 ") VALUES (")))
(assert true)
(define-const var3915 String (append/-13659068 var2743 (cast-from-String-to-String var3129!1))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r4) 
(declare-const var2743!1 String)
(assert (str.prefixof var2743 var2743!1))
(assert true)
;(assert (append/672562846 var3915 ")")) ; Statement: virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3915!1 String)
(assert (= var3915!1 (str.++ var3915 ")")))
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var376_validateEntity/970713086=([cn.hutool.db.Entity], void), match/219096662=([cn.hutool.db.dialect.DialectName, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var818_bootstrap$/-1962249857=([cn.hutool.db.sql.SqlBuilder, java.lang.StringBuilder, java.lang.StringBuilder, boolean], java.util.function.BiConsumer), forEach/-83680035=([java.util.LinkedHashMap, java.util.function.BiConsumer], void), cast-from-var3953-to-var512=([cn.hutool.db.Entity], java.util.LinkedHashMap), sql/-1710938057=([cn.hutool.db.sql.SqlBuilder], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTableName/-517879498=([cn.hutool.db.Entity], java.lang.String), wrapper/-1710938057=([cn.hutool.db.sql.SqlBuilder], cn.hutool.db.sql.Wrapper), append/-13659068=([java.lang.StringBuilder, java.lang.CharSequence], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.StringBuilder], java.lang.CharSequence)}
; {var376=cn.hutool.db.sql.SqlBuilder, var4=r5, var3953=cn.hutool.db.Entity, var1646=r0, var2798=r1, var411=null_type, var3458=cn.hutool.db.dialect.DialectName, var1846=$r2, var3321=z0, var3443=$r3, var3129=$r4, var2376=java.util.function.BiConsumer, var818=cn.hutool.db.sql.SqlBuilder$lambda_insert_0__528, var1330=$r6, var512=java.util.LinkedHashMap, var3510=$r7, var3267=$z1, var934=$r17, var1213=$r18, var2012=r19, var2662=cn.hutool.db.sql.Wrapper, var122=$r9, var2334=$r10, var3674=$r11, var2828=$r12, var139=$r13, var2743=$r14, var3915=$r15}
; {cn.hutool.db.sql.SqlBuilder=var376, r5=var4, cn.hutool.db.Entity=var3953, r0=var1646, r1=var2798, null_type=var411, cn.hutool.db.dialect.DialectName=var3458, $r2=var1846, z0=var3321, $r3=var3443, $r4=var3129, java.util.function.BiConsumer=var2376, cn.hutool.db.sql.SqlBuilder$lambda_insert_0__528=var818, $r6=var1330, java.util.LinkedHashMap=var512, $r7=var3510, $z1=var3267, $r17=var934, $r18=var1213, r19=var2012, cn.hutool.db.sql.Wrapper=var2662, $r9=var122, $r10=var2334, $r11=var3674, $r12=var2828, $r13=var139, $r14=var2743, $r15=var3915}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>": 2}
;stmts r5 := @this: cn.hutool.db.sql.SqlBuilder;	r0 := @parameter0: cn.hutool.db.Entity;	r1 := @parameter1: java.lang.String;	staticinvoke <cn.hutool.db.sql.SqlBuilder: void validateEntity(cn.hutool.db.Entity)>(r0);	$r2 = <cn.hutool.db.dialect.DialectName: cn.hutool.db.dialect.DialectName ORACLE>;	z0 = virtualinvoke $r2.<cn.hutool.db.dialect.DialectName: boolean match(java.lang.String)>(r1);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = staticinvoke <cn.hutool.db.sql.SqlBuilder$lambda_insert_0__528: java.util.function.BiConsumer bootstrap$(cn.hutool.db.sql.SqlBuilder,java.lang.StringBuilder,java.lang.StringBuilder,boolean)>(r5, $r3, $r4, z0);	virtualinvoke r0.<cn.hutool.db.Entity: void forEach(java.util.function.BiConsumer)>($r6);	$r7 = <cn.hutool.db.dialect.DialectName: cn.hutool.db.dialect.DialectName PHOENIX>;	$z1 = virtualinvoke $r7.<cn.hutool.db.dialect.DialectName: boolean match(java.lang.String)>(r1);	if $z1 == 0 goto $r8 = r5.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql>;	$r17 = r5.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql>;	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UPSERT INTO ");	goto [?= $r18 = virtualinvoke r0.<cn.hutool.db.Entity: java.lang.String getTableName()>()];	$r18 = virtualinvoke r0.<cn.hutool.db.Entity: java.lang.String getTableName()>();	r19 = $r18;	$r9 = r5.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.Wrapper wrapper>;	if null == $r9 goto $r10 = r5.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql>;	$r10 = r5.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r19);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r3);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") VALUES (");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>($r4);	virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	return r5
;block_num 4