(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3817 0)
(declare-sort var1 0)
(declare-sort var2377 0)
(declare-sort var3692 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun op/699198229 (var3817) var2377)
(declare-fun ordinal/-291641772 (var3692) Int)
(declare-fun cast-from-var2377-to-var3692 (var2377) var3692)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3817 var3817)
(declare-const null-String String)
(declare-const var1-$SwitchMap$com$google$re2j$Regexp$Op (Array Int Int))
(declare-const var3136 var3817) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp 
(assert (not (= var3136 null-var3817)))
(declare-const var2651 String) ; Statement: r4 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2651 null-String)))
(define-const var82 (Array Int Int) var1-$SwitchMap$com$google$re2j$Regexp$Op) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$1: int[] $SwitchMap$com$google$re2j$Regexp$Op> 
(define-const var556 var2377 (op/699198229 var3136)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op op> 
(assert true)
(define-const var3145 Int (ordinal/-291641772 (cast-from-var2377-to-var3692 var556))) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op: int ordinal()>() 
(define-const var2053 Int (select var82 var3145)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 2: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 3: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 4: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 5: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^\\x00-\\x{10FFFF}]");     case 6: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?:)");     case 7: goto r38 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 8: goto r40 = "";     case 9: goto $i17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int flags>;     case 10: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?-s:.)");     case 11: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?s:.)");     case 12: goto $r14 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: java.lang.String name>;     case 13: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\A");     case 14: goto $i15 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int flags>;     case 15: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(94);     case 16: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36);     case 17: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\b");     case 18: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\B");     case 19: goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int[] runes>;     default: goto $r34 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op op>; } 
(assert (and (= var2053 13) (and (not (= var2053 12)) (and (not (= var2053 11)) (and (not (= var2053 10)) (and (not (= var2053 9)) (and (not (= var2053 8)) (and (not (= var2053 7)) (and (not (= var2053 6)) (and (not (= var2053 5)) (and (not (= var2053 4)) (and (not (= var2053 3)) (and (not (= var2053 2)) (and (not (= var2053 1)) true)))))))))))))) ; Intersect: Cond: $i1 == 13  and Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional             
(assert true)
;(assert (append/672562846 var2651 "\u005cA")) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\A") 
(declare-const var2651!1 String)
(assert (= var2651!1 (str.++ var2651 "\u005cA")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {op/699198229=([com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp], com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2377-to-var3692=([com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op], java.lang.Enum), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3817=com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp, var3136=r0, var2651=r4, var1=com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$1, var82=$r2, var2377=com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op, var556=$r1, var3692=java.lang.Enum, var3145=$i0, var2053=$i1}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp=var3817, r0=var3136, r4=var2651, com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$1=var1, $r2=var82, com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op=var2377, $r1=var556, java.lang.Enum=var3692, $i0=var3145, $i1=var2053}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp;	r4 := @parameter0: java.lang.StringBuilder;	$r2 = <com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$1: int[] $SwitchMap$com$google$re2j$Regexp$Op>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op op>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 2: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 3: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 4: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 5: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^\\x00-\\x{10FFFF}]");     case 6: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?:)");     case 7: goto r38 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 8: goto r40 = "";     case 9: goto $i17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int flags>;     case 10: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?-s:.)");     case 11: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?s:.)");     case 12: goto $r14 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: java.lang.String name>;     case 13: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\A");     case 14: goto $i15 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int flags>;     case 15: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(94);     case 16: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36);     case 17: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\b");     case 18: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\B");     case 19: goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int[] runes>;     default: goto $r34 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op op>; };	virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\A");	goto [?= return];	return
;block_num 3