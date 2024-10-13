(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var498 0)
(declare-sort var977 0)
(declare-sort var3579 0)
(declare-sort var1449 0)
(declare-sort var1612 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun wordBoundary/1392165496 (var498) var3579)
(declare-fun indexIn/1538042898 (var3579 String Int) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1612_requireNonNull/-961817614 (var1449) var1449)
(declare-fun cast-from-String-to-var1449 (String) var1449)
(declare-fun cast-from-var1449-to-String (var1449) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun normalizeWord/-1423240668 (var498 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var498 var498)
(declare-const null-String String)
(declare-const var2495 var498) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat 
(assert (not (= var2495 null-var498)))
(declare-const var3306 var498) ; Statement: r4 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat 
(assert (not (= var3306 null-var498)))
(declare-const var11 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var11 null-String)))
(define-const var2580 String null-String) ; Statement: r19 = null 
(define-const var365 Int 0) ; Statement: i6 = 0 
(define-const var2166 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
(define-const var1478 Int var2166) ; Statement: i7 = $i10 
(assert true) ; Non Conditional
(define-const var1294 var3579 (wordBoundary/1392165496 var2495)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher wordBoundary> 
(define-const var2672 Int (+ var1478 1)) ; Statement: i8 = i7 + 1 
(assert true)
(define-const var1210 Int (indexIn/1538042898 var1294 (cast-from-String-to-String var11) var2672)) ; Statement: $i0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: int indexIn(java.lang.CharSequence,int)>(r1, i8) 
(define-const var1478!1 Int var1210) ; Statement: i7 = $i0 
(define-const var3710 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if $i0 == $i12 goto (branch) 
(assert (= var1210 var3710)) ; Cond: $i0 == $i12 
 ; Statement: if i6 != 0 goto $r3 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r19) 
(assert (not (= var365 0))) ; Cond: i6 != 0 
(define-const var258 var1449 (var1612_requireNonNull/-961817614 (cast-from-String-to-var1449 var2580))) ; Statement: $r3 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r19) 
(define-const var3397 String (cast-from-var1449-to-String var258)) ; Statement: $r7 = (java.lang.StringBuilder) $r3 
(assert (not (and true (and (>= var365 0) (>= (str.len var11) var365)))))
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), wordBoundary/1392165496=([com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher), indexIn/1538042898=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, java.lang.CharSequence, int], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1612_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var1449=([java.lang.StringBuilder], java.lang.Object), cast-from-var1449-to-String=([java.lang.Object], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), normalizeWord/-1423240668=([com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var498=com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat, var2495=r0, var3306=r4, var11=r1, var977=null_type, var2580=r19, var365=i6, var2166=$i10, var1478=i7, var3579=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var1294=$r2, var2672=i8, var1210=$i0, var3710=$i12, var1449=java.lang.Object, var1612=java.util.Objects, var258=$r3, var3397=$r7, var3351=$r5, var2140=$r6, var3685=$r8, var2226=$r20}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat=var498, r0=var2495, r4=var3306, r1=var11, null_type=var977, r19=var2580, i6=var365, $i10=var2166, i7=var1478, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var3579, $r2=var1294, i8=var2672, $i0=var1210, $i12=var3710, java.lang.Object=var1449, java.util.Objects=var1612, $r3=var258, $r7=var3397, $r5=var3351, $r6=var2140, $r8=var3685, $r20=var2226}
;seq <java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat;	r4 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat;	r1 := @parameter1: java.lang.String;	r19 = null;	i6 = 0;	$i10 = (int) -1;	i7 = $i10;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher wordBoundary>;	i8 = i7 + 1;	$i0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: int indexIn(java.lang.CharSequence,int)>(r1, i8);	i7 = $i0;	$i12 = (int) -1;	if $i0 == $i12 goto (branch);	if i6 != 0 goto $r3 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r19);	$r3 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r19);	$r7 = (java.lang.StringBuilder) $r3;	$r5 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i6);	$r6 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: java.lang.String normalizeWord(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r20 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r20
;block_num 5