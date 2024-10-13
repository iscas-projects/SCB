(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3696 0)
(declare-sort var3504 0)
(declare-sort var3333 0)
(declare-sort var2267 0)
(declare-sort var1388 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matchesAllOf/-1785508994 (var3504 String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2267_checkArgument/1735511034 (Bool) void)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1388_toLowerCase/1634554405 (String) String)
(declare-const null-String String)
(declare-const var3333-TOKEN_MATCHER var3504)
(declare-const var1957 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1957 null-String)))
(define-const var3777 var3504 var3333-TOKEN_MATCHER) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher TOKEN_MATCHER> 
(assert true)
(define-const var2167 Bool (matchesAllOf/-1785508994 var3777 (cast-from-String-to-String var1957))) ; Statement: $z0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: boolean matchesAllOf(java.lang.CharSequence)>(r0) 
;(assert (var2267_checkArgument/1735511034 var2167)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0) 

(declare-const var2167!1 Bool)
(assert true)
(define-const var3627 Bool (isEmpty/-1285796103 var1957)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $z2 = 0 
(assert (not (not (= (ite var3627 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var532 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z2)] 
(assert true) ; Non Conditional
;(assert (var2267_checkArgument/1735511034 var532)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z2) 

(declare-const var532!1 Bool)
(define-const var315 String (var1388_toLowerCase/1634554405 var1957)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String toLowerCase(java.lang.String)>(r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {matchesAllOf/-1785508994=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2267_checkArgument/1735511034=([boolean], void), isEmpty/-1285796103=([java.lang.String], boolean), var1388_toLowerCase/1634554405=([java.lang.String], java.lang.String)}
; {var1957=r0, var3696=null_type, var3504=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var3333=com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType, var3777=$r1, var2167=$z0, var2267=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3627=$z1, var532=$z2, var1388=com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii, var315=$r2}
; {r0=var1957, null_type=var3696, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var3504, com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType=var3333, $r1=var3777, $z0=var2167, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2267, $z1=var3627, $z2=var532, com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii=var1388, $r2=var315}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher TOKEN_MATCHER>;	$z0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: boolean matchesAllOf(java.lang.CharSequence)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0);	$z1 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto $z2 = 0;	$z2 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z2)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z2);	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String toLowerCase(java.lang.String)>(r0);	return $r2
;block_num 3