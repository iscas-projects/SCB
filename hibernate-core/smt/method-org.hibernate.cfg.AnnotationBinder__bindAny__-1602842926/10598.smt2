(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1970 0)
(declare-sort var81 0)
(declare-sort var1441 0)
(declare-sort var2900 0)
(declare-sort var185 0)
(declare-sort var1682 0)
(declare-sort var2971 0)
(declare-sort var2486 0)
(declare-sort var1950 0)
(declare-sort var3338 0)
(declare-sort var3364 0)
(declare-sort var505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3338!class ClassObject)
(declare-fun var185_getProperty/2125427526 (var185) var2486)
(declare-fun var2486_getAnnotation/894663943 (var2486 ClassObject) var1950)
(declare-fun cast-from-var1950-to-var3338 (var1950) var3338)
(declare-fun var3364-init () var3364)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var505_getPath/37340513 (var2900 var185) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var3364 String) void)
(declare-const null-String String)
(declare-const null-__Array__Int__var81__ (Array Int var81))
(declare-const null-Bool Bool)
(declare-const null-var1441 var1441)
(declare-const null-var2900 var2900)
(declare-const null-var185 var185)
(declare-const null-var1682 var1682)
(declare-const null-var2971 var2971)
(declare-const null-var3338 var3338)
(declare-const var1957 String) ; Statement: r18 := @parameter0: java.lang.String 
(assert (not (= var1957 null-String)))
(declare-const var1389 (Array Int var81)) ; Statement: r6 := @parameter1: org.hibernate.cfg.Ejb3JoinColumn[] 
(assert (not (= var1389 null-__Array__Int__var81__)))
(declare-const var3420 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3420 null-Bool)))
(declare-const var1206 var1441) ; Statement: r7 := @parameter3: org.hibernate.cfg.annotations.Nullability 
(assert (not (= var1206 null-var1441)))
(declare-const var1694 var2900) ; Statement: r8 := @parameter4: org.hibernate.cfg.PropertyHolder 
(assert (not (= var1694 null-var2900)))
(declare-const var3838 var185) ; Statement: r0 := @parameter5: org.hibernate.cfg.PropertyData 
(assert (not (= var3838 null-var185)))
(declare-const var2128 var1682) ; Statement: r9 := @parameter6: org.hibernate.cfg.annotations.EntityBinder 
(assert (not (= var2128 null-var1682)))
(declare-const var2884 Bool) ; Statement: z2 := @parameter7: boolean 
(assert (not (= var2884 null-Bool)))
(declare-const var1422 var2971) ; Statement: r10 := @parameter8: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var1422 null-var2971)))
(define-const var2036 var2486 (var185_getProperty/2125427526 var3838)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>() 
(define-const var2028 var1950 (var2486_getAnnotation/894663943 var2036 var3338!class)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/Any;") 
(define-const var3816 var3338 (cast-from-var1950-to-var3338 var2028)) ; Statement: r3 = (org.hibernate.annotations.Any) $r2 
 ; Statement: if r3 != null goto $r5 = interfaceinvoke r3.<org.hibernate.annotations.Any: javax.persistence.FetchType fetch()>() 
(assert (not (not (= var3816 null-var3338)))) ; Negate: Cond: r3 != null  
(define-const var3333 var3364 var3364-init) ; Statement: $r22 = new org.hibernate.AssertionFailure 
(define-const var780 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var780)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var780!1 String)
(assert (= var780!1 ""))
(assert true)
(define-const var2623 String (append/672562846 var780!1 "Missing @Any annotation: ")) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Missing @Any annotation: ") 
(declare-const var780!2 String)
(assert (= var780!2 (str.++ var780!1 "Missing @Any annotation: ")))
(define-const var3399 String (var505_getPath/37340513 var1694 var3838)) ; Statement: $r24 = staticinvoke <org.hibernate.cfg.BinderHelper: java.lang.String getPath(org.hibernate.cfg.PropertyHolder,org.hibernate.cfg.PropertyData)>(r8, r0) 
(assert true)
(define-const var2232 String (append/672562846 var2623 var3399)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2623!1 String)
(assert (= var2623!1 (str.++ var2623 var3399)))
(assert true)
(define-const var1020 String (toString/-2075883882 var2232)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var3333 var1020)) ; Statement: specialinvoke $r22.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r27) 

(declare-const var3333!1 var3364)
(declare-const var1020!1 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {var185_getProperty/2125427526=([org.hibernate.cfg.PropertyData], org.hibernate.annotations.common.reflection.XProperty), var2486_getAnnotation/894663943=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], java.lang.annotation.Annotation), cast-from-var1950-to-var3338=([java.lang.annotation.Annotation], org.hibernate.annotations.Any), var3364-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var505_getPath/37340513=([org.hibernate.cfg.PropertyHolder, org.hibernate.cfg.PropertyData], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var1957=r18, var1970=null_type, var81=org.hibernate.cfg.Ejb3JoinColumn, var1389=r6, var3420=z0, var1441=org.hibernate.cfg.annotations.Nullability, var1206=r7, var2900=org.hibernate.cfg.PropertyHolder, var1694=r8, var185=org.hibernate.cfg.PropertyData, var3838=r0, var1682=org.hibernate.cfg.annotations.EntityBinder, var2128=r9, var2884=z2, var2971=org.hibernate.boot.spi.MetadataBuildingContext, var1422=r10, var2486=org.hibernate.annotations.common.reflection.XProperty, var2036=$r1, var1950=java.lang.annotation.Annotation, var3338=org.hibernate.annotations.Any, var2028=$r2, var3816=r3, var3364=org.hibernate.AssertionFailure, var3333=$r22, var780=$r23, var2623=$r25, var505=org.hibernate.cfg.BinderHelper, var3399=$r24, var2232=$r26, var1020=$r27}
; {r18=var1957, null_type=var1970, org.hibernate.cfg.Ejb3JoinColumn=var81, r6=var1389, z0=var3420, org.hibernate.cfg.annotations.Nullability=var1441, r7=var1206, org.hibernate.cfg.PropertyHolder=var2900, r8=var1694, org.hibernate.cfg.PropertyData=var185, r0=var3838, org.hibernate.cfg.annotations.EntityBinder=var1682, r9=var2128, z2=var2884, org.hibernate.boot.spi.MetadataBuildingContext=var2971, r10=var1422, org.hibernate.annotations.common.reflection.XProperty=var2486, $r1=var2036, java.lang.annotation.Annotation=var1950, org.hibernate.annotations.Any=var3338, $r2=var2028, r3=var3816, org.hibernate.AssertionFailure=var3364, $r22=var3333, $r23=var780, $r25=var2623, org.hibernate.cfg.BinderHelper=var505, $r24=var3399, $r26=var2232, $r27=var1020}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r18 := @parameter0: java.lang.String;	r6 := @parameter1: org.hibernate.cfg.Ejb3JoinColumn[];	z0 := @parameter2: boolean;	r7 := @parameter3: org.hibernate.cfg.annotations.Nullability;	r8 := @parameter4: org.hibernate.cfg.PropertyHolder;	r0 := @parameter5: org.hibernate.cfg.PropertyData;	r9 := @parameter6: org.hibernate.cfg.annotations.EntityBinder;	z2 := @parameter7: boolean;	r10 := @parameter8: org.hibernate.boot.spi.MetadataBuildingContext;	$r1 = interfaceinvoke r0.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XProperty getProperty()>();	$r2 = interfaceinvoke $r1.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/Any;");	r3 = (org.hibernate.annotations.Any) $r2;	if r3 != null goto $r5 = interfaceinvoke r3.<org.hibernate.annotations.Any: javax.persistence.FetchType fetch()>();	$r22 = new org.hibernate.AssertionFailure;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Missing @Any annotation: ");	$r24 = staticinvoke <org.hibernate.cfg.BinderHelper: java.lang.String getPath(org.hibernate.cfg.PropertyHolder,org.hibernate.cfg.PropertyData)>(r8, r0);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r27);	throw $r22
;block_num 2