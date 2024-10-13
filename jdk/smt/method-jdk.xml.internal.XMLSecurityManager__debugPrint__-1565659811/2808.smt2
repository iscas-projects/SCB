(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3483 0)
(declare-sort var145 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun printEntityCountInfo/1709287763 (var3483) String)
(declare-const null-var3483 var3483)
(declare-const null-var145 var145)
(declare-const var3888 var3483) ; Statement: r0 := @this: jdk.xml.internal.XMLSecurityManager 
(assert (not (= var3888 null-var3483)))
(declare-const var2736 var145) ; Statement: r2 := @parameter0: jdk.xml.internal.XMLLimitAnalyzer 
(assert (not (= var2736 null-var145)))
(define-const var195 String (printEntityCountInfo/1709287763 var3888)) ; Statement: $r1 = r0.<jdk.xml.internal.XMLSecurityManager: java.lang.String printEntityCountInfo> 
(assert true)
(define-const var2287 Bool (= var195 "yes")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("yes") 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2287 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {printEntityCountInfo/1709287763=([jdk.xml.internal.XMLSecurityManager], java.lang.String)}
; {var3483=jdk.xml.internal.XMLSecurityManager, var3888=r0, var145=jdk.xml.internal.XMLLimitAnalyzer, var2736=r2, var195=$r1, var2287=$z0}
; {jdk.xml.internal.XMLSecurityManager=var3483, r0=var3888, jdk.xml.internal.XMLLimitAnalyzer=var145, r2=var2736, $r1=var195, $z0=var2287}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.xml.internal.XMLSecurityManager;	r2 := @parameter0: jdk.xml.internal.XMLLimitAnalyzer;	$r1 = r0.<jdk.xml.internal.XMLSecurityManager: java.lang.String printEntityCountInfo>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("yes");	if $z0 == 0 goto return;	return
;block_num 2