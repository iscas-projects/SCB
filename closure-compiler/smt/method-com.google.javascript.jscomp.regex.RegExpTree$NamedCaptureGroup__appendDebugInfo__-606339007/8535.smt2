(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2105 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1833798137 (var2105) String)
(declare-const null-var2105 var2105)
(declare-const null-String String)
(declare-const var81 var2105) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$NamedCaptureGroup 
(assert (not (= var81 null-var2105)))
(declare-const var3737 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3737 null-String)))
(assert true)
(define-const var3799 String (append/672562846 var3737 " name=")) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" name=") 
(declare-const var3737!1 String)
(assert (= var3737!1 (str.++ var3737 " name=")))
(define-const var1228 String (name/1833798137 var81)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$NamedCaptureGroup: java.lang.String name> 
(assert true)
;(assert (append/672562846 var3799 var1228)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3799!1 String)
(assert (= var3799!1 (str.++ var3799 var1228)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/1833798137=([com.google.javascript.jscomp.regex.RegExpTree$NamedCaptureGroup], java.lang.String)}
; {var2105=com.google.javascript.jscomp.regex.RegExpTree$NamedCaptureGroup, var81=r1, var3737=r0, var3799=$r3, var1228=$r2}
; {com.google.javascript.jscomp.regex.RegExpTree$NamedCaptureGroup=var2105, r1=var81, r0=var3737, $r3=var3799, $r2=var1228}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$NamedCaptureGroup;	r0 := @parameter0: java.lang.StringBuilder;	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" name=");	$r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$NamedCaptureGroup: java.lang.String name>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	return
;block_num 1