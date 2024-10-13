(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3657 0)
(declare-sort var359 0)
(declare-sort var594 0)
(declare-sort var3151 0)
(declare-sort var2129 0)
(declare-sort var1131 0)
(declare-sort var2573 0)
(declare-sort var1111 0)
(declare-sort var526 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1615724970 (var1131 var2573 (Array Int var1111)) void)
(declare-fun cast-from-var3657-to-var1131 (var3657) var1131)
(declare-fun cast-from-var3151-to-var2573 (var3151) var2573)
(declare-fun mappingDocument/821316337 (var3657) var359)
(declare-fun manyToOneBinding/821316337 (var3657) var3151)
(declare-fun referencedEntityName/821316337 (var3657) String)
(declare-fun var526_getReferencedEntityAttributeName/1003844404 (var526) String)
(declare-fun cast-from-var594-to-var526 (var594) var526)
(declare-fun referencedEntityAttributeName/821316337 (var3657) String)
(declare-const null-var3657 var3657)
(declare-const null-var359 var359)
(declare-const null-var594 var594)
(declare-const null-var3151 var3151)
(declare-const null-String String)
(declare-const null-NullType var2129)
(declare-const null-__Array__Int__var1111__ (Array Int var1111))
(declare-const var1313 var3657) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass 
(assert (not (= var1313 null-var3657)))
(declare-const var1451 var359) ; Statement: r3 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var1451 null-var359)))
(declare-const var1268 var594) ; Statement: r4 := @parameter1: org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne 
(assert (not (= var1268 null-var594)))
(declare-const var232 var3151) ; Statement: r1 := @parameter2: org.hibernate.mapping.ManyToOne 
(assert (not (= var232 null-var3151)))
(declare-const var8 String) ; Statement: r2 := @parameter3: java.lang.String 
(assert (not (= var8 null-String)))
(assert true)
;(assert (<init>/-1615724970 (cast-from-var3657-to-var1131 var1313) (cast-from-var3151-to-var2573 var232) null-__Array__Int__var1111__)) ; Statement: specialinvoke r0.<org.hibernate.cfg.FkSecondPass: void <init>(org.hibernate.mapping.SimpleValue,org.hibernate.cfg.Ejb3JoinColumn[])>(r1, null) 

(declare-const var1313!1 var3657)
(declare-const var232!1 var3151)
(declare-const var562 var2129)
 ; Statement: if r2 != null goto r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument> = r3 
(assert (not (= var8 null-String))) ; Cond: r2 != null 
(declare-const var1313!2 var3657)
(assert (not (= var1313!2 null-var3657)))
(assert (= (mappingDocument/821316337 var1313!2) var1451)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument> = r3 
(declare-const var1313!3 var3657)
(assert (not (= var1313!3 null-var3657)))
(assert (= (manyToOneBinding/821316337 var1313!3) var232!1)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass: org.hibernate.mapping.ManyToOne manyToOneBinding> = r1 
(declare-const var1313!4 var3657)
(assert (not (= var1313!4 null-var3657)))
(assert (= (referencedEntityName/821316337 var1313!4) var8)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass: java.lang.String referencedEntityName> = r2 
(define-const var1631 String (var526_getReferencedEntityAttributeName/1003844404 (cast-from-var594-to-var526 var1268))) ; Statement: $r5 = interfaceinvoke r4.<org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne: java.lang.String getReferencedEntityAttributeName()>() 
(declare-const var1313!5 var3657)
(assert (not (= var1313!5 null-var3657)))
(assert (= (referencedEntityAttributeName/821316337 var1313!5) var1631)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass: java.lang.String referencedEntityAttributeName> = $r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1615724970=([org.hibernate.cfg.FkSecondPass, org.hibernate.mapping.SimpleValue, org.hibernate.cfg.Ejb3JoinColumn[]], void), cast-from-var3657-to-var1131=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass], org.hibernate.cfg.FkSecondPass), cast-from-var3151-to-var2573=([org.hibernate.mapping.ManyToOne], org.hibernate.mapping.SimpleValue), mappingDocument/821316337=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass], org.hibernate.boot.model.source.internal.hbm.MappingDocument), manyToOneBinding/821316337=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass], org.hibernate.mapping.ManyToOne), referencedEntityName/821316337=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass], java.lang.String), var526_getReferencedEntityAttributeName/1003844404=([org.hibernate.boot.model.source.spi.SingularAttributeSourceToOne], java.lang.String), cast-from-var594-to-var526=([org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne], org.hibernate.boot.model.source.spi.SingularAttributeSourceToOne), referencedEntityAttributeName/821316337=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass], java.lang.String)}
; {var3657=org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass, var1313=r0, var359=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var1451=r3, var594=org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne, var1268=r4, var3151=org.hibernate.mapping.ManyToOne, var232=r1, var8=r2, var2129=null_type, var1131=org.hibernate.cfg.FkSecondPass, var2573=org.hibernate.mapping.SimpleValue, var1111=org.hibernate.cfg.Ejb3JoinColumn, var562=null, var526=org.hibernate.boot.model.source.spi.SingularAttributeSourceToOne, var1631=$r5}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass=var3657, r0=var1313, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var359, r3=var1451, org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne=var594, r4=var1268, org.hibernate.mapping.ManyToOne=var3151, r1=var232, r2=var8, null_type=var2129, org.hibernate.cfg.FkSecondPass=var1131, org.hibernate.mapping.SimpleValue=var2573, org.hibernate.cfg.Ejb3JoinColumn=var1111, null=var562, org.hibernate.boot.model.source.spi.SingularAttributeSourceToOne=var526, $r5=var1631}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass;	r3 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r4 := @parameter1: org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne;	r1 := @parameter2: org.hibernate.mapping.ManyToOne;	r2 := @parameter3: java.lang.String;	specialinvoke r0.<org.hibernate.cfg.FkSecondPass: void <init>(org.hibernate.mapping.SimpleValue,org.hibernate.cfg.Ejb3JoinColumn[])>(r1, null);	if r2 != null goto r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument> = r3;	r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument> = r3;	r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass: org.hibernate.mapping.ManyToOne manyToOneBinding> = r1;	r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass: java.lang.String referencedEntityName> = r2;	$r5 = interfaceinvoke r4.<org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne: java.lang.String getReferencedEntityAttributeName()>();	r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass: java.lang.String referencedEntityAttributeName> = $r5;	return
;block_num 2