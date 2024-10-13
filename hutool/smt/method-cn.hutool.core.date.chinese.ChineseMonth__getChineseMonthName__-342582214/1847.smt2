(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1675 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const var1675-MONTH_NAME_TRADITIONAL (Array Int String))
(declare-const var2256 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2256 null-Bool)))
(declare-const var1126 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1126 null-Int)))
(declare-const var3230 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3230 null-Bool)))
(define-const var3270 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3270)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3270!1 String)
(assert (= var3270!1 ""))
 ; Statement: if z0 == 0 goto $r6 = "" 
(assert (= (ite var2256 1 0) 0)) ; Cond: z0 == 0 
(define-const var3711 String "") ; Statement: $r6 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var3801 String (append/672562846 var3270!1 var3711)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3270!2 String)
(assert (= var3270!2 (str.++ var3270!1 var3711)))
 ; Statement: if z1 == 0 goto $r7 = <cn.hutool.core.date.chinese.ChineseMonth: java.lang.String[] MONTH_NAME> 
(assert (not (= (ite var3230 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var532 (Array Int String) var1675-MONTH_NAME_TRADITIONAL) ; Statement: $r7 = <cn.hutool.core.date.chinese.ChineseMonth: java.lang.String[] MONTH_NAME_TRADITIONAL> 
 ; Statement: goto [?= $i1 = i0 - 1] 
(assert true) ; Non Conditional
(define-const var2831 Int (- var1126 1)) ; Statement: $i1 = i0 - 1 
(define-const var3095 String (select var532 var2831)) ; Statement: $r1 = $r7[$i1] 
(assert true)
(define-const var1809 String (append/672562846 var3801 var3095)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var3801!1 String)
(assert (= var3801!1 (str.++ var3801 var3095)))
(assert true)
(define-const var1251 String (append/672562846 var1809 "\u6708")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u6708") 
(declare-const var1809!1 String)
(assert (= var1809!1 (str.++ var1809 "\u6708")))
(assert true)
(define-const var3862 String (toString/-2075883882 var1251)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2256=z0, var1126=i0, var3230=z1, var3270=$r0, var3711=$r6, var3801=$r2, var1675=cn.hutool.core.date.chinese.ChineseMonth, var532=$r7, var2831=$i1, var3095=$r1, var1809=$r3, var1251=$r4, var3862=$r5}
; {z0=var2256, i0=var1126, z1=var3230, $r0=var3270, $r6=var3711, $r2=var3801, cn.hutool.core.date.chinese.ChineseMonth=var1675, $r7=var532, $i1=var2831, $r1=var3095, $r3=var1809, $r4=var1251, $r5=var3862}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	i0 := @parameter1: int;	z1 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r6 = "";	$r6 = "";	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	if z1 == 0 goto $r7 = <cn.hutool.core.date.chinese.ChineseMonth: java.lang.String[] MONTH_NAME>;	$r7 = <cn.hutool.core.date.chinese.ChineseMonth: java.lang.String[] MONTH_NAME_TRADITIONAL>;	goto [?= $i1 = i0 - 1];	$i1 = i0 - 1;	$r1 = $r7[$i1];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u6708");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5