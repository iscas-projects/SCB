(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2027 0)
(declare-sort var3349 0)
(declare-sort var2764 0)
(declare-sort var1582 0)
(declare-sort var1133 0)
(declare-sort var1661 0)
(declare-sort var1136 0)
(declare-sort var1303 0)
(declare-sort var983 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1582) void)
(declare-fun cast-from-var2027-to-var1582 (var2027) var1582)
(declare-fun var1133-init () var1133)
(declare-fun <init>/-201242697 (var1133) void)
(declare-fun cast-from-var1133-to-var1661 (var1133) var1661)
(declare-fun columns/-1096668020 (var2027) var1661)
(declare-fun foreignKeys/-1096668020 (var2027) var1661)
(declare-fun indexes/-1096668020 (var2027) var1661)
(declare-fun var3349_getString/-1872745797 (var3349 String) String)
(declare-fun catalog/-1096668020 (var2027) String)
(declare-fun schema/-1096668020 (var2027) String)
(declare-fun name/-1096668020 (var2027) String)
(declare-fun initColumns/-1453927790 (var2027 var2764) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1303_tableFound/-483362447 (var1303 String) void)
(declare-fun var1661_keySet/-712633290 (var1661) var983)
(declare-fun var1303_columns/1848752143 (var1303 var983) void)
(declare-const null-var2027 var2027)
(declare-const null-var3349 var3349)
(declare-const null-var2764 var2764)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var2027-LOG var1303)
(declare-const var2039 var2027) ; Statement: r0 := @this: org.hibernate.tool.hbm2ddl.TableMetadata 
(assert (not (= var2039 null-var2027)))
(declare-const var3591 var3349) ; Statement: r4 := @parameter0: java.sql.ResultSet 
(assert (not (= var3591 null-var3349)))
(declare-const var1479 var2764) ; Statement: r8 := @parameter1: java.sql.DatabaseMetaData 
(assert (not (= var1479 null-var2764)))
(declare-const var908 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var908 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2027-to-var1582 var2039))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2039!1 var2027)
(define-const var1322 var1133 var1133-init) ; Statement: $r1 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1322)) ; Statement: specialinvoke $r1.<java.util.HashMap: void <init>()>() 

(declare-const var1322!1 var1133)
(declare-const var2039!2 var2027)
(assert (not (= var2039!2 null-var2027)))
(assert (= (columns/-1096668020 var2039!2) (cast-from-var1133-to-var1661 var1322!1))) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map columns> = $r1 
(define-const var481 var1133 var1133-init) ; Statement: $r2 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var481)) ; Statement: specialinvoke $r2.<java.util.HashMap: void <init>()>() 

(declare-const var481!1 var1133)
(declare-const var2039!3 var2027)
(assert (not (= var2039!3 null-var2027)))
(assert (= (foreignKeys/-1096668020 var2039!3) (cast-from-var1133-to-var1661 var481!1))) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map foreignKeys> = $r2 
(define-const var3728 var1133 var1133-init) ; Statement: $r3 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3728)) ; Statement: specialinvoke $r3.<java.util.HashMap: void <init>()>() 

(declare-const var3728!1 var1133)
(declare-const var2039!4 var2027)
(assert (not (= var2039!4 null-var2027)))
(assert (= (indexes/-1096668020 var2039!4) (cast-from-var1133-to-var1661 var3728!1))) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map indexes> = $r3 
(define-const var381 String (var3349_getString/-1872745797 var3591 "TABLE_CAT")) ; Statement: $r5 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_CAT") 
(declare-const var2039!5 var2027)
(assert (not (= var2039!5 null-var2027)))
(assert (= (catalog/-1096668020 var2039!5) var381)) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog> = $r5 
(define-const var2869 String (var3349_getString/-1872745797 var3591 "TABLE_SCHEM")) ; Statement: $r6 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_SCHEM") 
(declare-const var2039!6 var2027)
(assert (not (= var2039!6 null-var2027)))
(assert (= (schema/-1096668020 var2039!6) var2869)) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema> = $r6 
(define-const var1161 String (var3349_getString/-1872745797 var3591 "TABLE_NAME")) ; Statement: $r7 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_NAME") 
(declare-const var2039!7 var2027)
(assert (not (= var2039!7 null-var2027)))
(assert (= (name/-1096668020 var2039!7) var1161)) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String name> = $r7 
(assert true)
;(assert (initColumns/-1453927790 var2039!7 var1479)) ; Statement: specialinvoke r0.<org.hibernate.tool.hbm2ddl.TableMetadata: void initColumns(java.sql.DatabaseMetaData)>(r8) 

(declare-const var2039!8 var2027)
(declare-const var1479!1 var2764)
 ; Statement: if z0 == 0 goto $r9 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog> 
(assert (= (ite var908 1 0) 0)) ; Cond: z0 == 0 
(define-const var1212 String (catalog/-1096668020 var2039!8)) ; Statement: $r9 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog> 
 ; Statement: if $r9 != null goto $r10 = new java.lang.StringBuilder 
(assert (not (not (= var1212 null-String)))) ; Negate: Cond: $r9 != null  
(define-const var3248 String "") ; Statement: $r36 = "" 
 ; Statement: goto [?= r14 = $r36] 
(assert true) ; Non Conditional
(define-const var3400 String var3248) ; Statement: r14 = $r36 
(define-const var228 String (schema/-1096668020 var2039!8)) ; Statement: $r15 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema> 
 ; Statement: if $r15 != null goto $r16 = new java.lang.StringBuilder 
(assert (not (= var228 null-String))) ; Cond: $r15 != null 
(define-const var728 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var728)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var728!1 String)
(assert (= var728!1 ""))
(define-const var602 String (schema/-1096668020 var2039!8)) ; Statement: $r17 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema> 
(assert true)
(define-const var113 String (append/672562846 var728!1 var602)) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var728!2 String)
(assert (= var728!2 (str.++ var728!1 var602)))
(assert true)
(define-const var1940 String (append/-1166366385 var113 46)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var113!1 String)
(assert (str.prefixof var113 var113!1))
(assert true)
(define-const var1859 String (toString/-2075883882 var1940)) ; Statement: $r37 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3782 var1303 var2027-LOG) ; Statement: $r21 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var2329 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2329)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2329!1 String)
(assert (= var2329!1 ""))
(assert true)
(define-const var2863 String (append/672562846 var2329!1 var3400)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var2329!2 String)
(assert (= var2329!2 (str.++ var2329!1 var3400)))
(assert true)
(define-const var2218 String (append/672562846 var2863 var1859)) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37) 
(declare-const var2863!1 String)
(assert (= var2863!1 (str.++ var2863 var1859)))
(define-const var470 String (name/-1096668020 var2039!8)) ; Statement: $r23 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String name> 
(assert true)
(define-const var2773 String (append/672562846 var2218 var470)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2218!1 String)
(assert (= var2218!1 (str.++ var2218 var470)))
(assert true)
(define-const var243 String (toString/-2075883882 var2773)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1303_tableFound/-483362447 var3782 var243)) ; Statement: interfaceinvoke $r21.<org.hibernate.internal.CoreMessageLogger: void tableFound(java.lang.String)>($r26) 

(declare-const var3782!1 var1303)
(declare-const var243!1 String)
(define-const var585 var1303 var2027-LOG) ; Statement: $r28 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var935 var1661 (columns/-1096668020 var2039!8)) ; Statement: $r27 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map columns> 
(define-const var188 var983 (var1661_keySet/-712633290 var935)) ; Statement: $r29 = interfaceinvoke $r27.<java.util.Map: java.util.Set keySet()>() 
;(assert (var1303_columns/1848752143 var585 var188)) ; Statement: interfaceinvoke $r28.<org.hibernate.internal.CoreMessageLogger: void columns(java.util.Set)>($r29) 

(declare-const var585!1 var1303)
(declare-const var188!1 var983)
 ; Statement: if z0 == 0 goto return 
(assert (= (ite var908 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2027-to-var1582=([org.hibernate.tool.hbm2ddl.TableMetadata], java.lang.Object), var1133-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var1133-to-var1661=([java.util.HashMap], java.util.Map), columns/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.util.Map), foreignKeys/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.util.Map), indexes/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.util.Map), var3349_getString/-1872745797=([java.sql.ResultSet, java.lang.String], java.lang.String), catalog/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.lang.String), schema/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.lang.String), name/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.lang.String), initColumns/-1453927790=([org.hibernate.tool.hbm2ddl.TableMetadata, java.sql.DatabaseMetaData], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1303_tableFound/-483362447=([org.hibernate.internal.CoreMessageLogger, java.lang.String], void), var1661_keySet/-712633290=([java.util.Map], java.util.Set), var1303_columns/1848752143=([org.hibernate.internal.CoreMessageLogger, java.util.Set], void)}
; {var2027=org.hibernate.tool.hbm2ddl.TableMetadata, var2039=r0, var3349=java.sql.ResultSet, var3591=r4, var2764=java.sql.DatabaseMetaData, var1479=r8, var908=z0, var1582=java.lang.Object, var1133=java.util.HashMap, var1322=$r1, var1661=java.util.Map, var481=$r2, var3728=$r3, var381=$r5, var2869=$r6, var1161=$r7, var1212=$r9, var1136=null_type, var3248=$r36, var3400=r14, var228=$r15, var728=$r16, var602=$r17, var113=$r18, var1940=$r19, var1859=$r37, var1303=org.hibernate.internal.CoreMessageLogger, var3782=$r21, var2329=$r20, var2863=$r22, var2218=$r24, var470=$r23, var2773=$r25, var243=$r26, var585=$r28, var935=$r27, var983=java.util.Set, var188=$r29}
; {org.hibernate.tool.hbm2ddl.TableMetadata=var2027, r0=var2039, java.sql.ResultSet=var3349, r4=var3591, java.sql.DatabaseMetaData=var2764, r8=var1479, z0=var908, java.lang.Object=var1582, java.util.HashMap=var1133, $r1=var1322, java.util.Map=var1661, $r2=var481, $r3=var3728, $r5=var381, $r6=var2869, $r7=var1161, $r9=var1212, null_type=var1136, $r36=var3248, r14=var3400, $r15=var228, $r16=var728, $r17=var602, $r18=var113, $r19=var1940, $r37=var1859, org.hibernate.internal.CoreMessageLogger=var1303, $r21=var3782, $r20=var2329, $r22=var2863, $r24=var2218, $r23=var470, $r25=var2773, $r26=var243, $r28=var585, $r27=var935, java.util.Set=var983, $r29=var188}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: org.hibernate.tool.hbm2ddl.TableMetadata;	r4 := @parameter0: java.sql.ResultSet;	r8 := @parameter1: java.sql.DatabaseMetaData;	z0 := @parameter2: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.HashMap;	specialinvoke $r1.<java.util.HashMap: void <init>()>();	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map columns> = $r1;	$r2 = new java.util.HashMap;	specialinvoke $r2.<java.util.HashMap: void <init>()>();	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map foreignKeys> = $r2;	$r3 = new java.util.HashMap;	specialinvoke $r3.<java.util.HashMap: void <init>()>();	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map indexes> = $r3;	$r5 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_CAT");	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog> = $r5;	$r6 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_SCHEM");	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema> = $r6;	$r7 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_NAME");	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String name> = $r7;	specialinvoke r0.<org.hibernate.tool.hbm2ddl.TableMetadata: void initColumns(java.sql.DatabaseMetaData)>(r8);	if z0 == 0 goto $r9 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog>;	$r9 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog>;	if $r9 != null goto $r10 = new java.lang.StringBuilder;	$r36 = "";	goto [?= r14 = $r36];	r14 = $r36;	$r15 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema>;	if $r15 != null goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema>;	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r37 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG>;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37);	$r23 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String name>;	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r21.<org.hibernate.internal.CoreMessageLogger: void tableFound(java.lang.String)>($r26);	$r28 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG>;	$r27 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map columns>;	$r29 = interfaceinvoke $r27.<java.util.Map: java.util.Set keySet()>();	interfaceinvoke $r28.<org.hibernate.internal.CoreMessageLogger: void columns(java.util.Set)>($r29);	if z0 == 0 goto return;	return
;block_num 7