(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2827 0)
(declare-sort var2999 0)
(declare-sort var2360 0)
(declare-sort var2063 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun op/699198229 (var2827) var2360)
(declare-fun ordinal/-291641772 (var2063) Int)
(declare-fun cast-from-var2360-to-var2063 (var2360) var2063)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2827 var2827)
(declare-const null-String String)
(declare-const var2999-$SwitchMap$com$google$re2j$Regexp$Op (Array Int Int))
(declare-const var2506 var2827) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp 
(assert (not (= var2506 null-var2827)))
(declare-const var3102 String) ; Statement: r4 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3102 null-String)))
(define-const var1520 (Array Int Int) var2999-$SwitchMap$com$google$re2j$Regexp$Op) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$1: int[] $SwitchMap$com$google$re2j$Regexp$Op> 
(define-const var692 var2360 (op/699198229 var2506)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op op> 
(assert true)
(define-const var1322 Int (ordinal/-291641772 (cast-from-var2360-to-var2063 var692))) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op: int ordinal()>() 
(define-const var3561 Int (select var1520 var1322)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 2: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 3: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 4: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 5: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^\\x00-\\x{10FFFF}]");     case 6: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?:)");     case 7: goto r38 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 8: goto r40 = "";     case 9: goto $i17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int flags>;     case 10: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?-s:.)");     case 11: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?s:.)");     case 12: goto $r14 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: java.lang.String name>;     case 13: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\A");     case 14: goto $i15 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int flags>;     case 15: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(94);     case 16: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36);     case 17: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\b");     case 18: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\B");     case 19: goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int[] runes>;     default: goto $r34 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op op>; } 
(assert (and (= var3561 17) (and (not (= var3561 16)) (and (not (= var3561 15)) (and (not (= var3561 14)) (and (not (= var3561 13)) (and (not (= var3561 12)) (and (not (= var3561 11)) (and (not (= var3561 10)) (and (not (= var3561 9)) (and (not (= var3561 8)) (and (not (= var3561 7)) (and (not (= var3561 6)) (and (not (= var3561 5)) (and (not (= var3561 4)) (and (not (= var3561 3)) (and (not (= var3561 2)) (and (not (= var3561 1)) true)))))))))))))))))) ; Intersect: Cond: $i1 == 17  and Intersect: Negate: Cond: $i1 == 16   and Intersect: Negate: Cond: $i1 == 15   and Intersect: Negate: Cond: $i1 == 14   and Intersect: Negate: Cond: $i1 == 13   and Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional                 
(assert true)
;(assert (append/672562846 var3102 "\u005cb")) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\b") 
(declare-const var3102!1 String)
(assert (= var3102!1 (str.++ var3102 "\u005cb")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {op/699198229=([com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp], com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2360-to-var2063=([com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op], java.lang.Enum), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2827=com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp, var2506=r0, var3102=r4, var2999=com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$1, var1520=$r2, var2360=com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op, var692=$r1, var2063=java.lang.Enum, var1322=$i0, var3561=$i1}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp=var2827, r0=var2506, r4=var3102, com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$1=var2999, $r2=var1520, com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op=var2360, $r1=var692, java.lang.Enum=var2063, $i0=var1322, $i1=var3561}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp;	r4 := @parameter0: java.lang.StringBuilder;	$r2 = <com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$1: int[] $SwitchMap$com$google$re2j$Regexp$Op>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op op>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 2: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 3: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 4: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 5: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^\\x00-\\x{10FFFF}]");     case 6: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?:)");     case 7: goto r38 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 8: goto r40 = "";     case 9: goto $i17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int flags>;     case 10: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?-s:.)");     case 11: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?s:.)");     case 12: goto $r14 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: java.lang.String name>;     case 13: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\A");     case 14: goto $i15 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int flags>;     case 15: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(94);     case 16: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36);     case 17: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\b");     case 18: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\B");     case 19: goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int[] runes>;     default: goto $r34 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op op>; };	virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\b");	goto [?= return];	return
;block_num 3