(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3577 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun replaceFirst/750800361 (String String String) String)
(declare-const null-String String)
(declare-const var3569 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3569 null-String)))
(assert true)
(define-const var932 String (replace/1524665721 var3569 46 47)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var1433 String (replaceFirst/750800361 var932 "\u005c*$" "**")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("\\*$", "**") 
(assert (= (replaceFirst/750800361 var932 "\u005c*$" "**") (str.replace_re var932 (str.to_re "*$") "**")))
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String), replaceFirst/750800361=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var3569=r0, var3577=null_type, var932=$r1, var1433=$r2}
; {r0=var3569, null_type=var3577, $r1=var932, $r2=var1433}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("\\*$", "**");	return $r2
;block_num 1