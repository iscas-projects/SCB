(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2970 0)
(declare-sort var808 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendReplacement/-326493270 (var2970 String String) var2970)
(declare-fun append/-173174246 (String String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var2970 var2970)
(declare-const null-String String)
(declare-const var1988 var2970) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher 
(assert (not (= var1988 null-var2970)))
(declare-const var1278 String) ; Statement: r3 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1278 null-String)))
(declare-const var2842 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2842 null-String)))
(define-const var1100 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1100)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1100!1 String)
(assert (= var1100!1 ""))
(assert true)
;(assert (appendReplacement/-326493270 var1988 var1100!1 var2842)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher appendReplacement(java.lang.StringBuilder,java.lang.String)>($r0, r2) 

(declare-const var1988!1 var2970)
(declare-const var1100!2 String)
(declare-const var2842!1 String)
(assert true)
;(assert (append/-173174246 var1278 (cast-from-String-to-String var1100!2))) ; Statement: virtualinvoke r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.CharSequence)>($r0) 

(declare-const var1278!1 String)
(declare-const var1100!3 String)
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendReplacement/-326493270=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, java.lang.StringBuilder, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher), append/-173174246=([java.lang.StringBuffer, java.lang.CharSequence], java.lang.StringBuffer), cast-from-String-to-String=([java.lang.StringBuilder], java.lang.CharSequence)}
; {var2970=com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, var1988=r1, var1278=r3, var2842=r2, var808=null_type, var1100=$r0}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher=var2970, r1=var1988, r3=var1278, r2=var2842, null_type=var808, $r0=var1100}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.CharSequence)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.CharSequence)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher;	r3 := @parameter0: java.lang.StringBuffer;	r2 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher appendReplacement(java.lang.StringBuilder,java.lang.String)>($r0, r2);	virtualinvoke r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.CharSequence)>($r0);	return r1
;block_num 1