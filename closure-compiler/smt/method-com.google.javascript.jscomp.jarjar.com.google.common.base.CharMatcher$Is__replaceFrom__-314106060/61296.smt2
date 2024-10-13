(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3685 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun match/-512465757 (var3685) Int)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-var3685 var3685)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2838 var3685) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Is 
(assert (not (= var2838 null-var3685)))
(declare-const var3954 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3954 null-String)))
(declare-const var748 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var748 null-Int)))
(define-const var2731 String (String_toString/-1426662429 var3954)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(define-const var1175 Int (match/-512465757 var2838)) ; Statement: $c1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Is: char match> 
(assert true)
(define-const var264 String (replace/1524665721 var2731 var1175 var748)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>($c1, c0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), match/-512465757=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Is], char), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var3685=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Is, var2838=r1, var3954=r0, var748=c0, var2731=$r2, var1175=$c1, var264=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Is=var3685, r1=var2838, r0=var3954, c0=var748, $r2=var2731, $c1=var1175, $r3=var264}
;seq <java.lang.CharSequence: java.lang.String toString()>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Is;	r0 := @parameter0: java.lang.CharSequence;	c0 := @parameter1: char;	$r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$c1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Is: char match>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>($c1, c0);	return $r3
;block_num 1