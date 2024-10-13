(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1439 0)
(declare-sort var2735 0)
(declare-sort var2899 0)
(declare-sort var2614 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var2614) Int)
(declare-fun cast-from-var1439-to-var2614 (var1439) var2614)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1439 var1439)
(declare-const null-String String)
(declare-const var2899-$SwitchMap$cn$hutool$core$date$Week (Array Int Int))
(declare-const var2655 var1439) ; Statement: r0 := @this: cn.hutool.core.date.Week 
(assert (not (= var2655 null-var1439)))
(declare-const var2012 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2012 null-String)))
(define-const var1482 (Array Int Int) var2899-$SwitchMap$cn$hutool$core$date$Week) ; Statement: $r1 = <cn.hutool.core.date.Week$1: int[] $SwitchMap$cn$hutool$core$date$Week> 
(assert true)
(define-const var2950 Int (ordinal/-291641772 (cast-from-var1439-to-var2614 var2655))) ; Statement: $i0 = virtualinvoke r0.<cn.hutool.core.date.Week: int ordinal()>() 
(define-const var847 Int (select var1482 var2950)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r27 = new java.lang.StringBuilder;     case 2: goto $r23 = new java.lang.StringBuilder;     case 3: goto $r19 = new java.lang.StringBuilder;     case 4: goto $r15 = new java.lang.StringBuilder;     case 5: goto $r11 = new java.lang.StringBuilder;     case 6: goto $r7 = new java.lang.StringBuilder;     case 7: goto $r2 = new java.lang.StringBuilder;     default: goto return null; } 
(assert (and (= var847 4) (and (not (= var847 3)) (and (not (= var847 2)) (and (not (= var847 1)) true))))) ; Intersect: Cond: $i1 == 4  and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(define-const var3995 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3995)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3995!1 String)
(assert (= var3995!1 ""))
(assert true)
(define-const var3665 String (append/672562846 var3995!1 var2012)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3995!2 String)
(assert (= var3995!2 (str.++ var3995!1 var2012)))
(assert true)
(define-const var2029 String (append/672562846 var3665 "\u4e09")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u4e09") 
(declare-const var3665!1 String)
(assert (= var3665!1 (str.++ var3665 "\u4e09")))
(assert true)
(define-const var1032 String (toString/-2075883882 var2029)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var1439-to-var2614=([cn.hutool.core.date.Week], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1439=cn.hutool.core.date.Week, var2655=r0, var2012=r3, var2735=null_type, var2899=cn.hutool.core.date.Week$1, var1482=$r1, var2614=java.lang.Enum, var2950=$i0, var847=$i1, var3995=$r15, var3665=$r16, var2029=$r17, var1032=$r18}
; {cn.hutool.core.date.Week=var1439, r0=var2655, r3=var2012, null_type=var2735, cn.hutool.core.date.Week$1=var2899, $r1=var1482, java.lang.Enum=var2614, $i0=var2950, $i1=var847, $r15=var3995, $r16=var3665, $r17=var2029, $r18=var1032}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.date.Week;	r3 := @parameter0: java.lang.String;	$r1 = <cn.hutool.core.date.Week$1: int[] $SwitchMap$cn$hutool$core$date$Week>;	$i0 = virtualinvoke r0.<cn.hutool.core.date.Week: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r27 = new java.lang.StringBuilder;     case 2: goto $r23 = new java.lang.StringBuilder;     case 3: goto $r19 = new java.lang.StringBuilder;     case 4: goto $r15 = new java.lang.StringBuilder;     case 5: goto $r11 = new java.lang.StringBuilder;     case 6: goto $r7 = new java.lang.StringBuilder;     case 7: goto $r2 = new java.lang.StringBuilder;     default: goto return null; };	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u4e09");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 2