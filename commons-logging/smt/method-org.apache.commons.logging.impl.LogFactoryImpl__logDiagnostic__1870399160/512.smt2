(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2693 0)
(declare-sort var2659 0)
(declare-sort var2263 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2693_isDiagnosticsEnabled/-1107982053 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun diagnosticPrefix/1199358121 (var2693) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2263_logRawDiagnostic/1793942598 (String) void)
(declare-const null-var2693 var2693)
(declare-const null-String String)
(declare-const var1340 var2693) ; Statement: r1 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var1340 null-var2693)))
(declare-const var3385 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3385 null-String)))
(define-const var3788 Bool var2693_isDiagnosticsEnabled/-1107982053) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var3788 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2546 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2546)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2546!1 String)
(assert (= var2546!1 ""))
(define-const var548 String (diagnosticPrefix/1199358121 var1340)) ; Statement: $r2 = r1.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String diagnosticPrefix> 
(assert true)
(define-const var2154 String (append/672562846 var2546!1 var548)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2546!2 String)
(assert (= var2546!2 (str.++ var2546!1 var548)))
(assert true)
(define-const var1639 String (append/672562846 var2154 var3385)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2154!1 String)
(assert (= var2154!1 (str.++ var2154 var3385)))
(assert true)
(define-const var2397 String (toString/-2075883882 var1639)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2263_logRawDiagnostic/1793942598 var2397)) ; Statement: staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: void logRawDiagnostic(java.lang.String)>($r6) 

(declare-const var2397!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2693_isDiagnosticsEnabled/-1107982053=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), diagnosticPrefix/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2263_logRawDiagnostic/1793942598=([java.lang.String], void)}
; {var2693=org.apache.commons.logging.impl.LogFactoryImpl, var1340=r1, var3385=r3, var2659=null_type, var3788=$z0, var2546=$r0, var548=$r2, var2154=$r4, var1639=$r5, var2397=$r6, var2263=org.apache.commons.logging.LogFactory}
; {org.apache.commons.logging.impl.LogFactoryImpl=var2693, r1=var1340, r3=var3385, null_type=var2659, $z0=var3788, $r0=var2546, $r2=var548, $r4=var2154, $r5=var1639, $r6=var2397, org.apache.commons.logging.LogFactory=var2263}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r3 := @parameter0: java.lang.String;	$z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto return;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String diagnosticPrefix>;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: void logRawDiagnostic(java.lang.String)>($r6);	return
;block_num 3