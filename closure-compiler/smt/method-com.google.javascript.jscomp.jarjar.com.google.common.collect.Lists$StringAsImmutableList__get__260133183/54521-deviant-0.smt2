(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2569 0)
(declare-sort var2576 0)
(declare-sort var1947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/-1680493373 (var2569) Int)
(declare-fun var2576_checkElementIndex/-1745552320 (Int Int) Int)
(declare-fun string/579100894 (var2569) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var1947_valueOf/-1186540555 (Int) var1947)
(declare-const null-var2569 var2569)
(declare-const null-Int Int)
(declare-const var1618 var2569) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList 
(assert (not (= var1618 null-var2569)))
(declare-const var6 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var6 null-Int)))
(assert true)
(define-const var2901 Int (size/-1680493373 var1618)) ; Statement: $i1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList: int size()>() 
;(assert (var2576_checkElementIndex/-1745552320 var6 var2901)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: int checkElementIndex(int,int)>(i0, $i1) 

(declare-const var6!1 Int)
(declare-const var2901!1 Int)
(define-const var657 String (string/579100894 var1618)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList: java.lang.String string> 
(assert (not (and true (and (> (str.len var657) var6!1) (<= 0 var6!1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {size/-1680493373=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList], int), var2576_checkElementIndex/-1745552320=([int, int], int), string/579100894=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList], java.lang.String), charAt/698050440=([java.lang.String, int], char), var1947_valueOf/-1186540555=([char], java.lang.Character)}
; {var2569=com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList, var1618=r0, var6=i0, var2901=$i1, var2576=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var657=$r1, var2002=$c2, var1947=java.lang.Character, var589=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList=var2569, r0=var1618, i0=var6, $i1=var2901, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2576, $r1=var657, $c2=var2002, java.lang.Character=var1947, $r2=var589}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList;	i0 := @parameter0: int;	$i1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList: int size()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: int checkElementIndex(int,int)>(i0, $i1);	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList: java.lang.String string>;	$c2 = virtualinvoke $r1.<java.lang.String: char charAt(int)>(i0);	$r2 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c2);	return $r2
;block_num 1