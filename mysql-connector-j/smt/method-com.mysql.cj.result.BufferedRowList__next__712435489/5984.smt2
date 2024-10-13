(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var19 0)
(declare-sort var386 0)
(declare-sort var1479 0)
(declare-sort var2440 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/1951956598 (var19) Int)
(declare-fun rowList/1951956598 (var19) var386)
(declare-fun var386_size/-959786421 (var386) Int)
(declare-fun var386_get/-1216255739 (var386 Int) var1479)
(declare-fun cast-from-var1479-to-var2440 (var1479) var2440)
(declare-const null-var19 var19)
(declare-const var2644 var19) ; Statement: r0 := @this: com.mysql.cj.result.BufferedRowList 
(assert (not (= var2644 null-var19)))
(define-const var2021 Int (position/1951956598 var2644)) ; Statement: $i0 = r0.<com.mysql.cj.result.BufferedRowList: int position> 
(define-const var1347 Int (+ var2021 1)) ; Statement: $i2 = $i0 + 1 
(define-const var3484 var386 (rowList/1951956598 var2644)) ; Statement: $r1 = r0.<com.mysql.cj.result.BufferedRowList: java.util.List rowList> 
(define-const var3846 Int (var386_size/-959786421 var3484)) ; Statement: $i1 = interfaceinvoke $r1.<java.util.List: int size()>() 
 ; Statement: if $i2 != $i1 goto $r2 = r0.<com.mysql.cj.result.BufferedRowList: java.util.List rowList> 
(assert (not (= var1347 var3846))) ; Cond: $i2 != $i1 
(define-const var890 var386 (rowList/1951956598 var2644)) ; Statement: $r2 = r0.<com.mysql.cj.result.BufferedRowList: java.util.List rowList> 
(define-const var2964 Int (position/1951956598 var2644)) ; Statement: $i3 = r0.<com.mysql.cj.result.BufferedRowList: int position> 
(define-const var2324 Int (+ var2964 1)) ; Statement: $i4 = $i3 + 1 
(declare-const var2644!1 var19)
(assert (not (= var2644!1 null-var19)))
(assert (= (position/1951956598 var2644!1) var2324)) ; Statement: r0.<com.mysql.cj.result.BufferedRowList: int position> = $i4 
(define-const var1908 var1479 (var386_get/-1216255739 var890 var2324)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object get(int)>($i4) 
(define-const var2508 var2440 (cast-from-var1479-to-var2440 var1908)) ; Statement: $r4 = (com.mysql.cj.result.Row) $r3 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {position/1951956598=([com.mysql.cj.result.BufferedRowList], int), rowList/1951956598=([com.mysql.cj.result.BufferedRowList], java.util.List), var386_size/-959786421=([java.util.List], int), var386_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var1479-to-var2440=([java.lang.Object], com.mysql.cj.result.Row)}
; {var19=com.mysql.cj.result.BufferedRowList, var2644=r0, var2021=$i0, var1347=$i2, var386=java.util.List, var3484=$r1, var3846=$i1, var890=$r2, var2964=$i3, var2324=$i4, var1479=java.lang.Object, var1908=$r3, var2440=com.mysql.cj.result.Row, var2508=$r4}
; {com.mysql.cj.result.BufferedRowList=var19, r0=var2644, $i0=var2021, $i2=var1347, java.util.List=var386, $r1=var3484, $i1=var3846, $r2=var890, $i3=var2964, $i4=var2324, java.lang.Object=var1479, $r3=var1908, com.mysql.cj.result.Row=var2440, $r4=var2508}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.result.BufferedRowList;	$i0 = r0.<com.mysql.cj.result.BufferedRowList: int position>;	$i2 = $i0 + 1;	$r1 = r0.<com.mysql.cj.result.BufferedRowList: java.util.List rowList>;	$i1 = interfaceinvoke $r1.<java.util.List: int size()>();	if $i2 != $i1 goto $r2 = r0.<com.mysql.cj.result.BufferedRowList: java.util.List rowList>;	$r2 = r0.<com.mysql.cj.result.BufferedRowList: java.util.List rowList>;	$i3 = r0.<com.mysql.cj.result.BufferedRowList: int position>;	$i4 = $i3 + 1;	r0.<com.mysql.cj.result.BufferedRowList: int position> = $i4;	$r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object get(int)>($i4);	$r4 = (com.mysql.cj.result.Row) $r3;	return $r4
;block_num 2