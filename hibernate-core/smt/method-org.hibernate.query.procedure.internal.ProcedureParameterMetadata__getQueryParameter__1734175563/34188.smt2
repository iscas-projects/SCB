(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3494 0)
(declare-sort var3594 0)
(declare-sort var1745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasNamedParameters/-1255707197 (var3494) Bool)
(declare-fun var1745-init () var1745)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1745 String) void)
(declare-const null-var3494 var3494)
(declare-const null-String String)
(declare-const var3494-$assertionsDisabled Bool)
(declare-const var423 var3494) ; Statement: r0 := @this: org.hibernate.query.procedure.internal.ProcedureParameterMetadata 
(assert (not (= var423 null-var3494)))
(declare-const var2803 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2803 null-String)))
(define-const var2599 Bool var3494-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.query.procedure.internal.ProcedureParameterMetadata: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r0.<org.hibernate.query.procedure.internal.ProcedureParameterMetadata: boolean hasNamedParameters()>() 
(assert (not (= (ite var2599 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2573 Bool (hasNamedParameters/-1255707197 var423)) ; Statement: $z1 = virtualinvoke r0.<org.hibernate.query.procedure.internal.ProcedureParameterMetadata: boolean hasNamedParameters()>() 
 ; Statement: if $z1 == 0 goto $r1 = new java.lang.IllegalArgumentException 
(assert (= (ite var2573 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2873 var1745 var1745-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var3512 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3512)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3512!1 String)
(assert (= var3512!1 ""))
(assert true)
(define-const var3353 String (append/672562846 var3512!1 "Named parameter [")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Named parameter [") 
(declare-const var3512!2 String)
(assert (= var3512!2 (str.++ var3512!1 "Named parameter [")))
(assert true)
(define-const var973 String (append/672562846 var3353 var2803)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3353!1 String)
(assert (= var3353!1 (str.++ var3353 var2803)))
(assert true)
(define-const var1030 String (append/672562846 var973 "] is not registered with this procedure call")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not registered with this procedure call") 
(declare-const var973!1 String)
(assert (= var973!1 (str.++ var973 "] is not registered with this procedure call")))
(assert true)
(define-const var2952 String (toString/-2075883882 var1030)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2873 var2952)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var2873!1 var1745)
(declare-const var2952!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {hasNamedParameters/-1255707197=([org.hibernate.query.procedure.internal.ProcedureParameterMetadata], boolean), var1745-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3494=org.hibernate.query.procedure.internal.ProcedureParameterMetadata, var423=r0, var2803=r3, var3594=null_type, var2599=$z0, var2573=$z1, var1745=java.lang.IllegalArgumentException, var2873=$r1, var3512=$r2, var3353=$r4, var973=$r5, var1030=$r6, var2952=$r7}
; {org.hibernate.query.procedure.internal.ProcedureParameterMetadata=var3494, r0=var423, r3=var2803, null_type=var3594, $z0=var2599, $z1=var2573, java.lang.IllegalArgumentException=var1745, $r1=var2873, $r2=var3512, $r4=var3353, $r5=var973, $r6=var1030, $r7=var2952}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.procedure.internal.ProcedureParameterMetadata;	r3 := @parameter0: java.lang.String;	$z0 = <org.hibernate.query.procedure.internal.ProcedureParameterMetadata: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = virtualinvoke r0.<org.hibernate.query.procedure.internal.ProcedureParameterMetadata: boolean hasNamedParameters()>();	$z1 = virtualinvoke r0.<org.hibernate.query.procedure.internal.ProcedureParameterMetadata: boolean hasNamedParameters()>();	if $z1 == 0 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Named parameter [");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not registered with this procedure call");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r1
;block_num 3