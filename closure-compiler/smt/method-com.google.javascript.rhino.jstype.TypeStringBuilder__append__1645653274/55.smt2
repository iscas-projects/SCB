(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3772 0)
(declare-sort var310 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun builder/-878163304 (var3772) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3772 var3772)
(declare-const null-String String)
(declare-const var1061 var3772) ; Statement: r0 := @this: com.google.javascript.rhino.jstype.TypeStringBuilder 
(assert (not (= var1061 null-var3772)))
(declare-const var1277 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1277 null-String)))
(define-const var3403 String (builder/-878163304 var1061)) ; Statement: $r2 = r0.<com.google.javascript.rhino.jstype.TypeStringBuilder: java.lang.StringBuilder builder> 
(assert true)
;(assert (append/672562846 var3403 var1277)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3403!1 String)
(assert (= var3403!1 (str.++ var3403 var1277)))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {builder/-878163304=([com.google.javascript.rhino.jstype.TypeStringBuilder], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3772=com.google.javascript.rhino.jstype.TypeStringBuilder, var1061=r0, var1277=r1, var310=null_type, var3403=$r2}
; {com.google.javascript.rhino.jstype.TypeStringBuilder=var3772, r0=var1061, r1=var1277, null_type=var310, $r2=var3403}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.rhino.jstype.TypeStringBuilder;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.rhino.jstype.TypeStringBuilder: java.lang.StringBuilder builder>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	return r0
;block_num 1