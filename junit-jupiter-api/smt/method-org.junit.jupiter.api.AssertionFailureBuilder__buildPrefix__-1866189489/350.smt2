(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var70 0)
(declare-sort var3835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3835_isNotBlank/-1148504278 (String) Bool)
(declare-const null-String String)
(declare-const var3974 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3974 null-String)))
(define-const var3453 Bool (var3835_isNotBlank/-1148504278 var3974)) ; Statement: $z0 = staticinvoke <org.junit.platform.commons.util.StringUtils: boolean isNotBlank(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r4 = "" 
(assert (= (ite var3453 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3620 String "") ; Statement: $r4 = "" 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3835_isNotBlank/-1148504278=([java.lang.String], boolean)}
; {var3974=r0, var70=null_type, var3835=org.junit.platform.commons.util.StringUtils, var3453=$z0, var3620=$r4}
; {r0=var3974, null_type=var70, org.junit.platform.commons.util.StringUtils=var3835, $z0=var3453, $r4=var3620}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <org.junit.platform.commons.util.StringUtils: boolean isNotBlank(java.lang.String)>(r0);	if $z0 == 0 goto $r4 = "";	$r4 = "";	return $r4
;block_num 3