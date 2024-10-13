(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2094 0)
(declare-sort var1059 0)
(declare-sort var147 0)
(declare-sort var1695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun endpoint/-1106376398 (var147) var1059)
(declare-fun cast-from-var2094-to-var147 (var2094) var147)
(declare-fun append/-1031950772 (String var1695) String)
(declare-fun cast-from-var1059-to-var1695 (var1059) var1695)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var2094 var2094)
(declare-const null-String String)
(declare-const var932 var2094) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue 
(assert (not (= var932 null-var2094)))
(declare-const var2902 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2902 null-String)))
(define-const var878 var1059 (endpoint/-1106376398 (cast-from-var2094-to-var147 var932))) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue: java.lang.Comparable endpoint> 
(assert true)
(define-const var1766 String (append/-1031950772 var2902 (cast-from-var1059-to-var1695 var878))) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2902!1 String)
(assert (str.prefixof var2902 var2902!1))
(assert true)
;(assert (append/-1166366385 var1766 41)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1766!1 String)
(assert (str.prefixof var1766 var1766!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {endpoint/-1106376398=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut], java.lang.Comparable), cast-from-var2094-to-var147=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue], com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1059-to-var1695=([java.lang.Comparable], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var2094=com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue, var932=r1, var2902=r0, var1059=java.lang.Comparable, var147=com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut, var878=$r2, var1695=java.lang.Object, var1766=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue=var2094, r1=var932, r0=var2902, java.lang.Comparable=var1059, com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut=var147, $r2=var878, java.lang.Object=var1695, $r3=var1766}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue;	r0 := @parameter0: java.lang.StringBuilder;	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue: java.lang.Comparable endpoint>;	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 1