(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1179 0)
(declare-sort var343 0)
(declare-sort var3379 0)
(declare-sort var2089 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var2089) Int)
(declare-fun cast-from-var1179-to-var2089 (var1179) var2089)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1179 var1179)
(declare-const null-String String)
(declare-const var3379-$SwitchMap$cn$hutool$core$date$Week (Array Int Int))
(declare-const var1803 var1179) ; Statement: r0 := @this: cn.hutool.core.date.Week 
(assert (not (= var1803 null-var1179)))
(declare-const var359 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var359 null-String)))
(define-const var1401 (Array Int Int) var3379-$SwitchMap$cn$hutool$core$date$Week) ; Statement: $r1 = <cn.hutool.core.date.Week$1: int[] $SwitchMap$cn$hutool$core$date$Week> 
(assert true)
(define-const var3139 Int (ordinal/-291641772 (cast-from-var1179-to-var2089 var1803))) ; Statement: $i0 = virtualinvoke r0.<cn.hutool.core.date.Week: int ordinal()>() 
(define-const var470 Int (select var1401 var3139)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r27 = new java.lang.StringBuilder;     case 2: goto $r23 = new java.lang.StringBuilder;     case 3: goto $r19 = new java.lang.StringBuilder;     case 4: goto $r15 = new java.lang.StringBuilder;     case 5: goto $r11 = new java.lang.StringBuilder;     case 6: goto $r7 = new java.lang.StringBuilder;     case 7: goto $r2 = new java.lang.StringBuilder;     default: goto return null; } 
(assert (and (= var470 1) true)) ; Intersect: Cond: $i1 == 1  and Non Conditional 
(define-const var857 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var857)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var857!1 String)
(assert (= var857!1 ""))
(assert true)
(define-const var1997 String (append/672562846 var857!1 var359)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var857!2 String)
(assert (= var857!2 (str.++ var857!1 var359)))
(assert true)
(define-const var574 String (append/672562846 var1997 "\u65e5")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u65e5") 
(declare-const var1997!1 String)
(assert (= var1997!1 (str.++ var1997 "\u65e5")))
(assert true)
(define-const var2568 String (toString/-2075883882 var574)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var1179-to-var2089=([cn.hutool.core.date.Week], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1179=cn.hutool.core.date.Week, var1803=r0, var359=r3, var343=null_type, var3379=cn.hutool.core.date.Week$1, var1401=$r1, var2089=java.lang.Enum, var3139=$i0, var470=$i1, var857=$r27, var1997=$r28, var574=$r29, var2568=$r30}
; {cn.hutool.core.date.Week=var1179, r0=var1803, r3=var359, null_type=var343, cn.hutool.core.date.Week$1=var3379, $r1=var1401, java.lang.Enum=var2089, $i0=var3139, $i1=var470, $r27=var857, $r28=var1997, $r29=var574, $r30=var2568}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.date.Week;	r3 := @parameter0: java.lang.String;	$r1 = <cn.hutool.core.date.Week$1: int[] $SwitchMap$cn$hutool$core$date$Week>;	$i0 = virtualinvoke r0.<cn.hutool.core.date.Week: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r27 = new java.lang.StringBuilder;     case 2: goto $r23 = new java.lang.StringBuilder;     case 3: goto $r19 = new java.lang.StringBuilder;     case 4: goto $r15 = new java.lang.StringBuilder;     case 5: goto $r11 = new java.lang.StringBuilder;     case 6: goto $r7 = new java.lang.StringBuilder;     case 7: goto $r2 = new java.lang.StringBuilder;     default: goto return null; };	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u65e5");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	return $r30
;block_num 2