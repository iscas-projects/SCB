(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3885 0)
(declare-sort var857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var857_isNotBlank/-1148504278 (String) Bool)
(declare-const null-String String)
(declare-const var3752 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3752 null-String)))
(define-const var1884 Bool (var857_isNotBlank/-1148504278 var3752)) ; Statement: $z0 = staticinvoke <org.junit.platform.commons.util.StringUtils: boolean isNotBlank(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r4 = "" 
(assert (= (ite var1884 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1814 String "") ; Statement: $r4 = "" 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var857_isNotBlank/-1148504278=([java.lang.String], boolean)}
; {var3752=r0, var3885=null_type, var857=org.junit.platform.commons.util.StringUtils, var1884=$z0, var1814=$r4}
; {r0=var3752, null_type=var3885, org.junit.platform.commons.util.StringUtils=var857, $z0=var1884, $r4=var1814}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <org.junit.platform.commons.util.StringUtils: boolean isNotBlank(java.lang.String)>(r0);	if $z0 == 0 goto $r4 = "";	$r4 = "";	return $r4
;block_num 3