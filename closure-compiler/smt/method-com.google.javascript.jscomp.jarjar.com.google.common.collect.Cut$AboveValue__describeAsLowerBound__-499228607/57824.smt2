(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var876 0)
(declare-sort var1610 0)
(declare-sort var3756 0)
(declare-sort var566 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun endpoint/-1106376398 (var3756) var1610)
(declare-fun cast-from-var876-to-var3756 (var876) var3756)
(declare-fun append/-1031950772 (String var566) String)
(declare-fun cast-from-var1610-to-var566 (var1610) var566)
(declare-const null-var876 var876)
(declare-const null-String String)
(declare-const var558 var876) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue 
(assert (not (= var558 null-var876)))
(declare-const var2896 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2896 null-String)))
(assert true)
(define-const var1611 String (append/-1166366385 var2896 40)) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var2896!1 String)
(assert (str.prefixof var2896 var2896!1))
(define-const var2869 var1610 (endpoint/-1106376398 (cast-from-var876-to-var3756 var558))) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue: java.lang.Comparable endpoint> 
(assert true)
;(assert (append/-1031950772 var1611 (cast-from-var1610-to-var566 var2869))) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1611!1 String)
(assert (str.prefixof var1611 var1611!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), endpoint/-1106376398=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut], java.lang.Comparable), cast-from-var876-to-var3756=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue], com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1610-to-var566=([java.lang.Comparable], java.lang.Object)}
; {var876=com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue, var558=r1, var2896=r0, var1611=$r3, var1610=java.lang.Comparable, var3756=com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut, var2869=$r2, var566=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue=var876, r1=var558, r0=var2896, $r3=var1611, java.lang.Comparable=var1610, com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut=var3756, $r2=var2869, java.lang.Object=var566}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue;	r0 := @parameter0: java.lang.StringBuilder;	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveValue: java.lang.Comparable endpoint>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	return
;block_num 1