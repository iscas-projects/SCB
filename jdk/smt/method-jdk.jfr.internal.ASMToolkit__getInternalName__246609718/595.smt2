(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var430 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var1940 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1940 null-String)))
(assert true)
(define-const var3614 String (replace/2138489945 var1940 (cast-from-String-to-String ".") (cast-from-String-to-String "/"))) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/") 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1940=r0, var430=null_type, var3614=$r1}
; {r0=var1940, null_type=var430, $r1=var3614}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/");	return $r1
;block_num 1