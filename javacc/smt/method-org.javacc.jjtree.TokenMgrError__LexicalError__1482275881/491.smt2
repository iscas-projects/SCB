(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2434 0)
(declare-sort var709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun var709_addEscapes/1388005947 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3055 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3055 null-Bool)))
(declare-const var3640 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var3640 null-Int)))
(declare-const var644 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var644 null-Int)))
(declare-const var723 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var723 null-Int)))
(declare-const var843 String) ; Statement: r16 := @parameter4: java.lang.String 
(assert (not (= var843 null-String)))
(declare-const var3808 Int) ; Statement: c2 := @parameter5: char 
(assert (not (= var3808 null-Int)))
(define-const var3231 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3231)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3231!1 String)
(assert (= var3231!1 ""))
(assert true)
(define-const var2656 String (append/672562846 var3231!1 "Lexical error at line ")) ; Statement: $r1 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error at line ") 
(declare-const var3231!2 String)
(assert (= var3231!2 (str.++ var3231!1 "Lexical error at line ")))
(assert true)
(define-const var359 String (append/-1001720160 var2656 var644)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2656!1 String)
(assert (str.prefixof var2656 var2656!1))
(assert true)
(define-const var3454 String (append/672562846 var359 ", column ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var359!1 String)
(assert (= var359!1 (str.++ var359 ", column ")))
(assert true)
(define-const var3847 String (append/-1001720160 var3454 var723)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3454!1 String)
(assert (str.prefixof var3454 var3454!1))
(assert true)
(define-const var3725 String (append/672562846 var3847 ".  Encountered: ")) ; Statement: $r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Encountered: ") 
(declare-const var3847!1 String)
(assert (= var3847!1 (str.++ var3847 ".  Encountered: ")))
 ; Statement: if z0 == 0 goto $r24 = new java.lang.StringBuilder 
(assert (not (= (ite var3055 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3007 String "<EOF> ") ; Statement: $r22 = "<EOF> " 
 ; Statement: goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1080 String (append/672562846 var3725 var3007)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3725!1 String)
(assert (= var3725!1 (str.++ var3725 var3007)))
(assert true)
(define-const var816 String (append/672562846 var1080 "after : \u0022")) ; Statement: $r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("after : \"") 
(declare-const var1080!1 String)
(assert (= var1080!1 (str.++ var1080 "after : \u0022")))
(define-const var2335 String (var709_addEscapes/1388005947 var843)) ; Statement: $r17 = staticinvoke <org.javacc.jjtree.TokenMgrError: java.lang.String addEscapes(java.lang.String)>(r16) 
(assert true)
(define-const var2182 String (append/672562846 var816 var2335)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var816!1 String)
(assert (= var816!1 (str.++ var816 var2335)))
(assert true)
(define-const var1602 String (append/672562846 var2182 "\u0022")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var2182!1 String)
(assert (= var2182!1 (str.++ var2182 "\u0022")))
(assert true)
(define-const var30 String (toString/-2075883882 var1602)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), var709_addEscapes/1388005947=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3055=z0, var3640=i3, var644=i0, var723=i1, var843=r16, var2434=null_type, var3808=c2, var3231=$r23, var2656=$r1, var359=$r2, var3454=$r3, var3847=$r4, var3725=$r14, var3007=$r22, var1080=$r15, var816=$r18, var709=org.javacc.jjtree.TokenMgrError, var2335=$r17, var2182=$r19, var1602=$r20, var30=$r21}
; {z0=var3055, i3=var3640, i0=var644, i1=var723, r16=var843, null_type=var2434, c2=var3808, $r23=var3231, $r1=var2656, $r2=var359, $r3=var3454, $r4=var3847, $r14=var3725, $r22=var3007, $r15=var1080, $r18=var816, org.javacc.jjtree.TokenMgrError=var709, $r17=var2335, $r19=var2182, $r20=var1602, $r21=var30}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	i3 := @parameter1: int;	i0 := @parameter2: int;	i1 := @parameter3: int;	r16 := @parameter4: java.lang.String;	c2 := @parameter5: char;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error at line ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Encountered: ");	if z0 == 0 goto $r24 = new java.lang.StringBuilder;	$r22 = "<EOF> ";	goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)];	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("after : \"");	$r17 = staticinvoke <org.javacc.jjtree.TokenMgrError: java.lang.String addEscapes(java.lang.String)>(r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	return $r21
;block_num 3