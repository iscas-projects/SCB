(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2632 0)
(declare-sort var1124 0)
(declare-sort var1472 0)
(declare-sort var3616 0)
(declare-sort var2363 0)
(declare-sort var2729 0)
(declare-sort var158 0)
(declare-sort var3802 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun table/-849602994 (var2632) var1472)
(declare-fun var3616-init () var3616)
(declare-fun buildingContext/-849602994 (var2632) var2363)
(declare-fun var2363_getMetadataCollector/-129185252 (var2363) var2729)
(declare-fun var2729_getPhysicalColumnName/1316628672 (var2729 var1472 String) String)
(declare-fun <init>/-710546014 (var3616 String) void)
(declare-fun getColumn/-1406910433 (var1472 var3616) var3616)
(declare-fun var158-init () var158)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var158 String) void)
(declare-fun cast-from-var158-to-var3802 (var158) var3802)
(declare-const null-var2632 var2632)
(declare-const null-String String)
(declare-const null-var3616 var3616)
(declare-const var2365 var2632) ; Statement: r0 := @this: org.hibernate.cfg.IndexOrUniqueKeySecondPass 
(assert (not (= var2365 null-var2632)))
(declare-const var794 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var794 null-String)))
(define-const var2498 var1472 (table/-849602994 var2365)) ; Statement: $r3 = r0.<org.hibernate.cfg.IndexOrUniqueKeySecondPass: org.hibernate.mapping.Table table> 
(define-const var1995 var3616 var3616-init) ; Statement: $r20 = new org.hibernate.mapping.Column 
(define-const var887 var2363 (buildingContext/-849602994 var2365)) ; Statement: $r2 = r0.<org.hibernate.cfg.IndexOrUniqueKeySecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(define-const var3513 var2729 (var2363_getMetadataCollector/-129185252 var887)) ; Statement: $r6 = interfaceinvoke $r2.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var2367 var1472 (table/-849602994 var2365)) ; Statement: $r5 = r0.<org.hibernate.cfg.IndexOrUniqueKeySecondPass: org.hibernate.mapping.Table table> 
(define-const var1323 String (var2729_getPhysicalColumnName/1316628672 var3513 var2367 var794)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.boot.spi.InFlightMetadataCollector: java.lang.String getPhysicalColumnName(org.hibernate.mapping.Table,java.lang.String)>($r5, r4) 
(assert true)
;(assert (<init>/-710546014 var1995 var1323)) ; Statement: specialinvoke $r20.<org.hibernate.mapping.Column: void <init>(java.lang.String)>($r7) 

(declare-const var1995!1 var3616)
(declare-const var1323!1 String)
(assert true)
(define-const var2977 var3616 (getColumn/-1406910433 var2498 var1995!1)) ; Statement: r8 = virtualinvoke $r3.<org.hibernate.mapping.Table: org.hibernate.mapping.Column getColumn(org.hibernate.mapping.Column)>($r20) 
 ; Statement: if r8 != null goto $z0 = r0.<org.hibernate.cfg.IndexOrUniqueKeySecondPass: boolean unique> 
(assert (not (not (= var2977 null-var3616)))) ; Negate: Cond: r8 != null  
(define-const var3 var158 var158-init) ; Statement: $r22 = new org.hibernate.AnnotationException 
(define-const var1092 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1092)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1092!1 String)
(assert (= var1092!1 ""))
(assert true)
(define-const var1905 String (append/672562846 var1092!1 "@Index references a unknown column: ")) ; Statement: $r17 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@Index references a unknown column: ") 
(declare-const var1092!2 String)
(assert (= var1092!2 (str.++ var1092!1 "@Index references a unknown column: ")))
(assert true)
(define-const var2787 String (append/672562846 var1905 var794)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1905!1 String)
(assert (= var1905!1 (str.++ var1905 var794)))
(assert true)
(define-const var1262 String (toString/-2075883882 var2787)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var3 var1262)) ; Statement: specialinvoke $r22.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r19) 

(declare-const var3!1 var158)
(declare-const var1262!1 String)
(define-const var2912 var3802 (cast-from-var158-to-var3802 var3!1)) ; Statement: $r23 = (java.lang.Throwable) $r22 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {table/-849602994=([org.hibernate.cfg.IndexOrUniqueKeySecondPass], org.hibernate.mapping.Table), var3616-init=([], org.hibernate.mapping.Column), buildingContext/-849602994=([org.hibernate.cfg.IndexOrUniqueKeySecondPass], org.hibernate.boot.spi.MetadataBuildingContext), var2363_getMetadataCollector/-129185252=([org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.spi.InFlightMetadataCollector), var2729_getPhysicalColumnName/1316628672=([org.hibernate.boot.spi.InFlightMetadataCollector, org.hibernate.mapping.Table, java.lang.String], java.lang.String), <init>/-710546014=([org.hibernate.mapping.Column, java.lang.String], void), getColumn/-1406910433=([org.hibernate.mapping.Table, org.hibernate.mapping.Column], org.hibernate.mapping.Column), var158-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var158-to-var3802=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var2632=org.hibernate.cfg.IndexOrUniqueKeySecondPass, var2365=r0, var794=r4, var1124=null_type, var1472=org.hibernate.mapping.Table, var2498=$r3, var3616=org.hibernate.mapping.Column, var1995=$r20, var2363=org.hibernate.boot.spi.MetadataBuildingContext, var887=$r2, var2729=org.hibernate.boot.spi.InFlightMetadataCollector, var3513=$r6, var2367=$r5, var1323=$r7, var2977=r8, var158=org.hibernate.AnnotationException, var3=$r22, var1092=$r21, var1905=$r17, var2787=$r18, var1262=$r19, var3802=java.lang.Throwable, var2912=$r23}
; {org.hibernate.cfg.IndexOrUniqueKeySecondPass=var2632, r0=var2365, r4=var794, null_type=var1124, org.hibernate.mapping.Table=var1472, $r3=var2498, org.hibernate.mapping.Column=var3616, $r20=var1995, org.hibernate.boot.spi.MetadataBuildingContext=var2363, $r2=var887, org.hibernate.boot.spi.InFlightMetadataCollector=var2729, $r6=var3513, $r5=var2367, $r7=var1323, r8=var2977, org.hibernate.AnnotationException=var158, $r22=var3, $r21=var1092, $r17=var1905, $r18=var2787, $r19=var1262, java.lang.Throwable=var3802, $r23=var2912}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.IndexOrUniqueKeySecondPass;	r4 := @parameter0: java.lang.String;	$r3 = r0.<org.hibernate.cfg.IndexOrUniqueKeySecondPass: org.hibernate.mapping.Table table>;	$r20 = new org.hibernate.mapping.Column;	$r2 = r0.<org.hibernate.cfg.IndexOrUniqueKeySecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	$r6 = interfaceinvoke $r2.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r5 = r0.<org.hibernate.cfg.IndexOrUniqueKeySecondPass: org.hibernate.mapping.Table table>;	$r7 = interfaceinvoke $r6.<org.hibernate.boot.spi.InFlightMetadataCollector: java.lang.String getPhysicalColumnName(org.hibernate.mapping.Table,java.lang.String)>($r5, r4);	specialinvoke $r20.<org.hibernate.mapping.Column: void <init>(java.lang.String)>($r7);	r8 = virtualinvoke $r3.<org.hibernate.mapping.Table: org.hibernate.mapping.Column getColumn(org.hibernate.mapping.Column)>($r20);	if r8 != null goto $z0 = r0.<org.hibernate.cfg.IndexOrUniqueKeySecondPass: boolean unique>;	$r22 = new org.hibernate.AnnotationException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@Index references a unknown column: ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r19);	$r23 = (java.lang.Throwable) $r22;	throw $r23
;block_num 2