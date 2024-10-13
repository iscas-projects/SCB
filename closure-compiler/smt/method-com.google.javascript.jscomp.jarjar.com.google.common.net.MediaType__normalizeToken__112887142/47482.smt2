(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2714 0)
(declare-sort var2521 0)
(declare-sort var2800 0)
(declare-sort var468 0)
(declare-sort var3562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matchesAllOf/-1785508994 (var2521 String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var468_checkArgument/1735511034 (Bool) void)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var3562_toLowerCase/1634554405 (String) String)
(declare-const null-String String)
(declare-const var2800-TOKEN_MATCHER var2521)
(declare-const var3366 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3366 null-String)))
(define-const var2317 var2521 var2800-TOKEN_MATCHER) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher TOKEN_MATCHER> 
(assert true)
(define-const var3672 Bool (matchesAllOf/-1785508994 var2317 (cast-from-String-to-String var3366))) ; Statement: $z0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: boolean matchesAllOf(java.lang.CharSequence)>(r0) 
;(assert (var468_checkArgument/1735511034 var3672)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0) 

(declare-const var3672!1 Bool)
(assert true)
(define-const var3102 Bool (isEmpty/-1285796103 var3366)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $z2 = 0 
(assert (not (= (ite var3102 1 0) 0))) ; Cond: $z1 != 0 
(define-const var585 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
;(assert (var468_checkArgument/1735511034 var585)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z2) 

(declare-const var585!1 Bool)
(define-const var376 String (var3562_toLowerCase/1634554405 var3366)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String toLowerCase(java.lang.String)>(r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {matchesAllOf/-1785508994=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var468_checkArgument/1735511034=([boolean], void), isEmpty/-1285796103=([java.lang.String], boolean), var3562_toLowerCase/1634554405=([java.lang.String], java.lang.String)}
; {var3366=r0, var2714=null_type, var2521=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var2800=com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType, var2317=$r1, var3672=$z0, var468=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3102=$z1, var585=$z2, var3562=com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii, var376=$r2}
; {r0=var3366, null_type=var2714, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var2521, com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType=var2800, $r1=var2317, $z0=var3672, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var468, $z1=var3102, $z2=var585, com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii=var3562, $r2=var376}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher TOKEN_MATCHER>;	$z0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: boolean matchesAllOf(java.lang.CharSequence)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0);	$z1 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto $z2 = 0;	$z2 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z2);	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String toLowerCase(java.lang.String)>(r0);	return $r2
;block_num 3