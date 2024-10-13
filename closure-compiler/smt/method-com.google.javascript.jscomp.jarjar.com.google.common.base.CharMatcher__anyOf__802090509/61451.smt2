(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3538 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var3538-init () var3538)
(declare-fun <init>/840005398 (var3538 String) void)
(declare-const null-String String)
(declare-const var2473 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2473 null-String)))
(define-const var1341 Int (String_length/-667254855 var2473)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: tableswitch($i0) {     case 0: goto $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher none()>();     case 1: goto $c3 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);     case 2: goto $c2 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);     default: goto $r4 = new com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf; } 
(assert (and (not (= var1341 2)) (and (not (= var1341 1)) (and (not (= var1341 0)) true)))) ; Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Intersect: Negate: Cond: $i0 == 0   and Non Conditional   
(define-const var933 var3538 var3538-init) ; Statement: $r4 = new com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf 
(assert true)
;(assert (<init>/840005398 var933 var2473)) ; Statement: specialinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf: void <init>(java.lang.CharSequence)>(r0) 

(declare-const var933!1 var3538)
(declare-const var2473!1 String)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var3538-init=([], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf), <init>/840005398=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf, java.lang.CharSequence], void)}
; {var2473=r0, var1341=$i0, var3538=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf, var933=$r4}
; {r0=var2473, $i0=var1341, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf=var3538, $r4=var933}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	tableswitch($i0) {     case 0: goto $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher none()>();     case 1: goto $c3 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);     case 2: goto $c2 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);     default: goto $r4 = new com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf; };	$r4 = new com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf;	specialinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf: void <init>(java.lang.CharSequence)>(r0);	return $r4
;block_num 2