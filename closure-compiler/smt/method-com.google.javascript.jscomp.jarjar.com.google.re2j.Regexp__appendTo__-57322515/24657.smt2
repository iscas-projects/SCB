(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1401 0)
(declare-sort var2266 0)
(declare-sort var3737 0)
(declare-sort var691 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun op/699198229 (var1401) var3737)
(declare-fun ordinal/-291641772 (var691) Int)
(declare-fun cast-from-var3737-to-var691 (var3737) var691)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var1401 var1401)
(declare-const null-String String)
(declare-const var2266-$SwitchMap$com$google$re2j$Regexp$Op (Array Int Int))
(declare-const var2102 var1401) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp 
(assert (not (= var2102 null-var1401)))
(declare-const var3446 String) ; Statement: r4 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3446 null-String)))
(define-const var1420 (Array Int Int) var2266-$SwitchMap$com$google$re2j$Regexp$Op) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$1: int[] $SwitchMap$com$google$re2j$Regexp$Op> 
(define-const var3328 var3737 (op/699198229 var2102)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op op> 
(assert true)
(define-const var856 Int (ordinal/-291641772 (cast-from-var3737-to-var691 var3328))) ; Statement: $i0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op: int ordinal()>() 
(define-const var3665 Int (select var1420 var856)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 2: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 3: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 4: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 5: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^\\x00-\\x{10FFFF}]");     case 6: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?:)");     case 7: goto r38 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 8: goto r40 = "";     case 9: goto $i17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int flags>;     case 10: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?-s:.)");     case 11: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?s:.)");     case 12: goto $r14 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: java.lang.String name>;     case 13: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\A");     case 14: goto $i15 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int flags>;     case 15: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(94);     case 16: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36);     case 17: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\b");     case 18: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\B");     case 19: goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int[] runes>;     default: goto $r34 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op op>; } 
(assert (and (= var3665 15) (and (not (= var3665 14)) (and (not (= var3665 13)) (and (not (= var3665 12)) (and (not (= var3665 11)) (and (not (= var3665 10)) (and (not (= var3665 9)) (and (not (= var3665 8)) (and (not (= var3665 7)) (and (not (= var3665 6)) (and (not (= var3665 5)) (and (not (= var3665 4)) (and (not (= var3665 3)) (and (not (= var3665 2)) (and (not (= var3665 1)) true)))))))))))))))) ; Intersect: Cond: $i1 == 15  and Intersect: Negate: Cond: $i1 == 14   and Intersect: Negate: Cond: $i1 == 13   and Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional               
(assert true)
;(assert (append/-1166366385 var3446 94)) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(94) 
(declare-const var3446!1 String)
(assert (str.prefixof var3446 var3446!1))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {op/699198229=([com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp], com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3737-to-var691=([com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op], java.lang.Enum), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var1401=com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp, var2102=r0, var3446=r4, var2266=com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$1, var1420=$r2, var3737=com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op, var3328=$r1, var691=java.lang.Enum, var856=$i0, var3665=$i1}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp=var1401, r0=var2102, r4=var3446, com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$1=var2266, $r2=var1420, com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op=var3737, $r1=var3328, java.lang.Enum=var691, $i0=var856, $i1=var3665}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp;	r4 := @parameter0: java.lang.StringBuilder;	$r2 = <com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$1: int[] $SwitchMap$com$google$re2j$Regexp$Op>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op op>;	$i0 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 2: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 3: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 4: goto $r27 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 5: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[^\\x00-\\x{10FFFF}]");     case 6: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?:)");     case 7: goto r38 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp[] subs>;     case 8: goto r40 = "";     case 9: goto $i17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int flags>;     case 10: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?-s:.)");     case 11: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(?s:.)");     case 12: goto $r14 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: java.lang.String name>;     case 13: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\A");     case 14: goto $i15 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int flags>;     case 15: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(94);     case 16: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36);     case 17: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\b");     case 18: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\B");     case 19: goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int[] runes>;     default: goto $r34 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp$Op op>; };	virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(94);	goto [?= return];	return
;block_num 3