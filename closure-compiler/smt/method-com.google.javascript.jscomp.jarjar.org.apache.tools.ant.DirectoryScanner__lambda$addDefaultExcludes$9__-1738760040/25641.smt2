(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2681 0)
(declare-sort var2904 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-String String)
(declare-const var2904-separatorChar Int)
(declare-const var36 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var36 null-String)))
(define-const var2844 Int var2904-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var3656 String (replace/1524665721 var36 47 var2844)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, $c0) 
(define-const var3174 Int var2904-separatorChar) ; Statement: $c1 = <java.io.File: char separatorChar> 
(assert true)
(define-const var3914 String (replace/1524665721 var3656 92 var3174)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(92, $c1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var36=r0, var2681=null_type, var2904=java.io.File, var2844=$c0, var3656=$r1, var3174=$c1, var3914=$r2}
; {r0=var36, null_type=var2681, java.io.File=var2904, $c0=var2844, $r1=var3656, $c1=var3174, $r2=var3914}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$c0 = <java.io.File: char separatorChar>;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, $c0);	$c1 = <java.io.File: char separatorChar>;	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(92, $c1);	return $r2
;block_num 1