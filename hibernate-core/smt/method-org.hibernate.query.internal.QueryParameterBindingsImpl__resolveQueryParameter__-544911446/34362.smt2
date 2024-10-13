(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2896 0)
(declare-sort var936 0)
(declare-sort var1869 0)
(declare-sort var2992 0)
(declare-sort var1761 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parameterMetadata/-1176242348 (var2896) var1869)
(declare-fun var1869_getQueryParameter/286389064 (var1869 String) var2992)
(declare-fun var1761-init () var1761)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1761 String) void)
(declare-const null-var2896 var2896)
(declare-const null-String String)
(declare-const null-var2992 var2992)
(declare-const var240 var2896) ; Statement: r0 := @this: org.hibernate.query.internal.QueryParameterBindingsImpl 
(assert (not (= var240 null-var2896)))
(declare-const var658 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var658 null-String)))
(define-const var2234 var1869 (parameterMetadata/-1176242348 var240)) ; Statement: $r2 = r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: org.hibernate.query.ParameterMetadata parameterMetadata> 
(define-const var2859 var2992 (var1869_getQueryParameter/286389064 var2234 var658)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.query.ParameterMetadata: org.hibernate.query.QueryParameter getQueryParameter(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var2859 null-var2992)))) ; Negate: Cond: r3 != null  
(define-const var450 var1761 var1761-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var319 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var319)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var319!1 String)
(assert (= var319!1 ""))
(assert true)
(define-const var1922 String (append/672562846 var319!1 "Unable to resolve given parameter name [")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve given parameter name [") 
(declare-const var319!2 String)
(assert (= var319!2 (str.++ var319!1 "Unable to resolve given parameter name [")))
(assert true)
(define-const var2760 String (append/672562846 var1922 var658)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1922!1 String)
(assert (= var1922!1 (str.++ var1922 var658)))
(assert true)
(define-const var492 String (append/672562846 var2760 "] to QueryParameter reference")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] to QueryParameter reference") 
(declare-const var2760!1 String)
(assert (= var2760!1 (str.++ var2760 "] to QueryParameter reference")))
(assert true)
(define-const var23 String (toString/-2075883882 var492)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var450 var23)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var450!1 var1761)
(declare-const var23!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {parameterMetadata/-1176242348=([org.hibernate.query.internal.QueryParameterBindingsImpl], org.hibernate.query.ParameterMetadata), var1869_getQueryParameter/286389064=([org.hibernate.query.ParameterMetadata, java.lang.String], org.hibernate.query.QueryParameter), var1761-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2896=org.hibernate.query.internal.QueryParameterBindingsImpl, var240=r0, var658=r1, var936=null_type, var1869=org.hibernate.query.ParameterMetadata, var2234=$r2, var2992=org.hibernate.query.QueryParameter, var2859=r3, var1761=java.lang.IllegalArgumentException, var450=$r4, var319=$r5, var1922=$r6, var2760=$r7, var492=$r8, var23=$r9}
; {org.hibernate.query.internal.QueryParameterBindingsImpl=var2896, r0=var240, r1=var658, null_type=var936, org.hibernate.query.ParameterMetadata=var1869, $r2=var2234, org.hibernate.query.QueryParameter=var2992, r3=var2859, java.lang.IllegalArgumentException=var1761, $r4=var450, $r5=var319, $r6=var1922, $r7=var2760, $r8=var492, $r9=var23}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.internal.QueryParameterBindingsImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.query.internal.QueryParameterBindingsImpl: org.hibernate.query.ParameterMetadata parameterMetadata>;	r3 = interfaceinvoke $r2.<org.hibernate.query.ParameterMetadata: org.hibernate.query.QueryParameter getQueryParameter(java.lang.String)>(r1);	if r3 != null goto return r3;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve given parameter name [");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] to QueryParameter reference");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2