(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1984 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const var1984-MONTH_NAME_TRADITIONAL (Array Int String))
(declare-const var1245 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1245 null-Bool)))
(declare-const var3597 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3597 null-Int)))
(declare-const var3108 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3108 null-Bool)))
(define-const var2005 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2005)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2005!1 String)
(assert (= var2005!1 ""))
 ; Statement: if z0 == 0 goto $r6 = "" 
(assert (not (= (ite var1245 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1273 String "\u95f0") ; Statement: $r6 = "\u95f0" 
 ; Statement: goto [?= $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1723 String (append/672562846 var2005!1 var1273)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2005!2 String)
(assert (= var2005!2 (str.++ var2005!1 var1273)))
 ; Statement: if z1 == 0 goto $r7 = <cn.hutool.core.date.chinese.ChineseMonth: java.lang.String[] MONTH_NAME> 
(assert (not (= (ite var3108 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var2457 (Array Int String) var1984-MONTH_NAME_TRADITIONAL) ; Statement: $r7 = <cn.hutool.core.date.chinese.ChineseMonth: java.lang.String[] MONTH_NAME_TRADITIONAL> 
 ; Statement: goto [?= $i1 = i0 - 1] 
(assert true) ; Non Conditional
(define-const var3203 Int (- var3597 1)) ; Statement: $i1 = i0 - 1 
(define-const var3007 String (select var2457 var3203)) ; Statement: $r1 = $r7[$i1] 
(assert true)
(define-const var980 String (append/672562846 var1723 var3007)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var1723!1 String)
(assert (= var1723!1 (str.++ var1723 var3007)))
(assert true)
(define-const var3341 String (append/672562846 var980 "\u6708")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u6708") 
(declare-const var980!1 String)
(assert (= var980!1 (str.++ var980 "\u6708")))
(assert true)
(define-const var2499 String (toString/-2075883882 var3341)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1245=z0, var3597=i0, var3108=z1, var2005=$r0, var1273=$r6, var1723=$r2, var1984=cn.hutool.core.date.chinese.ChineseMonth, var2457=$r7, var3203=$i1, var3007=$r1, var980=$r3, var3341=$r4, var2499=$r5}
; {z0=var1245, i0=var3597, z1=var3108, $r0=var2005, $r6=var1273, $r2=var1723, cn.hutool.core.date.chinese.ChineseMonth=var1984, $r7=var2457, $i1=var3203, $r1=var3007, $r3=var980, $r4=var3341, $r5=var2499}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	i0 := @parameter1: int;	z1 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r6 = "";	$r6 = "\u95f0";	goto [?= $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)];	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	if z1 == 0 goto $r7 = <cn.hutool.core.date.chinese.ChineseMonth: java.lang.String[] MONTH_NAME>;	$r7 = <cn.hutool.core.date.chinese.ChineseMonth: java.lang.String[] MONTH_NAME_TRADITIONAL>;	goto [?= $i1 = i0 - 1];	$i1 = i0 - 1;	$r1 = $r7[$i1];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u6708");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5