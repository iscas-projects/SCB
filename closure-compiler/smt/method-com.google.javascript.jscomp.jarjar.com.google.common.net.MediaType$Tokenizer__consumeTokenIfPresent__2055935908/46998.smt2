(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var50 0)
(declare-sort var915 0)
(declare-sort var845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasMore/-358308156 (var50) Bool)
(declare-fun var845_checkState/1431124798 (Bool) void)
(declare-fun position/-1066869516 (var50) Int)
(declare-fun negate/1773564339 (var915) var915)
(declare-fun input/-1066869516 (var50) String)
(declare-fun indexIn/1538042898 (var915 String Int) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var50 var50)
(declare-const null-var915 var915)
(declare-const var3966 var50) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer 
(assert (not (= var3966 null-var50)))
(declare-const var2674 var915) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher 
(assert (not (= var2674 null-var915)))
(assert true)
(define-const var2262 Bool (hasMore/-358308156 var3966)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: boolean hasMore()>() 
;(assert (var845_checkState/1431124798 var2262)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var2262!1 Bool)
(define-const var3189 Int (position/-1066869516 var3966)) ; Statement: i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: int position> 
(assert true)
(define-const var2911 var915 (negate/1773564339 var2674)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher negate()>() 
(define-const var2369 String (input/-1066869516 var3966)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: java.lang.String input> 
(assert true)
(define-const var3536 Int (indexIn/1538042898 var2911 (cast-from-String-to-String var2369) var3189)) ; Statement: $i1 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: int indexIn(java.lang.CharSequence,int)>($r2, i0) 
(declare-const var3966!1 var50)
(assert (not (= var3966!1 null-var50)))
(assert (= (position/-1066869516 var3966!1) var3536)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: int position> = $i1 
(assert true)
(define-const var2807 Bool (hasMore/-358308156 var3966!1)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: boolean hasMore()>() 
 ; Statement: if $z1 == 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: java.lang.String input> 
(assert (= (ite var2807 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1954 String (input/-1066869516 var3966!1)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: java.lang.String input> 
(assert (and true (and (>= var3189 0) (>= (str.len var1954) var3189))))
(define-const var3135 String (substring/850833817 var1954 var3189)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: java.lang.String substring(int)>(i0) 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {hasMore/-358308156=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer], boolean), var845_checkState/1431124798=([boolean], void), position/-1066869516=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer], int), negate/1773564339=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher), input/-1066869516=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer], java.lang.String), indexIn/1538042898=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, java.lang.CharSequence, int], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var50=com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer, var3966=r0, var915=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var2674=r1, var2262=$z0, var845=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3189=i0, var2911=$r3, var2369=$r2, var3536=$i1, var2807=$z1, var1954=$r4, var3135=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer=var50, r0=var3966, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var915, r1=var2674, $z0=var2262, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var845, i0=var3189, $r3=var2911, $r2=var2369, $i1=var3536, $z1=var2807, $r4=var1954, $r6=var3135}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: boolean hasMore()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: int position>;	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher negate()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: java.lang.String input>;	$i1 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: int indexIn(java.lang.CharSequence,int)>($r2, i0);	r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: int position> = $i1;	$z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: boolean hasMore()>();	if $z1 == 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: java.lang.String input>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: java.lang.String input>;	$r6 = virtualinvoke $r4.<java.lang.String: java.lang.String substring(int)>(i0);	return $r6
;block_num 3