(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1957 0)
(declare-sort var1465 0)
(declare-sort var2599 0)
(declare-sort var3247 0)
(declare-sort var3497 0)
(declare-sort var2081 0)
(declare-sort var1857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyName/1702416975 (var1957) String)
(declare-fun var1465_debugf/585189783 (var1465 String var2599) void)
(declare-fun cast-from-String-to-var2599 (String) var2599)
(declare-fun attributeConverterDescriptor/1702416975 (var1957) var3247)
(declare-fun explicitType/1702416975 (var1957) String)
(declare-fun var3497_isEmptyAnnotationValue/1929464449 (String) Bool)
(declare-fun var2081-init () var2081)
(declare-fun arr-var2599-init () (Array Int var2599))
(declare-fun persistentClassName/1702416975 (var1957) String)
(declare-fun String_format/1339386452 (String (Array Int var2599)) String)
(declare-fun <init>/609117640 (var2081 String) void)
(declare-fun cast-from-var2081-to-var1857 (var2081) var1857)
(declare-const null-var1957 var1957)
(declare-const var1957-LOG var1465)
(declare-const null-var3247 var3247)
(declare-const null-__Array__Int__var2599__ (Array Int var2599))
(declare-const var2779 var1957) ; Statement: r0 := @this: org.hibernate.cfg.annotations.SimpleValueBinder 
(assert (not (= var2779 null-var1957)))
(define-const var3472 var1465 var1957-LOG) ; Statement: $r2 = <org.hibernate.cfg.annotations.SimpleValueBinder: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var669 String (propertyName/1702416975 var2779)) ; Statement: $r1 = r0.<org.hibernate.cfg.annotations.SimpleValueBinder: java.lang.String propertyName> 
;(assert (var1465_debugf/585189783 var3472 "Starting fillSimpleValue for %s" (cast-from-String-to-var2599 var669))) ; Statement: interfaceinvoke $r2.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object)>("Starting fillSimpleValue for %s", $r1) 

(declare-const var3472!1 var1465)
(declare-const var2650 String)
(declare-const var669!1 String)
(define-const var1855 var3247 (attributeConverterDescriptor/1702416975 var2779)) ; Statement: $r3 = r0.<org.hibernate.cfg.annotations.SimpleValueBinder: org.hibernate.boot.model.convert.spi.ConverterDescriptor attributeConverterDescriptor> 
 ; Statement: if $r3 == null goto $r4 = r0.<org.hibernate.cfg.annotations.SimpleValueBinder: java.lang.String explicitType> 
(assert (not (= var1855 null-var3247))) ; Negate: Cond: $r3 == null  
(define-const var2473 String (explicitType/1702416975 var2779)) ; Statement: $r57 = r0.<org.hibernate.cfg.annotations.SimpleValueBinder: java.lang.String explicitType> 
(define-const var3946 Bool (var3497_isEmptyAnnotationValue/1929464449 var2473)) ; Statement: $z5 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r57) 
 ; Statement: if $z5 != 0 goto $r61 = <org.hibernate.cfg.annotations.SimpleValueBinder: org.hibernate.internal.CoreMessageLogger LOG> 
(assert (not (not (= (ite var3946 1 0) 0)))) ; Negate: Cond: $z5 != 0  
(define-const var430 var2081 var2081-init) ; Statement: $r83 = new org.hibernate.AnnotationException 
(define-const var218 (Array Int var2599) arr-var2599-init) ; Statement: $r65 = newarray (java.lang.Object)[2] 
(define-const var1597 String (persistentClassName/1702416975 var2779)) ; Statement: $r66 = r0.<org.hibernate.cfg.annotations.SimpleValueBinder: java.lang.String persistentClassName> 
(declare-const var218!1 (Array Int var2599))
(assert (not (= var218!1 null-__Array__Int__var2599__)))
(assert (= (select var218!1 0) (cast-from-String-to-var2599 var1597))) ; Statement: $r65[0] = $r66 
(define-const var1353 String (propertyName/1702416975 var2779)) ; Statement: $r67 = r0.<org.hibernate.cfg.annotations.SimpleValueBinder: java.lang.String propertyName> 
(declare-const var218!2 (Array Int var2599))
(assert (not (= var218!2 null-__Array__Int__var2599__)))
(assert (= (select var218!2 1) (cast-from-String-to-var2599 var1353))) ; Statement: $r65[1] = $r67 
(define-const var622 String (String_format/1339386452 "AttributeConverter and explicit Type cannot be applied to same attribute [%s.%s];remove @Type or specify @Convert(disableConversion = true)" var218!2)) ; Statement: $r68 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("AttributeConverter and explicit Type cannot be applied to same attribute [%s.%s];remove @Type or specify @Convert(disableConversion = true)", $r65) 
(assert true)
;(assert (<init>/609117640 var430 var622)) ; Statement: specialinvoke $r83.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r68) 

(declare-const var430!1 var2081)
(declare-const var622!1 String)
(define-const var3603 var1857 (cast-from-var2081-to-var1857 var430!1)) ; Statement: $r86 = (java.lang.Throwable) $r83 
 ; Statement: throw $r86 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyName/1702416975=([org.hibernate.cfg.annotations.SimpleValueBinder], java.lang.String), var1465_debugf/585189783=([org.hibernate.internal.CoreMessageLogger, java.lang.String, java.lang.Object], void), cast-from-String-to-var2599=([java.lang.String], java.lang.Object), attributeConverterDescriptor/1702416975=([org.hibernate.cfg.annotations.SimpleValueBinder], org.hibernate.boot.model.convert.spi.ConverterDescriptor), explicitType/1702416975=([org.hibernate.cfg.annotations.SimpleValueBinder], java.lang.String), var3497_isEmptyAnnotationValue/1929464449=([java.lang.String], boolean), var2081-init=([], org.hibernate.AnnotationException), arr-var2599-init=([], java.lang.Object[]), persistentClassName/1702416975=([org.hibernate.cfg.annotations.SimpleValueBinder], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var2081-to-var1857=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var1957=org.hibernate.cfg.annotations.SimpleValueBinder, var2779=r0, var1465=org.hibernate.internal.CoreMessageLogger, var3472=$r2, var669=$r1, var2599=java.lang.Object, var2650="Starting fillSimpleValue for %s", var3247=org.hibernate.boot.model.convert.spi.ConverterDescriptor, var1855=$r3, var2473=$r57, var3497=org.hibernate.cfg.BinderHelper, var3946=$z5, var2081=org.hibernate.AnnotationException, var430=$r83, var218=$r65, var1597=$r66, var1353=$r67, var622=$r68, var1857=java.lang.Throwable, var3603=$r86}
; {org.hibernate.cfg.annotations.SimpleValueBinder=var1957, r0=var2779, org.hibernate.internal.CoreMessageLogger=var1465, $r2=var3472, $r1=var669, java.lang.Object=var2599, "Starting fillSimpleValue for %s"=var2650, org.hibernate.boot.model.convert.spi.ConverterDescriptor=var3247, $r3=var1855, $r57=var2473, org.hibernate.cfg.BinderHelper=var3497, $z5=var3946, org.hibernate.AnnotationException=var2081, $r83=var430, $r65=var218, $r66=var1597, $r67=var1353, $r68=var622, java.lang.Throwable=var1857, $r86=var3603}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.cfg.annotations.SimpleValueBinder;	$r2 = <org.hibernate.cfg.annotations.SimpleValueBinder: org.hibernate.internal.CoreMessageLogger LOG>;	$r1 = r0.<org.hibernate.cfg.annotations.SimpleValueBinder: java.lang.String propertyName>;	interfaceinvoke $r2.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object)>("Starting fillSimpleValue for %s", $r1);	$r3 = r0.<org.hibernate.cfg.annotations.SimpleValueBinder: org.hibernate.boot.model.convert.spi.ConverterDescriptor attributeConverterDescriptor>;	if $r3 == null goto $r4 = r0.<org.hibernate.cfg.annotations.SimpleValueBinder: java.lang.String explicitType>;	$r57 = r0.<org.hibernate.cfg.annotations.SimpleValueBinder: java.lang.String explicitType>;	$z5 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r57);	if $z5 != 0 goto $r61 = <org.hibernate.cfg.annotations.SimpleValueBinder: org.hibernate.internal.CoreMessageLogger LOG>;	$r83 = new org.hibernate.AnnotationException;	$r65 = newarray (java.lang.Object)[2];	$r66 = r0.<org.hibernate.cfg.annotations.SimpleValueBinder: java.lang.String persistentClassName>;	$r65[0] = $r66;	$r67 = r0.<org.hibernate.cfg.annotations.SimpleValueBinder: java.lang.String propertyName>;	$r65[1] = $r67;	$r68 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("AttributeConverter and explicit Type cannot be applied to same attribute [%s.%s];remove @Type or specify @Convert(disableConversion = true)", $r65);	specialinvoke $r83.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r68);	$r86 = (java.lang.Throwable) $r83;	throw $r86
;block_num 3