(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1407 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const var1407-MONTH_NAME (Array Int String))
(declare-const var1913 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1913 null-Bool)))
(declare-const var3051 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3051 null-Int)))
(declare-const var2154 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2154 null-Bool)))
(define-const var3052 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3052)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3052!1 String)
(assert (= var3052!1 ""))
 ; Statement: if z0 == 0 goto $r6 = "" 
(assert (= (ite var1913 1 0) 0)) ; Cond: z0 == 0 
(define-const var259 String "") ; Statement: $r6 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var1078 String (append/672562846 var3052!1 var259)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3052!2 String)
(assert (= var3052!2 (str.++ var3052!1 var259)))
 ; Statement: if z1 == 0 goto $r7 = <cn.hutool.core.date.chinese.ChineseMonth: java.lang.String[] MONTH_NAME> 
(assert (= (ite var2154 1 0) 0)) ; Cond: z1 == 0 
(define-const var79 (Array Int String) var1407-MONTH_NAME) ; Statement: $r7 = <cn.hutool.core.date.chinese.ChineseMonth: java.lang.String[] MONTH_NAME> 
(assert true) ; Non Conditional
(define-const var2775 Int (- var3051 1)) ; Statement: $i1 = i0 - 1 
(define-const var3373 String (select var79 var2775)) ; Statement: $r1 = $r7[$i1] 
(assert true)
(define-const var797 String (append/672562846 var1078 var3373)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var1078!1 String)
(assert (= var1078!1 (str.++ var1078 var3373)))
(assert true)
(define-const var1470 String (append/672562846 var797 "\u6708")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u6708") 
(declare-const var797!1 String)
(assert (= var797!1 (str.++ var797 "\u6708")))
(assert true)
(define-const var1963 String (toString/-2075883882 var1470)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1913=z0, var3051=i0, var2154=z1, var3052=$r0, var259=$r6, var1078=$r2, var1407=cn.hutool.core.date.chinese.ChineseMonth, var79=$r7, var2775=$i1, var3373=$r1, var797=$r3, var1470=$r4, var1963=$r5}
; {z0=var1913, i0=var3051, z1=var2154, $r0=var3052, $r6=var259, $r2=var1078, cn.hutool.core.date.chinese.ChineseMonth=var1407, $r7=var79, $i1=var2775, $r1=var3373, $r3=var797, $r4=var1470, $r5=var1963}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	i0 := @parameter1: int;	z1 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r6 = "";	$r6 = "";	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	if z1 == 0 goto $r7 = <cn.hutool.core.date.chinese.ChineseMonth: java.lang.String[] MONTH_NAME>;	$r7 = <cn.hutool.core.date.chinese.ChineseMonth: java.lang.String[] MONTH_NAME>;	$i1 = i0 - 1;	$r1 = $r7[$i1];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u6708");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5