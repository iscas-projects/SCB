(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1051 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun <init>/336145381 (var1051 String) void)
(declare-const null-var1051 var1051)
(declare-const null-String String)
(declare-const var2532 var1051) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.joni.Regex 
(assert (not (= var2532 null-var1051)))
(declare-const var1327 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var1327 null-String)))
(define-const var263 String (String_toString/-1426662429 var1327)) ; Statement: $r2 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
;(assert (<init>/336145381 var2532 var263)) ; Statement: specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.joni.Regex: void <init>(java.lang.String)>($r2) 

(declare-const var2532!1 var1051)
(declare-const var263!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), <init>/336145381=([jdk.nashorn.internal.runtime.regexp.joni.Regex, java.lang.String], void)}
; {var1051=jdk.nashorn.internal.runtime.regexp.joni.Regex, var2532=r0, var1327=r1, var263=$r2}
; {jdk.nashorn.internal.runtime.regexp.joni.Regex=var1051, r0=var2532, r1=var1327, $r2=var263}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.joni.Regex;	r1 := @parameter0: java.lang.CharSequence;	$r2 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>();	specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.joni.Regex: void <init>(java.lang.String)>($r2);	return
;block_num 1