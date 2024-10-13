(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun builder/-878163304 (var3357) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun indentation/-878163304 (var3357) String)
(declare-const null-var3357 var3357)
(declare-const var2722 var3357) ; Statement: r0 := @this: com.google.javascript.rhino.jstype.TypeStringBuilder 
(assert (not (= var2722 null-var3357)))
(define-const var3350 String (builder/-878163304 var2722)) ; Statement: $r1 = r0.<com.google.javascript.rhino.jstype.TypeStringBuilder: java.lang.StringBuilder builder> 
(assert true)
(define-const var159 String (append/672562846 var3350 "\n")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var3350!1 String)
(assert (= var3350!1 (str.++ var3350 "\n")))
(define-const var3356 String (indentation/-878163304 var2722)) ; Statement: $r2 = r0.<com.google.javascript.rhino.jstype.TypeStringBuilder: java.lang.String indentation> 
(assert true)
;(assert (append/672562846 var159 var3356)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var159!1 String)
(assert (= var159!1 (str.++ var159 var3356)))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {builder/-878163304=([com.google.javascript.rhino.jstype.TypeStringBuilder], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), indentation/-878163304=([com.google.javascript.rhino.jstype.TypeStringBuilder], java.lang.String)}
; {var3357=com.google.javascript.rhino.jstype.TypeStringBuilder, var2722=r0, var3350=$r1, var159=$r3, var3356=$r2}
; {com.google.javascript.rhino.jstype.TypeStringBuilder=var3357, r0=var2722, $r1=var3350, $r3=var159, $r2=var3356}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: com.google.javascript.rhino.jstype.TypeStringBuilder;	$r1 = r0.<com.google.javascript.rhino.jstype.TypeStringBuilder: java.lang.StringBuilder builder>;	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r2 = r0.<com.google.javascript.rhino.jstype.TypeStringBuilder: java.lang.String indentation>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	return r0
;block_num 1