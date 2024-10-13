(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1099 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun String_charAt/1466887330 (String Int) Int)
(declare-fun var1099_is/818413921 (Int) var1099)
(declare-const null-String String)
(declare-const var1900 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1900 null-String)))
(define-const var1373 Int (String_length/-667254855 var1900)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: tableswitch($i0) {     case 0: goto $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher none()>();     case 1: goto $c3 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);     case 2: goto $c2 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);     default: goto $r4 = new com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf; } 
(assert (and (= var1373 1) (and (not (= var1373 0)) true))) ; Intersect: Cond: $i0 == 1  and Intersect: Negate: Cond: $i0 == 0   and Non Conditional  
(define-const var1204 Int (String_charAt/1466887330 var1900 0)) ; Statement: $c3 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0) 
(define-const var3524 var1099 (var1099_is/818413921 var1204)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher is(char)>($c3) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), String_charAt/1466887330=([java.lang.CharSequence, int], char), var1099_is/818413921=([char], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher)}
; {var1900=r0, var1373=$i0, var1204=$c3, var1099=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var3524=$r2}
; {r0=var1900, $i0=var1373, $c3=var1204, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var1099, $r2=var3524}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: char charAt(int)>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.CharSequence: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	tableswitch($i0) {     case 0: goto $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher none()>();     case 1: goto $c3 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);     case 2: goto $c2 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);     default: goto $r4 = new com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf; };	$c3 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher is(char)>($c3);	return $r2
;block_num 2