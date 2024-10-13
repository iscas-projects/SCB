(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2709 0)
(declare-sort var1321 0)
(declare-sort var3785 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1321-init () (Array Int var1321))
(declare-fun getClass/1258963082 (var1321) ClassObject)
(declare-fun cast-from-var2709-to-var1321 (var2709) var1321)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var1321 (String) var1321)
(declare-fun attributeConverter/-1672506457 (var2709) var3785)
(declare-fun cast-from-var3785-to-var1321 (var3785) var1321)
(declare-fun entityAttributeType/-1672506457 (var2709) ClassObject)
(declare-fun databaseColumnType/-1672506457 (var2709) ClassObject)
(declare-fun String_format/1339386452 (String (Array Int var1321)) String)
(declare-const null-var2709 var2709)
(declare-const null-__Array__Int__var1321__ (Array Int var1321))
(declare-const var654 var2709) ; Statement: r1 := @this: org.hibernate.cfg.AttributeConverterDefinition 
(assert (not (= var654 null-var2709)))
(define-const var1407 (Array Int var1321) arr-var1321-init) ; Statement: $r0 = newarray (java.lang.Object)[4] 
(assert true)
(define-const var1332 ClassObject (getClass/1258963082 (cast-from-var2709-to-var1321 var654))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var719 String (getName/-1958580599 var1332)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1407!1 (Array Int var1321))
(assert (not (= var1407!1 null-__Array__Int__var1321__)))
(assert (= (select var1407!1 0) (cast-from-String-to-var1321 var719))) ; Statement: $r0[0] = $r3 
(define-const var1600 var3785 (attributeConverter/-1672506457 var654)) ; Statement: $r4 = r1.<org.hibernate.cfg.AttributeConverterDefinition: javax.persistence.AttributeConverter attributeConverter> 
(assert true)
(define-const var2802 ClassObject (getClass/1258963082 (cast-from-var3785-to-var1321 var1600))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var238 String (getName/-1958580599 var2802)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1407!2 (Array Int var1321))
(assert (not (= var1407!2 null-__Array__Int__var1321__)))
(assert (= (select var1407!2 1) (cast-from-String-to-var1321 var238))) ; Statement: $r0[1] = $r6 
(define-const var1078 ClassObject (entityAttributeType/-1672506457 var654)) ; Statement: $r7 = r1.<org.hibernate.cfg.AttributeConverterDefinition: java.lang.Class entityAttributeType> 
(assert true)
(define-const var2204 String (getName/-1958580599 var1078)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1407!3 (Array Int var1321))
(assert (not (= var1407!3 null-__Array__Int__var1321__)))
(assert (= (select var1407!3 2) (cast-from-String-to-var1321 var2204))) ; Statement: $r0[2] = $r8 
(define-const var2583 ClassObject (databaseColumnType/-1672506457 var654)) ; Statement: $r9 = r1.<org.hibernate.cfg.AttributeConverterDefinition: java.lang.Class databaseColumnType> 
(assert true)
(define-const var665 String (getName/-1958580599 var2583)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1407!4 (Array Int var1321))
(assert (not (= var1407!4 null-__Array__Int__var1321__)))
(assert (= (select var1407!4 3) (cast-from-String-to-var1321 var665))) ; Statement: $r0[3] = $r10 
(define-const var3768 String (String_format/1339386452 "%s[converterClass=%s, domainType=%s, jdbcType=%s]" var1407!4)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s[converterClass=%s, domainType=%s, jdbcType=%s]", $r0) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1321-init=([], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2709-to-var1321=([org.hibernate.cfg.AttributeConverterDefinition], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var1321=([java.lang.String], java.lang.Object), attributeConverter/-1672506457=([org.hibernate.cfg.AttributeConverterDefinition], javax.persistence.AttributeConverter), cast-from-var3785-to-var1321=([javax.persistence.AttributeConverter], java.lang.Object), entityAttributeType/-1672506457=([org.hibernate.cfg.AttributeConverterDefinition], java.lang.Class), databaseColumnType/-1672506457=([org.hibernate.cfg.AttributeConverterDefinition], java.lang.Class), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2709=org.hibernate.cfg.AttributeConverterDefinition, var654=r1, var1321=java.lang.Object, var1407=$r0, var1332=$r2, var719=$r3, var3785=javax.persistence.AttributeConverter, var1600=$r4, var2802=$r5, var238=$r6, var1078=$r7, var2204=$r8, var2583=$r9, var665=$r10, var3768=$r11}
; {org.hibernate.cfg.AttributeConverterDefinition=var2709, r1=var654, java.lang.Object=var1321, $r0=var1407, $r2=var1332, $r3=var719, javax.persistence.AttributeConverter=var3785, $r4=var1600, $r5=var2802, $r6=var238, $r7=var1078, $r8=var2204, $r9=var2583, $r10=var665, $r11=var3768}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.cfg.AttributeConverterDefinition;	$r0 = newarray (java.lang.Object)[4];	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r0[0] = $r3;	$r4 = r1.<org.hibernate.cfg.AttributeConverterDefinition: javax.persistence.AttributeConverter attributeConverter>;	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r0[1] = $r6;	$r7 = r1.<org.hibernate.cfg.AttributeConverterDefinition: java.lang.Class entityAttributeType>;	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r0[2] = $r8;	$r9 = r1.<org.hibernate.cfg.AttributeConverterDefinition: java.lang.Class databaseColumnType>;	$r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getName()>();	$r0[3] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s[converterClass=%s, domainType=%s, jdbcType=%s]", $r0);	return $r11
;block_num 1