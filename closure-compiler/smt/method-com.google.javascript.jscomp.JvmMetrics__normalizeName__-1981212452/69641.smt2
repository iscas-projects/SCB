(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3862 0)
(declare-sort var1759 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun toLowerCase/1946809429 (String var1759) String)
(declare-const null-String String)
(declare-const var1759-ROOT var1759)
(declare-const var994 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var994 null-String)))
(assert true)
(define-const var2483 String (replace/1524665721 var994 32 95)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(32, 95) 
(define-const var2740 var1759 var1759-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var682 String (toLowerCase/1946809429 var2483 var2740)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var994=r0, var3862=null_type, var2483=$r2, var1759=java.util.Locale, var2740=$r1, var682=$r3}
; {r0=var994, null_type=var3862, $r2=var2483, java.util.Locale=var1759, $r1=var2740, $r3=var682}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(32, 95);	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	return $r3
;block_num 1