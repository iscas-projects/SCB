(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3307 0)
(declare-sort var2584 0)
(declare-sort var3850 0)
(declare-sort var1217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var1217) Int)
(declare-fun cast-from-var3307-to-var1217 (var3307) var1217)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3307 var3307)
(declare-const null-String String)
(declare-const var3850-$SwitchMap$cn$hutool$core$date$Week (Array Int Int))
(declare-const var389 var3307) ; Statement: r0 := @this: cn.hutool.core.date.Week 
(assert (not (= var389 null-var3307)))
(declare-const var726 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var726 null-String)))
(define-const var2975 (Array Int Int) var3850-$SwitchMap$cn$hutool$core$date$Week) ; Statement: $r1 = <cn.hutool.core.date.Week$1: int[] $SwitchMap$cn$hutool$core$date$Week> 
(assert true)
(define-const var1498 Int (ordinal/-291641772 (cast-from-var3307-to-var1217 var389))) ; Statement: $i0 = virtualinvoke r0.<cn.hutool.core.date.Week: int ordinal()>() 
(define-const var1321 Int (select var2975 var1498)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r27 = new java.lang.StringBuilder;     case 2: goto $r23 = new java.lang.StringBuilder;     case 3: goto $r19 = new java.lang.StringBuilder;     case 4: goto $r15 = new java.lang.StringBuilder;     case 5: goto $r11 = new java.lang.StringBuilder;     case 6: goto $r7 = new java.lang.StringBuilder;     case 7: goto $r2 = new java.lang.StringBuilder;     default: goto return null; } 
(assert (and (= var1321 6) (and (not (= var1321 5)) (and (not (= var1321 4)) (and (not (= var1321 3)) (and (not (= var1321 2)) (and (not (= var1321 1)) true))))))) ; Intersect: Cond: $i1 == 6  and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var1689 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1689)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1689!1 String)
(assert (= var1689!1 ""))
(assert true)
(define-const var2645 String (append/672562846 var1689!1 var726)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1689!2 String)
(assert (= var1689!2 (str.++ var1689!1 var726)))
(assert true)
(define-const var1698 String (append/672562846 var2645 "\u4e94")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u4e94") 
(declare-const var2645!1 String)
(assert (= var2645!1 (str.++ var2645 "\u4e94")))
(assert true)
(define-const var3794 String (toString/-2075883882 var1698)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var3307-to-var1217=([cn.hutool.core.date.Week], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3307=cn.hutool.core.date.Week, var389=r0, var726=r3, var2584=null_type, var3850=cn.hutool.core.date.Week$1, var2975=$r1, var1217=java.lang.Enum, var1498=$i0, var1321=$i1, var1689=$r7, var2645=$r8, var1698=$r9, var3794=$r10}
; {cn.hutool.core.date.Week=var3307, r0=var389, r3=var726, null_type=var2584, cn.hutool.core.date.Week$1=var3850, $r1=var2975, java.lang.Enum=var1217, $i0=var1498, $i1=var1321, $r7=var1689, $r8=var2645, $r9=var1698, $r10=var3794}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.date.Week;	r3 := @parameter0: java.lang.String;	$r1 = <cn.hutool.core.date.Week$1: int[] $SwitchMap$cn$hutool$core$date$Week>;	$i0 = virtualinvoke r0.<cn.hutool.core.date.Week: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r27 = new java.lang.StringBuilder;     case 2: goto $r23 = new java.lang.StringBuilder;     case 3: goto $r19 = new java.lang.StringBuilder;     case 4: goto $r15 = new java.lang.StringBuilder;     case 5: goto $r11 = new java.lang.StringBuilder;     case 6: goto $r7 = new java.lang.StringBuilder;     case 7: goto $r2 = new java.lang.StringBuilder;     default: goto return null; };	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u4e94");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2