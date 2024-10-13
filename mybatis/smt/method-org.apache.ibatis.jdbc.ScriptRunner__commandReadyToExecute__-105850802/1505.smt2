(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1128 0)
(declare-sort var1342 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fullLineDelimiter/-1637780756 (var1128) Bool)
(declare-fun delimiter/-1637780756 (var1128) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var1128 var1128)
(declare-const null-String String)
(declare-const var2846 var1128) ; Statement: r0 := @this: org.apache.ibatis.jdbc.ScriptRunner 
(assert (not (= var2846 null-var1128)))
(declare-const var2453 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2453 null-String)))
(define-const var1698 Bool (fullLineDelimiter/-1637780756 var2846)) ; Statement: $z0 = r0.<org.apache.ibatis.jdbc.ScriptRunner: boolean fullLineDelimiter> 
 ; Statement: if $z0 != 0 goto $z1 = r0.<org.apache.ibatis.jdbc.ScriptRunner: boolean fullLineDelimiter> 
(assert (not (not (= (ite var1698 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3460 String (delimiter/-1637780756 var2846)) ; Statement: $r3 = r0.<org.apache.ibatis.jdbc.ScriptRunner: java.lang.String delimiter> 
(assert true)
(define-const var2162 Bool (contains/1009244746 var2453 (cast-from-String-to-String var3460))) ; Statement: $z3 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>($r3) 
 ; Statement: if $z3 != 0 goto $z4 = 1 
(assert (not (= (ite var2162 1 0) 0))) ; Cond: $z3 != 0 
(define-const var3226 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= return $z4] 
(assert true) ; Non Conditional
 ; Statement: return $z4 
(check-sat)
(get-model)
(get-unsat-core)
; {fullLineDelimiter/-1637780756=([org.apache.ibatis.jdbc.ScriptRunner], boolean), delimiter/-1637780756=([org.apache.ibatis.jdbc.ScriptRunner], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1128=org.apache.ibatis.jdbc.ScriptRunner, var2846=r0, var2453=r1, var1342=null_type, var1698=$z0, var3460=$r3, var2162=$z3, var3226=$z4}
; {org.apache.ibatis.jdbc.ScriptRunner=var1128, r0=var2846, r1=var2453, null_type=var1342, $z0=var1698, $r3=var3460, $z3=var2162, $z4=var3226}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: org.apache.ibatis.jdbc.ScriptRunner;	r1 := @parameter0: java.lang.String;	$z0 = r0.<org.apache.ibatis.jdbc.ScriptRunner: boolean fullLineDelimiter>;	if $z0 != 0 goto $z1 = r0.<org.apache.ibatis.jdbc.ScriptRunner: boolean fullLineDelimiter>;	$r3 = r0.<org.apache.ibatis.jdbc.ScriptRunner: java.lang.String delimiter>;	$z3 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>($r3);	if $z3 != 0 goto $z4 = 1;	$z4 = 1;	goto [?= return $z4];	return $z4
;block_num 4