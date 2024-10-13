(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2876 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3306 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3306 null-Bool)))
(declare-const var2438 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var2438 null-Int)))
(declare-const var3815 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3815 null-Int)))
(declare-const var3095 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var3095 null-Int)))
(declare-const var1892 String) ; Statement: r14 := @parameter4: java.lang.String 
(assert (not (= var1892 null-String)))
(declare-const var1156 Int) ; Statement: i2 := @parameter5: int 
(assert (not (= var1156 null-Int)))
(define-const var2293 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2293)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2293!1 String)
(assert (= var2293!1 ""))
(assert true)
(define-const var3635 String (append/672562846 var2293!1 "Lexical error at line ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error at line ") 
(declare-const var2293!2 String)
(assert (= var2293!2 (str.++ var2293!1 "Lexical error at line ")))
(assert true)
(define-const var3292 String (append/-1001720160 var3635 var3815)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3635!1 String)
(assert (str.prefixof var3635 var3635!1))
(assert true)
(define-const var2532 String (append/672562846 var3292 ", column ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var3292!1 String)
(assert (= var3292!1 (str.++ var3292 ", column ")))
(assert true)
(define-const var3012 String (append/-1001720160 var2532 var3095)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2532!1 String)
(assert (str.prefixof var2532 var2532!1))
(assert true)
(define-const var1532 String (append/672562846 var3012 ".  Encountered: ")) ; Statement: $r13 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Encountered: ") 
(declare-const var3012!1 String)
(assert (= var3012!1 (str.++ var3012 ".  Encountered: ")))
 ; Statement: if z0 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (not (= (ite var3306 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3096 String "<EOF>") ; Statement: $r28 = "<EOF>" 
 ; Statement: goto [?= $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2878 String (append/672562846 var1532 var3096)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var1532!1 String)
(assert (= var1532!1 (str.++ var1532 var3096)))
 ; Statement: if r14 == null goto $r29 = "" 
(assert (= var1892 null-String)) ; Cond: r14 == null 
(define-const var1812 String "") ; Statement: $r29 = "" 
 ; Statement: goto [?= $r20 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29)] 
(assert true) ; Non Conditional
(assert true)
(define-const var571 String (append/672562846 var2878 var1812)) ; Statement: $r20 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var2878!1 String)
(assert (= var2878!1 (str.++ var2878 var1812)))
 ; Statement: if i3 != 0 goto $r16 = new java.lang.StringBuilder 
(assert (not (= var2438 0))) ; Cond: i3 != 0 
(define-const var2825 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2825)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2825!1 String)
(assert (= var2825!1 ""))
(assert true)
(define-const var3829 String (append/672562846 var2825!1 " (in lexical state ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (in lexical state ") 
(declare-const var2825!2 String)
(assert (= var2825!2 (str.++ var2825!1 " (in lexical state ")))
(assert true)
(define-const var606 String (append/-1001720160 var3829 var2438)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var3829!1 String)
(assert (str.prefixof var3829 var3829!1))
(assert true)
(define-const var959 String (append/672562846 var606 ")")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var606!1 String)
(assert (= var606!1 (str.++ var606 ")")))
(assert true)
(define-const var415 String (toString/-2075883882 var959)) ; Statement: $r30 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var1523 String (append/672562846 var571 var415)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var571!1 String)
(assert (= var571!1 (str.++ var571 var415)))
(assert true)
(define-const var2200 String (toString/-2075883882 var1523)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3306=z0, var2438=i3, var3815=i0, var3095=i1, var1892=r14, var2876=null_type, var1156=i2, var2293=$r0, var3635=$r1, var3292=$r2, var2532=$r3, var3012=$r4, var1532=$r13, var3096=$r28, var2878=$r15, var1812=$r29, var571=$r20, var2825=$r16, var3829=$r17, var606=$r18, var959=$r19, var415=$r30, var1523=$r21, var2200=$r22}
; {z0=var3306, i3=var2438, i0=var3815, i1=var3095, r14=var1892, null_type=var2876, i2=var1156, $r0=var2293, $r1=var3635, $r2=var3292, $r3=var2532, $r4=var3012, $r13=var1532, $r28=var3096, $r15=var2878, $r29=var1812, $r20=var571, $r16=var2825, $r17=var3829, $r18=var606, $r19=var959, $r30=var415, $r21=var1523, $r22=var2200}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts z0 := @parameter0: boolean;	i3 := @parameter1: int;	i0 := @parameter2: int;	i1 := @parameter3: int;	r14 := @parameter4: java.lang.String;	i2 := @parameter5: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error at line ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r13 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Encountered: ");	if z0 == 0 goto $r5 = new java.lang.StringBuilder;	$r28 = "<EOF>";	goto [?= $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28)];	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	if r14 == null goto $r29 = "";	$r29 = "";	goto [?= $r20 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29)];	$r20 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	if i3 != 0 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (in lexical state ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r30 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	return $r22
;block_num 7