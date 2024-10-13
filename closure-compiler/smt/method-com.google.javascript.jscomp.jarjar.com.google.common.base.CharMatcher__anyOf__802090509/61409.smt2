(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1303 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var1303_none/-1640547395 () var1303)
(declare-const null-String String)
(declare-const var1061 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1061 null-String)))
(define-const var701 Int (String_length/-667254855 var1061)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: tableswitch($i0) {     case 0: goto $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher none()>();     case 1: goto $c3 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);     case 2: goto $c2 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);     default: goto $r4 = new com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf; } 
(assert (and (= var701 0) true)) ; Intersect: Cond: $i0 == 0  and Non Conditional 
(define-const var3891 var1303 var1303_none/-1640547395) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher none()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var1303_none/-1640547395=([], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher)}
; {var1061=r0, var701=$i0, var1303=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var3891=$r3}
; {r0=var1061, $i0=var701, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var1303, $r3=var3891}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	tableswitch($i0) {     case 0: goto $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher none()>();     case 1: goto $c3 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);     case 2: goto $c2 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);     default: goto $r4 = new com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf; };	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher none()>();	return $r3
;block_num 2