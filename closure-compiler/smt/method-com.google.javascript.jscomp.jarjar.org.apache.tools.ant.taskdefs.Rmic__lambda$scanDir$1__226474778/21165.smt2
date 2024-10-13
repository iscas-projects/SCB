(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var587 0)
(declare-sort var2904 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-String String)
(declare-const var2904-separatorChar Int)
(declare-const var1772 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1772 null-String)))
(define-const var3608 Int var2904-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var2593 String (replace/1524665721 var1772 var3608 46)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>($c0, 46) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var1772=r0, var587=null_type, var2904=java.io.File, var3608=$c0, var2593=$r1}
; {r0=var1772, null_type=var587, java.io.File=var2904, $c0=var3608, $r1=var2593}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$c0 = <java.io.File: char separatorChar>;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>($c0, 46);	return $r1
;block_num 1