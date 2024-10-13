(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2128 0)
(declare-sort var2859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun lineIsComment/1063150063 (var2128 String) Bool)
(declare-fun commandReadyToExecute/-105850802 (var2128 String) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2128 var2128)
(declare-const null-String String)
(declare-const var3454 var2128) ; Statement: r2 := @this: org.apache.ibatis.jdbc.ScriptRunner 
(assert (not (= var3454 null-var2128)))
(declare-const var241 String) ; Statement: r3 := @parameter0: java.lang.StringBuilder 
(assert (not (= var241 null-String)))
(declare-const var3088 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3088 null-String)))
(assert true)
(define-const var3890 String (trim/-847153721 var3088)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3171 Bool (lineIsComment/1063150063 var3454 var3890)) ; Statement: $z0 = specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: boolean lineIsComment(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: boolean commandReadyToExecute(java.lang.String)>(r1) 
(assert (= (ite var3171 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2507 Bool (commandReadyToExecute/-105850802 var3454 var3890)) ; Statement: $z1 = specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: boolean commandReadyToExecute(java.lang.String)>(r1) 
 ; Statement: if $z1 == 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (= (ite var2507 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3250 Int (length/-134980193 var3890)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto return 
(assert (<= var3250 0)) ; Cond: $i0 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), lineIsComment/1063150063=([org.apache.ibatis.jdbc.ScriptRunner, java.lang.String], boolean), commandReadyToExecute/-105850802=([org.apache.ibatis.jdbc.ScriptRunner, java.lang.String], boolean), length/-134980193=([java.lang.String], int)}
; {var2128=org.apache.ibatis.jdbc.ScriptRunner, var3454=r2, var241=r3, var3088=r0, var2859=null_type, var3890=r1, var3171=$z0, var2507=$z1, var3250=$i0}
; {org.apache.ibatis.jdbc.ScriptRunner=var2128, r2=var3454, r3=var241, r0=var3088, null_type=var2859, r1=var3890, $z0=var3171, $z1=var2507, $i0=var3250}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int length()>": 1}
;stmts r2 := @this: org.apache.ibatis.jdbc.ScriptRunner;	r3 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$z0 = specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: boolean lineIsComment(java.lang.String)>(r1);	if $z0 == 0 goto $z1 = specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: boolean commandReadyToExecute(java.lang.String)>(r1);	$z1 = specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: boolean commandReadyToExecute(java.lang.String)>(r1);	if $z1 == 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i0 <= 0 goto return;	return
;block_num 4