(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2698 0)
(declare-sort var3819 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-const null-String String)
(declare-const var3819-separatorChar Int)
(declare-const var371 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var371 null-String)))
(define-const var1048 Int var3819-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var3594 String (replace/1524665721 var371 var1048 47)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>($c0, 47) 
(assert true)
(define-const var3898 (Array Int String) (split/-636890950 var3594 "/")) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>("/") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3594 "/") i) (re.++ (re.* re.all) (str.to_re "/") (re.* re.all))))))
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[])}
; {var371=r0, var2698=null_type, var3819=java.io.File, var1048=$c0, var3594=r1, var3898=$r2}
; {r0=var371, null_type=var2698, java.io.File=var3819, $c0=var1048, r1=var3594, $r2=var3898}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$c0 = <java.io.File: char separatorChar>;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>($c0, 47);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>("/");	return $r2
;block_num 1