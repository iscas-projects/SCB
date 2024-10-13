(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var2907 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2907 null-String)))
(declare-const var2650 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2650 null-String)))
(declare-const var3404 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3404 null-String)))
(assert true)
(define-const var1163 String (replace/2138489945 var2907 (cast-from-String-to-String var2650) (cast-from-String-to-String var3404))) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(r1, r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2907=r0, var2221=null_type, var2650=r1, var3404=r2, var1163=$r3}
; {r0=var2907, null_type=var2221, r1=var2650, r2=var3404, $r3=var1163}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(r1, r2);	return $r3
;block_num 1