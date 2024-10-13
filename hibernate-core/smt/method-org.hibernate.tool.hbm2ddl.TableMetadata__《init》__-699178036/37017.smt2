(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2293 0)
(declare-sort var3725 0)
(declare-sort var969 0)
(declare-sort var1899 0)
(declare-sort var594 0)
(declare-sort var1673 0)
(declare-sort var2485 0)
(declare-sort var1836 0)
(declare-sort var2090 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1899) void)
(declare-fun cast-from-var2293-to-var1899 (var2293) var1899)
(declare-fun var594-init () var594)
(declare-fun <init>/-201242697 (var594) void)
(declare-fun cast-from-var594-to-var1673 (var594) var1673)
(declare-fun columns/-1096668020 (var2293) var1673)
(declare-fun foreignKeys/-1096668020 (var2293) var1673)
(declare-fun indexes/-1096668020 (var2293) var1673)
(declare-fun var3725_getString/-1872745797 (var3725 String) String)
(declare-fun catalog/-1096668020 (var2293) String)
(declare-fun schema/-1096668020 (var2293) String)
(declare-fun name/-1096668020 (var2293) String)
(declare-fun initColumns/-1453927790 (var2293 var969) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1836_tableFound/-483362447 (var1836 String) void)
(declare-fun var1673_keySet/-712633290 (var1673) var2090)
(declare-fun var1836_columns/1848752143 (var1836 var2090) void)
(declare-const null-var2293 var2293)
(declare-const null-var3725 var3725)
(declare-const null-var969 var969)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var2293-LOG var1836)
(declare-const var3346 var2293) ; Statement: r0 := @this: org.hibernate.tool.hbm2ddl.TableMetadata 
(assert (not (= var3346 null-var2293)))
(declare-const var3162 var3725) ; Statement: r4 := @parameter0: java.sql.ResultSet 
(assert (not (= var3162 null-var3725)))
(declare-const var1423 var969) ; Statement: r8 := @parameter1: java.sql.DatabaseMetaData 
(assert (not (= var1423 null-var969)))
(declare-const var1312 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1312 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2293-to-var1899 var3346))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3346!1 var2293)
(define-const var3407 var594 var594-init) ; Statement: $r1 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3407)) ; Statement: specialinvoke $r1.<java.util.HashMap: void <init>()>() 

(declare-const var3407!1 var594)
(declare-const var3346!2 var2293)
(assert (not (= var3346!2 null-var2293)))
(assert (= (columns/-1096668020 var3346!2) (cast-from-var594-to-var1673 var3407!1))) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map columns> = $r1 
(define-const var3855 var594 var594-init) ; Statement: $r2 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3855)) ; Statement: specialinvoke $r2.<java.util.HashMap: void <init>()>() 

(declare-const var3855!1 var594)
(declare-const var3346!3 var2293)
(assert (not (= var3346!3 null-var2293)))
(assert (= (foreignKeys/-1096668020 var3346!3) (cast-from-var594-to-var1673 var3855!1))) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map foreignKeys> = $r2 
(define-const var340 var594 var594-init) ; Statement: $r3 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var340)) ; Statement: specialinvoke $r3.<java.util.HashMap: void <init>()>() 

(declare-const var340!1 var594)
(declare-const var3346!4 var2293)
(assert (not (= var3346!4 null-var2293)))
(assert (= (indexes/-1096668020 var3346!4) (cast-from-var594-to-var1673 var340!1))) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map indexes> = $r3 
(define-const var1742 String (var3725_getString/-1872745797 var3162 "TABLE_CAT")) ; Statement: $r5 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_CAT") 
(declare-const var3346!5 var2293)
(assert (not (= var3346!5 null-var2293)))
(assert (= (catalog/-1096668020 var3346!5) var1742)) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog> = $r5 
(define-const var244 String (var3725_getString/-1872745797 var3162 "TABLE_SCHEM")) ; Statement: $r6 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_SCHEM") 
(declare-const var3346!6 var2293)
(assert (not (= var3346!6 null-var2293)))
(assert (= (schema/-1096668020 var3346!6) var244)) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema> = $r6 
(define-const var1301 String (var3725_getString/-1872745797 var3162 "TABLE_NAME")) ; Statement: $r7 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_NAME") 
(declare-const var3346!7 var2293)
(assert (not (= var3346!7 null-var2293)))
(assert (= (name/-1096668020 var3346!7) var1301)) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String name> = $r7 
(assert true)
;(assert (initColumns/-1453927790 var3346!7 var1423)) ; Statement: specialinvoke r0.<org.hibernate.tool.hbm2ddl.TableMetadata: void initColumns(java.sql.DatabaseMetaData)>(r8) 

(declare-const var3346!8 var2293)
(declare-const var1423!1 var969)
 ; Statement: if z0 == 0 goto $r9 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog> 
(assert (= (ite var1312 1 0) 0)) ; Cond: z0 == 0 
(define-const var1065 String (catalog/-1096668020 var3346!8)) ; Statement: $r9 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog> 
 ; Statement: if $r9 != null goto $r10 = new java.lang.StringBuilder 
(assert (not (= var1065 null-String))) ; Cond: $r9 != null 
(define-const var2625 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2625)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2625!1 String)
(assert (= var2625!1 ""))
(define-const var1055 String (catalog/-1096668020 var3346!8)) ; Statement: $r11 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog> 
(assert true)
(define-const var181 String (append/672562846 var2625!1 var1055)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2625!2 String)
(assert (= var2625!2 (str.++ var2625!1 var1055)))
(assert true)
(define-const var484 String (append/-1166366385 var181 46)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var181!1 String)
(assert (str.prefixof var181 var181!1))
(assert true)
(define-const var882 String (toString/-2075883882 var484)) ; Statement: $r36 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1141 String var882) ; Statement: r14 = $r36 
(define-const var2772 String (schema/-1096668020 var3346!8)) ; Statement: $r15 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema> 
 ; Statement: if $r15 != null goto $r16 = new java.lang.StringBuilder 
(assert (not (= var2772 null-String))) ; Cond: $r15 != null 
(define-const var3607 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3607)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3607!1 String)
(assert (= var3607!1 ""))
(define-const var3843 String (schema/-1096668020 var3346!8)) ; Statement: $r17 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema> 
(assert true)
(define-const var170 String (append/672562846 var3607!1 var3843)) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3607!2 String)
(assert (= var3607!2 (str.++ var3607!1 var3843)))
(assert true)
(define-const var224 String (append/-1166366385 var170 46)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var170!1 String)
(assert (str.prefixof var170 var170!1))
(assert true)
(define-const var910 String (toString/-2075883882 var224)) ; Statement: $r37 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1669 var1836 var2293-LOG) ; Statement: $r21 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var3454 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3454)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3454!1 String)
(assert (= var3454!1 ""))
(assert true)
(define-const var1069 String (append/672562846 var3454!1 var1141)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var3454!2 String)
(assert (= var3454!2 (str.++ var3454!1 var1141)))
(assert true)
(define-const var1596 String (append/672562846 var1069 var910)) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37) 
(declare-const var1069!1 String)
(assert (= var1069!1 (str.++ var1069 var910)))
(define-const var1071 String (name/-1096668020 var3346!8)) ; Statement: $r23 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String name> 
(assert true)
(define-const var1729 String (append/672562846 var1596 var1071)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var1596!1 String)
(assert (= var1596!1 (str.++ var1596 var1071)))
(assert true)
(define-const var3962 String (toString/-2075883882 var1729)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1836_tableFound/-483362447 var1669 var3962)) ; Statement: interfaceinvoke $r21.<org.hibernate.internal.CoreMessageLogger: void tableFound(java.lang.String)>($r26) 

(declare-const var1669!1 var1836)
(declare-const var3962!1 String)
(define-const var619 var1836 var2293-LOG) ; Statement: $r28 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var3701 var1673 (columns/-1096668020 var3346!8)) ; Statement: $r27 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map columns> 
(define-const var1979 var2090 (var1673_keySet/-712633290 var3701)) ; Statement: $r29 = interfaceinvoke $r27.<java.util.Map: java.util.Set keySet()>() 
;(assert (var1836_columns/1848752143 var619 var1979)) ; Statement: interfaceinvoke $r28.<org.hibernate.internal.CoreMessageLogger: void columns(java.util.Set)>($r29) 

(declare-const var619!1 var1836)
(declare-const var1979!1 var2090)
 ; Statement: if z0 == 0 goto return 
(assert (= (ite var1312 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2293-to-var1899=([org.hibernate.tool.hbm2ddl.TableMetadata], java.lang.Object), var594-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var594-to-var1673=([java.util.HashMap], java.util.Map), columns/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.util.Map), foreignKeys/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.util.Map), indexes/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.util.Map), var3725_getString/-1872745797=([java.sql.ResultSet, java.lang.String], java.lang.String), catalog/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.lang.String), schema/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.lang.String), name/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.lang.String), initColumns/-1453927790=([org.hibernate.tool.hbm2ddl.TableMetadata, java.sql.DatabaseMetaData], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1836_tableFound/-483362447=([org.hibernate.internal.CoreMessageLogger, java.lang.String], void), var1673_keySet/-712633290=([java.util.Map], java.util.Set), var1836_columns/1848752143=([org.hibernate.internal.CoreMessageLogger, java.util.Set], void)}
; {var2293=org.hibernate.tool.hbm2ddl.TableMetadata, var3346=r0, var3725=java.sql.ResultSet, var3162=r4, var969=java.sql.DatabaseMetaData, var1423=r8, var1312=z0, var1899=java.lang.Object, var594=java.util.HashMap, var3407=$r1, var1673=java.util.Map, var3855=$r2, var340=$r3, var1742=$r5, var244=$r6, var1301=$r7, var1065=$r9, var2485=null_type, var2625=$r10, var1055=$r11, var181=$r12, var484=$r13, var882=$r36, var1141=r14, var2772=$r15, var3607=$r16, var3843=$r17, var170=$r18, var224=$r19, var910=$r37, var1836=org.hibernate.internal.CoreMessageLogger, var1669=$r21, var3454=$r20, var1069=$r22, var1596=$r24, var1071=$r23, var1729=$r25, var3962=$r26, var619=$r28, var3701=$r27, var2090=java.util.Set, var1979=$r29}
; {org.hibernate.tool.hbm2ddl.TableMetadata=var2293, r0=var3346, java.sql.ResultSet=var3725, r4=var3162, java.sql.DatabaseMetaData=var969, r8=var1423, z0=var1312, java.lang.Object=var1899, java.util.HashMap=var594, $r1=var3407, java.util.Map=var1673, $r2=var3855, $r3=var340, $r5=var1742, $r6=var244, $r7=var1301, $r9=var1065, null_type=var2485, $r10=var2625, $r11=var1055, $r12=var181, $r13=var484, $r36=var882, r14=var1141, $r15=var2772, $r16=var3607, $r17=var3843, $r18=var170, $r19=var224, $r37=var910, org.hibernate.internal.CoreMessageLogger=var1836, $r21=var1669, $r20=var3454, $r22=var1069, $r24=var1596, $r23=var1071, $r25=var1729, $r26=var3962, $r28=var619, $r27=var3701, java.util.Set=var2090, $r29=var1979}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @this: org.hibernate.tool.hbm2ddl.TableMetadata;	r4 := @parameter0: java.sql.ResultSet;	r8 := @parameter1: java.sql.DatabaseMetaData;	z0 := @parameter2: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.HashMap;	specialinvoke $r1.<java.util.HashMap: void <init>()>();	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map columns> = $r1;	$r2 = new java.util.HashMap;	specialinvoke $r2.<java.util.HashMap: void <init>()>();	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map foreignKeys> = $r2;	$r3 = new java.util.HashMap;	specialinvoke $r3.<java.util.HashMap: void <init>()>();	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map indexes> = $r3;	$r5 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_CAT");	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog> = $r5;	$r6 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_SCHEM");	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema> = $r6;	$r7 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_NAME");	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String name> = $r7;	specialinvoke r0.<org.hibernate.tool.hbm2ddl.TableMetadata: void initColumns(java.sql.DatabaseMetaData)>(r8);	if z0 == 0 goto $r9 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog>;	$r9 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog>;	if $r9 != null goto $r10 = new java.lang.StringBuilder;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog>;	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r36 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	r14 = $r36;	$r15 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema>;	if $r15 != null goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema>;	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r37 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG>;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37);	$r23 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String name>;	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r21.<org.hibernate.internal.CoreMessageLogger: void tableFound(java.lang.String)>($r26);	$r28 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG>;	$r27 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map columns>;	$r29 = interfaceinvoke $r27.<java.util.Map: java.util.Set keySet()>();	interfaceinvoke $r28.<org.hibernate.internal.CoreMessageLogger: void columns(java.util.Set)>($r29);	if z0 == 0 goto return;	return
;block_num 7