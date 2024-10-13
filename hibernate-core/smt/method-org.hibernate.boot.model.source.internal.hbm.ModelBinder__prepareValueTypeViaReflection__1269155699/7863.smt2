(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3340 0)
(declare-sort var406 0)
(declare-sort var1286 0)
(declare-sort var2686 0)
(declare-sort var2754 0)
(declare-sort var519 0)
(declare-sort var3587 0)
(declare-sort var1495 0)
(declare-sort var1175 0)
(declare-sort var1481 0)
(declare-sort var3126 0)
(declare-sort var3788 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var519_isEmpty/1672864985 (String) Bool)
(declare-fun var3587-init () var3587)
(declare-fun arr-var1175-init () (Array Int var1175))
(declare-fun cast-from-String-to-var1175 (String) var1175)
(declare-fun getFullPath/-1971906419 (var1481) String)
(declare-fun cast-from-var2754-to-var1481 (var2754) var1481)
(declare-fun String_format/-647569892 (var1495 String (Array Int var1175)) String)
(declare-fun getOrigin/1285793805 (var406) var3126)
(declare-fun <init>/235758574 (var3587 String var3126) void)
(declare-fun cast-from-var3587-to-var3788 (var3587) var3788)
(declare-const null-var3340 var3340)
(declare-const null-var406 var406)
(declare-const null-var1286 var1286)
(declare-const null-String String)
(declare-const null-var2754 var2754)
(declare-const var1495-ENGLISH var1495)
(declare-const null-__Array__Int__var1175__ (Array Int var1175))
(declare-const var954 var3340) ; Statement: r11 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder 
(assert (not (= var954 null-var3340)))
(declare-const var3387 var406) ; Statement: r8 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var3387 null-var406)))
(declare-const var3190 var1286) ; Statement: r1 := @parameter1: org.hibernate.mapping.Value 
(assert (not (= var3190 null-var1286)))
(declare-const var3202 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3202 null-String)))
(declare-const var3880 String) ; Statement: r0 := @parameter3: java.lang.String 
(assert (not (= var3880 null-String)))
(declare-const var2237 var2754) ; Statement: r5 := @parameter4: org.hibernate.boot.model.source.spi.AttributeRole 
(assert (not (= var2237 null-var2754)))
(define-const var3520 Bool (var519_isEmpty/1672864985 var3880)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto interfaceinvoke r1.<org.hibernate.mapping.Value: void setTypeUsingReflection(java.lang.String,java.lang.String)>(r2, r0) 
(assert (not (= (ite var3520 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2057 var3587 var3587-init) ; Statement: $r12 = new org.hibernate.boot.MappingException 
(define-const var2604 var1495 var1495-ENGLISH) ; Statement: $r6 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var193 (Array Int var1175) arr-var1175-init) ; Statement: $r4 = newarray (java.lang.Object)[3] 
(declare-const var193!1 (Array Int var1175))
(assert (not (= var193!1 null-__Array__Int__var1175__)))
(assert (= (select var193!1 0) (cast-from-String-to-var1175 var3202))) ; Statement: $r4[0] = r2 
(declare-const var193!2 (Array Int var1175))
(assert (not (= var193!2 null-__Array__Int__var1175__)))
(assert (= (select var193!2 1) (cast-from-String-to-var1175 var3880))) ; Statement: $r4[1] = r0 
(assert true)
(define-const var2990 String (getFullPath/-1971906419 (cast-from-var2754-to-var1481 var2237))) ; Statement: $r7 = virtualinvoke r5.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>() 
(declare-const var193!3 (Array Int var1175))
(assert (not (= var193!3 null-__Array__Int__var1175__)))
(assert (= (select var193!3 2) (cast-from-String-to-var1175 var2990))) ; Statement: $r4[2] = $r7 
(define-const var3663 String (String_format/-647569892 var2604 "Attribute mapping must define a name attribute: containingClassName=[%s], propertyName=[%s], role=[%s]" var193!3)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "Attribute mapping must define a name attribute: containingClassName=[%s], propertyName=[%s], role=[%s]", $r4) 
(assert true)
(define-const var3362 var3126 (getOrigin/1285793805 var3387)) ; Statement: $r9 = virtualinvoke r8.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var2057 var3663 var3362)) ; Statement: specialinvoke $r12.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r10, $r9) 

(declare-const var2057!1 var3587)
(declare-const var3663!1 String)
(declare-const var3362!1 var3126)
(define-const var981 var3788 (cast-from-var3587-to-var3788 var2057!1)) ; Statement: $r13 = (java.lang.Throwable) $r12 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var519_isEmpty/1672864985=([java.lang.String], boolean), var3587-init=([], org.hibernate.boot.MappingException), arr-var1175-init=([], java.lang.Object[]), cast-from-String-to-var1175=([java.lang.String], java.lang.Object), getFullPath/-1971906419=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.String), cast-from-var2754-to-var1481=([org.hibernate.boot.model.source.spi.AttributeRole], org.hibernate.boot.model.source.spi.AbstractAttributeKey), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), getOrigin/1285793805=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var3587-to-var3788=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var3340=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var954=r11, var406=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var3387=r8, var1286=org.hibernate.mapping.Value, var3190=r1, var3202=r2, var2686=null_type, var3880=r0, var2754=org.hibernate.boot.model.source.spi.AttributeRole, var2237=r5, var519=org.hibernate.internal.util.StringHelper, var3520=$z0, var3587=org.hibernate.boot.MappingException, var2057=$r12, var1495=java.util.Locale, var2604=$r6, var1175=java.lang.Object, var193=$r4, var1481=org.hibernate.boot.model.source.spi.AbstractAttributeKey, var2990=$r7, var3663=$r10, var3126=org.hibernate.boot.jaxb.Origin, var3362=$r9, var3788=java.lang.Throwable, var981=$r13}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder=var3340, r11=var954, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var406, r8=var3387, org.hibernate.mapping.Value=var1286, r1=var3190, r2=var3202, null_type=var2686, r0=var3880, org.hibernate.boot.model.source.spi.AttributeRole=var2754, r5=var2237, org.hibernate.internal.util.StringHelper=var519, $z0=var3520, org.hibernate.boot.MappingException=var3587, $r12=var2057, java.util.Locale=var1495, $r6=var2604, java.lang.Object=var1175, $r4=var193, org.hibernate.boot.model.source.spi.AbstractAttributeKey=var1481, $r7=var2990, $r10=var3663, org.hibernate.boot.jaxb.Origin=var3126, $r9=var3362, java.lang.Throwable=var3788, $r13=var981}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r11 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder;	r8 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r1 := @parameter1: org.hibernate.mapping.Value;	r2 := @parameter2: java.lang.String;	r0 := @parameter3: java.lang.String;	r5 := @parameter4: org.hibernate.boot.model.source.spi.AttributeRole;	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r0);	if $z0 == 0 goto interfaceinvoke r1.<org.hibernate.mapping.Value: void setTypeUsingReflection(java.lang.String,java.lang.String)>(r2, r0);	$r12 = new org.hibernate.boot.MappingException;	$r6 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = newarray (java.lang.Object)[3];	$r4[0] = r2;	$r4[1] = r0;	$r7 = virtualinvoke r5.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>();	$r4[2] = $r7;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "Attribute mapping must define a name attribute: containingClassName=[%s], propertyName=[%s], role=[%s]", $r4);	$r9 = virtualinvoke r8.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r12.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r10, $r9);	$r13 = (java.lang.Throwable) $r12;	throw $r13
;block_num 2