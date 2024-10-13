(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3446 0)
(declare-sort var199 0)
(declare-sort var720 0)
(declare-sort var55 0)
(declare-sort var2934 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun op/699198229 (var3446) var720)
(declare-fun ordinal/-291641772 (var55) Int)
(declare-fun cast-from-var720-to-var55 (var720) var55)
(declare-fun append/-1031950772 (String var2934) String)
(declare-fun cast-from-var720-to-var2934 (var720) var2934)
(declare-const null-var3446 var3446)
(declare-const null-String String)
(declare-const var199-$SwitchMap$com$google$re2j$Regexp$Op (Array Int Int))
(declare-const var2812 var3446) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp 
(assert (not (= var2812 null-var3446)))
(declare-const var58 String) ; Statement: r4 := @parameter0: java.lang.StringBuilder 
(assert (not (= var58 null-String)))
(define-const var579 (Array Int Int) var199-$SwitchMap$com$google$re2j$Regexp$Op) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$1: int[] $SwitchMap$com$google$re2j$Regexp$Op> 
(define-const var24 var720 (op/699198229 var2812)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op op> 
(assert true)
(define-const var2881 Int (ordinal/-291641772 (cast-from-var720-to-var55 var24))) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op: int ordinal()>() 
(define-const var711 Int (select var579 var2881)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 2: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 3: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 4: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 5: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^\\x00-\\x{10FFFF}]");     case 6: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?:)");     case 7: goto r38 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 8: goto r40 = "";     case 9: goto $i17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int flags>;     case 10: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?-s:.)");     case 11: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?s:.)");     case 12: goto $r14 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: java.lang.String name>;     case 13: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\A");     case 14: goto $i15 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int flags>;     case 15: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(94);     case 16: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36);     case 17: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\b");     case 18: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\B");     case 19: goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int[] runes>;     default: goto $r34 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op op>; } 
(assert (and (not (= var711 19)) (and (not (= var711 18)) (and (not (= var711 17)) (and (not (= var711 16)) (and (not (= var711 15)) (and (not (= var711 14)) (and (not (= var711 13)) (and (not (= var711 12)) (and (not (= var711 11)) (and (not (= var711 10)) (and (not (= var711 9)) (and (not (= var711 8)) (and (not (= var711 7)) (and (not (= var711 6)) (and (not (= var711 5)) (and (not (= var711 4)) (and (not (= var711 3)) (and (not (= var711 2)) (and (not (= var711 1)) true)))))))))))))))))))) ; Intersect: Negate: Cond: $i1 == 19   and Intersect: Negate: Cond: $i1 == 18   and Intersect: Negate: Cond: $i1 == 17   and Intersect: Negate: Cond: $i1 == 16   and Intersect: Negate: Cond: $i1 == 15   and Intersect: Negate: Cond: $i1 == 14   and Intersect: Negate: Cond: $i1 == 13   and Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional                   
(define-const var899 var720 (op/699198229 var2812)) ; Statement: $r34 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op op> 
(assert true)
;(assert (append/-1031950772 var58 (cast-from-var720-to-var2934 var899))) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r34) 
(declare-const var58!1 String)
(assert (str.prefixof var58 var58!1))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {op/699198229=([com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp], com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op), ordinal/-291641772=([java.lang.Enum], int), cast-from-var720-to-var55=([com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op], java.lang.Enum), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var720-to-var2934=([com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op], java.lang.Object)}
; {var3446=com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp, var2812=r0, var58=r4, var199=com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$1, var579=$r2, var720=com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op, var24=$r1, var55=java.lang.Enum, var2881=$i0, var711=$i1, var899=$r34, var2934=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp=var3446, r0=var2812, r4=var58, com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$1=var199, $r2=var579, com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op=var720, $r1=var24, java.lang.Enum=var55, $i0=var2881, $i1=var711, $r34=var899, java.lang.Object=var2934}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp;	r4 := @parameter0: java.lang.StringBuilder;	$r2 = <com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$1: int[] $SwitchMap$com$google$re2j$Regexp$Op>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op op>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 2: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 3: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 4: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 5: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^\\x00-\\x{10FFFF}]");     case 6: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?:)");     case 7: goto r38 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 8: goto r40 = "";     case 9: goto $i17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int flags>;     case 10: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?-s:.)");     case 11: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?s:.)");     case 12: goto $r14 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: java.lang.String name>;     case 13: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\A");     case 14: goto $i15 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int flags>;     case 15: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(94);     case 16: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36);     case 17: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\b");     case 18: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\B");     case 19: goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int[] runes>;     default: goto $r34 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op op>; };	$r34 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op op>;	virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r34);	return
;block_num 3