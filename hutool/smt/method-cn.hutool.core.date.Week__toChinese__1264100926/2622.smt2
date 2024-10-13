(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3078 0)
(declare-sort var2699 0)
(declare-sort var3327 0)
(declare-sort var2695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var2695) Int)
(declare-fun cast-from-var3078-to-var2695 (var3078) var2695)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3078 var3078)
(declare-const null-String String)
(declare-const var3327-$SwitchMap$cn$hutool$core$date$Week (Array Int Int))
(declare-const var2689 var3078) ; Statement: r0 := @this: cn.hutool.core.date.Week 
(assert (not (= var2689 null-var3078)))
(declare-const var2374 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2374 null-String)))
(define-const var1321 (Array Int Int) var3327-$SwitchMap$cn$hutool$core$date$Week) ; Statement: $r1 = <cn.hutool.core.date.Week$1: int[] $SwitchMap$cn$hutool$core$date$Week> 
(assert true)
(define-const var3659 Int (ordinal/-291641772 (cast-from-var3078-to-var2695 var2689))) ; Statement: $i0 = virtualinvoke r0.<cn.hutool.core.date.Week: int ordinal()>() 
(define-const var773 Int (select var1321 var3659)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r27 = new java.lang.StringBuilder;     case 2: goto $r23 = new java.lang.StringBuilder;     case 3: goto $r19 = new java.lang.StringBuilder;     case 4: goto $r15 = new java.lang.StringBuilder;     case 5: goto $r11 = new java.lang.StringBuilder;     case 6: goto $r7 = new java.lang.StringBuilder;     case 7: goto $r2 = new java.lang.StringBuilder;     default: goto return null; } 
(assert (and (= var773 3) (and (not (= var773 2)) (and (not (= var773 1)) true)))) ; Intersect: Cond: $i1 == 3  and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var3560 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3560)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3560!1 String)
(assert (= var3560!1 ""))
(assert true)
(define-const var1349 String (append/672562846 var3560!1 var2374)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3560!2 String)
(assert (= var3560!2 (str.++ var3560!1 var2374)))
(assert true)
(define-const var2818 String (append/672562846 var1349 "\u4e8c")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u4e8c") 
(declare-const var1349!1 String)
(assert (= var1349!1 (str.++ var1349 "\u4e8c")))
(assert true)
(define-const var632 String (toString/-2075883882 var2818)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var3078-to-var2695=([cn.hutool.core.date.Week], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3078=cn.hutool.core.date.Week, var2689=r0, var2374=r3, var2699=null_type, var3327=cn.hutool.core.date.Week$1, var1321=$r1, var2695=java.lang.Enum, var3659=$i0, var773=$i1, var3560=$r19, var1349=$r20, var2818=$r21, var632=$r22}
; {cn.hutool.core.date.Week=var3078, r0=var2689, r3=var2374, null_type=var2699, cn.hutool.core.date.Week$1=var3327, $r1=var1321, java.lang.Enum=var2695, $i0=var3659, $i1=var773, $r19=var3560, $r20=var1349, $r21=var2818, $r22=var632}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.date.Week;	r3 := @parameter0: java.lang.String;	$r1 = <cn.hutool.core.date.Week$1: int[] $SwitchMap$cn$hutool$core$date$Week>;	$i0 = virtualinvoke r0.<cn.hutool.core.date.Week: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r27 = new java.lang.StringBuilder;     case 2: goto $r23 = new java.lang.StringBuilder;     case 3: goto $r19 = new java.lang.StringBuilder;     case 4: goto $r15 = new java.lang.StringBuilder;     case 5: goto $r11 = new java.lang.StringBuilder;     case 6: goto $r7 = new java.lang.StringBuilder;     case 7: goto $r2 = new java.lang.StringBuilder;     default: goto return null; };	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u4e8c");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	return $r22
;block_num 2