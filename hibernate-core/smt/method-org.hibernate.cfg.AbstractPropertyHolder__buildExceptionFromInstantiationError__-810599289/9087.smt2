(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1486 0)
(declare-sort var1379 0)
(declare-sort var3291 0)
(declare-sort var2270 0)
(declare-sort var2541 0)
(declare-sort var1706 0)
(declare-sort var1590 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getConverterClass/867647525 (var1379) ClassObject)
(declare-fun equals/-1650223740 (var2541 var2541) Bool)
(declare-fun cast-from-ClassObject-to-var2541 (ClassObject) var2541)
(declare-fun var1706-init () var1706)
(declare-fun arr-var2541-init () (Array Int var2541))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var2541 (String) var2541)
(declare-fun String_format/1339386452 (String (Array Int var2541)) String)
(declare-fun <init>/-1447874194 (var1706 String var1590) void)
(declare-fun cast-from-var3291-to-var1590 (var3291) var1590)
(declare-const null-var1486 var1486)
(declare-const null-var1379 var1379)
(declare-const null-var3291 var3291)
(declare-const var2270-TYPE ClassObject)
(declare-const null-__Array__Int__var2541__ (Array Int var2541))
(declare-const var1649 var1486) ; Statement: r10 := @this: org.hibernate.cfg.AbstractPropertyHolder 
(assert (not (= var1649 null-var1486)))
(declare-const var3581 var1379) ; Statement: r0 := @parameter0: org.hibernate.cfg.AttributeConversionInfo 
(assert (not (= var3581 null-var1379)))
(declare-const var2918 var3291) ; Statement: r7 := @parameter1: java.lang.Exception 
(assert (not (= var2918 null-var3291)))
(define-const var3828 ClassObject var2270-TYPE) ; Statement: $r1 = <java.lang.Void: java.lang.Class TYPE> 
(assert true)
(define-const var2936 ClassObject (getConverterClass/867647525 var3581)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.cfg.AttributeConversionInfo: java.lang.Class getConverterClass()>() 
(assert true)
(define-const var1302 Bool (equals/-1650223740 (cast-from-ClassObject-to-var2541 var3828) (cast-from-ClassObject-to-var2541 var2936))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Object: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.IllegalStateException 
(assert (= (ite var1302 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1859 var1706 var1706-init) ; Statement: $r3 = new java.lang.IllegalStateException 
(define-const var508 (Array Int var2541) arr-var2541-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var1382 ClassObject (getConverterClass/867647525 var3581)) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.cfg.AttributeConversionInfo: java.lang.Class getConverterClass()>() 
(assert true)
(define-const var1596 String (getName/-1958580599 var1382)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(declare-const var508!1 (Array Int var2541))
(assert (not (= var508!1 null-__Array__Int__var2541__)))
(assert (= (select var508!1 0) (cast-from-String-to-var2541 var1596))) ; Statement: $r4[0] = $r6 
(define-const var2047 String (String_format/1339386452 "Unable to instantiate AttributeConverter [%s]" var508!1)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to instantiate AttributeConverter [%s]", $r4) 
(assert true)
;(assert (<init>/-1447874194 var1859 var2047 (cast-from-var3291-to-var1590 var2918))) ; Statement: specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r8, r7) 

(declare-const var1859!1 var1706)
(declare-const var2047!1 String)
(declare-const var2918!1 var3291)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getConverterClass/867647525=([org.hibernate.cfg.AttributeConversionInfo], java.lang.Class), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-ClassObject-to-var2541=([java.lang.Class], java.lang.Object), var1706-init=([], java.lang.IllegalStateException), arr-var2541-init=([], java.lang.Object[]), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var2541=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void), cast-from-var3291-to-var1590=([java.lang.Exception], java.lang.Throwable)}
; {var1486=org.hibernate.cfg.AbstractPropertyHolder, var1649=r10, var1379=org.hibernate.cfg.AttributeConversionInfo, var3581=r0, var3291=java.lang.Exception, var2918=r7, var2270=java.lang.Void, var3828=$r1, var2936=$r2, var2541=java.lang.Object, var1302=$z0, var1706=java.lang.IllegalStateException, var1859=$r3, var508=$r4, var1382=$r5, var1596=$r6, var2047=$r8, var1590=java.lang.Throwable}
; {org.hibernate.cfg.AbstractPropertyHolder=var1486, r10=var1649, org.hibernate.cfg.AttributeConversionInfo=var1379, r0=var3581, java.lang.Exception=var3291, r7=var2918, java.lang.Void=var2270, $r1=var3828, $r2=var2936, java.lang.Object=var2541, $z0=var1302, java.lang.IllegalStateException=var1706, $r3=var1859, $r4=var508, $r5=var1382, $r6=var1596, $r8=var2047, java.lang.Throwable=var1590}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r10 := @this: org.hibernate.cfg.AbstractPropertyHolder;	r0 := @parameter0: org.hibernate.cfg.AttributeConversionInfo;	r7 := @parameter1: java.lang.Exception;	$r1 = <java.lang.Void: java.lang.Class TYPE>;	$r2 = virtualinvoke r0.<org.hibernate.cfg.AttributeConversionInfo: java.lang.Class getConverterClass()>();	$z0 = virtualinvoke $r1.<java.lang.Object: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r3 = new java.lang.IllegalStateException;	$r3 = new java.lang.IllegalStateException;	$r4 = newarray (java.lang.Object)[1];	$r5 = virtualinvoke r0.<org.hibernate.cfg.AttributeConversionInfo: java.lang.Class getConverterClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r4[0] = $r6;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to instantiate AttributeConverter [%s]", $r4);	specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r8, r7);	return $r3
;block_num 2