(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1648 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1648 null-String)))
(assert true)
(define-const var3883 String (replace/1524665721 var1648 92 47)) ; Statement: r4 = virtualinvoke r3.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
(assert true)
(define-const var1057 Int (length/-134980193 var3883)) ; Statement: $i0 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto return r4 
(assert (<= var1057 0)) ; Cond: $i0 <= 0 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1648=r3, var1952=null_type, var3883=r4, var1057=$i0}
; {r3=var1648, null_type=var1952, r4=var3883, $i0=var1057}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.String: int length()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r4 = virtualinvoke r3.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	$i0 = virtualinvoke r4.<java.lang.String: int length()>();	if $i0 <= 0 goto return r4;	return r4
;block_num 2