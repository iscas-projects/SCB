(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2741 0)
(declare-sort var3198 0)
(declare-sort var2636 0)
(declare-sort var462 0)
(declare-sort var43 0)
(declare-sort var1327 0)
(declare-sort var2010 0)
(declare-sort var765 0)
(declare-sort var3287 0)
(declare-sort var3048 0)
(declare-sort var770 0)
(declare-sort var2828 0)
(declare-sort var1944 0)
(declare-sort var366 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var765!class ClassObject)
(declare-fun propertyHolder/396458446 (var2741) var462)
(declare-fun var462_getJoinTable/-1350531154 (var462 var3198) var43)
(declare-fun var43_inverseJoinColumns/1767668714 (var43) (Array Int var1327))
(declare-fun var3198_getAnnotation/894663943 (var3198 ClassObject) var2010)
(declare-fun cast-from-var2010-to-var765 (var2010) var765)
(declare-fun entityBinder/396458446 (var2741) var3287)
(declare-fun getSecondaryTables/2038683949 (var3287) var3048)
(declare-fun var2636_getPropertyName/-814157935 (var2636) String)
(declare-fun buildingContext/396458446 (var2741) var770)
(declare-fun var2828_buildJoinColumns/584245343 ((Array Int var1327) var765 String var3048 var462 String var770) (Array Int var2828))
(declare-fun var43_name/-669880034 (var43) String)
(declare-fun var366_isEmpty/1672864985 (String) Bool)
(declare-const null-var2741 var2741)
(declare-const null-var3198 var3198)
(declare-const null-var2636 var2636)
(declare-const null-var43 var43)
(declare-const null-String String)
(declare-const var1417 var2741) ; Statement: r0 := @this: org.hibernate.cfg.ColumnsBuilder 
(assert (not (= var1417 null-var2741)))
(declare-const var2040 var3198) ; Statement: r1 := @parameter0: org.hibernate.annotations.common.reflection.XProperty 
(assert (not (= var2040 null-var3198)))
(declare-const var1025 var2636) ; Statement: r8 := @parameter1: org.hibernate.cfg.PropertyData 
(assert (not (= var1025 null-var2636)))
(define-const var80 var462 (propertyHolder/396458446 var1417)) ; Statement: $r2 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var3055 var43 (var462_getJoinTable/-1350531154 var80 var2040)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.cfg.PropertyHolder: javax.persistence.JoinTable getJoinTable(org.hibernate.annotations.common.reflection.XProperty)>(r1) 
 ; Statement: if r3 == null goto $r4 = interfaceinvoke r1.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/OneToOne;") 
(assert (not (= var3055 null-var43))) ; Negate: Cond: r3 == null  
(define-const var3347 (Array Int var1327) (var43_inverseJoinColumns/1767668714 var3055)) ; Statement: $r21 = interfaceinvoke r3.<javax.persistence.JoinTable: javax.persistence.JoinColumn[] inverseJoinColumns()>() 
(define-const var3491 var2010 (var3198_getAnnotation/894663943 var2040 var765!class)) ; Statement: $r14 = interfaceinvoke r1.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/Comment;") 
(define-const var2298 var765 (cast-from-var2010-to-var765 var3491)) ; Statement: $r20 = (org.hibernate.annotations.Comment) $r14 
(define-const var1854 var3287 (entityBinder/396458446 var1417)) ; Statement: $r15 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.annotations.EntityBinder entityBinder> 
(assert true)
(define-const var2275 var3048 (getSecondaryTables/2038683949 var1854)) ; Statement: $r19 = virtualinvoke $r15.<org.hibernate.cfg.annotations.EntityBinder: java.util.Map getSecondaryTables()>() 
(define-const var1275 var462 (propertyHolder/396458446 var1417)) ; Statement: $r16 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var432 String (var2636_getPropertyName/-814157935 var1025)) ; Statement: $r18 = interfaceinvoke r8.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>() 
(define-const var3419 var770 (buildingContext/396458446 var1417)) ; Statement: $r17 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> 
(define-const var2482 (Array Int var2828) (var2828_buildJoinColumns/584245343 var3347 var2298 null-String var2275 var1275 var432 var3419)) ; Statement: r30 = staticinvoke <org.hibernate.cfg.Ejb3JoinColumn: org.hibernate.cfg.Ejb3JoinColumn[] buildJoinColumns(javax.persistence.JoinColumn[],org.hibernate.annotations.Comment,java.lang.String,java.util.Map,org.hibernate.cfg.PropertyHolder,java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>($r21, $r20, null, $r19, $r16, $r18, $r17) 
(define-const var1690 String (var43_name/-669880034 var3055)) ; Statement: $r22 = interfaceinvoke r3.<javax.persistence.JoinTable: java.lang.String name()>() 
(define-const var2979 Bool (var366_isEmpty/1672864985 var1690)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>($r22) 
 ; Statement: if $z0 == 0 goto return r30 
(assert (= (ite var2979 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r30 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyHolder/396458446=([org.hibernate.cfg.ColumnsBuilder], org.hibernate.cfg.PropertyHolder), var462_getJoinTable/-1350531154=([org.hibernate.cfg.PropertyHolder, org.hibernate.annotations.common.reflection.XProperty], javax.persistence.JoinTable), var43_inverseJoinColumns/1767668714=([javax.persistence.JoinTable], javax.persistence.JoinColumn[]), var3198_getAnnotation/894663943=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], java.lang.annotation.Annotation), cast-from-var2010-to-var765=([java.lang.annotation.Annotation], org.hibernate.annotations.Comment), entityBinder/396458446=([org.hibernate.cfg.ColumnsBuilder], org.hibernate.cfg.annotations.EntityBinder), getSecondaryTables/2038683949=([org.hibernate.cfg.annotations.EntityBinder], java.util.Map), var2636_getPropertyName/-814157935=([org.hibernate.cfg.PropertyData], java.lang.String), buildingContext/396458446=([org.hibernate.cfg.ColumnsBuilder], org.hibernate.boot.spi.MetadataBuildingContext), var2828_buildJoinColumns/584245343=([javax.persistence.JoinColumn[], org.hibernate.annotations.Comment, java.lang.String, java.util.Map, org.hibernate.cfg.PropertyHolder, java.lang.String, org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.cfg.Ejb3JoinColumn[]), var43_name/-669880034=([javax.persistence.JoinTable], java.lang.String), var366_isEmpty/1672864985=([java.lang.String], boolean)}
; {var2741=org.hibernate.cfg.ColumnsBuilder, var1417=r0, var3198=org.hibernate.annotations.common.reflection.XProperty, var2040=r1, var2636=org.hibernate.cfg.PropertyData, var1025=r8, var462=org.hibernate.cfg.PropertyHolder, var80=$r2, var43=javax.persistence.JoinTable, var3055=r3, var1327=javax.persistence.JoinColumn, var3347=$r21, var2010=java.lang.annotation.Annotation, var765=org.hibernate.annotations.Comment, var3491=$r14, var2298=$r20, var3287=org.hibernate.cfg.annotations.EntityBinder, var1854=$r15, var3048=java.util.Map, var2275=$r19, var1275=$r16, var432=$r18, var770=org.hibernate.boot.spi.MetadataBuildingContext, var3419=$r17, var2828=org.hibernate.cfg.Ejb3JoinColumn, var1944=null_type, var2482=r30, var1690=$r22, var366=org.hibernate.internal.util.StringHelper, var2979=$z0}
; {org.hibernate.cfg.ColumnsBuilder=var2741, r0=var1417, org.hibernate.annotations.common.reflection.XProperty=var3198, r1=var2040, org.hibernate.cfg.PropertyData=var2636, r8=var1025, org.hibernate.cfg.PropertyHolder=var462, $r2=var80, javax.persistence.JoinTable=var43, r3=var3055, javax.persistence.JoinColumn=var1327, $r21=var3347, java.lang.annotation.Annotation=var2010, org.hibernate.annotations.Comment=var765, $r14=var3491, $r20=var2298, org.hibernate.cfg.annotations.EntityBinder=var3287, $r15=var1854, java.util.Map=var3048, $r19=var2275, $r16=var1275, $r18=var432, org.hibernate.boot.spi.MetadataBuildingContext=var770, $r17=var3419, org.hibernate.cfg.Ejb3JoinColumn=var2828, null_type=var1944, r30=var2482, $r22=var1690, org.hibernate.internal.util.StringHelper=var366, $z0=var2979}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.cfg.ColumnsBuilder;	r1 := @parameter0: org.hibernate.annotations.common.reflection.XProperty;	r8 := @parameter1: org.hibernate.cfg.PropertyData;	$r2 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyHolder propertyHolder>;	r3 = interfaceinvoke $r2.<org.hibernate.cfg.PropertyHolder: javax.persistence.JoinTable getJoinTable(org.hibernate.annotations.common.reflection.XProperty)>(r1);	if r3 == null goto $r4 = interfaceinvoke r1.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Ljavax/persistence/OneToOne;");	$r21 = interfaceinvoke r3.<javax.persistence.JoinTable: javax.persistence.JoinColumn[] inverseJoinColumns()>();	$r14 = interfaceinvoke r1.<org.hibernate.annotations.common.reflection.XProperty: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/hibernate/annotations/Comment;");	$r20 = (org.hibernate.annotations.Comment) $r14;	$r15 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.annotations.EntityBinder entityBinder>;	$r19 = virtualinvoke $r15.<org.hibernate.cfg.annotations.EntityBinder: java.util.Map getSecondaryTables()>();	$r16 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r18 = interfaceinvoke r8.<org.hibernate.cfg.PropertyData: java.lang.String getPropertyName()>();	$r17 = r0.<org.hibernate.cfg.ColumnsBuilder: org.hibernate.boot.spi.MetadataBuildingContext buildingContext>;	r30 = staticinvoke <org.hibernate.cfg.Ejb3JoinColumn: org.hibernate.cfg.Ejb3JoinColumn[] buildJoinColumns(javax.persistence.JoinColumn[],org.hibernate.annotations.Comment,java.lang.String,java.util.Map,org.hibernate.cfg.PropertyHolder,java.lang.String,org.hibernate.boot.spi.MetadataBuildingContext)>($r21, $r20, null, $r19, $r16, $r18, $r17);	$r22 = interfaceinvoke r3.<javax.persistence.JoinTable: java.lang.String name()>();	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>($r22);	if $z0 == 0 goto return r30;	return r30
;block_num 3