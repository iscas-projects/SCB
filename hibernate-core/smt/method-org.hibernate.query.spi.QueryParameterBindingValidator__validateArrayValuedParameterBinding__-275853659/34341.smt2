(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1202 0)
(declare-sort var2018 0)
(declare-sort var2046 0)
(declare-sort var1333 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isArray/1369458484 (ClassObject) Bool)
(declare-fun var1333-init () var1333)
(declare-fun arr-var2018-init () (Array Int var2018))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var2018 (String) var2018)
(declare-fun extractName/1073463665 (var1202 var2046) String)
(declare-fun String_format/1339386452 (String (Array Int var2018)) String)
(declare-fun <init>/875830710 (var1333 String) void)
(declare-const null-var1202 var1202)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2018 var2018)
(declare-const null-var2046 var2046)
(declare-const null-__Array__Int__var2018__ (Array Int var2018))
(declare-const var3728 var1202) ; Statement: r11 := @this: org.hibernate.query.spi.QueryParameterBindingValidator 
(assert (not (= var3728 null-var1202)))
(declare-const var1889 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1889 null-ClassObject)))
(declare-const var1128 var2018) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var1128 null-var2018)))
(declare-const var2405 var2046) ; Statement: r6 := @parameter2: javax.persistence.TemporalType 
(assert (not (= var2405 null-var2046)))
(assert true)
(define-const var3498 Bool (isArray/1369458484 var1889)) ; Statement: $z0 = virtualinvoke r0.<java.lang.Class: boolean isArray()>() 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (not (= (ite var3498 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var506 var1333 var1333-init) ; Statement: $r25 = new java.lang.IllegalArgumentException 
(define-const var1184 (Array Int var2018) arr-var2018-init) ; Statement: $r26 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var8 String (getName/-1958580599 var1889)) ; Statement: $r27 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1184!1 (Array Int var2018))
(assert (not (= var1184!1 null-__Array__Int__var2018__)))
(assert (= (select var1184!1 0) (cast-from-String-to-var2018 var8))) ; Statement: $r26[0] = $r27 
(assert true)
(define-const var75 String (extractName/1073463665 var3728 var2405)) ; Statement: $r28 = specialinvoke r11.<org.hibernate.query.spi.QueryParameterBindingValidator: java.lang.String extractName(javax.persistence.TemporalType)>(r6) 
(declare-const var1184!2 (Array Int var2018))
(assert (not (= var1184!2 null-__Array__Int__var2018__)))
(assert (= (select var1184!2 1) (cast-from-String-to-var2018 var75))) ; Statement: $r26[1] = $r28 
(define-const var1490 String (String_format/1339386452 "Encountered array-valued parameter binding, but was expecting [%s (%s)]" var1184!2)) ; Statement: $r29 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Encountered array-valued parameter binding, but was expecting [%s (%s)]", $r26) 
(assert true)
;(assert (<init>/875830710 var506 var1490)) ; Statement: specialinvoke $r25.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r29) 

(declare-const var506!1 var1333)
(declare-const var1490!1 String)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {isArray/1369458484=([java.lang.Class], boolean), var1333-init=([], java.lang.IllegalArgumentException), arr-var2018-init=([], java.lang.Object[]), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var2018=([java.lang.String], java.lang.Object), extractName/1073463665=([org.hibernate.query.spi.QueryParameterBindingValidator, javax.persistence.TemporalType], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1202=org.hibernate.query.spi.QueryParameterBindingValidator, var3728=r11, var1889=r0, var2018=java.lang.Object, var1128=r1, var2046=javax.persistence.TemporalType, var2405=r6, var3498=$z0, var1333=java.lang.IllegalArgumentException, var506=$r25, var1184=$r26, var8=$r27, var75=$r28, var1490=$r29}
; {org.hibernate.query.spi.QueryParameterBindingValidator=var1202, r11=var3728, r0=var1889, java.lang.Object=var2018, r1=var1128, javax.persistence.TemporalType=var2046, r6=var2405, $z0=var3498, java.lang.IllegalArgumentException=var1333, $r25=var506, $r26=var1184, $r27=var8, $r28=var75, $r29=var1490}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r11 := @this: org.hibernate.query.spi.QueryParameterBindingValidator;	r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.Object;	r6 := @parameter2: javax.persistence.TemporalType;	$z0 = virtualinvoke r0.<java.lang.Class: boolean isArray()>();	if $z0 != 0 goto $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r25 = new java.lang.IllegalArgumentException;	$r26 = newarray (java.lang.Object)[2];	$r27 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r26[0] = $r27;	$r28 = specialinvoke r11.<org.hibernate.query.spi.QueryParameterBindingValidator: java.lang.String extractName(javax.persistence.TemporalType)>(r6);	$r26[1] = $r28;	$r29 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Encountered array-valued parameter binding, but was expecting [%s (%s)]", $r26);	specialinvoke $r25.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r29);	throw $r25
;block_num 2