(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3804 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var56 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var56 null-String)))
(assert true)
(define-const var854 String (replace/2138489945 var56 (cast-from-String-to-String "\u005c") (cast-from-String-to-String "\u005c\u005c"))) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\\", "\\\\") 
(assert true)
(define-const var1028 String (replace/2138489945 var854 (cast-from-String-to-String "\u0022") (cast-from-String-to-String "\u005c\u0022"))) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\"", "\\\"") 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var56=r0, var3804=null_type, var854=$r1, var1028=$r2}
; {r0=var56, null_type=var3804, $r1=var854, $r2=var1028}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\\", "\\\\");	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\"", "\\\"");	return $r2
;block_num 1