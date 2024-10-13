(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var215 0)
(declare-sort var3429 0)
(declare-sort var238 0)
(declare-sort var1187 0)
(declare-sort var2979 0)
(declare-sort var3997 0)
(declare-sort var3223 0)
(declare-sort var3516 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun indexColumn/1550026818 (var1187) var238)
(declare-fun cast-from-var215-to-var1187 (var215) var1187)
(declare-fun isImplicit/228838904 (var2979) Bool)
(declare-fun cast-from-var238-to-var2979 (var238) var2979)
(declare-fun collection/1550026818 (var1187) var3997)
(declare-fun var3223-init () var3223)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getRole/-486327642 (var3997) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var3223 String) void)
(declare-fun cast-from-var3223-to-var3516 (var3223) var3516)
(declare-const null-var215 var215)
(declare-const null-var3429 var3429)
(declare-const var1420 var215) ; Statement: r0 := @this: org.hibernate.cfg.annotations.ListBinder 
(assert (not (= var1420 null-var215)))
(declare-const var2255 var3429) ; Statement: r27 := @parameter0: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var2255 null-var3429)))
(define-const var1823 var238 (indexColumn/1550026818 (cast-from-var215-to-var1187 var1420))) ; Statement: $r1 = r0.<org.hibernate.cfg.annotations.ListBinder: org.hibernate.cfg.IndexColumn indexColumn> 
(assert true)
(define-const var923 Bool (isImplicit/228838904 (cast-from-var238-to-var2979 var1823))) ; Statement: $z0 = virtualinvoke $r1.<org.hibernate.cfg.IndexColumn: boolean isImplicit()>() 
 ; Statement: if $z0 != 0 goto r44 = r0.<org.hibernate.cfg.annotations.ListBinder: org.hibernate.mapping.Collection collection> 
(assert (not (= (ite var923 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1540 var3997 (collection/1550026818 (cast-from-var215-to-var1187 var1420))) ; Statement: r44 = r0.<org.hibernate.cfg.annotations.ListBinder: org.hibernate.mapping.Collection collection> 
(define-const var2177 var3223 var3223-init) ; Statement: $r49 = new org.hibernate.AnnotationException 
(define-const var1929 String String-init) ; Statement: $r48 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1929)) ; Statement: specialinvoke $r48.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1929!1 String)
(assert (= var1929!1 ""))
(assert true)
(define-const var3383 String (append/672562846 var1929!1 "List/array has to be annotated with an @OrderColumn (or @IndexColumn): ")) ; Statement: $r5 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("List/array has to be annotated with an @OrderColumn (or @IndexColumn): ") 
(declare-const var1929!2 String)
(assert (= var1929!2 (str.++ var1929!1 "List/array has to be annotated with an @OrderColumn (or @IndexColumn): ")))
(assert true)
(define-const var284 String (getRole/-486327642 var1540)) ; Statement: $r4 = virtualinvoke r44.<org.hibernate.mapping.Collection: java.lang.String getRole()>() 
(assert true)
(define-const var2717 String (append/672562846 var3383 var284)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3383!1 String)
(assert (= var3383!1 (str.++ var3383 var284)))
(assert true)
(define-const var2615 String (toString/-2075883882 var2717)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var2177 var2615)) ; Statement: specialinvoke $r49.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r7) 

(declare-const var2177!1 var3223)
(declare-const var2615!1 String)
(define-const var2631 var3516 (cast-from-var3223-to-var3516 var2177!1)) ; Statement: $r50 = (java.lang.Throwable) $r49 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {indexColumn/1550026818=([org.hibernate.cfg.annotations.CollectionBinder], org.hibernate.cfg.IndexColumn), cast-from-var215-to-var1187=([org.hibernate.cfg.annotations.ListBinder], org.hibernate.cfg.annotations.CollectionBinder), isImplicit/228838904=([org.hibernate.cfg.Ejb3Column], boolean), cast-from-var238-to-var2979=([org.hibernate.cfg.IndexColumn], org.hibernate.cfg.Ejb3Column), collection/1550026818=([org.hibernate.cfg.annotations.CollectionBinder], org.hibernate.mapping.Collection), var3223-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getRole/-486327642=([org.hibernate.mapping.Collection], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var3223-to-var3516=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var215=org.hibernate.cfg.annotations.ListBinder, var1420=r0, var3429=org.hibernate.boot.spi.MetadataBuildingContext, var2255=r27, var238=org.hibernate.cfg.IndexColumn, var1187=org.hibernate.cfg.annotations.CollectionBinder, var1823=$r1, var2979=org.hibernate.cfg.Ejb3Column, var923=$z0, var3997=org.hibernate.mapping.Collection, var1540=r44, var3223=org.hibernate.AnnotationException, var2177=$r49, var1929=$r48, var3383=$r5, var284=$r4, var2717=$r6, var2615=$r7, var3516=java.lang.Throwable, var2631=$r50}
; {org.hibernate.cfg.annotations.ListBinder=var215, r0=var1420, org.hibernate.boot.spi.MetadataBuildingContext=var3429, r27=var2255, org.hibernate.cfg.IndexColumn=var238, org.hibernate.cfg.annotations.CollectionBinder=var1187, $r1=var1823, org.hibernate.cfg.Ejb3Column=var2979, $z0=var923, org.hibernate.mapping.Collection=var3997, r44=var1540, org.hibernate.AnnotationException=var3223, $r49=var2177, $r48=var1929, $r5=var3383, $r4=var284, $r6=var2717, $r7=var2615, java.lang.Throwable=var3516, $r50=var2631}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.annotations.ListBinder;	r27 := @parameter0: org.hibernate.boot.spi.MetadataBuildingContext;	$r1 = r0.<org.hibernate.cfg.annotations.ListBinder: org.hibernate.cfg.IndexColumn indexColumn>;	$z0 = virtualinvoke $r1.<org.hibernate.cfg.IndexColumn: boolean isImplicit()>();	if $z0 != 0 goto r44 = r0.<org.hibernate.cfg.annotations.ListBinder: org.hibernate.mapping.Collection collection>;	r44 = r0.<org.hibernate.cfg.annotations.ListBinder: org.hibernate.mapping.Collection collection>;	$r49 = new org.hibernate.AnnotationException;	$r48 = new java.lang.StringBuilder;	specialinvoke $r48.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("List/array has to be annotated with an @OrderColumn (or @IndexColumn): ");	$r4 = virtualinvoke r44.<org.hibernate.mapping.Collection: java.lang.String getRole()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r49.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r7);	$r50 = (java.lang.Throwable) $r49;	throw $r50
;block_num 2