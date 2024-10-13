(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3215 0)
(declare-sort var3648 0)
(declare-sort var2547 0)
(declare-sort var1757 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3648_checkNotNull/1446102589 (var2547) var2547)
(declare-fun cast-from-String-to-var2547 (String) var2547)
(declare-fun var1757_ascii/-1553303852 () var1757)
(declare-fun matchesAllOf/-1785508994 (var1757 String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3648_checkArgument/1031231112 (Bool String var2547) void)
(declare-const null-String String)
(declare-const var2025 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2025 null-String)))
(declare-const var3604 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3604 null-String)))
;(assert (var3648_checkNotNull/1446102589 (cast-from-String-to-var2547 var3604))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var3604!1 String)
(define-const var199 var1757 var1757_ascii/-1553303852) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher ascii()>() 
(assert true)
(define-const var70 Bool (matchesAllOf/-1785508994 var199 (cast-from-String-to-String var3604!1))) ; Statement: $z0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: boolean matchesAllOf(java.lang.CharSequence)>(r0) 
;(assert (var3648_checkArgument/1031231112 var70 "parameter values must be ASCII: %s" (cast-from-String-to-var2547 var3604!1))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z0, "parameter values must be ASCII: %s", r0) 

(declare-const var70!1 Bool)
(declare-const var3182 String)
(declare-const var3604!2 String)
(define-const var1575 String "charset") ; Statement: $r3 = "charset" 
(assert true)
(define-const var3627 Bool (= var1575 var2025)) ; Statement: $z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z1 == 0 goto $r4 = r0 
(assert (= (ite var3627 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2129 String var3604!2) ; Statement: $r4 = r0 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3648_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var2547=([java.lang.String], java.lang.Object), var1757_ascii/-1553303852=([], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher), matchesAllOf/-1785508994=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3648_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void)}
; {var2025=r2, var3215=null_type, var3604=r0, var3648=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2547=java.lang.Object, var1757=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var199=$r1, var70=$z0, var3182="parameter values must be ASCII: %s", var1575=$r3, var3627=$z1, var2129=$r4}
; {r2=var2025, null_type=var3215, r0=var3604, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3648, java.lang.Object=var2547, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var1757, $r1=var199, $z0=var70, "parameter values must be ASCII: %s"=var3182, $r3=var1575, $z1=var3627, $r4=var2129}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher ascii()>();	$z0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: boolean matchesAllOf(java.lang.CharSequence)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z0, "parameter values must be ASCII: %s", r0);	$r3 = "charset";	$z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z1 == 0 goto $r4 = r0;	$r4 = r0;	return $r4
;block_num 3