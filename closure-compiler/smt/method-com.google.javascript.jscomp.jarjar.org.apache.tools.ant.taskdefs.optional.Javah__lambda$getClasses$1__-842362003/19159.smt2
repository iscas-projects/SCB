(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1203 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun replaceFirst/750800361 (String String String) String)
(declare-const null-String String)
(declare-const var1903 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1903 null-String)))
(assert true)
(define-const var1634 String (replace/1524665721 var1903 92 46)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(92, 46) 
(assert true)
(define-const var2518 String (replace/1524665721 var1634 47 46)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(assert true)
(define-const var2406 String (replaceFirst/750800361 var2518 "\u005c.class$" "")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("\\.class$", "") 
(assert (= (replaceFirst/750800361 var2518 "\u005c.class$" "") (str.replace_re var2518 (str.to_re ".class$") "")))
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String), replaceFirst/750800361=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var1903=r0, var1203=null_type, var1634=$r1, var2518=$r2, var2406=$r3}
; {r0=var1903, null_type=var1203, $r1=var1634, $r2=var2518, $r3=var2406}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 2,"<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(92, 46);	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("\\.class$", "");	return $r3
;block_num 1