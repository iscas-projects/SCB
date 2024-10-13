(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2829 0)
(declare-sort var3293 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun className/1477337346 (var2829) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var3293_inRange/58924713 (Int Int) var3293)
(declare-fun trimLeadingFrom/-1450992632 (var3293 String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var2829 var2829)
(declare-const var1533 var2829) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo 
(assert (not (= var1533 null-var2829)))
(define-const var3316 String (className/1477337346 var1533)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo: java.lang.String className> 
(assert true)
(define-const var1535 Int (lastIndexOf/-1292097097 var3316 36)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(int)>(36) 
(define-const var1248 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i0 == $i5 goto r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo: java.lang.String getPackageName()>() 
(assert (not (= var1535 var1248))) ; Negate: Cond: i0 == $i5  
(define-const var829 String (className/1477337346 var1533)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo: java.lang.String className> 
(define-const var3968 Int (+ var1535 1)) ; Statement: $i3 = i0 + 1 
(assert (not (and true (and (>= var3968 0) (>= (str.len var829) var3968)))))
(check-sat)
(get-model)
(get-unsat-core)
; {className/1477337346=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/850833817=([java.lang.String, int], java.lang.String), var3293_inRange/58924713=([char, char], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher), trimLeadingFrom/-1450992632=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2829=com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo, var1533=r0, var3316=$r1, var1535=i0, var1248=$i5, var829=$r5, var3968=$i3, var2849=r8, var3293=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var1972=$r6, var120=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo=var2829, r0=var1533, $r1=var3316, i0=var1535, $i5=var1248, $r5=var829, $i3=var3968, r8=var2849, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var3293, $r6=var1972, $r7=var120}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo: java.lang.String className>;	i0 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(int)>(36);	$i5 = (int) -1;	if i0 == $i5 goto r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo: java.lang.String getPackageName()>();	$r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo: java.lang.String className>;	$i3 = i0 + 1;	r8 = virtualinvoke $r5.<java.lang.String: java.lang.String substring(int)>($i3);	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher inRange(char,char)>(48, 57);	$r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String trimLeadingFrom(java.lang.CharSequence)>(r8);	return $r7
;block_num 2