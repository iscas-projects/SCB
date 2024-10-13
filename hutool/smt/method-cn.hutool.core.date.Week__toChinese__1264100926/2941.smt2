(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1945 0)
(declare-sort var3024 0)
(declare-sort var2133 0)
(declare-sort var2814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var2814) Int)
(declare-fun cast-from-var1945-to-var2814 (var1945) var2814)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1945 var1945)
(declare-const null-String String)
(declare-const var2133-$SwitchMap$cn$hutool$core$date$Week (Array Int Int))
(declare-const var3782 var1945) ; Statement: r0 := @this: cn.hutool.core.date.Week 
(assert (not (= var3782 null-var1945)))
(declare-const var3228 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3228 null-String)))
(define-const var2196 (Array Int Int) var2133-$SwitchMap$cn$hutool$core$date$Week) ; Statement: $r1 = <cn.hutool.core.date.Week$1: int[] $SwitchMap$cn$hutool$core$date$Week> 
(assert true)
(define-const var1922 Int (ordinal/-291641772 (cast-from-var1945-to-var2814 var3782))) ; Statement: $i0 = virtualinvoke r0.<cn.hutool.core.date.Week: int ordinal()>() 
(define-const var2036 Int (select var2196 var1922)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r27 = new java.lang.StringBuilder;     case 2: goto $r23 = new java.lang.StringBuilder;     case 3: goto $r19 = new java.lang.StringBuilder;     case 4: goto $r15 = new java.lang.StringBuilder;     case 5: goto $r11 = new java.lang.StringBuilder;     case 6: goto $r7 = new java.lang.StringBuilder;     case 7: goto $r2 = new java.lang.StringBuilder;     default: goto return null; } 
(assert (and (= var2036 7) (and (not (= var2036 6)) (and (not (= var2036 5)) (and (not (= var2036 4)) (and (not (= var2036 3)) (and (not (= var2036 2)) (and (not (= var2036 1)) true)))))))) ; Intersect: Cond: $i1 == 7  and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional       
(define-const var2516 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2516)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2516!1 String)
(assert (= var2516!1 ""))
(assert true)
(define-const var2595 String (append/672562846 var2516!1 var3228)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2516!2 String)
(assert (= var2516!2 (str.++ var2516!1 var3228)))
(assert true)
(define-const var870 String (append/672562846 var2595 "\u516d")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u516d") 
(declare-const var2595!1 String)
(assert (= var2595!1 (str.++ var2595 "\u516d")))
(assert true)
(define-const var1618 String (toString/-2075883882 var870)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var1945-to-var2814=([cn.hutool.core.date.Week], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1945=cn.hutool.core.date.Week, var3782=r0, var3228=r3, var3024=null_type, var2133=cn.hutool.core.date.Week$1, var2196=$r1, var2814=java.lang.Enum, var1922=$i0, var2036=$i1, var2516=$r2, var2595=$r4, var870=$r5, var1618=$r6}
; {cn.hutool.core.date.Week=var1945, r0=var3782, r3=var3228, null_type=var3024, cn.hutool.core.date.Week$1=var2133, $r1=var2196, java.lang.Enum=var2814, $i0=var1922, $i1=var2036, $r2=var2516, $r4=var2595, $r5=var870, $r6=var1618}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.date.Week;	r3 := @parameter0: java.lang.String;	$r1 = <cn.hutool.core.date.Week$1: int[] $SwitchMap$cn$hutool$core$date$Week>;	$i0 = virtualinvoke r0.<cn.hutool.core.date.Week: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r27 = new java.lang.StringBuilder;     case 2: goto $r23 = new java.lang.StringBuilder;     case 3: goto $r19 = new java.lang.StringBuilder;     case 4: goto $r15 = new java.lang.StringBuilder;     case 5: goto $r11 = new java.lang.StringBuilder;     case 6: goto $r7 = new java.lang.StringBuilder;     case 7: goto $r2 = new java.lang.StringBuilder;     default: goto return null; };	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u516d");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2