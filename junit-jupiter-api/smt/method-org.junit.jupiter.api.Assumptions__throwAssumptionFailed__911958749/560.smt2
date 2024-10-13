(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3943 0)
(declare-sort var541 0)
(declare-sort var600 0)
(declare-sort var878 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var541-init () var541)
(declare-fun var600_isNotBlank/-1148504278 (String) Bool)
(declare-fun <init>/1758919186 (var541 String) void)
(declare-fun cast-from-var541-to-var878 (var541) var878)
(declare-const null-String String)
(declare-const var1978 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1978 null-String)))
(define-const var934 var541 var541-init) ; Statement: $r7 = new org.opentest4j.TestAbortedException 
(define-const var2478 Bool (var600_isNotBlank/-1148504278 var1978)) ; Statement: $z0 = staticinvoke <org.junit.platform.commons.util.StringUtils: boolean isNotBlank(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto $r5 = "Assumption failed" 
(assert (= (ite var2478 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2641 String "Assumption failed") ; Statement: $r5 = "Assumption failed" 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/1758919186 var934 var2641)) ; Statement: specialinvoke $r7.<org.opentest4j.TestAbortedException: void <init>(java.lang.String)>($r5) 

(declare-const var934!1 var541)
(declare-const var2641!1 String)
(define-const var1485 var878 (cast-from-var541-to-var878 var934!1)) ; Statement: $r8 = (java.lang.Throwable) $r7 
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var541-init=([], org.opentest4j.TestAbortedException), var600_isNotBlank/-1148504278=([java.lang.String], boolean), <init>/1758919186=([org.opentest4j.TestAbortedException, java.lang.String], void), cast-from-var541-to-var878=([org.opentest4j.TestAbortedException], java.lang.Throwable)}
; {var1978=r1, var3943=null_type, var541=org.opentest4j.TestAbortedException, var934=$r7, var600=org.junit.platform.commons.util.StringUtils, var2478=$z0, var2641=$r5, var878=java.lang.Throwable, var1485=$r8}
; {r1=var1978, null_type=var3943, org.opentest4j.TestAbortedException=var541, $r7=var934, org.junit.platform.commons.util.StringUtils=var600, $z0=var2478, $r5=var2641, java.lang.Throwable=var878, $r8=var1485}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.lang.String;	$r7 = new org.opentest4j.TestAbortedException;	$z0 = staticinvoke <org.junit.platform.commons.util.StringUtils: boolean isNotBlank(java.lang.String)>(r1);	if $z0 == 0 goto $r5 = "Assumption failed";	$r5 = "Assumption failed";	specialinvoke $r7.<org.opentest4j.TestAbortedException: void <init>(java.lang.String)>($r5);	$r8 = (java.lang.Throwable) $r7;	throw $r8
;block_num 3