(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1028 0)
(declare-sort var3954 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun String_charAt/1466887330 (String Int) Int)
(declare-fun var3954_isEither/-1370298131 (Int Int) var1028)
(declare-const null-String String)
(declare-const var52 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var52 null-String)))
(define-const var3494 Int (String_length/-667254855 var52)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: tableswitch($i0) {     case 0: goto $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher none()>();     case 1: goto $c3 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);     case 2: goto $c2 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);     default: goto $r4 = new com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf; } 
(assert (and (= var3494 2) (and (not (= var3494 1)) (and (not (= var3494 0)) true)))) ; Intersect: Cond: $i0 == 2  and Intersect: Negate: Cond: $i0 == 1   and Intersect: Negate: Cond: $i0 == 0   and Non Conditional   
(define-const var1094 Int (String_charAt/1466887330 var52 0)) ; Statement: $c2 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0) 
(define-const var973 Int (String_charAt/1466887330 var52 1)) ; Statement: $c1 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(1) 
(define-const var3098 var1028 (var3954_isEither/-1370298131 var1094 var973)) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsEither isEither(char,char)>($c2, $c1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), String_charAt/1466887330=([java.lang.CharSequence, int], char), var3954_isEither/-1370298131=([char, char], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsEither)}
; {var52=r0, var3494=$i0, var1094=$c2, var973=$c1, var1028=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsEither, var3954=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var3098=$r1}
; {r0=var52, $i0=var3494, $c2=var1094, $c1=var973, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsEither=var1028, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var3954, $r1=var3098}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: char charAt(int)>;	<java.lang.CharSequence: char charAt(int)>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.CharSequence: char charAt(int)>": 2}
;stmts r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	tableswitch($i0) {     case 0: goto $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher none()>();     case 1: goto $c3 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);     case 2: goto $c2 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);     default: goto $r4 = new com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf; };	$c2 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(0);	$c1 = interfaceinvoke r0.<java.lang.CharSequence: char charAt(int)>(1);	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsEither isEither(char,char)>($c2, $c1);	return $r1
;block_num 2