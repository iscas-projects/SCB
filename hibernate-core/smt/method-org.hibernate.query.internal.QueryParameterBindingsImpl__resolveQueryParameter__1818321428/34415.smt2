(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1281 0)
(declare-sort var3308 0)
(declare-sort var1123 0)
(declare-sort var2366 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parameterMetadata/-1176242348 (var1281) var3308)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var3308_getQueryParameter/969910513 (var3308 Int) var1123)
(declare-fun var2366-init () var2366)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2366 String) void)
(declare-const null-var1281 var1281)
(declare-const null-Int Int)
(declare-const null-var1123 var1123)
(declare-const var1270 var1281) ; Statement: r0 := @this: org.hibernate.query.internal.QueryParameterBindingsImpl 
(assert (not (= var1270 null-var1281)))
(declare-const var1721 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1721 null-Int)))
(define-const var1039 var3308 (parameterMetadata/-1176242348 var1270)) ; Statement: $r1 = r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: org.hibernate.query.ParameterMetadata parameterMetadata> 
(define-const var3560 Int (Int_valueOf/-1371140006 var1721)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var3733 var1123 (var3308_getQueryParameter/969910513 var1039 var3560)) ; Statement: r3 = interfaceinvoke $r1.<org.hibernate.query.ParameterMetadata: org.hibernate.query.QueryParameter getQueryParameter(java.lang.Integer)>($r2) 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var3733 null-var1123)))) ; Negate: Cond: r3 != null  
(define-const var2631 var2366 var2366-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var2598 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2598)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2598!1 String)
(assert (= var2598!1 ""))
(assert true)
(define-const var1656 String (append/672562846 var2598!1 "Unable to resolve given parameter name [")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve given parameter name [") 
(declare-const var2598!2 String)
(assert (= var2598!2 (str.++ var2598!1 "Unable to resolve given parameter name [")))
(assert true)
(define-const var3790 String (append/-1001720160 var1656 var1721)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1656!1 String)
(assert (str.prefixof var1656 var1656!1))
(assert true)
(define-const var3209 String (append/672562846 var3790 "] to QueryParameter reference")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] to QueryParameter reference") 
(declare-const var3790!1 String)
(assert (= var3790!1 (str.++ var3790 "] to QueryParameter reference")))
(assert true)
(define-const var3654 String (toString/-2075883882 var3209)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2631 var3654)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var2631!1 var2366)
(declare-const var3654!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {parameterMetadata/-1176242348=([org.hibernate.query.internal.QueryParameterBindingsImpl], org.hibernate.query.ParameterMetadata), Int_valueOf/-1371140006=([int], java.lang.Integer), var3308_getQueryParameter/969910513=([org.hibernate.query.ParameterMetadata, java.lang.Integer], org.hibernate.query.QueryParameter), var2366-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1281=org.hibernate.query.internal.QueryParameterBindingsImpl, var1270=r0, var1721=i0, var3308=org.hibernate.query.ParameterMetadata, var1039=$r1, var3560=$r2, var1123=org.hibernate.query.QueryParameter, var3733=r3, var2366=java.lang.IllegalArgumentException, var2631=$r4, var2598=$r5, var1656=$r6, var3790=$r7, var3209=$r8, var3654=$r9}
; {org.hibernate.query.internal.QueryParameterBindingsImpl=var1281, r0=var1270, i0=var1721, org.hibernate.query.ParameterMetadata=var3308, $r1=var1039, $r2=var3560, org.hibernate.query.QueryParameter=var1123, r3=var3733, java.lang.IllegalArgumentException=var2366, $r4=var2631, $r5=var2598, $r6=var1656, $r7=var3790, $r8=var3209, $r9=var3654}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.internal.QueryParameterBindingsImpl;	i0 := @parameter0: int;	$r1 = r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: org.hibernate.query.ParameterMetadata parameterMetadata>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	r3 = interfaceinvoke $r1.<org.hibernate.query.ParameterMetadata: org.hibernate.query.QueryParameter getQueryParameter(java.lang.Integer)>($r2);	if r3 != null goto return r3;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve given parameter name [");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] to QueryParameter reference");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2