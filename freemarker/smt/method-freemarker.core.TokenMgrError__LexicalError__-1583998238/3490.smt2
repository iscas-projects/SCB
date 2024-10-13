(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var703 0)
(declare-sort var3309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3309_addEscapes/-1481665758 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2506 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2506 null-Bool)))
(declare-const var1667 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1667 null-Int)))
(declare-const var2544 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var2544 null-Int)))
(declare-const var2545 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var2545 null-Int)))
(declare-const var125 String) ; Statement: r12 := @parameter4: java.lang.String 
(assert (not (= var125 null-String)))
(declare-const var249 Int) ; Statement: c0 := @parameter5: char 
(assert (not (= var249 null-Int)))
(define-const var2255 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2255)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2255!1 String)
(assert (= var2255!1 ""))
(assert true)
(define-const var2920 String (append/672562846 var2255!1 "Lexical error: encountered ")) ; Statement: $r10 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error: encountered ") 
(declare-const var2255!2 String)
(assert (= var2255!2 (str.++ var2255!1 "Lexical error: encountered ")))
 ; Statement: if z0 == 0 goto $r20 = new java.lang.StringBuilder 
(assert (not (= (ite var2506 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3542 String "<EOF> ") ; Statement: $r18 = "<EOF> " 
 ; Statement: goto [?= $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3212 String (append/672562846 var2920 var3542)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var2920!1 String)
(assert (= var2920!1 (str.++ var2920 var3542)))
(assert true)
(define-const var135 String (append/672562846 var3212 "after \u0022")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("after \"") 
(declare-const var3212!1 String)
(assert (= var3212!1 (str.++ var3212 "after \u0022")))
(define-const var115 String (var3309_addEscapes/-1481665758 var125)) ; Statement: $r13 = staticinvoke <freemarker.core.TokenMgrError: java.lang.String addEscapes(java.lang.String)>(r12) 
(assert true)
(define-const var3255 String (append/672562846 var135 var115)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var135!1 String)
(assert (= var135!1 (str.++ var135 var115)))
(assert true)
(define-const var599 String (append/672562846 var3255 "\u0022.")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".") 
(declare-const var3255!1 String)
(assert (= var3255!1 (str.++ var3255 "\u0022.")))
(assert true)
(define-const var742 String (toString/-2075883882 var599)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3309_addEscapes/-1481665758=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2506=z0, var1667=i1, var2544=i2, var2545=i3, var125=r12, var703=null_type, var249=c0, var2255=$r19, var2920=$r10, var3542=$r18, var3212=$r11, var135=$r14, var3309=freemarker.core.TokenMgrError, var115=$r13, var3255=$r15, var599=$r16, var742=$r17}
; {z0=var2506, i1=var1667, i2=var2544, i3=var2545, r12=var125, null_type=var703, c0=var249, $r19=var2255, $r10=var2920, $r18=var3542, $r11=var3212, $r14=var135, freemarker.core.TokenMgrError=var3309, $r13=var115, $r15=var3255, $r16=var599, $r17=var742}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	i1 := @parameter1: int;	i2 := @parameter2: int;	i3 := @parameter3: int;	r12 := @parameter4: java.lang.String;	c0 := @parameter5: char;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error: encountered ");	if z0 == 0 goto $r20 = new java.lang.StringBuilder;	$r18 = "<EOF> ";	goto [?= $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18)];	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("after \"");	$r13 = staticinvoke <freemarker.core.TokenMgrError: java.lang.String addEscapes(java.lang.String)>(r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 3