(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var202 0)
(declare-sort var1377 0)
(declare-sort var2467 0)
(declare-sort var2356 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/1951956598 (var202) Int)
(declare-fun rowList/1951956598 (var202) var1377)
(declare-fun var1377_get/-1216255739 (var1377 Int) var2467)
(declare-fun cast-from-var2467-to-var2356 (var2467) var2356)
(declare-const null-var202 var202)
(declare-const var1938 var202) ; Statement: r0 := @this: com.mysql.cj.result.BufferedRowList 
(assert (not (= var1938 null-var202)))
(define-const var3437 Int (position/1951956598 var1938)) ; Statement: $i0 = r0.<com.mysql.cj.result.BufferedRowList: int position> 
 ; Statement: if $i0 >= 1 goto $r1 = r0.<com.mysql.cj.result.BufferedRowList: java.util.List rowList> 
(assert (>= var3437 1)) ; Cond: $i0 >= 1 
(define-const var1256 var1377 (rowList/1951956598 var1938)) ; Statement: $r1 = r0.<com.mysql.cj.result.BufferedRowList: java.util.List rowList> 
(define-const var2127 Int (position/1951956598 var1938)) ; Statement: $i1 = r0.<com.mysql.cj.result.BufferedRowList: int position> 
(define-const var2440 Int (- var2127 1)) ; Statement: $i2 = $i1 - 1 
(declare-const var1938!1 var202)
(assert (not (= var1938!1 null-var202)))
(assert (= (position/1951956598 var1938!1) var2440)) ; Statement: r0.<com.mysql.cj.result.BufferedRowList: int position> = $i2 
(define-const var3822 var2467 (var1377_get/-1216255739 var1256 var2440)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>($i2) 
(define-const var200 var2356 (cast-from-var2467-to-var2356 var3822)) ; Statement: $r3 = (com.mysql.cj.result.Row) $r2 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {position/1951956598=([com.mysql.cj.result.BufferedRowList], int), rowList/1951956598=([com.mysql.cj.result.BufferedRowList], java.util.List), var1377_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2467-to-var2356=([java.lang.Object], com.mysql.cj.result.Row)}
; {var202=com.mysql.cj.result.BufferedRowList, var1938=r0, var3437=$i0, var1377=java.util.List, var1256=$r1, var2127=$i1, var2440=$i2, var2467=java.lang.Object, var3822=$r2, var2356=com.mysql.cj.result.Row, var200=$r3}
; {com.mysql.cj.result.BufferedRowList=var202, r0=var1938, $i0=var3437, java.util.List=var1377, $r1=var1256, $i1=var2127, $i2=var2440, java.lang.Object=var2467, $r2=var3822, com.mysql.cj.result.Row=var2356, $r3=var200}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.result.BufferedRowList;	$i0 = r0.<com.mysql.cj.result.BufferedRowList: int position>;	if $i0 >= 1 goto $r1 = r0.<com.mysql.cj.result.BufferedRowList: java.util.List rowList>;	$r1 = r0.<com.mysql.cj.result.BufferedRowList: java.util.List rowList>;	$i1 = r0.<com.mysql.cj.result.BufferedRowList: int position>;	$i2 = $i1 - 1;	r0.<com.mysql.cj.result.BufferedRowList: int position> = $i2;	$r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>($i2);	$r3 = (com.mysql.cj.result.Row) $r2;	return $r3
;block_num 2