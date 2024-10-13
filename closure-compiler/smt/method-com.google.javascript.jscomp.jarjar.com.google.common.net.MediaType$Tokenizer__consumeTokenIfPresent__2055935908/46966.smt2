(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1983 0)
(declare-sort var3387 0)
(declare-sort var3810 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasMore/-358308156 (var1983) Bool)
(declare-fun var3810_checkState/1431124798 (Bool) void)
(declare-fun position/-1066869516 (var1983) Int)
(declare-fun negate/1773564339 (var3387) var3387)
(declare-fun input/-1066869516 (var1983) String)
(declare-fun indexIn/1538042898 (var3387 String Int) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var1983 var1983)
(declare-const null-var3387 var3387)
(declare-const var3850 var1983) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer 
(assert (not (= var3850 null-var1983)))
(declare-const var311 var3387) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher 
(assert (not (= var311 null-var3387)))
(assert true)
(define-const var3047 Bool (hasMore/-358308156 var3850)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: boolean hasMore()>() 
;(assert (var3810_checkState/1431124798 var3047)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var3047!1 Bool)
(define-const var2960 Int (position/-1066869516 var3850)) ; Statement: i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: int position> 
(assert true)
(define-const var350 var3387 (negate/1773564339 var311)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher negate()>() 
(define-const var1614 String (input/-1066869516 var3850)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: java.lang.String input> 
(assert true)
(define-const var951 Int (indexIn/1538042898 var350 (cast-from-String-to-String var1614) var2960)) ; Statement: $i1 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: int indexIn(java.lang.CharSequence,int)>($r2, i0) 
(declare-const var3850!1 var1983)
(assert (not (= var3850!1 null-var1983)))
(assert (= (position/-1066869516 var3850!1) var951)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: int position> = $i1 
(assert true)
(define-const var3797 Bool (hasMore/-358308156 var3850!1)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: boolean hasMore()>() 
 ; Statement: if $z1 == 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: java.lang.String input> 
(assert (not (= (ite var3797 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1382 String (input/-1066869516 var3850!1)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: java.lang.String input> 
(define-const var195 Int (position/-1066869516 var3850!1)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: int position> 
(assert (and true (and (>= var2960 0) (>= (str.len var1382) var195) (>= var195 var2960))))
(define-const var1358 String (substring/-1240304868 var1382 var2960 var195)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.String: java.lang.String substring(int,int)>(i0, $i2) 
 ; Statement: goto [?= return $r6] 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {hasMore/-358308156=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer], boolean), var3810_checkState/1431124798=([boolean], void), position/-1066869516=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer], int), negate/1773564339=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher), input/-1066869516=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer], java.lang.String), indexIn/1538042898=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, java.lang.CharSequence, int], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1983=com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer, var3850=r0, var3387=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var311=r1, var3047=$z0, var3810=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2960=i0, var350=$r3, var1614=$r2, var951=$i1, var3797=$z1, var1382=$r5, var195=$i2, var1358=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer=var1983, r0=var3850, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var3387, r1=var311, $z0=var3047, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3810, i0=var2960, $r3=var350, $r2=var1614, $i1=var951, $z1=var3797, $r5=var1382, $i2=var195, $r6=var1358}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: boolean hasMore()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: int position>;	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher negate()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: java.lang.String input>;	$i1 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: int indexIn(java.lang.CharSequence,int)>($r2, i0);	r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: int position> = $i1;	$z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: boolean hasMore()>();	if $z1 == 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: java.lang.String input>;	$r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: java.lang.String input>;	$i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: int position>;	$r6 = virtualinvoke $r5.<java.lang.String: java.lang.String substring(int,int)>(i0, $i2);	goto [?= return $r6];	return $r6
;block_num 3