(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2495 0)
(declare-sort var2675 0)
(declare-sort var148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasPositionalParameters/-479799082 (var2495) Bool)
(declare-fun var2675-init () var2675)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var148) String)
(declare-fun cast-from-Int-to-var148 (Int) var148)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2675 String) void)
(declare-const null-var2495 var2495)
(declare-const null-Int Int)
(declare-const var2495-$assertionsDisabled Bool)
(declare-const var417 var2495) ; Statement: r0 := @this: org.hibernate.query.procedure.internal.ProcedureParameterMetadata 
(assert (not (= var417 null-var2495)))
(declare-const var2309 Int) ; Statement: r3 := @parameter0: java.lang.Integer 
(assert (not (= var2309 null-Int)))
(define-const var2297 Bool var2495-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.query.procedure.internal.ProcedureParameterMetadata: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r0.<org.hibernate.query.procedure.internal.ProcedureParameterMetadata: boolean hasPositionalParameters()>() 
(assert (not (= (ite var2297 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3372 Bool (hasPositionalParameters/-479799082 var417)) ; Statement: $z1 = virtualinvoke r0.<org.hibernate.query.procedure.internal.ProcedureParameterMetadata: boolean hasPositionalParameters()>() 
 ; Statement: if $z1 == 0 goto $r1 = new java.lang.IllegalArgumentException 
(assert (= (ite var3372 1 0) 0)) ; Cond: $z1 == 0 
(define-const var137 var2675 var2675-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var2798 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2798)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2798!1 String)
(assert (= var2798!1 ""))
(assert true)
(define-const var2373 String (append/672562846 var2798!1 "Positional parameter [")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Positional parameter [") 
(declare-const var2798!2 String)
(assert (= var2798!2 (str.++ var2798!1 "Positional parameter [")))
(assert true)
(define-const var1619 String (append/-1031950772 var2373 (cast-from-Int-to-var148 var2309))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var2373!1 String)
(assert (str.prefixof var2373 var2373!1))
(assert true)
(define-const var3781 String (append/672562846 var1619 "] is not registered with this procedure call")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not registered with this procedure call") 
(declare-const var1619!1 String)
(assert (= var1619!1 (str.++ var1619 "] is not registered with this procedure call")))
(assert true)
(define-const var1250 String (toString/-2075883882 var3781)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var137 var1250)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var137!1 var2675)
(declare-const var1250!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {hasPositionalParameters/-479799082=([org.hibernate.query.procedure.internal.ProcedureParameterMetadata], boolean), var2675-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-Int-to-var148=([java.lang.Integer], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2495=org.hibernate.query.procedure.internal.ProcedureParameterMetadata, var417=r0, var2309=r3, var2297=$z0, var3372=$z1, var2675=java.lang.IllegalArgumentException, var137=$r1, var2798=$r2, var2373=$r4, var148=java.lang.Object, var1619=$r5, var3781=$r6, var1250=$r7}
; {org.hibernate.query.procedure.internal.ProcedureParameterMetadata=var2495, r0=var417, r3=var2309, $z0=var2297, $z1=var3372, java.lang.IllegalArgumentException=var2675, $r1=var137, $r2=var2798, $r4=var2373, java.lang.Object=var148, $r5=var1619, $r6=var3781, $r7=var1250}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.procedure.internal.ProcedureParameterMetadata;	r3 := @parameter0: java.lang.Integer;	$z0 = <org.hibernate.query.procedure.internal.ProcedureParameterMetadata: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = virtualinvoke r0.<org.hibernate.query.procedure.internal.ProcedureParameterMetadata: boolean hasPositionalParameters()>();	$z1 = virtualinvoke r0.<org.hibernate.query.procedure.internal.ProcedureParameterMetadata: boolean hasPositionalParameters()>();	if $z1 == 0 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Positional parameter [");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not registered with this procedure call");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r1
;block_num 3