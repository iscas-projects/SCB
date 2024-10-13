(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var621 0)
(declare-sort var884 0)
(declare-sort var3478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/475326723 (var621) Int)
(declare-fun var884_checkElementIndex/-1745552320 (Int Int) Int)
(declare-fun sequence/-890202970 (var621) String)
(declare-fun String_charAt/1466887330 (String Int) Int)
(declare-fun var3478_valueOf/-1186540555 (Int) var3478)
(declare-const null-var621 var621)
(declare-const null-Int Int)
(declare-const var694 var621) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$CharSequenceAsList 
(assert (not (= var694 null-var621)))
(declare-const var2137 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2137 null-Int)))
(assert true)
(define-const var2053 Int (size/475326723 var694)) ; Statement: $i1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$CharSequenceAsList: int size()>() 
;(assert (var884_checkElementIndex/-1745552320 var2137 var2053)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: int checkElementIndex(int,int)>(i0, $i1) 

(declare-const var2137!1 Int)
(declare-const var2053!1 Int)
(define-const var2140 String (sequence/-890202970 var694)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$CharSequenceAsList: java.lang.CharSequence sequence> 
(define-const var3674 Int (String_charAt/1466887330 var2140 var2137!1)) ; Statement: $c2 = interfaceinvoke $r1.<java.lang.CharSequence: char charAt(int)>(i0) 
(define-const var420 var3478 (var3478_valueOf/-1186540555 var3674)) ; Statement: $r2 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c2) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {size/475326723=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$CharSequenceAsList], int), var884_checkElementIndex/-1745552320=([int, int], int), sequence/-890202970=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$CharSequenceAsList], java.lang.CharSequence), String_charAt/1466887330=([java.lang.CharSequence, int], char), var3478_valueOf/-1186540555=([char], java.lang.Character)}
; {var621=com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$CharSequenceAsList, var694=r0, var2137=i0, var2053=$i1, var884=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2140=$r1, var3674=$c2, var3478=java.lang.Character, var420=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$CharSequenceAsList=var621, r0=var694, i0=var2137, $i1=var2053, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var884, $r1=var2140, $c2=var3674, java.lang.Character=var3478, $r2=var420}
;seq <java.lang.CharSequence: char charAt(int)>
;cnt {"<java.lang.CharSequence: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$CharSequenceAsList;	i0 := @parameter0: int;	$i1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$CharSequenceAsList: int size()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: int checkElementIndex(int,int)>(i0, $i1);	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$CharSequenceAsList: java.lang.CharSequence sequence>;	$c2 = interfaceinvoke $r1.<java.lang.CharSequence: char charAt(int)>(i0);	$r2 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c2);	return $r2
;block_num 1