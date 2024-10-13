(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3188 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const var3188-MONTH_NAME (Array Int String))
(declare-const var358 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var358 null-Bool)))
(declare-const var2990 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2990 null-Int)))
(declare-const var2253 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2253 null-Bool)))
(define-const var30 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var30)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var30!1 String)
(assert (= var30!1 ""))
 ; Statement: if z0 == 0 goto $r6 = "" 
(assert (not (= (ite var358 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3237 String "\u95f0") ; Statement: $r6 = "\u95f0" 
 ; Statement: goto [?= $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3289 String (append/672562846 var30!1 var3237)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var30!2 String)
(assert (= var30!2 (str.++ var30!1 var3237)))
 ; Statement: if z1 == 0 goto $r7 = <cn.hutool.core.date.chinese.ChineseMonth: java.lang.String[] MONTH_NAME> 
(assert (= (ite var2253 1 0) 0)) ; Cond: z1 == 0 
(define-const var91 (Array Int String) var3188-MONTH_NAME) ; Statement: $r7 = <cn.hutool.core.date.chinese.ChineseMonth: java.lang.String[] MONTH_NAME> 
(assert true) ; Non Conditional
(define-const var406 Int (- var2990 1)) ; Statement: $i1 = i0 - 1 
(define-const var425 String (select var91 var406)) ; Statement: $r1 = $r7[$i1] 
(assert true)
(define-const var1796 String (append/672562846 var3289 var425)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var3289!1 String)
(assert (= var3289!1 (str.++ var3289 var425)))
(assert true)
(define-const var3724 String (append/672562846 var1796 "\u6708")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u6708") 
(declare-const var1796!1 String)
(assert (= var1796!1 (str.++ var1796 "\u6708")))
(assert true)
(define-const var398 String (toString/-2075883882 var3724)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var358=z0, var2990=i0, var2253=z1, var30=$r0, var3237=$r6, var3289=$r2, var3188=cn.hutool.core.date.chinese.ChineseMonth, var91=$r7, var406=$i1, var425=$r1, var1796=$r3, var3724=$r4, var398=$r5}
; {z0=var358, i0=var2990, z1=var2253, $r0=var30, $r6=var3237, $r2=var3289, cn.hutool.core.date.chinese.ChineseMonth=var3188, $r7=var91, $i1=var406, $r1=var425, $r3=var1796, $r4=var3724, $r5=var398}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	i0 := @parameter1: int;	z1 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r6 = "";	$r6 = "\u95f0";	goto [?= $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)];	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	if z1 == 0 goto $r7 = <cn.hutool.core.date.chinese.ChineseMonth: java.lang.String[] MONTH_NAME>;	$r7 = <cn.hutool.core.date.chinese.ChineseMonth: java.lang.String[] MONTH_NAME>;	$i1 = i0 - 1;	$r1 = $r7[$i1];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u6708");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5