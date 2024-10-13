(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2725 0)
(declare-sort var1382 0)
(declare-sort var2990 0)
(declare-sort var3078 0)
(declare-sort var2337 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1382_checkNotNull/1446102589 (var2990) var2990)
(declare-fun cast-from-String-to-var2990 (String) var2990)
(declare-fun var3078_ascii/-1553303852 () var3078)
(declare-fun matchesAllOf/-1785508994 (var3078 String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1382_checkArgument/1031231112 (Bool String var2990) void)
(declare-fun var2337_toLowerCase/1634554405 (String) String)
(declare-const null-String String)
(declare-const var973 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var973 null-String)))
(declare-const var3389 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3389 null-String)))
;(assert (var1382_checkNotNull/1446102589 (cast-from-String-to-var2990 var3389))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var3389!1 String)
(define-const var234 var3078 var3078_ascii/-1553303852) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher ascii()>() 
(assert true)
(define-const var272 Bool (matchesAllOf/-1785508994 var234 (cast-from-String-to-String var3389!1))) ; Statement: $z0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: boolean matchesAllOf(java.lang.CharSequence)>(r0) 
;(assert (var1382_checkArgument/1031231112 var272 "parameter values must be ASCII: %s" (cast-from-String-to-var2990 var3389!1))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z0, "parameter values must be ASCII: %s", r0) 

(declare-const var272!1 Bool)
(declare-const var681 String)
(declare-const var3389!2 String)
(define-const var909 String "charset") ; Statement: $r3 = "charset" 
(assert true)
(define-const var1839 Bool (= var909 var973)) ; Statement: $z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z1 == 0 goto $r4 = r0 
(assert (not (= (ite var1839 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3097 String (var2337_toLowerCase/1634554405 var3389!2)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String toLowerCase(java.lang.String)>(r0) 
 ; Statement: goto [?= return $r4] 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1382_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var2990=([java.lang.String], java.lang.Object), var3078_ascii/-1553303852=([], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher), matchesAllOf/-1785508994=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1382_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), var2337_toLowerCase/1634554405=([java.lang.String], java.lang.String)}
; {var973=r2, var2725=null_type, var3389=r0, var1382=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2990=java.lang.Object, var3078=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var234=$r1, var272=$z0, var681="parameter values must be ASCII: %s", var909=$r3, var1839=$z1, var2337=com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii, var3097=$r4}
; {r2=var973, null_type=var2725, r0=var3389, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1382, java.lang.Object=var2990, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var3078, $r1=var234, $z0=var272, "parameter values must be ASCII: %s"=var681, $r3=var909, $z1=var1839, com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii=var2337, $r4=var3097}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher ascii()>();	$z0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: boolean matchesAllOf(java.lang.CharSequence)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z0, "parameter values must be ASCII: %s", r0);	$r3 = "charset";	$z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z1 == 0 goto $r4 = r0;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String toLowerCase(java.lang.String)>(r0);	goto [?= return $r4];	return $r4
;block_num 3