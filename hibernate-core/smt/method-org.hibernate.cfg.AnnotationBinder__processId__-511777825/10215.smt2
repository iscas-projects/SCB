(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var305 0)
(declare-sort var3878 0)
(declare-sort var3153 0)
(declare-sort var3371 0)
(declare-sort var595 0)
(declare-sort var3475 0)
(declare-sort var469 0)
(declare-sort var121 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3475-init () var3475)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var469_getPath/37340513 (var305 var3878) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var3475 String) void)
(declare-fun cast-from-var3475-to-var121 (var3475) var121)
(declare-const null-var305 var305)
(declare-const null-var3878 var3878)
(declare-const null-var3153 var3153)
(declare-const null-var3371 var3371)
(declare-const null-Bool Bool)
(declare-const null-var595 var595)
(declare-const var701 var305) ; Statement: r18 := @parameter0: org.hibernate.cfg.PropertyHolder 
(assert (not (= var701 null-var305)))
(declare-const var1089 var3878) ; Statement: r0 := @parameter1: org.hibernate.cfg.PropertyData 
(assert (not (= var1089 null-var3878)))
(declare-const var1311 var3153) ; Statement: r9 := @parameter2: org.hibernate.mapping.SimpleValue 
(assert (not (= var1311 null-var3153)))
(declare-const var696 var3371) ; Statement: r6 := @parameter3: java.util.HashMap 
(assert (not (= var696 null-var3371)))
(declare-const var846 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var846 null-Bool)))
(declare-const var3603 var595) ; Statement: r5 := @parameter5: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var3603 null-var595)))
 ; Statement: if z0 == 0 goto r1 = interfaceinvoke r0.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XClass getClassOrElement()>() 
(assert (not (= (ite var846 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3532 var3475 var3475-init) ; Statement: $r29 = new org.hibernate.AnnotationException 
(define-const var3259 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3259)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3259!1 String)
(assert (= var3259!1 ""))
(assert true)
(define-const var1755 String (append/672562846 var3259!1 "@IdClass class should not have @Id nor @EmbeddedId properties: ")) ; Statement: $r20 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@IdClass class should not have @Id nor @EmbeddedId properties: ") 
(declare-const var3259!2 String)
(assert (= var3259!2 (str.++ var3259!1 "@IdClass class should not have @Id nor @EmbeddedId properties: ")))
(define-const var456 String (var469_getPath/37340513 var701 var1089)) ; Statement: $r19 = staticinvoke <org.hibernate.cfg.BinderHelper: java.lang.String getPath(org.hibernate.cfg.PropertyHolder,org.hibernate.cfg.PropertyData)>(r18, r0) 
(assert true)
(define-const var885 String (append/672562846 var1755 var456)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1755!1 String)
(assert (= var1755!1 (str.++ var1755 var456)))
(assert true)
(define-const var504 String (toString/-2075883882 var885)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var3532 var504)) ; Statement: specialinvoke $r29.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r22) 

(declare-const var3532!1 var3475)
(declare-const var504!1 String)
(define-const var3890 var121 (cast-from-var3475-to-var121 var3532!1)) ; Statement: $r31 = (java.lang.Throwable) $r29 
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {var3475-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var469_getPath/37340513=([org.hibernate.cfg.PropertyHolder, org.hibernate.cfg.PropertyData], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var3475-to-var121=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var305=org.hibernate.cfg.PropertyHolder, var701=r18, var3878=org.hibernate.cfg.PropertyData, var1089=r0, var3153=org.hibernate.mapping.SimpleValue, var1311=r9, var3371=java.util.HashMap, var696=r6, var846=z0, var595=org.hibernate.boot.spi.MetadataBuildingContext, var3603=r5, var3475=org.hibernate.AnnotationException, var3532=$r29, var3259=$r28, var1755=$r20, var469=org.hibernate.cfg.BinderHelper, var456=$r19, var885=$r21, var504=$r22, var121=java.lang.Throwable, var3890=$r31}
; {org.hibernate.cfg.PropertyHolder=var305, r18=var701, org.hibernate.cfg.PropertyData=var3878, r0=var1089, org.hibernate.mapping.SimpleValue=var3153, r9=var1311, java.util.HashMap=var3371, r6=var696, z0=var846, org.hibernate.boot.spi.MetadataBuildingContext=var595, r5=var3603, org.hibernate.AnnotationException=var3475, $r29=var3532, $r28=var3259, $r20=var1755, org.hibernate.cfg.BinderHelper=var469, $r19=var456, $r21=var885, $r22=var504, java.lang.Throwable=var121, $r31=var3890}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r18 := @parameter0: org.hibernate.cfg.PropertyHolder;	r0 := @parameter1: org.hibernate.cfg.PropertyData;	r9 := @parameter2: org.hibernate.mapping.SimpleValue;	r6 := @parameter3: java.util.HashMap;	z0 := @parameter4: boolean;	r5 := @parameter5: org.hibernate.boot.spi.MetadataBuildingContext;	if z0 == 0 goto r1 = interfaceinvoke r0.<org.hibernate.cfg.PropertyData: org.hibernate.annotations.common.reflection.XClass getClassOrElement()>();	$r29 = new org.hibernate.AnnotationException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@IdClass class should not have @Id nor @EmbeddedId properties: ");	$r19 = staticinvoke <org.hibernate.cfg.BinderHelper: java.lang.String getPath(org.hibernate.cfg.PropertyHolder,org.hibernate.cfg.PropertyData)>(r18, r0);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r29.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r22);	$r31 = (java.lang.Throwable) $r29;	throw $r31
;block_num 2