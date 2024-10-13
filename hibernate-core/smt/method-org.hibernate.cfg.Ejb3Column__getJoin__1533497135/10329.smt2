(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2259 0)
(declare-sort var1781 0)
(declare-sort var1996 0)
(declare-sort var749 0)
(declare-sort var806 0)
(declare-sort var3329 0)
(declare-sort var543 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun joins/-1522538692 (var2259) var1781)
(declare-fun explicitTableName/-1522538692 (var2259) String)
(declare-fun var1781_get/1088891777 (var1781 var1996) var1996)
(declare-fun cast-from-String-to-var1996 (String) var1996)
(declare-fun cast-from-var1996-to-var749 (var1996) var749)
(declare-fun var806-init () var806)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun propertyHolder/-1522538692 (var2259) var3329)
(declare-fun var3329_getClassName/-2128193560 (var3329) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var806 String) void)
(declare-fun cast-from-var806-to-var543 (var806) var543)
(declare-const null-var2259 var2259)
(declare-const null-var749 var749)
(declare-const var3967 var2259) ; Statement: r0 := @this: org.hibernate.cfg.Ejb3Column 
(assert (not (= var3967 null-var2259)))
(define-const var784 var1781 (joins/-1522538692 var3967)) ; Statement: $r2 = r0.<org.hibernate.cfg.Ejb3Column: java.util.Map joins> 
(define-const var1819 String (explicitTableName/-1522538692 var3967)) ; Statement: $r1 = r0.<org.hibernate.cfg.Ejb3Column: java.lang.String explicitTableName> 
(define-const var670 var1996 (var1781_get/1088891777 var784 (cast-from-String-to-var1996 var1819))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var2300 var749 (cast-from-var1996-to-var749 var670)) ; Statement: r20 = (org.hibernate.mapping.Join) $r3 
 ; Statement: if r20 != null goto (branch) 
(assert (not (= var2300 null-var749))) ; Cond: r20 != null 
 ; Statement: if r20 != null goto return r20 
(assert (not (not (= var2300 null-var749)))) ; Negate: Cond: r20 != null  
(define-const var872 var806 var806-init) ; Statement: $r22 = new org.hibernate.AnnotationException 
(define-const var3872 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3872)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3872!1 String)
(assert (= var3872!1 ""))
(assert true)
(define-const var315 String (append/672562846 var3872!1 "Cannot find the expected secondary table: no ")) ; Statement: $r7 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot find the expected secondary table: no ") 
(declare-const var3872!2 String)
(assert (= var3872!2 (str.++ var3872!1 "Cannot find the expected secondary table: no ")))
(define-const var963 String (explicitTableName/-1522538692 var3967)) ; Statement: $r6 = r0.<org.hibernate.cfg.Ejb3Column: java.lang.String explicitTableName> 
(assert true)
(define-const var1469 String (append/672562846 var315 var963)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var315!1 String)
(assert (= var315!1 (str.++ var315 var963)))
(assert true)
(define-const var2377 String (append/672562846 var1469 " available for ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" available for ") 
(declare-const var1469!1 String)
(assert (= var1469!1 (str.++ var1469 " available for ")))
(define-const var3577 var3329 (propertyHolder/-1522538692 var3967)) ; Statement: $r9 = r0.<org.hibernate.cfg.Ejb3Column: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var1 String (var3329_getClassName/-2128193560 var3577)) ; Statement: $r10 = interfaceinvoke $r9.<org.hibernate.cfg.PropertyHolder: java.lang.String getClassName()>() 
(assert true)
(define-const var735 String (append/672562846 var2377 var1)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2377!1 String)
(assert (= var2377!1 (str.++ var2377 var1)))
(assert true)
(define-const var2841 String (toString/-2075883882 var735)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var872 var2841)) ; Statement: specialinvoke $r22.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r13) 

(declare-const var872!1 var806)
(declare-const var2841!1 String)
(define-const var2787 var543 (cast-from-var806-to-var543 var872!1)) ; Statement: $r23 = (java.lang.Throwable) $r22 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {joins/-1522538692=([org.hibernate.cfg.Ejb3Column], java.util.Map), explicitTableName/-1522538692=([org.hibernate.cfg.Ejb3Column], java.lang.String), var1781_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1996=([java.lang.String], java.lang.Object), cast-from-var1996-to-var749=([java.lang.Object], org.hibernate.mapping.Join), var806-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), propertyHolder/-1522538692=([org.hibernate.cfg.Ejb3Column], org.hibernate.cfg.PropertyHolder), var3329_getClassName/-2128193560=([org.hibernate.cfg.PropertyHolder], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var806-to-var543=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var2259=org.hibernate.cfg.Ejb3Column, var3967=r0, var1781=java.util.Map, var784=$r2, var1819=$r1, var1996=java.lang.Object, var670=$r3, var749=org.hibernate.mapping.Join, var2300=r20, var806=org.hibernate.AnnotationException, var872=$r22, var3872=$r21, var315=$r7, var963=$r6, var1469=$r8, var2377=$r11, var3329=org.hibernate.cfg.PropertyHolder, var3577=$r9, var1=$r10, var735=$r12, var2841=$r13, var543=java.lang.Throwable, var2787=$r23}
; {org.hibernate.cfg.Ejb3Column=var2259, r0=var3967, java.util.Map=var1781, $r2=var784, $r1=var1819, java.lang.Object=var1996, $r3=var670, org.hibernate.mapping.Join=var749, r20=var2300, org.hibernate.AnnotationException=var806, $r22=var872, $r21=var3872, $r7=var315, $r6=var963, $r8=var1469, $r11=var2377, org.hibernate.cfg.PropertyHolder=var3329, $r9=var3577, $r10=var1, $r12=var735, $r13=var2841, java.lang.Throwable=var543, $r23=var2787}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.Ejb3Column;	$r2 = r0.<org.hibernate.cfg.Ejb3Column: java.util.Map joins>;	$r1 = r0.<org.hibernate.cfg.Ejb3Column: java.lang.String explicitTableName>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r20 = (org.hibernate.mapping.Join) $r3;	if r20 != null goto (branch);	if r20 != null goto return r20;	$r22 = new org.hibernate.AnnotationException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot find the expected secondary table: no ");	$r6 = r0.<org.hibernate.cfg.Ejb3Column: java.lang.String explicitTableName>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" available for ");	$r9 = r0.<org.hibernate.cfg.Ejb3Column: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r10 = interfaceinvoke $r9.<org.hibernate.cfg.PropertyHolder: java.lang.String getClassName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r13);	$r23 = (java.lang.Throwable) $r22;	throw $r23
;block_num 3