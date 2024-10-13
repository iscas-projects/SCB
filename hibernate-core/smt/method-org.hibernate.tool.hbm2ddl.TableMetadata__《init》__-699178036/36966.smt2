(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3079 0)
(declare-sort var1469 0)
(declare-sort var3435 0)
(declare-sort var762 0)
(declare-sort var997 0)
(declare-sort var3887 0)
(declare-sort var128 0)
(declare-sort var3228 0)
(declare-sort var2054 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var762) void)
(declare-fun cast-from-var3079-to-var762 (var3079) var762)
(declare-fun var997-init () var997)
(declare-fun <init>/-201242697 (var997) void)
(declare-fun cast-from-var997-to-var3887 (var997) var3887)
(declare-fun columns/-1096668020 (var3079) var3887)
(declare-fun foreignKeys/-1096668020 (var3079) var3887)
(declare-fun indexes/-1096668020 (var3079) var3887)
(declare-fun var1469_getString/-1872745797 (var1469 String) String)
(declare-fun catalog/-1096668020 (var3079) String)
(declare-fun schema/-1096668020 (var3079) String)
(declare-fun name/-1096668020 (var3079) String)
(declare-fun initColumns/-1453927790 (var3079 var3435) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3228_tableFound/-483362447 (var3228 String) void)
(declare-fun var3887_keySet/-712633290 (var3887) var2054)
(declare-fun var3228_columns/1848752143 (var3228 var2054) void)
(declare-const null-var3079 var3079)
(declare-const null-var1469 var1469)
(declare-const null-var3435 var3435)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var3079-LOG var3228)
(declare-const var1879 var3079) ; Statement: r0 := @this: org.hibernate.tool.hbm2ddl.TableMetadata 
(assert (not (= var1879 null-var3079)))
(declare-const var2451 var1469) ; Statement: r4 := @parameter0: java.sql.ResultSet 
(assert (not (= var2451 null-var1469)))
(declare-const var3733 var3435) ; Statement: r8 := @parameter1: java.sql.DatabaseMetaData 
(assert (not (= var3733 null-var3435)))
(declare-const var3198 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3198 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3079-to-var762 var1879))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1879!1 var3079)
(define-const var115 var997 var997-init) ; Statement: $r1 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var115)) ; Statement: specialinvoke $r1.<java.util.HashMap: void <init>()>() 

(declare-const var115!1 var997)
(declare-const var1879!2 var3079)
(assert (not (= var1879!2 null-var3079)))
(assert (= (columns/-1096668020 var1879!2) (cast-from-var997-to-var3887 var115!1))) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map columns> = $r1 
(define-const var2311 var997 var997-init) ; Statement: $r2 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2311)) ; Statement: specialinvoke $r2.<java.util.HashMap: void <init>()>() 

(declare-const var2311!1 var997)
(declare-const var1879!3 var3079)
(assert (not (= var1879!3 null-var3079)))
(assert (= (foreignKeys/-1096668020 var1879!3) (cast-from-var997-to-var3887 var2311!1))) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map foreignKeys> = $r2 
(define-const var92 var997 var997-init) ; Statement: $r3 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var92)) ; Statement: specialinvoke $r3.<java.util.HashMap: void <init>()>() 

(declare-const var92!1 var997)
(declare-const var1879!4 var3079)
(assert (not (= var1879!4 null-var3079)))
(assert (= (indexes/-1096668020 var1879!4) (cast-from-var997-to-var3887 var92!1))) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map indexes> = $r3 
(define-const var288 String (var1469_getString/-1872745797 var2451 "TABLE_CAT")) ; Statement: $r5 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_CAT") 
(declare-const var1879!5 var3079)
(assert (not (= var1879!5 null-var3079)))
(assert (= (catalog/-1096668020 var1879!5) var288)) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog> = $r5 
(define-const var894 String (var1469_getString/-1872745797 var2451 "TABLE_SCHEM")) ; Statement: $r6 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_SCHEM") 
(declare-const var1879!6 var3079)
(assert (not (= var1879!6 null-var3079)))
(assert (= (schema/-1096668020 var1879!6) var894)) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema> = $r6 
(define-const var1182 String (var1469_getString/-1872745797 var2451 "TABLE_NAME")) ; Statement: $r7 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_NAME") 
(declare-const var1879!7 var3079)
(assert (not (= var1879!7 null-var3079)))
(assert (= (name/-1096668020 var1879!7) var1182)) ; Statement: r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String name> = $r7 
(assert true)
;(assert (initColumns/-1453927790 var1879!7 var3733)) ; Statement: specialinvoke r0.<org.hibernate.tool.hbm2ddl.TableMetadata: void initColumns(java.sql.DatabaseMetaData)>(r8) 

(declare-const var1879!8 var3079)
(declare-const var3733!1 var3435)
 ; Statement: if z0 == 0 goto $r9 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog> 
(assert (= (ite var3198 1 0) 0)) ; Cond: z0 == 0 
(define-const var1305 String (catalog/-1096668020 var1879!8)) ; Statement: $r9 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog> 
 ; Statement: if $r9 != null goto $r10 = new java.lang.StringBuilder 
(assert (not (not (= var1305 null-String)))) ; Negate: Cond: $r9 != null  
(define-const var2025 String "") ; Statement: $r36 = "" 
 ; Statement: goto [?= r14 = $r36] 
(assert true) ; Non Conditional
(define-const var1467 String var2025) ; Statement: r14 = $r36 
(define-const var2774 String (schema/-1096668020 var1879!8)) ; Statement: $r15 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema> 
 ; Statement: if $r15 != null goto $r16 = new java.lang.StringBuilder 
(assert (not (not (= var2774 null-String)))) ; Negate: Cond: $r15 != null  
(define-const var2702 String "") ; Statement: $r37 = "" 
 ; Statement: goto [?= $r21 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG>] 
(assert true) ; Non Conditional
(define-const var3124 var3228 var3079-LOG) ; Statement: $r21 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var3509 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3509)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3509!1 String)
(assert (= var3509!1 ""))
(assert true)
(define-const var1754 String (append/672562846 var3509!1 var1467)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var3509!2 String)
(assert (= var3509!2 (str.++ var3509!1 var1467)))
(assert true)
(define-const var1949 String (append/672562846 var1754 var2702)) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37) 
(declare-const var1754!1 String)
(assert (= var1754!1 (str.++ var1754 var2702)))
(define-const var2001 String (name/-1096668020 var1879!8)) ; Statement: $r23 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String name> 
(assert true)
(define-const var2553 String (append/672562846 var1949 var2001)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var1949!1 String)
(assert (= var1949!1 (str.++ var1949 var2001)))
(assert true)
(define-const var3460 String (toString/-2075883882 var2553)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3228_tableFound/-483362447 var3124 var3460)) ; Statement: interfaceinvoke $r21.<org.hibernate.internal.CoreMessageLogger: void tableFound(java.lang.String)>($r26) 

(declare-const var3124!1 var3228)
(declare-const var3460!1 String)
(define-const var174 var3228 var3079-LOG) ; Statement: $r28 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var2057 var3887 (columns/-1096668020 var1879!8)) ; Statement: $r27 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map columns> 
(define-const var331 var2054 (var3887_keySet/-712633290 var2057)) ; Statement: $r29 = interfaceinvoke $r27.<java.util.Map: java.util.Set keySet()>() 
;(assert (var3228_columns/1848752143 var174 var331)) ; Statement: interfaceinvoke $r28.<org.hibernate.internal.CoreMessageLogger: void columns(java.util.Set)>($r29) 

(declare-const var174!1 var3228)
(declare-const var331!1 var2054)
 ; Statement: if z0 == 0 goto return 
(assert (= (ite var3198 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3079-to-var762=([org.hibernate.tool.hbm2ddl.TableMetadata], java.lang.Object), var997-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var997-to-var3887=([java.util.HashMap], java.util.Map), columns/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.util.Map), foreignKeys/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.util.Map), indexes/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.util.Map), var1469_getString/-1872745797=([java.sql.ResultSet, java.lang.String], java.lang.String), catalog/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.lang.String), schema/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.lang.String), name/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.lang.String), initColumns/-1453927790=([org.hibernate.tool.hbm2ddl.TableMetadata, java.sql.DatabaseMetaData], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3228_tableFound/-483362447=([org.hibernate.internal.CoreMessageLogger, java.lang.String], void), var3887_keySet/-712633290=([java.util.Map], java.util.Set), var3228_columns/1848752143=([org.hibernate.internal.CoreMessageLogger, java.util.Set], void)}
; {var3079=org.hibernate.tool.hbm2ddl.TableMetadata, var1879=r0, var1469=java.sql.ResultSet, var2451=r4, var3435=java.sql.DatabaseMetaData, var3733=r8, var3198=z0, var762=java.lang.Object, var997=java.util.HashMap, var115=$r1, var3887=java.util.Map, var2311=$r2, var92=$r3, var288=$r5, var894=$r6, var1182=$r7, var1305=$r9, var128=null_type, var2025=$r36, var1467=r14, var2774=$r15, var2702=$r37, var3228=org.hibernate.internal.CoreMessageLogger, var3124=$r21, var3509=$r20, var1754=$r22, var1949=$r24, var2001=$r23, var2553=$r25, var3460=$r26, var174=$r28, var2057=$r27, var2054=java.util.Set, var331=$r29}
; {org.hibernate.tool.hbm2ddl.TableMetadata=var3079, r0=var1879, java.sql.ResultSet=var1469, r4=var2451, java.sql.DatabaseMetaData=var3435, r8=var3733, z0=var3198, java.lang.Object=var762, java.util.HashMap=var997, $r1=var115, java.util.Map=var3887, $r2=var2311, $r3=var92, $r5=var288, $r6=var894, $r7=var1182, $r9=var1305, null_type=var128, $r36=var2025, r14=var1467, $r15=var2774, $r37=var2702, org.hibernate.internal.CoreMessageLogger=var3228, $r21=var3124, $r20=var3509, $r22=var1754, $r24=var1949, $r23=var2001, $r25=var2553, $r26=var3460, $r28=var174, $r27=var2057, java.util.Set=var2054, $r29=var331}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tool.hbm2ddl.TableMetadata;	r4 := @parameter0: java.sql.ResultSet;	r8 := @parameter1: java.sql.DatabaseMetaData;	z0 := @parameter2: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.HashMap;	specialinvoke $r1.<java.util.HashMap: void <init>()>();	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map columns> = $r1;	$r2 = new java.util.HashMap;	specialinvoke $r2.<java.util.HashMap: void <init>()>();	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map foreignKeys> = $r2;	$r3 = new java.util.HashMap;	specialinvoke $r3.<java.util.HashMap: void <init>()>();	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map indexes> = $r3;	$r5 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_CAT");	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog> = $r5;	$r6 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_SCHEM");	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema> = $r6;	$r7 = interfaceinvoke r4.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("TABLE_NAME");	r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String name> = $r7;	specialinvoke r0.<org.hibernate.tool.hbm2ddl.TableMetadata: void initColumns(java.sql.DatabaseMetaData)>(r8);	if z0 == 0 goto $r9 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog>;	$r9 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String catalog>;	if $r9 != null goto $r10 = new java.lang.StringBuilder;	$r36 = "";	goto [?= r14 = $r36];	r14 = $r36;	$r15 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String schema>;	if $r15 != null goto $r16 = new java.lang.StringBuilder;	$r37 = "";	goto [?= $r21 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG>];	$r21 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG>;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37);	$r23 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.lang.String name>;	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r21.<org.hibernate.internal.CoreMessageLogger: void tableFound(java.lang.String)>($r26);	$r28 = <org.hibernate.tool.hbm2ddl.TableMetadata: org.hibernate.internal.CoreMessageLogger LOG>;	$r27 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map columns>;	$r29 = interfaceinvoke $r27.<java.util.Map: java.util.Set keySet()>();	interfaceinvoke $r28.<org.hibernate.internal.CoreMessageLogger: void columns(java.util.Set)>($r29);	if z0 == 0 goto return;	return
;block_num 7