(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1860 0)
(declare-sort var1816 0)
(declare-sort var1795 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var1795) Int)
(declare-fun cast-from-var1860-to-var1795 (var1860) var1795)
(declare-fun name/1633728430 (var1795) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-const null-var1860 var1860)
(declare-const var1816-$SwitchMap$java$util$concurrent$TimeUnit (Array Int Int))
(declare-const var3499 var1860) ; Statement: r0 := @parameter0: java.util.concurrent.TimeUnit 
(assert (not (= var3499 null-var1860)))
(define-const var3193 (Array Int Int) var1816-$SwitchMap$java$util$concurrent$TimeUnit) ; Statement: $r1 = <cn.hutool.core.date.DateUtil$1: int[] $SwitchMap$java$util$concurrent$TimeUnit> 
(assert true)
(define-const var2644 Int (ordinal/-291641772 (cast-from-var1860-to-var1795 var3499))) ; Statement: $i0 = virtualinvoke r0.<java.util.concurrent.TimeUnit: int ordinal()>() 
(define-const var2882 Int (select var3193 var2644)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "ns";     case 2: goto return "\u03bcs";     case 3: goto return "ms";     case 4: goto return "s";     case 5: goto return "min";     case 6: goto return "h";     default: goto $r2 = virtualinvoke r0.<java.util.concurrent.TimeUnit: java.lang.String name()>(); } 
(assert (and (not (= var2882 6)) (and (not (= var2882 5)) (and (not (= var2882 4)) (and (not (= var2882 3)) (and (not (= var2882 2)) (and (not (= var2882 1)) true))))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(assert true)
(define-const var3028 String (name/1633728430 (cast-from-var1860-to-var1795 var3499))) ; Statement: $r2 = virtualinvoke r0.<java.util.concurrent.TimeUnit: java.lang.String name()>() 
(assert true)
(define-const var642 String (toLowerCase/415700667 var3028)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var1860-to-var1795=([java.util.concurrent.TimeUnit], java.lang.Enum), name/1633728430=([java.lang.Enum], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String)}
; {var1860=java.util.concurrent.TimeUnit, var3499=r0, var1816=cn.hutool.core.date.DateUtil$1, var3193=$r1, var1795=java.lang.Enum, var2644=$i0, var2882=$i1, var3028=$r2, var642=$r3}
; {java.util.concurrent.TimeUnit=var1860, r0=var3499, cn.hutool.core.date.DateUtil$1=var1816, $r1=var3193, java.lang.Enum=var1795, $i0=var2644, $i1=var2882, $r2=var3028, $r3=var642}
;seq <java.lang.String: java.lang.String toLowerCase()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1}
;stmts r0 := @parameter0: java.util.concurrent.TimeUnit;	$r1 = <cn.hutool.core.date.DateUtil$1: int[] $SwitchMap$java$util$concurrent$TimeUnit>;	$i0 = virtualinvoke r0.<java.util.concurrent.TimeUnit: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "ns";     case 2: goto return "\u03bcs";     case 3: goto return "ms";     case 4: goto return "s";     case 5: goto return "min";     case 6: goto return "h";     default: goto $r2 = virtualinvoke r0.<java.util.concurrent.TimeUnit: java.lang.String name()>(); };	$r2 = virtualinvoke r0.<java.util.concurrent.TimeUnit: java.lang.String name()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase()>();	return $r3
;block_num 2