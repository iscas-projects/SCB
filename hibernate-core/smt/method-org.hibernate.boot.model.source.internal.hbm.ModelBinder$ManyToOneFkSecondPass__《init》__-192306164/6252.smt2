(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var951 0)
(declare-sort var2899 0)
(declare-sort var1338 0)
(declare-sort var1292 0)
(declare-sort var2617 0)
(declare-sort var201 0)
(declare-sort var2214 0)
(declare-sort var830 0)
(declare-sort var2346 0)
(declare-sort var3732 0)
(declare-sort var995 0)
(declare-sort var3731 0)
(declare-sort var535 0)
(declare-sort var856 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1615724970 (var201 var2214 (Array Int var830)) void)
(declare-fun cast-from-var951-to-var201 (var951) var201)
(declare-fun cast-from-var1292-to-var2214 (var1292) var2214)
(declare-fun var2346-init () var2346)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var995_getAttributeRole/-1958494126 (var995) var3732)
(declare-fun cast-from-var1338-to-var995 (var1338) var995)
(declare-fun getFullPath/-1971906419 (var3731) String)
(declare-fun cast-from-var3732-to-var3731 (var3732) var3731)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getOrigin/1285793805 (var2899) var535)
(declare-fun <init>/235758574 (var2346 String var535) void)
(declare-fun cast-from-var2346-to-var856 (var2346) var856)
(declare-const null-var951 var951)
(declare-const null-var2899 var2899)
(declare-const null-var1338 var1338)
(declare-const null-var1292 var1292)
(declare-const null-String String)
(declare-const null-NullType var2617)
(declare-const null-__Array__Int__var830__ (Array Int var830))
(declare-const var250 var951) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass 
(assert (not (= var250 null-var951)))
(declare-const var698 var2899) ; Statement: r3 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var698 null-var2899)))
(declare-const var56 var1338) ; Statement: r4 := @parameter1: org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne 
(assert (not (= var56 null-var1338)))
(declare-const var3241 var1292) ; Statement: r1 := @parameter2: org.hibernate.mapping.ManyToOne 
(assert (not (= var3241 null-var1292)))
(declare-const var3573 String) ; Statement: r2 := @parameter3: java.lang.String 
(assert (not (= var3573 null-String)))
(assert true)
;(assert (<init>/-1615724970 (cast-from-var951-to-var201 var250) (cast-from-var1292-to-var2214 var3241) null-__Array__Int__var830__)) ; Statement: specialinvoke r0.<org.hibernate.cfg.FkSecondPass: void <init>(org.hibernate.mapping.SimpleValue,org.hibernate.cfg.Ejb3JoinColumn[])>(r1, null) 

(declare-const var250!1 var951)
(declare-const var3241!1 var1292)
(declare-const var3572 var2617)
 ; Statement: if r2 != null goto r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument> = r3 
(assert (not (not (= var3573 null-String)))) ; Negate: Cond: r2 != null  
(define-const var1200 var2346 var2346-init) ; Statement: $r16 = new org.hibernate.boot.MappingException 
(define-const var2066 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2066)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2066!1 String)
(assert (= var2066!1 ""))
(assert true)
(define-const var2931 String (append/672562846 var2066!1 "entity name referenced by many-to-one required [")) ; Statement: $r10 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("entity name referenced by many-to-one required [") 
(declare-const var2066!2 String)
(assert (= var2066!2 (str.++ var2066!1 "entity name referenced by many-to-one required [")))
(define-const var3014 var3732 (var995_getAttributeRole/-1958494126 (cast-from-var1338-to-var995 var56))) ; Statement: $r8 = interfaceinvoke r4.<org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>() 
(assert true)
(define-const var3404 String (getFullPath/-1971906419 (cast-from-var3732-to-var3731 var3014))) ; Statement: $r9 = virtualinvoke $r8.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>() 
(assert true)
(define-const var1773 String (append/672562846 var2931 var3404)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2931!1 String)
(assert (= var2931!1 (str.++ var2931 var3404)))
(assert true)
(define-const var2422 String (append/672562846 var1773 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1773!1 String)
(assert (= var1773!1 (str.++ var1773 "]")))
(assert true)
(define-const var3976 String (toString/-2075883882 var2422)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2910 var535 (getOrigin/1285793805 var698)) ; Statement: $r13 = virtualinvoke r3.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var1200 var3976 var2910)) ; Statement: specialinvoke $r16.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r14, $r13) 

(declare-const var1200!1 var2346)
(declare-const var3976!1 String)
(declare-const var2910!1 var535)
(define-const var1533 var856 (cast-from-var2346-to-var856 var1200!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1615724970=([org.hibernate.cfg.FkSecondPass, org.hibernate.mapping.SimpleValue, org.hibernate.cfg.Ejb3JoinColumn[]], void), cast-from-var951-to-var201=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass], org.hibernate.cfg.FkSecondPass), cast-from-var1292-to-var2214=([org.hibernate.mapping.ManyToOne], org.hibernate.mapping.SimpleValue), var2346-init=([], org.hibernate.boot.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var995_getAttributeRole/-1958494126=([org.hibernate.boot.model.source.spi.AttributeSource], org.hibernate.boot.model.source.spi.AttributeRole), cast-from-var1338-to-var995=([org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne], org.hibernate.boot.model.source.spi.AttributeSource), getFullPath/-1971906419=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.String), cast-from-var3732-to-var3731=([org.hibernate.boot.model.source.spi.AttributeRole], org.hibernate.boot.model.source.spi.AbstractAttributeKey), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getOrigin/1285793805=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var2346-to-var856=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var951=org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass, var250=r0, var2899=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var698=r3, var1338=org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne, var56=r4, var1292=org.hibernate.mapping.ManyToOne, var3241=r1, var3573=r2, var2617=null_type, var201=org.hibernate.cfg.FkSecondPass, var2214=org.hibernate.mapping.SimpleValue, var830=org.hibernate.cfg.Ejb3JoinColumn, var3572=null, var2346=org.hibernate.boot.MappingException, var1200=$r16, var2066=$r15, var2931=$r10, var3732=org.hibernate.boot.model.source.spi.AttributeRole, var995=org.hibernate.boot.model.source.spi.AttributeSource, var3014=$r8, var3731=org.hibernate.boot.model.source.spi.AbstractAttributeKey, var3404=$r9, var1773=$r11, var2422=$r12, var3976=$r14, var535=org.hibernate.boot.jaxb.Origin, var2910=$r13, var856=java.lang.Throwable, var1533=$r17}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass=var951, r0=var250, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var2899, r3=var698, org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne=var1338, r4=var56, org.hibernate.mapping.ManyToOne=var1292, r1=var3241, r2=var3573, null_type=var2617, org.hibernate.cfg.FkSecondPass=var201, org.hibernate.mapping.SimpleValue=var2214, org.hibernate.cfg.Ejb3JoinColumn=var830, null=var3572, org.hibernate.boot.MappingException=var2346, $r16=var1200, $r15=var2066, $r10=var2931, org.hibernate.boot.model.source.spi.AttributeRole=var3732, org.hibernate.boot.model.source.spi.AttributeSource=var995, $r8=var3014, org.hibernate.boot.model.source.spi.AbstractAttributeKey=var3731, $r9=var3404, $r11=var1773, $r12=var2422, $r14=var3976, org.hibernate.boot.jaxb.Origin=var535, $r13=var2910, java.lang.Throwable=var856, $r17=var1533}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass;	r3 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r4 := @parameter1: org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne;	r1 := @parameter2: org.hibernate.mapping.ManyToOne;	r2 := @parameter3: java.lang.String;	specialinvoke r0.<org.hibernate.cfg.FkSecondPass: void <init>(org.hibernate.mapping.SimpleValue,org.hibernate.cfg.Ejb3JoinColumn[])>(r1, null);	if r2 != null goto r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$ManyToOneFkSecondPass: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument> = r3;	$r16 = new org.hibernate.boot.MappingException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("entity name referenced by many-to-one required [");	$r8 = interfaceinvoke r4.<org.hibernate.boot.model.source.spi.SingularAttributeSourceManyToOne: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>();	$r9 = virtualinvoke $r8.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke r3.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r16.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r14, $r13);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 2