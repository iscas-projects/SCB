(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var844 0)
(declare-sort var2831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun toLowerCase/1946809429 (String var2831) String)
(declare-const null-String String)
(declare-const var2831-ROOT var2831)
(declare-const var790 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var790 null-String)))
(assert true)
(define-const var3418 String (replace/1524665721 var790 46 95)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
(define-const var1982 var2831 var2831-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2909 String (toLowerCase/1946809429 var3418 var1982)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var790=r0, var844=null_type, var3418=$r2, var2831=java.util.Locale, var1982=$r1, var2909=$r3}
; {r0=var790, null_type=var844, $r2=var3418, java.util.Locale=var2831, $r1=var1982, $r3=var2909}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	return $r3
;block_num 1