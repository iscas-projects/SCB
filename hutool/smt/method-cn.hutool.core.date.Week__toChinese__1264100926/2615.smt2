(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var320 0)
(declare-sort var2638 0)
(declare-sort var1741 0)
(declare-sort var3464 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var3464) Int)
(declare-fun cast-from-var320-to-var3464 (var320) var3464)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var320 var320)
(declare-const null-String String)
(declare-const var1741-$SwitchMap$cn$hutool$core$date$Week (Array Int Int))
(declare-const var300 var320) ; Statement: r0 := @this: cn.hutool.core.date.Week 
(assert (not (= var300 null-var320)))
(declare-const var3095 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3095 null-String)))
(define-const var211 (Array Int Int) var1741-$SwitchMap$cn$hutool$core$date$Week) ; Statement: $r1 = <cn.hutool.core.date.Week$1: int[] $SwitchMap$cn$hutool$core$date$Week> 
(assert true)
(define-const var210 Int (ordinal/-291641772 (cast-from-var320-to-var3464 var300))) ; Statement: $i0 = virtualinvoke r0.<cn.hutool.core.date.Week: int ordinal()>() 
(define-const var644 Int (select var211 var210)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r27 = new java.lang.StringBuilder;     case 2: goto $r23 = new java.lang.StringBuilder;     case 3: goto $r19 = new java.lang.StringBuilder;     case 4: goto $r15 = new java.lang.StringBuilder;     case 5: goto $r11 = new java.lang.StringBuilder;     case 6: goto $r7 = new java.lang.StringBuilder;     case 7: goto $r2 = new java.lang.StringBuilder;     default: goto return null; } 
(assert (and (= var644 2) (and (not (= var644 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var2353 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2353)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2353!1 String)
(assert (= var2353!1 ""))
(assert true)
(define-const var3800 String (append/672562846 var2353!1 var3095)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2353!2 String)
(assert (= var2353!2 (str.++ var2353!1 var3095)))
(assert true)
(define-const var3379 String (append/672562846 var3800 "\u4e00")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u4e00") 
(declare-const var3800!1 String)
(assert (= var3800!1 (str.++ var3800 "\u4e00")))
(assert true)
(define-const var3541 String (toString/-2075883882 var3379)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var320-to-var3464=([cn.hutool.core.date.Week], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var320=cn.hutool.core.date.Week, var300=r0, var3095=r3, var2638=null_type, var1741=cn.hutool.core.date.Week$1, var211=$r1, var3464=java.lang.Enum, var210=$i0, var644=$i1, var2353=$r23, var3800=$r24, var3379=$r25, var3541=$r26}
; {cn.hutool.core.date.Week=var320, r0=var300, r3=var3095, null_type=var2638, cn.hutool.core.date.Week$1=var1741, $r1=var211, java.lang.Enum=var3464, $i0=var210, $i1=var644, $r23=var2353, $r24=var3800, $r25=var3379, $r26=var3541}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.date.Week;	r3 := @parameter0: java.lang.String;	$r1 = <cn.hutool.core.date.Week$1: int[] $SwitchMap$cn$hutool$core$date$Week>;	$i0 = virtualinvoke r0.<cn.hutool.core.date.Week: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r27 = new java.lang.StringBuilder;     case 2: goto $r23 = new java.lang.StringBuilder;     case 3: goto $r19 = new java.lang.StringBuilder;     case 4: goto $r15 = new java.lang.StringBuilder;     case 5: goto $r11 = new java.lang.StringBuilder;     case 6: goto $r7 = new java.lang.StringBuilder;     case 7: goto $r2 = new java.lang.StringBuilder;     default: goto return null; };	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u4e00");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	return $r26
;block_num 2