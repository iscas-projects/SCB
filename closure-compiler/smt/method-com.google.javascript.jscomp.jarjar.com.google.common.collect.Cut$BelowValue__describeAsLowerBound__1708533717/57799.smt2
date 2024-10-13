(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2955 0)
(declare-sort var3035 0)
(declare-sort var3136 0)
(declare-sort var3060 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun endpoint/-1106376398 (var3136) var3035)
(declare-fun cast-from-var2955-to-var3136 (var2955) var3136)
(declare-fun append/-1031950772 (String var3060) String)
(declare-fun cast-from-var3035-to-var3060 (var3035) var3060)
(declare-const null-var2955 var2955)
(declare-const null-String String)
(declare-const var1298 var2955) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue 
(assert (not (= var1298 null-var2955)))
(declare-const var2870 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2870 null-String)))
(assert true)
(define-const var2840 String (append/-1166366385 var2870 91)) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2870!1 String)
(assert (str.prefixof var2870 var2870!1))
(define-const var619 var3035 (endpoint/-1106376398 (cast-from-var2955-to-var3136 var1298))) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue: java.lang.Comparable endpoint> 
(assert true)
;(assert (append/-1031950772 var2840 (cast-from-var3035-to-var3060 var619))) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2840!1 String)
(assert (str.prefixof var2840 var2840!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), endpoint/-1106376398=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut], java.lang.Comparable), cast-from-var2955-to-var3136=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue], com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3035-to-var3060=([java.lang.Comparable], java.lang.Object)}
; {var2955=com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue, var1298=r1, var2870=r0, var2840=$r3, var3035=java.lang.Comparable, var3136=com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut, var619=$r2, var3060=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue=var2955, r1=var1298, r0=var2870, $r3=var2840, java.lang.Comparable=var3035, com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut=var3136, $r2=var619, java.lang.Object=var3060}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue;	r0 := @parameter0: java.lang.StringBuilder;	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowValue: java.lang.Comparable endpoint>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	return
;block_num 1