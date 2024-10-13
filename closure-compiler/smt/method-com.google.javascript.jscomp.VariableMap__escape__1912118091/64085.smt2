(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3383 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var2310 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2310 null-String)))
(assert true)
(define-const var1810 String (replace/2138489945 var2310 (cast-from-String-to-String "\u005c") (cast-from-String-to-String "\u005c\u005c"))) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\\", "\\\\") 
(assert true)
(define-const var984 String (replace/2138489945 var1810 (cast-from-String-to-String ":") (cast-from-String-to-String "\u005c:"))) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(":", "\\:") 
(assert true)
(define-const var141 String (replace/2138489945 var984 (cast-from-String-to-String "\n") (cast-from-String-to-String "\u005cn"))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\n", "\\n") 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2310=r0, var3383=null_type, var1810=$r1, var984=$r2, var141=$r3}
; {r0=var2310, null_type=var3383, $r1=var1810, $r2=var984, $r3=var141}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 3}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\\", "\\\\");	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(":", "\\:");	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\n", "\\n");	return $r3
;block_num 1