(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1476 0)
(declare-sort var1069 0)
(declare-sort var2029 0)
(declare-sort var1834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/-1680493373 (var1476) Int)
(declare-fun var1069_checkPositionIndexes/224088529 (Int Int Int) void)
(declare-fun string/579100894 (var1476) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var1834_charactersOf/-1879516158 (String) var2029)
(declare-const null-var1476 var1476)
(declare-const null-Int Int)
(declare-const var3555 var1476) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList 
(assert (not (= var3555 null-var1476)))
(declare-const var2289 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2289 null-Int)))
(declare-const var3164 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3164 null-Int)))
(assert true)
(define-const var267 Int (size/-1680493373 var3555)) ; Statement: $i2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList: int size()>() 
;(assert (var1069_checkPositionIndexes/224088529 var2289 var3164 var267)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkPositionIndexes(int,int,int)>(i0, i1, $i2) 

(declare-const var2289!1 Int)
(declare-const var3164!1 Int)
(declare-const var267!1 Int)
(define-const var864 String (string/579100894 var3555)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList: java.lang.String string> 
(assert (and true (and (>= var2289!1 0) (>= (str.len var864) var3164!1) (>= var3164!1 var2289!1))))
(define-const var1672 String (substring/-1240304868 var864 var2289!1 var3164!1)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i0, i1) 
(define-const var203 var2029 (var1834_charactersOf/-1879516158 var1672)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList charactersOf(java.lang.String)>($r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {size/-1680493373=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList], int), var1069_checkPositionIndexes/224088529=([int, int, int], void), string/579100894=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var1834_charactersOf/-1879516158=([java.lang.String], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList)}
; {var1476=com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList, var3555=r0, var2289=i0, var3164=i1, var267=$i2, var1069=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var864=$r1, var1672=$r2, var2029=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1834=com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists, var203=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList=var1476, r0=var3555, i0=var2289, i1=var3164, $i2=var267, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1069, $r1=var864, $r2=var1672, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2029, com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists=var1834, $r3=var203}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList;	i0 := @parameter0: int;	i1 := @parameter1: int;	$i2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList: int size()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkPositionIndexes(int,int,int)>(i0, i1, $i2);	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$StringAsImmutableList: java.lang.String string>;	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i0, i1);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList charactersOf(java.lang.String)>($r2);	return $r3
;block_num 1