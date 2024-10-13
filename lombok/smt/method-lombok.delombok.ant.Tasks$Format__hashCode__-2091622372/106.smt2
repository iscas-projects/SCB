(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3361 0)
(declare-sort var3833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/1765519955 (var3361) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3361 var3361)
(declare-const null-String String)
(declare-const var103 var3361) ; Statement: r0 := @this: lombok.delombok.ant.Tasks$Format 
(assert (not (= var103 null-var3361)))
(define-const var3867 String (value/1765519955 var103)) ; Statement: $r1 = r0.<lombok.delombok.ant.Tasks$Format: java.lang.String value> 
 ; Statement: if $r1 != null goto $r2 = r0.<lombok.delombok.ant.Tasks$Format: java.lang.String value> 
(assert (not (= var3867 null-String))) ; Cond: $r1 != null 
(define-const var340 String (value/1765519955 var103)) ; Statement: $r2 = r0.<lombok.delombok.ant.Tasks$Format: java.lang.String value> 
(assert true)
(define-const var1027 Int (hashCode/-467973558 var340)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3955 Int (+ 31 var1027)) ; Statement: $i0 = 31 + $i1 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {value/1765519955=([lombok.delombok.ant.Tasks$Format], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3361=lombok.delombok.ant.Tasks$Format, var103=r0, var3867=$r1, var3833=null_type, var340=$r2, var1027=$i1, var3955=$i0}
; {lombok.delombok.ant.Tasks$Format=var3361, r0=var103, $r1=var3867, null_type=var3833, $r2=var340, $i1=var1027, $i0=var3955}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: lombok.delombok.ant.Tasks$Format;	$r1 = r0.<lombok.delombok.ant.Tasks$Format: java.lang.String value>;	if $r1 != null goto $r2 = r0.<lombok.delombok.ant.Tasks$Format: java.lang.String value>;	$r2 = r0.<lombok.delombok.ant.Tasks$Format: java.lang.String value>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i0 = 31 + $i1;	return $i0
;block_num 3