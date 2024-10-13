(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1890 0)
(declare-sort var3697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/1090915316 (var1890) String)
(declare-const var1890-TRUE var1890)
(declare-const var3697-JAVA_AWT_HEADLESS String)
(define-const var1712 var1890 var1890-TRUE) ; Statement: $r0 = <java.lang.Boolean: java.lang.Boolean TRUE> 
(assert true)
(define-const var2858 String (toString/1090915316 var1712)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.Boolean: java.lang.String toString()>() 
(define-const var537 String var3697-JAVA_AWT_HEADLESS) ; Statement: $r1 = <org.apache.commons.lang3.SystemUtils: java.lang.String JAVA_AWT_HEADLESS> 
(assert true)
(define-const var669 Bool (= var2858 var537)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/1090915316=([java.lang.Boolean], java.lang.String)}
; {var1890=java.lang.Boolean, var1712=$r0, var2858=$r2, var3697=org.apache.commons.lang3.SystemUtils, var537=$r1, var669=$z0}
; {java.lang.Boolean=var1890, $r0=var1712, $r2=var2858, org.apache.commons.lang3.SystemUtils=var3697, $r1=var537, $z0=var669}
;seq <java.lang.Boolean: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = <java.lang.Boolean: java.lang.Boolean TRUE>;	$r2 = virtualinvoke $r0.<java.lang.Boolean: java.lang.String toString()>();	$r1 = <org.apache.commons.lang3.SystemUtils: java.lang.String JAVA_AWT_HEADLESS>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	return $z0
;block_num 1