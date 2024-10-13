(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2811 0)
(declare-sort var2966 0)
(declare-sort var567 0)
(declare-sort var172 0)
(declare-sort var1378 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parameterMetadata/-1176242348 (var2811) var567)
(declare-fun var567_containsReference/1710341324 (var567 var2966) Bool)
(declare-fun var172-init () var172)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1378) String)
(declare-fun cast-from-var2966-to-var1378 (var2966) var1378)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var172 String) void)
(declare-const null-var2811 var2811)
(declare-const null-var2966 var2966)
(declare-const var2811-$assertionsDisabled Bool)
(declare-const var3081 var2811) ; Statement: r0 := @this: org.hibernate.query.internal.QueryParameterBindingsImpl 
(assert (not (= var3081 null-var2811)))
(declare-const var932 var2966) ; Statement: r1 := @parameter0: org.hibernate.query.QueryParameter 
(assert (not (= var932 null-var2966)))
(define-const var3720 Bool var2811-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.query.internal.QueryParameterBindingsImpl: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r2 = r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: org.hibernate.query.ParameterMetadata parameterMetadata> 
(assert (not (= (ite var3720 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3911 var567 (parameterMetadata/-1176242348 var3081)) ; Statement: $r2 = r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: org.hibernate.query.ParameterMetadata parameterMetadata> 
(define-const var3598 Bool (var567_containsReference/1710341324 var3911 var932)) ; Statement: $z1 = interfaceinvoke $r2.<org.hibernate.query.ParameterMetadata: boolean containsReference(org.hibernate.query.QueryParameter)>(r1) 
 ; Statement: if $z1 != 0 goto $r3 = interfaceinvoke r1.<org.hibernate.query.QueryParameter: org.hibernate.type.Type getHibernateType()>() 
(assert (not (not (= (ite var3598 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1544 var172 var172-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var2405 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2405)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2405!1 String)
(assert (= var2405!1 ""))
(assert true)
(define-const var2841 String (append/672562846 var2405!1 "Cannot create binding for parameter reference [")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot create binding for parameter reference [") 
(declare-const var2405!2 String)
(assert (= var2405!2 (str.++ var2405!1 "Cannot create binding for parameter reference [")))
(assert true)
(define-const var1285 String (append/-1031950772 var2841 (cast-from-var2966-to-var1378 var932))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2841!1 String)
(assert (str.prefixof var2841 var2841!1))
(assert true)
(define-const var47 String (append/672562846 var1285 "] - reference is not a parameter of this query")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] - reference is not a parameter of this query") 
(declare-const var1285!1 String)
(assert (= var1285!1 (str.++ var1285 "] - reference is not a parameter of this query")))
(assert true)
(define-const var1503 String (toString/-2075883882 var47)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1544 var1503)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var1544!1 var172)
(declare-const var1503!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {parameterMetadata/-1176242348=([org.hibernate.query.internal.QueryParameterBindingsImpl], org.hibernate.query.ParameterMetadata), var567_containsReference/1710341324=([org.hibernate.query.ParameterMetadata, org.hibernate.query.QueryParameter], boolean), var172-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2966-to-var1378=([org.hibernate.query.QueryParameter], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2811=org.hibernate.query.internal.QueryParameterBindingsImpl, var3081=r0, var2966=org.hibernate.query.QueryParameter, var932=r1, var3720=$z0, var567=org.hibernate.query.ParameterMetadata, var3911=$r2, var3598=$z1, var172=java.lang.IllegalArgumentException, var1544=$r6, var2405=$r7, var2841=$r8, var1378=java.lang.Object, var1285=$r9, var47=$r10, var1503=$r11}
; {org.hibernate.query.internal.QueryParameterBindingsImpl=var2811, r0=var3081, org.hibernate.query.QueryParameter=var2966, r1=var932, $z0=var3720, org.hibernate.query.ParameterMetadata=var567, $r2=var3911, $z1=var3598, java.lang.IllegalArgumentException=var172, $r6=var1544, $r7=var2405, $r8=var2841, java.lang.Object=var1378, $r9=var1285, $r10=var47, $r11=var1503}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.internal.QueryParameterBindingsImpl;	r1 := @parameter0: org.hibernate.query.QueryParameter;	$z0 = <org.hibernate.query.internal.QueryParameterBindingsImpl: boolean $assertionsDisabled>;	if $z0 != 0 goto $r2 = r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: org.hibernate.query.ParameterMetadata parameterMetadata>;	$r2 = r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: org.hibernate.query.ParameterMetadata parameterMetadata>;	$z1 = interfaceinvoke $r2.<org.hibernate.query.ParameterMetadata: boolean containsReference(org.hibernate.query.QueryParameter)>(r1);	if $z1 != 0 goto $r3 = interfaceinvoke r1.<org.hibernate.query.QueryParameter: org.hibernate.type.Type getHibernateType()>();	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot create binding for parameter reference [");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] - reference is not a parameter of this query");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 3