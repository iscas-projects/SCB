(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var497 0)
(declare-sort var2020 0)
(declare-sort var3835 0)
(declare-sort var864 0)
(declare-sort var2859 0)
(declare-sort var2297 0)
(declare-sort var349 0)
(declare-sort var441 0)
(declare-sort var2149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var864) void)
(declare-fun cast-from-var497-to-var864 (var497) var864)
(declare-fun var2859-init () var2859)
(declare-fun <init>/-201242697 (var2859) void)
(declare-fun cast-from-var2859-to-var2297 (var2859) var2297)
(declare-fun columns/-1096668020 (var497) var2297)
(declare-fun foreignKeys/-1096668020 (var497) var2297)
(declare-fun indexes/-1096668020 (var497) var2297)
(declare-fun var2020_getString/-1872745797 (var2020 String) String)
(declare-fun catalog/-1096668020 (var497) String)
(declare-fun schema/-1096668020 (var497) String)
(declare-fun name/-1096668020 (var497) String)
(declare-fun initColumns/-1453927790 (var497 var3835) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var441_tableFound/-483362447 (var441 String) void)
(declare-fun var2297_keySet/-712633290 (var2297) var2149)
(declare-fun var441_columns/1848752143 (var441 var2149) void)
(declare-const null-var497 var497)
(declare-const null-var2020 var2020)
(declare-const null-var3835 var3835)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var497-LOG var441)
(declare-const var3605 var497) ; Statement: r0 := @this: org.hibernate.tool.hbm2ddl.TableMetadata 
(assert (not (= var3605 null-var497)))
(declare-const var3880 var2020) ; Statement: r4 := @parameter0: java.sql.ResultSet 
(assert (not (= var3880 null-var2020)))
(declare-const var585 var3835) ; Statement: r8 := @parameter1: java.sql.DatabaseMetaData 
(assert (not (= var585 null-var3835)))
(declare-const var2914 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2914 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var497-to-var864 var3605))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3605!1 var497)
(define-const var1322 var2859 var2859-init) ; Statement: $r1 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1322)) ; Statement: specialinvoke $r1.<java.util.HashMap: void <init>()>() 

(declare-const var1322!1 var2859)
(declare-const var3605!2 var497)
(assert (not (= var3605!2 null-var497)))
(assert (= (columns/-1096668020 var3605!2) (cast-from-var2859-to-var2297 var1322!1))) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map columns> = $r1 
(define-const var3297 var2859 var2859-init) ; Statement: $r2 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3297)) ; Statement: specialinvoke $r2.<java.util.HashMap: void <init>()>() 

(declare-const var3297!1 var2859)
(declare-const var3605!3 var497)
(assert (not (= var3605!3 null-var497)))
(assert (= (foreignKeys/-1096668020 var3605!3) (cast-from-var2859-to-var2297 var3297!1))) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map foreignKeys> = $r2 
(define-const var3124 var2859 var2859-init) ; Statement: $r3 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3124)) ; Statement: specialinvoke $r3.<java.util.HashMap: void <init>()>() 

(declare-const var3124!1 var2859)
(declare-const var3605!4 var497)
(assert (not (= var3605!4 null-var497)))
(assert (= (indexes/-1096668020 var3605!4) (cast-from-var2859-to-var2297 var3124!1))) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map indexes> = $r3 
(define-const var3239 String (var2020_getString/-1872745797 var3880 "TABLE_CAT")) ; Statement: $r5 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_CAT") 
(declare-const var3605!5 var497)
(assert (not (= var3605!5 null-var497)))
(assert (= (catalog/-1096668020 var3605!5) var3239)) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog> = $r5 
(define-const var521 String (var2020_getString/-1872745797 var3880 "TABLE_SCHEM")) ; Statement: $r6 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_SCHEM") 
(declare-const var3605!6 var497)
(assert (not (= var3605!6 null-var497)))
(assert (= (schema/-1096668020 var3605!6) var521)) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema> = $r6 
(define-const var1597 String (var2020_getString/-1872745797 var3880 "TABLE_NAME")) ; Statement: $r7 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_NAME") 
(declare-const var3605!7 var497)
(assert (not (= var3605!7 null-var497)))
(assert (= (name/-1096668020 var3605!7) var1597)) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String name> = $r7 
(assert true)
;(assert (initColumns/-1453927790 var3605!7 var585)) ; Statement: specialinvoke r0.<org.hibernate.tool.hbm2ddl.TableMetadata: void initColumns(java.sql.DatabaseMetaData)>(r8) 

(declare-const var3605!8 var497)
(declare-const var585!1 var3835)
 ; Statement: if z0 == 0 goto $r9 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog> 
(assert (= (ite var2914 1 0) 0)) ; Cond: z0 == 0 
(define-const var3014 String (catalog/-1096668020 var3605!8)) ; Statement: $r9 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog> 
 ; Statement: if $r9 != null goto $r10 = new java.lang.StringBuilder 
(assert (not (= var3014 null-String))) ; Cond: $r9 != null 
(define-const var1875 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1875)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1875!1 String)
(assert (= var1875!1 ""))
(define-const var2839 String (catalog/-1096668020 var3605!8)) ; Statement: $r11 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog> 
(assert true)
(define-const var3867 String (append/672562846 var1875!1 var2839)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1875!2 String)
(assert (= var1875!2 (str.++ var1875!1 var2839)))
(assert true)
(define-const var1781 String (append/-1166366385 var3867 46)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var3867!1 String)
(assert (str.prefixof var3867 var3867!1))
(assert true)
(define-const var802 String (toString/-2075883882 var1781)) ; Statement: $r36 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3150 String var802) ; Statement: r14 = $r36 
(define-const var2551 String (schema/-1096668020 var3605!8)) ; Statement: $r15 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema> 
 ; Statement: if $r15 != null goto $r16 = new java.lang.StringBuilder 
(assert (not (not (= var2551 null-String)))) ; Negate: Cond: $r15 != null  
(define-const var128 String "") ; Statement: $r37 = "" 
 ; Statement: goto [?= $r21 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG>] 
(assert true) ; Non Conditional
(define-const var475 var441 var497-LOG) ; Statement: $r21 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var2298 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2298)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2298!1 String)
(assert (= var2298!1 ""))
(assert true)
(define-const var673 String (append/672562846 var2298!1 var3150)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var2298!2 String)
(assert (= var2298!2 (str.++ var2298!1 var3150)))
(assert true)
(define-const var2331 String (append/672562846 var673 var128)) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37) 
(declare-const var673!1 String)
(assert (= var673!1 (str.++ var673 var128)))
(define-const var2224 String (name/-1096668020 var3605!8)) ; Statement: $r23 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String name> 
(assert true)
(define-const var3724 String (append/672562846 var2331 var2224)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2331!1 String)
(assert (= var2331!1 (str.++ var2331 var2224)))
(assert true)
(define-const var782 String (toString/-2075883882 var3724)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var441_tableFound/-483362447 var475 var782)) ; Statement: interfaceinvoke $r21.<org.hibernate.internal.CoreMessageLogger: void tableFound(java.lang.String)>($r26) 

(declare-const var475!1 var441)
(declare-const var782!1 String)
(define-const var794 var441 var497-LOG) ; Statement: $r28 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var3664 var2297 (columns/-1096668020 var3605!8)) ; Statement: $r27 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map columns> 
(define-const var2165 var2149 (var2297_keySet/-712633290 var3664)) ; Statement: $r29 = interfaceinvoke $r27.<java.util.Map: java.util.Set keySet()>() 
;(assert (var441_columns/1848752143 var794 var2165)) ; Statement: interfaceinvoke $r28.<org.hibernate.internal.CoreMessageLogger: void columns(java.util.Set)>($r29) 

(declare-const var794!1 var441)
(declare-const var2165!1 var2149)
 ; Statement: if z0 == 0 goto return 
(assert (= (ite var2914 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var497-to-var864=([org.hibernate.tool.hbm2ddl.TableMetadata], java.lang.Object), var2859-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var2859-to-var2297=([java.util.HashMap], java.util.Map), columns/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.util.Map), foreignKeys/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.util.Map), indexes/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.util.Map), var2020_getString/-1872745797=([java.sql.ResultSet, java.lang.String], java.lang.String), catalog/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.lang.String), schema/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.lang.String), name/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.lang.String), initColumns/-1453927790=([org.hibernate.tool.hbm2ddl.TableMetadata, java.sql.DatabaseMetaData], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var441_tableFound/-483362447=([org.hibernate.internal.CoreMessageLogger, java.lang.String], void), var2297_keySet/-712633290=([java.util.Map], java.util.Set), var441_columns/1848752143=([org.hibernate.internal.CoreMessageLogger, java.util.Set], void)}
; {var497=org.hibernate.tool.hbm2ddl.TableMetadata, var3605=r0, var2020=java.sql.ResultSet, var3880=r4, var3835=java.sql.DatabaseMetaData, var585=r8, var2914=z0, var864=java.lang.Object, var2859=java.util.HashMap, var1322=$r1, var2297=java.util.Map, var3297=$r2, var3124=$r3, var3239=$r5, var521=$r6, var1597=$r7, var3014=$r9, var349=null_type, var1875=$r10, var2839=$r11, var3867=$r12, var1781=$r13, var802=$r36, var3150=r14, var2551=$r15, var128=$r37, var441=org.hibernate.internal.CoreMessageLogger, var475=$r21, var2298=$r20, var673=$r22, var2331=$r24, var2224=$r23, var3724=$r25, var782=$r26, var794=$r28, var3664=$r27, var2149=java.util.Set, var2165=$r29}
; {org.hibernate.tool.hbm2ddl.TableMetadata=var497, r0=var3605, java.sql.ResultSet=var2020, r4=var3880, java.sql.DatabaseMetaData=var3835, r8=var585, z0=var2914, java.lang.Object=var864, java.util.HashMap=var2859, $r1=var1322, java.util.Map=var2297, $r2=var3297, $r3=var3124, $r5=var3239, $r6=var521, $r7=var1597, $r9=var3014, null_type=var349, $r10=var1875, $r11=var2839, $r12=var3867, $r13=var1781, $r36=var802, r14=var3150, $r15=var2551, $r37=var128, org.hibernate.internal.CoreMessageLogger=var441, $r21=var475, $r20=var2298, $r22=var673, $r24=var2331, $r23=var2224, $r25=var3724, $r26=var782, $r28=var794, $r27=var3664, java.util.Set=var2149, $r29=var2165}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: org.hibernate.tool.hbm2ddl.TableMetadata;	r4 := @parameter0: java.sql.ResultSet;	r8 := @parameter1: java.sql.DatabaseMetaData;	z0 := @parameter2: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.HashMap;	specialinvoke $r1.<java.util.HashMap: void <init>()>();	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map columns> = $r1;	$r2 = new java.util.HashMap;	specialinvoke $r2.<java.util.HashMap: void <init>()>();	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map foreignKeys> = $r2;	$r3 = new java.util.HashMap;	specialinvoke $r3.<java.util.HashMap: void <init>()>();	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map indexes> = $r3;	$r5 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_CAT");	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog> = $r5;	$r6 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_SCHEM");	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema> = $r6;	$r7 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_NAME");	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String name> = $r7;	specialinvoke r0.<org.hibernate.tool.hbm2ddl.TableMetadata: void initColumns(java.sql.DatabaseMetaData)>(r8);	if z0 == 0 goto $r9 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog>;	$r9 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog>;	if $r9 != null goto $r10 = new java.lang.StringBuilder;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog>;	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r36 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	r14 = $r36;	$r15 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema>;	if $r15 != null goto $r16 = new java.lang.StringBuilder;	$r37 = "";	goto [?= $r21 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG>];	$r21 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG>;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37);	$r23 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String name>;	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r21.<org.hibernate.internal.CoreMessageLogger: void tableFound(java.lang.String)>($r26);	$r28 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG>;	$r27 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map columns>;	$r29 = interfaceinvoke $r27.<java.util.Map: java.util.Set keySet()>();	interfaceinvoke $r28.<org.hibernate.internal.CoreMessageLogger: void columns(java.util.Set)>($r29);	if z0 == 0 goto return;	return
;block_num 7