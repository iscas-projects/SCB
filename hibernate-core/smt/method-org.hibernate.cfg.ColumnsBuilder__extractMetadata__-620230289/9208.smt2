(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2880 0)
(declare-sort var2936 0)
(declare-sort var634 0)
(declare-sort var1258 0)
(declare-sort var562 0)
(declare-sort var295 0)
(declare-sort var2043 0)
(declare-sort var1612 0)
(declare-sort var632 0)
(declare-sort var3458 0)
(declare-sort var2870 0)
(declare-sort var121 0)
(declare-sort var754 0)
(declare-sort var3043 0)
(declare-sort var178 0)
(declare-sort var1812 0)
(declare-sort var601 0)
(declare-sort var1422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var295!class ClassObject)
(declare-const var1612!class ClassObject)
(declare-const var632!class ClassObject)
(declare-const var178!class ClassObject)
(declare-fun columns/396458446 (var2880) (Array Int var2936))
(declare-fun property/396458446 (var2880) var634)
(declare-fun inferredData/396458446 (var2880) var1258)
(declare-fun buildExplicitJoinColumns/516743426 (var2880 var634 var1258) (Array Int var562))
(declare-fun joinColumns/396458446 (var2880) (Array Int var562))
(declare-fun var634_isAnnotationPresent/-1568090508 (var634 ClassObject) Bool)
(declare-fun var634_getAnnotation/894663943 (var634 ClassObject) var2043)
(declare-fun cast-from-var2043-to-var295 (var2043) var295)
(declare-fun cast-from-var2043-to-var1612 (var2043) var1612)
(declare-fun arr-var295-init () (Array Int var295))
(declare-fun cast-from-var2043-to-var632 (var2043) var632)
(declare-fun nullability/396458446 (var2880) var3458)
(declare-fun propertyHolder/396458446 (var2880) var2870)
(declare-fun entityBinder/396458446 (var2880) var121)
(declare-fun getSecondaryTables/2038683949 (var121) var754)
(declare-fun buildingContext/396458446 (var2880) var3043)
(declare-fun var2936_buildColumnFromAnnotation/-2058286417 ((Array Int var295) var1612 var632 var3458 var2870 var1258 var754 var3043) (Array Int var2936))
(declare-fun var1812-init () var1812)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var601_getPath/37340513 (var2870 var1258) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var1812 String) void)
(declare-fun cast-from-var1812-to-var1422 (var1812) var1422)
(declare-const null-var2880 var2880)
(declare-const null-__Array__Int__var2936__ (Array Int var2936))
(declare-const null-__Array__Int__var295__ (Array Int var295))
(declare-const null-__Array__Int__var562__ (Array Int var562))
(declare-const var1396 var2880) ; Statement: r0 := @this: org.hibernate.cfg.ColumnsBuilder 
(assert (not (= var1396 null-var2880)))
(declare-const var1396!1 var2880)
(assert (not (= var1396!1 null-var2880)))
(assert (= (columns/396458446 var1396!1) null-__Array__Int__var2936__)) ; Statement: r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3Column[] columns> = null 
(define-const var3408 var634 (property/396458446 var1396!1)) ; Statement: $r2 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.annotations.common.reflection.XProperty property> 
(define-const var721 var1258 (inferredData/396458446 var1396!1)) ; Statement: $r1 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyData inferredData> 
(assert true)
(define-const var702 (Array Int var562) (buildExplicitJoinColumns/516743426 var1396!1 var3408 var721)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3JoinColumn[] buildExplicitJoinColumns(org.hibernate.annotations.common.reflection.XProperty,org.hibernate.cfg.PropertyData)>($r2, $r1) 
(declare-const var1396!2 var2880)
(assert (not (= var1396!2 null-var2880)))
(assert (= (joinColumns/396458446 var1396!2) var702)) ; Statement: r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3JoinColumn[] joinColumns> = $r3 
(define-const var2422 var634 (property/396458446 var1396!2)) ; Statement: $r4 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.annotations.common.reflection.XProperty property> 
(define-const var3110 Bool (var634_isAnnotationPresent/-1568090508 var2422 var295!class)) ; Statement: $z0 = interfaceinvoke $r4.<org.hibernate.annotations.common.reflection.XProperty: boolean isAnnotationPresent(java.lang.Class)>(class "Ljavax/persistence/Column;") 
 ; Statement: if $z0 != 0 goto $r5 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.annotations.common.reflection.XProperty property> 
(assert (not (= (ite var3110 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3719 var634 (property/396458446 var1396!2)) ; Statement: $r5 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.annotations.common.reflection.XProperty property> 
(define-const var3403 var2043 (var634_getAnnotation/894663943 var3719 var295!class)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Column;") 
(define-const var3747 var295 (cast-from-var2043-to-var295 var3403)) ; Statement: $r78 = (javax.persistence.Column) $r6 
(define-const var708 var634 (property/396458446 var1396!2)) ; Statement: $r7 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.annotations.common.reflection.XProperty property> 
(define-const var3512 var2043 (var634_getAnnotation/894663943 var708 var1612!class)) ; Statement: $r8 = interfaceinvoke $r7.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/Formula;") 
(define-const var1890 var1612 (cast-from-var2043-to-var1612 var3512)) ; Statement: $r79 = (org.hibernate.annotations.Formula) $r8 
(define-const var2274 (Array Int var295) arr-var295-init) ; Statement: $r9 = newarray (javax.persistence.Column)[1] 
(declare-const var2274!1 (Array Int var295))
(assert (not (= var2274!1 null-__Array__Int__var295__)))
(assert (= (select var2274!1 0) var3747)) ; Statement: $r9[0] = $r78 
(define-const var2468 var634 (property/396458446 var1396!2)) ; Statement: $r10 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.annotations.common.reflection.XProperty property> 
(define-const var3455 var2043 (var634_getAnnotation/894663943 var2468 var632!class)) ; Statement: $r11 = interfaceinvoke $r10.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/Comment;") 
(define-const var2587 var632 (cast-from-var2043-to-var632 var3455)) ; Statement: $r18 = (org.hibernate.annotations.Comment) $r11 
(define-const var2619 var3458 (nullability/396458446 var1396!2)) ; Statement: $r13 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.annotations.Nullability nullability> 
(define-const var2949 var2870 (propertyHolder/396458446 var1396!2)) ; Statement: $r14 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var3078 var1258 (inferredData/396458446 var1396!2)) ; Statement: $r15 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyData inferredData> 
(define-const var1341 var121 (entityBinder/396458446 var1396!2)) ; Statement: $r12 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.annotations.EntityBinder entityBinder> 
(assert true)
(define-const var2248 var754 (getSecondaryTables/2038683949 var1341)) ; Statement: $r17 = virtualinvoke $r12.<org.hibernate.cfg.annotations.EntityBinder: java.util.Map getSecondaryTables()>() 
(define-const var1599 var3043 (buildingContext/396458446 var1396!2)) ; Statement: $r16 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(define-const var2515 (Array Int var2936) (var2936_buildColumnFromAnnotation/-2058286417 var2274!1 var1890 var2587 var2619 var2949 var3078 var2248 var1599)) ; Statement: $r19 = staticinvoke <org.hibernate.cfg.Ejb3Column: org.hibernate.cfg.Ejb3Column[] buildColumnFromAnnotation(javax.persistence.Column[],org.hibernate.annotations.Formula,org.hibernate.annotations.Comment,org.hibernate.cfg.annotations.Nullability,org.hibernate.cfg.PropertyHolder,org.hibernate.cfg.PropertyData,java.util.Map,org.hibernate.boot.spi.MetadataBuildingContext)>($r9, $r79, $r18, $r13, $r14, $r15, $r17, $r16) 
(declare-const var1396!3 var2880)
(assert (not (= var1396!3 null-var2880)))
(assert (= (columns/396458446 var1396!3) var2515)) ; Statement: r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3Column[] columns> = $r19 
 ; Statement: goto [?= $r81 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3JoinColumn[] joinColumns>] 
(assert true) ; Non Conditional
(define-const var191 (Array Int var562) (joinColumns/396458446 var1396!3)) ; Statement: $r81 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3JoinColumn[] joinColumns> 
 ; Statement: if $r81 != null goto $r20 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3JoinColumn[] joinColumns> 
(assert (not (= var191 null-__Array__Int__var562__))) ; Cond: $r81 != null 
(define-const var1585 (Array Int var562) (joinColumns/396458446 var1396!3)) ; Statement: $r20 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3JoinColumn[] joinColumns> 
 ; Statement: if $r20 != null goto $r21 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3JoinColumn[] joinColumns> 
(assert (not (= var1585 null-__Array__Int__var562__))) ; Cond: $r20 != null 
(define-const var573 (Array Int var562) (joinColumns/396458446 var1396!3)) ; Statement: $r21 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3JoinColumn[] joinColumns> 
 ; Statement: if $r21 != null goto $r83 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3Column[] columns> 
(assert (not (not (= var573 null-__Array__Int__var562__)))) ; Negate: Cond: $r21 != null  
(define-const var3016 var634 (property/396458446 var1396!3)) ; Statement: $r34 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.annotations.common.reflection.XProperty property> 
(define-const var3632 Bool (var634_isAnnotationPresent/-1568090508 var3016 var178!class)) ; Statement: $z2 = interfaceinvoke $r34.<org.hibernate.annotations.common.reflection.XProperty: boolean isAnnotationPresent(java.lang.Class)>(class "Lorg/hibernate/annotations/Any;") 
 ; Statement: if $z2 == 0 goto $r83 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3Column[] columns> 
(assert (not (= (ite var3632 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var907 var1812 var1812-init) ; Statement: $r88 = new org.hibernate.AnnotationException 
(define-const var2074 String String-init) ; Statement: $r87 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2074)) ; Statement: specialinvoke $r87.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2074!1 String)
(assert (= var2074!1 ""))
(assert true)
(define-const var1172 String (append/672562846 var2074!1 "@Any requires an explicit @JoinColumn(s): ")) ; Statement: $r40 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@Any requires an explicit @JoinColumn(s): ") 
(declare-const var2074!2 String)
(assert (= var2074!2 (str.++ var2074!1 "@Any requires an explicit @JoinColumn(s): ")))
(define-const var3781 var2870 (propertyHolder/396458446 var1396!3)) ; Statement: $r38 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var2361 var1258 (inferredData/396458446 var1396!3)) ; Statement: $r37 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyData inferredData> 
(define-const var449 String (var601_getPath/37340513 var3781 var2361)) ; Statement: $r39 = staticinvoke <org.hibernate.cfg.BinderHelper: java.lang.String getPath(org.hibernate.cfg.PropertyHolder,org.hibernate.cfg.PropertyData)>($r38, $r37) 
(assert true)
(define-const var875 String (append/672562846 var1172 var449)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var1172!1 String)
(assert (= var1172!1 (str.++ var1172 var449)))
(assert true)
(define-const var1903 String (toString/-2075883882 var875)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var907 var1903)) ; Statement: specialinvoke $r88.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r42) 

(declare-const var907!1 var1812)
(declare-const var1903!1 String)
(define-const var2028 var1422 (cast-from-var1812-to-var1422 var907!1)) ; Statement: $r89 = (java.lang.Throwable) $r88 
 ; Statement: throw $r89 
(check-sat)
(get-model)
(get-unsat-core)
; {columns/396458446=([org.hibernate.cfg.ColumnsBuilder], org.hibernate.cfg.Ejb3Column[]), property/396458446=([org.hibernate.cfg.ColumnsBuilder], org.hibernate.annotations.common.reflection.XProperty), inferredData/396458446=([org.hibernate.cfg.ColumnsBuilder], org.hibernate.cfg.PropertyData), buildExplicitJoinColumns/516743426=([org.hibernate.cfg.ColumnsBuilder, org.hibernate.annotations.common.reflection.XProperty, org.hibernate.cfg.PropertyData], org.hibernate.cfg.Ejb3JoinColumn[]), joinColumns/396458446=([org.hibernate.cfg.ColumnsBuilder], org.hibernate.cfg.Ejb3JoinColumn[]), var634_isAnnotationPresent/-1568090508=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], boolean), var634_getAnnotation/894663943=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], java.lang.annotation.Annotation), cast-from-var2043-to-var295=([java.lang.annotation.Annotation], javax.persistence.Column), cast-from-var2043-to-var1612=([java.lang.annotation.Annotation], org.hibernate.annotations.Formula), arr-var295-init=([], javax.persistence.Column[]), cast-from-var2043-to-var632=([java.lang.annotation.Annotation], org.hibernate.annotations.Comment), nullability/396458446=([org.hibernate.cfg.ColumnsBuilder], org.hibernate.cfg.annotations.Nullability), propertyHolder/396458446=([org.hibernate.cfg.ColumnsBuilder], org.hibernate.cfg.PropertyHolder), entityBinder/396458446=([org.hibernate.cfg.ColumnsBuilder], org.hibernate.cfg.annotations.EntityBinder), getSecondaryTables/2038683949=([org.hibernate.cfg.annotations.EntityBinder], java.util.Map), buildingContext/396458446=([org.hibernate.cfg.ColumnsBuilder], org.hibernate.boot.spi.MetadataBuildingContext), var2936_buildColumnFromAnnotation/-2058286417=([javax.persistence.Column[], org.hibernate.annotations.Formula, org.hibernate.annotations.Comment, org.hibernate.cfg.annotations.Nullability, org.hibernate.cfg.PropertyHolder, org.hibernate.cfg.PropertyData, java.util.Map, org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.cfg.Ejb3Column[]), var1812-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var601_getPath/37340513=([org.hibernate.cfg.PropertyHolder, org.hibernate.cfg.PropertyData], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var1812-to-var1422=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var2880=org.hibernate.cfg.ColumnsBuilder, var1396=r0, var2936=org.hibernate.cfg.Ejb3Column, var634=org.hibernate.annotations.common.reflection.XProperty, var3408=$r2, var1258=org.hibernate.cfg.PropertyData, var721=$r1, var562=org.hibernate.cfg.Ejb3JoinColumn, var702=$r3, var2422=$r4, var295=javax.persistence.Column, var3110=$z0, var3719=$r5, var2043=java.lang.annotation.Annotation, var3403=$r6, var3747=$r78, var708=$r7, var1612=org.hibernate.annotations.Formula, var3512=$r8, var1890=$r79, var2274=$r9, var2468=$r10, var632=org.hibernate.annotations.Comment, var3455=$r11, var2587=$r18, var3458=org.hibernate.cfg.annotations.Nullability, var2619=$r13, var2870=org.hibernate.cfg.PropertyHolder, var2949=$r14, var3078=$r15, var121=org.hibernate.cfg.annotations.EntityBinder, var1341=$r12, var754=java.util.Map, var2248=$r17, var3043=org.hibernate.boot.spi.MetadataBuildingContext, var1599=$r16, var2515=$r19, var191=$r81, var1585=$r20, var573=$r21, var3016=$r34, var178=org.hibernate.annotations.Any, var3632=$z2, var1812=org.hibernate.AnnotationException, var907=$r88, var2074=$r87, var1172=$r40, var3781=$r38, var2361=$r37, var601=org.hibernate.cfg.BinderHelper, var449=$r39, var875=$r41, var1903=$r42, var1422=java.lang.Throwable, var2028=$r89}
; {org.hibernate.cfg.ColumnsBuilder=var2880, r0=var1396, org.hibernate.cfg.Ejb3Column=var2936, org.hibernate.annotations.common.reflection.XProperty=var634, $r2=var3408, org.hibernate.cfg.PropertyData=var1258, $r1=var721, org.hibernate.cfg.Ejb3JoinColumn=var562, $r3=var702, $r4=var2422, javax.persistence.Column=var295, $z0=var3110, $r5=var3719, java.lang.annotation.Annotation=var2043, $r6=var3403, $r78=var3747, $r7=var708, org.hibernate.annotations.Formula=var1612, $r8=var3512, $r79=var1890, $r9=var2274, $r10=var2468, org.hibernate.annotations.Comment=var632, $r11=var3455, $r18=var2587, org.hibernate.cfg.annotations.Nullability=var3458, $r13=var2619, org.hibernate.cfg.PropertyHolder=var2870, $r14=var2949, $r15=var3078, org.hibernate.cfg.annotations.EntityBinder=var121, $r12=var1341, java.util.Map=var754, $r17=var2248, org.hibernate.boot.spi.MetadataBuildingContext=var3043, $r16=var1599, $r19=var2515, $r81=var191, $r20=var1585, $r21=var573, $r34=var3016, org.hibernate.annotations.Any=var178, $z2=var3632, org.hibernate.AnnotationException=var1812, $r88=var907, $r87=var2074, $r40=var1172, $r38=var3781, $r37=var2361, org.hibernate.cfg.BinderHelper=var601, $r39=var449, $r41=var875, $r42=var1903, java.lang.Throwable=var1422, $r89=var2028}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.ColumnsBuilder;	r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3Column[] columns> = null;	$r2 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.annotations.common.reflection.XProperty property>;	$r1 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyData inferredData>;	$r3 = virtualinvoke r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3JoinColumn[] buildExplicitJoinColumns(org.hibernate.annotations.common.reflection.XProperty,org.hibernate.cfg.PropertyData)>($r2, $r1);	r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3JoinColumn[] joinColumns> = $r3;	$r4 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.annotations.common.reflection.XProperty property>;	$z0 = interfaceinvoke $r4.<org.hibernate.annotations.common.reflection.XProperty: boolean isAnnotationPresent(java.lang.Class)>(class "Ljavax/persistence/Column;");	if $z0 != 0 goto $r5 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.annotations.common.reflection.XProperty property>;	$r5 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.annotations.common.reflection.XProperty property>;	$r6 = interfaceinvoke $r5.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/Column;");	$r78 = (javax.persistence.Column) $r6;	$r7 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.annotations.common.reflection.XProperty property>;	$r8 = interfaceinvoke $r7.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/Formula;");	$r79 = (org.hibernate.annotations.Formula) $r8;	$r9 = newarray (javax.persistence.Column)[1];	$r9[0] = $r78;	$r10 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.annotations.common.reflection.XProperty property>;	$r11 = interfaceinvoke $r10.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/Comment;");	$r18 = (org.hibernate.annotations.Comment) $r11;	$r13 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.annotations.Nullability nullability>;	$r14 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r15 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyData inferredData>;	$r12 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.annotations.EntityBinder entityBinder>;	$r17 = virtualinvoke $r12.<org.hibernate.cfg.annotations.EntityBinder: java.util.Map getSecondaryTables()>();	$r16 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	$r19 = staticinvoke <org.hibernate.cfg.Ejb3Column: org.hibernate.cfg.Ejb3Column[] buildColumnFromAnnotation(javax.persistence.Column[],org.hibernate.annotations.Formula,org.hibernate.annotations.Comment,org.hibernate.cfg.annotations.Nullability,org.hibernate.cfg.PropertyHolder,org.hibernate.cfg.PropertyData,java.util.Map,org.hibernate.boot.spi.MetadataBuildingContext)>($r9, $r79, $r18, $r13, $r14, $r15, $r17, $r16);	r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3Column[] columns> = $r19;	goto [?= $r81 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3JoinColumn[] joinColumns>];	$r81 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3JoinColumn[] joinColumns>;	if $r81 != null goto $r20 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3JoinColumn[] joinColumns>;	$r20 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3JoinColumn[] joinColumns>;	if $r20 != null goto $r21 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3JoinColumn[] joinColumns>;	$r21 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3JoinColumn[] joinColumns>;	if $r21 != null goto $r83 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3Column[] columns>;	$r34 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.annotations.common.reflection.XProperty property>;	$z2 = interfaceinvoke $r34.<org.hibernate.annotations.common.reflection.XProperty: boolean isAnnotationPresent(java.lang.Class)>(class "Lorg/hibernate/annotations/Any;");	if $z2 == 0 goto $r83 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.Ejb3Column[] columns>;	$r88 = new org.hibernate.AnnotationException;	$r87 = new java.lang.StringBuilder;	specialinvoke $r87.<java.lang.StringBuilder: void <init>()>();	$r40 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@Any requires an explicit @JoinColumn(s): ");	$r38 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r37 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyData inferredData>;	$r39 = staticinvoke <org.hibernate.cfg.BinderHelper: java.lang.String getPath(org.hibernate.cfg.PropertyHolder,org.hibernate.cfg.PropertyData)>($r38, $r37);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r88.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r42);	$r89 = (java.lang.Throwable) $r88;	throw $r89
;block_num 7