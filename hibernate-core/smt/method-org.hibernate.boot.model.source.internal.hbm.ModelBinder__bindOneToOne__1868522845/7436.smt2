(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3095 0)
(declare-sort var3939 0)
(declare-sort var2392 0)
(declare-sort var2707 0)
(declare-sort var977 0)
(declare-sort var2504 0)
(declare-sort var407 0)
(declare-sort var3127 0)
(declare-sort var3039 0)
(declare-sort var1248 0)
(declare-sort var1214 0)
(declare-sort var3495 0)
(declare-sort var2006 0)
(declare-sort var2850 0)
(declare-sort var1403 0)
(declare-sort var2112 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var977_getName/-1165876496 (var977) String)
(declare-fun cast-from-var2392-to-var977 (var2392) var977)
(declare-fun setPropertyName/1593411263 (var2707 String) void)
(declare-fun relationalObjectBinder/1575709631 (var3095) var2504)
(declare-fun var2392_getFormulaSources/797382050 (var2392) var407)
(declare-fun bindFormulas/480030167 (var2504 var3939 var407 var2707) void)
(declare-fun var2392_isConstrained/2091287998 (var2392) Bool)
(declare-fun var3127_getCascadeStyleName/-1239490234 (var3127) String)
(declare-fun cast-from-var2392-to-var3127 (var2392) var3127)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1248-init () var1248)
(declare-fun arr-var3495-init () (Array Int var3495))
(declare-fun var977_getAttributeRole/-1958494126 (var977) var2006)
(declare-fun getFullPath/-1971906419 (var2850) String)
(declare-fun cast-from-var2006-to-var2850 (var2006) var2850)
(declare-fun cast-from-String-to-var3495 (String) var3495)
(declare-fun String_format/-647569892 (var1214 String (Array Int var3495)) String)
(declare-fun getOrigin/1285793805 (var3939) var1403)
(declare-fun <init>/235758574 (var1248 String var1403) void)
(declare-fun cast-from-var1248-to-var2112 (var1248) var2112)
(declare-const null-var3095 var3095)
(declare-const null-var3939 var3939)
(declare-const null-var2392 var2392)
(declare-const null-var2707 var2707)
(declare-const null-String String)
(declare-const var1214-ENGLISH var1214)
(declare-const null-__Array__Int__var3495__ (Array Int var3495))
(declare-const var3892 var3095) ; Statement: r3 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder 
(assert (not (= var3892 null-var3095)))
(declare-const var895 var3939) ; Statement: r4 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var895 null-var3939)))
(declare-const var358 var2392) ; Statement: r1 := @parameter1: org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne 
(assert (not (= var358 null-var2392)))
(declare-const var235 var2707) ; Statement: r0 := @parameter2: org.hibernate.mapping.OneToOne 
(assert (not (= var235 null-var2707)))
(define-const var1911 String (var977_getName/-1165876496 (cast-from-var2392-to-var977 var358))) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne: java.lang.String getName()>() 
(assert true)
;(assert (setPropertyName/1593411263 var235 var1911)) ; Statement: virtualinvoke r0.<org.hibernate.mapping.OneToOne: void setPropertyName(java.lang.String)>($r2) 

(declare-const var235!1 var2707)
(declare-const var1911!1 String)
(define-const var673 var2504 (relationalObjectBinder/1575709631 var3892)) ; Statement: $r5 = r3.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.source.internal.hbm.RelationalObjectBinder relationalObjectBinder> 
(define-const var3514 var407 (var2392_getFormulaSources/797382050 var358)) ; Statement: $r6 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne: java.util.List getFormulaSources()>() 
(assert true)
;(assert (bindFormulas/480030167 var673 var895 var3514 var235!1)) ; Statement: virtualinvoke $r5.<org.hibernate.boot.model.source.internal.hbm.RelationalObjectBinder: void bindFormulas(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.util.List,org.hibernate.mapping.OneToOne)>(r4, $r6, r0) 

(declare-const var673!1 var2504)
(declare-const var895!1 var3939)
(declare-const var3514!1 var407)
(declare-const var235!2 var2707)
(define-const var1251 Bool (var2392_isConstrained/2091287998 var358)) ; Statement: $z0 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne: boolean isConstrained()>() 
 ; Statement: if $z0 == 0 goto $r7 = <org.hibernate.type.ForeignKeyDirection: org.hibernate.type.ForeignKeyDirection TO_PARENT> 
(assert (not (= (ite var1251 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var246 String (var3127_getCascadeStyleName/-1239490234 (cast-from-var2392-to-var3127 var358))) ; Statement: $r23 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne: java.lang.String getCascadeStyleName()>() 
 ; Statement: if $r23 == null goto virtualinvoke r0.<org.hibernate.mapping.OneToOne: void setConstrained(boolean)>(1) 
(assert (not (= var246 null-String))) ; Negate: Cond: $r23 == null  
(define-const var1288 String (var3127_getCascadeStyleName/-1239490234 (cast-from-var2392-to-var3127 var358))) ; Statement: $r25 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne: java.lang.String getCascadeStyleName()>() 
(assert true)
(define-const var3925 Bool (contains/1009244746 var1288 (cast-from-String-to-String "delete-orphan"))) ; Statement: $z5 = virtualinvoke $r25.<java.lang.String: boolean contains(java.lang.CharSequence)>("delete-orphan") 
 ; Statement: if $z5 == 0 goto virtualinvoke r0.<org.hibernate.mapping.OneToOne: void setConstrained(boolean)>(1) 
(assert (not (= (ite var3925 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var2840 var1248 var1248-init) ; Statement: $r34 = new org.hibernate.boot.MappingException 
(define-const var1825 var1214 var1214-ENGLISH) ; Statement: $r28 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var2869 (Array Int var3495) arr-var3495-init) ; Statement: $r27 = newarray (java.lang.Object)[1] 
(define-const var107 var2006 (var977_getAttributeRole/-1958494126 (cast-from-var2392-to-var977 var358))) ; Statement: $r29 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>() 
(assert true)
(define-const var3261 String (getFullPath/-1971906419 (cast-from-var2006-to-var2850 var107))) ; Statement: $r30 = virtualinvoke $r29.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>() 
(declare-const var2869!1 (Array Int var3495))
(assert (not (= var2869!1 null-__Array__Int__var3495__)))
(assert (= (select var2869!1 0) (cast-from-String-to-var3495 var3261))) ; Statement: $r27[0] = $r30 
(define-const var1611 String (String_format/-647569892 var1825 "one-to-one attribute [%s] cannot specify orphan delete cascading as it is constrained" var2869!1)) ; Statement: $r32 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r28, "one-to-one attribute [%s] cannot specify orphan delete cascading as it is constrained", $r27) 
(assert true)
(define-const var3821 var1403 (getOrigin/1285793805 var895!1)) ; Statement: $r31 = virtualinvoke r4.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var2840 var1611 var3821)) ; Statement: specialinvoke $r34.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r32, $r31) 

(declare-const var2840!1 var1248)
(declare-const var1611!1 String)
(declare-const var3821!1 var1403)
(define-const var1533 var2112 (cast-from-var1248-to-var2112 var2840!1)) ; Statement: $r35 = (java.lang.Throwable) $r34 
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {var977_getName/-1165876496=([org.hibernate.boot.model.source.spi.AttributeSource], java.lang.String), cast-from-var2392-to-var977=([org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne], org.hibernate.boot.model.source.spi.AttributeSource), setPropertyName/1593411263=([org.hibernate.mapping.OneToOne, java.lang.String], void), relationalObjectBinder/1575709631=([org.hibernate.boot.model.source.internal.hbm.ModelBinder], org.hibernate.boot.model.source.internal.hbm.RelationalObjectBinder), var2392_getFormulaSources/797382050=([org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne], java.util.List), bindFormulas/480030167=([org.hibernate.boot.model.source.internal.hbm.RelationalObjectBinder, org.hibernate.boot.model.source.internal.hbm.MappingDocument, java.util.List, org.hibernate.mapping.OneToOne], void), var2392_isConstrained/2091287998=([org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne], boolean), var3127_getCascadeStyleName/-1239490234=([org.hibernate.boot.model.source.spi.CascadeStyleSource], java.lang.String), cast-from-var2392-to-var3127=([org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne], org.hibernate.boot.model.source.spi.CascadeStyleSource), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1248-init=([], org.hibernate.boot.MappingException), arr-var3495-init=([], java.lang.Object[]), var977_getAttributeRole/-1958494126=([org.hibernate.boot.model.source.spi.AttributeSource], org.hibernate.boot.model.source.spi.AttributeRole), getFullPath/-1971906419=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.String), cast-from-var2006-to-var2850=([org.hibernate.boot.model.source.spi.AttributeRole], org.hibernate.boot.model.source.spi.AbstractAttributeKey), cast-from-String-to-var3495=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), getOrigin/1285793805=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var1248-to-var2112=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var3095=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var3892=r3, var3939=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var895=r4, var2392=org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne, var358=r1, var2707=org.hibernate.mapping.OneToOne, var235=r0, var977=org.hibernate.boot.model.source.spi.AttributeSource, var1911=$r2, var2504=org.hibernate.boot.model.source.internal.hbm.RelationalObjectBinder, var673=$r5, var407=java.util.List, var3514=$r6, var1251=$z0, var3127=org.hibernate.boot.model.source.spi.CascadeStyleSource, var246=$r23, var3039=null_type, var1288=$r25, var3925=$z5, var1248=org.hibernate.boot.MappingException, var2840=$r34, var1214=java.util.Locale, var1825=$r28, var3495=java.lang.Object, var2869=$r27, var2006=org.hibernate.boot.model.source.spi.AttributeRole, var107=$r29, var2850=org.hibernate.boot.model.source.spi.AbstractAttributeKey, var3261=$r30, var1611=$r32, var1403=org.hibernate.boot.jaxb.Origin, var3821=$r31, var2112=java.lang.Throwable, var1533=$r35}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder=var3095, r3=var3892, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var3939, r4=var895, org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne=var2392, r1=var358, org.hibernate.mapping.OneToOne=var2707, r0=var235, org.hibernate.boot.model.source.spi.AttributeSource=var977, $r2=var1911, org.hibernate.boot.model.source.internal.hbm.RelationalObjectBinder=var2504, $r5=var673, java.util.List=var407, $r6=var3514, $z0=var1251, org.hibernate.boot.model.source.spi.CascadeStyleSource=var3127, $r23=var246, null_type=var3039, $r25=var1288, $z5=var3925, org.hibernate.boot.MappingException=var1248, $r34=var2840, java.util.Locale=var1214, $r28=var1825, java.lang.Object=var3495, $r27=var2869, org.hibernate.boot.model.source.spi.AttributeRole=var2006, $r29=var107, org.hibernate.boot.model.source.spi.AbstractAttributeKey=var2850, $r30=var3261, $r32=var1611, org.hibernate.boot.jaxb.Origin=var1403, $r31=var3821, java.lang.Throwable=var2112, $r35=var1533}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r3 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder;	r4 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r1 := @parameter1: org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne;	r0 := @parameter2: org.hibernate.mapping.OneToOne;	$r2 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne: java.lang.String getName()>();	virtualinvoke r0.<org.hibernate.mapping.OneToOne: void setPropertyName(java.lang.String)>($r2);	$r5 = r3.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.source.internal.hbm.RelationalObjectBinder relationalObjectBinder>;	$r6 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne: java.util.List getFormulaSources()>();	virtualinvoke $r5.<org.hibernate.boot.model.source.internal.hbm.RelationalObjectBinder: void bindFormulas(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.util.List,org.hibernate.mapping.OneToOne)>(r4, $r6, r0);	$z0 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne: boolean isConstrained()>();	if $z0 == 0 goto $r7 = <org.hibernate.type.ForeignKeyDirection: org.hibernate.type.ForeignKeyDirection TO_PARENT>;	$r23 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne: java.lang.String getCascadeStyleName()>();	if $r23 == null goto virtualinvoke r0.<org.hibernate.mapping.OneToOne: void setConstrained(boolean)>(1);	$r25 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne: java.lang.String getCascadeStyleName()>();	$z5 = virtualinvoke $r25.<java.lang.String: boolean contains(java.lang.CharSequence)>("delete-orphan");	if $z5 == 0 goto virtualinvoke r0.<org.hibernate.mapping.OneToOne: void setConstrained(boolean)>(1);	$r34 = new org.hibernate.boot.MappingException;	$r28 = <java.util.Locale: java.util.Locale ENGLISH>;	$r27 = newarray (java.lang.Object)[1];	$r29 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.SingularAttributeSourceOneToOne: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>();	$r30 = virtualinvoke $r29.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>();	$r27[0] = $r30;	$r32 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r28, "one-to-one attribute [%s] cannot specify orphan delete cascading as it is constrained", $r27);	$r31 = virtualinvoke r4.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r34.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r32, $r31);	$r35 = (java.lang.Throwable) $r34;	throw $r35
;block_num 4