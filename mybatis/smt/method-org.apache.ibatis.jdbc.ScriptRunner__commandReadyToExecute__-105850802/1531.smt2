(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var489 0)
(declare-sort var1226 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fullLineDelimiter/-1637780756 (var489) Bool)
(declare-const null-var489 var489)
(declare-const null-String String)
(declare-const var1541 var489) ; Statement: r0 := @this: org.apache.ibatis.jdbc.ScriptRunner 
(assert (not (= var1541 null-var489)))
(declare-const var937 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var937 null-String)))
(define-const var3122 Bool (fullLineDelimiter/-1637780756 var1541)) ; Statement: $z0 = r0.<org.apache.ibatis.jdbc.ScriptRunner: boolean fullLineDelimiter> 
 ; Statement: if $z0 != 0 goto $z1 = r0.<org.apache.ibatis.jdbc.ScriptRunner: boolean fullLineDelimiter> 
(assert (not (= (ite var3122 1 0) 0))) ; Cond: $z0 != 0 
(define-const var843 Bool (fullLineDelimiter/-1637780756 var1541)) ; Statement: $z1 = r0.<org.apache.ibatis.jdbc.ScriptRunner: boolean fullLineDelimiter> 
 ; Statement: if $z1 == 0 goto $z4 = 0 
(assert (= (ite var843 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1123 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z4 
(check-sat)
(get-model)
(get-unsat-core)
; {fullLineDelimiter/-1637780756=([org.apache.ibatis.jdbc.ScriptRunner], boolean)}
; {var489=org.apache.ibatis.jdbc.ScriptRunner, var1541=r0, var937=r1, var1226=null_type, var3122=$z0, var843=$z1, var1123=$z4}
; {org.apache.ibatis.jdbc.ScriptRunner=var489, r0=var1541, r1=var937, null_type=var1226, $z0=var3122, $z1=var843, $z4=var1123}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.jdbc.ScriptRunner;	r1 := @parameter0: java.lang.String;	$z0 = r0.<org.apache.ibatis.jdbc.ScriptRunner: boolean fullLineDelimiter>;	if $z0 != 0 goto $z1 = r0.<org.apache.ibatis.jdbc.ScriptRunner: boolean fullLineDelimiter>;	$z1 = r0.<org.apache.ibatis.jdbc.ScriptRunner: boolean fullLineDelimiter>;	if $z1 == 0 goto $z4 = 0;	$z4 = 0;	return $z4
;block_num 4