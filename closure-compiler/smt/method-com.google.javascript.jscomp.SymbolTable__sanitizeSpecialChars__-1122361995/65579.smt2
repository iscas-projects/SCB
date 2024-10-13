(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var122 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var1787 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1787 null-String)))
(assert true)
(define-const var2443 String (replace/2138489945 var1787 (cast-from-String-to-String "\u005c") (cast-from-String-to-String "\u005c\u005c"))) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\\", "\\\\") 
(assert true)
(define-const var2143 String (replace/2138489945 var2443 (cast-from-String-to-String "\u0000") (cast-from-String-to-String "\u005c0"))) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\u0000", "\\0") 
(assert true)
(define-const var81 String (replace/2138489945 var2143 (cast-from-String-to-String "\n") (cast-from-String-to-String "\u005cn"))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\n", "\\n") 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1787=r0, var122=null_type, var2443=$r1, var2143=$r2, var81=$r3}
; {r0=var1787, null_type=var122, $r1=var2443, $r2=var2143, $r3=var81}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 3}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\\", "\\\\");	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\u0000", "\\0");	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\n", "\\n");	return $r3
;block_num 1