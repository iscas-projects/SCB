(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3270 0)
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
(declare-const var2004 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2004 null-Bool)))
(declare-const var569 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var569 null-Int)))
(declare-const var97 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var97 null-Int)))
(declare-const var856 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var856 null-Int)))
(declare-const var1827 String) ; Statement: r14 := @parameter4: java.lang.String 
(assert (not (= var1827 null-String)))
(declare-const var3013 Int) ; Statement: i2 := @parameter5: int 
(assert (not (= var3013 null-Int)))
(define-const var1011 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1011)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1011!1 String)
(assert (= var1011!1 ""))
(assert true)
(define-const var1541 String (append/672562846 var1011!1 "Lexical error at line ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error at line ") 
(declare-const var1011!2 String)
(assert (= var1011!2 (str.++ var1011!1 "Lexical error at line ")))
(assert true)
(define-const var2235 String (append/-1001720160 var1541 var97)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1541!1 String)
(assert (str.prefixof var1541 var1541!1))
(assert true)
(define-const var758 String (append/672562846 var2235 ", column ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var2235!1 String)
(assert (= var2235!1 (str.++ var2235 ", column ")))
(assert true)
(define-const var3128 String (append/-1001720160 var758 var856)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var758!1 String)
(assert (str.prefixof var758 var758!1))
(assert true)
(define-const var934 String (append/672562846 var3128 ".  Encountered: ")) ; Statement: $r13 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Encountered: ") 
(declare-const var3128!1 String)
(assert (= var3128!1 (str.++ var3128 ".  Encountered: ")))
 ; Statement: if z0 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (not (= (ite var2004 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3937 String "<EOF>") ; Statement: $r28 = "<EOF>" 
 ; Statement: goto [?= $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1728 String (append/672562846 var934 var3937)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var934!1 String)
(assert (= var934!1 (str.++ var934 var3937)))
 ; Statement: if r14 == null goto $r29 = "" 
(assert (= var1827 null-String)) ; Cond: r14 == null 
(define-const var3484 String "") ; Statement: $r29 = "" 
 ; Statement: goto [?= $r20 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1232 String (append/672562846 var1728 var3484)) ; Statement: $r20 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var1728!1 String)
(assert (= var1728!1 (str.++ var1728 var3484)))
 ; Statement: if i3 != 0 goto $r16 = new java.lang.StringBuilder 
(assert (not (not (= var569 0)))) ; Negate: Cond: i3 != 0  
(define-const var2670 String "") ; Statement: $r30 = "" 
 ; Statement: goto [?= $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3215 String (append/672562846 var1232 var2670)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var1232!1 String)
(assert (= var1232!1 (str.++ var1232 var2670)))
(assert true)
(define-const var3085 String (toString/-2075883882 var3215)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2004=z0, var569=i3, var97=i0, var856=i1, var1827=r14, var3270=null_type, var3013=i2, var1011=$r0, var1541=$r1, var2235=$r2, var758=$r3, var3128=$r4, var934=$r13, var3937=$r28, var1728=$r15, var3484=$r29, var1232=$r20, var2670=$r30, var3215=$r21, var3085=$r22}
; {z0=var2004, i3=var569, i0=var97, i1=var856, r14=var1827, null_type=var3270, i2=var3013, $r0=var1011, $r1=var1541, $r2=var2235, $r3=var758, $r4=var3128, $r13=var934, $r28=var3937, $r15=var1728, $r29=var3484, $r20=var1232, $r30=var2670, $r21=var3215, $r22=var3085}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	i3 := @parameter1: int;	i0 := @parameter2: int;	i1 := @parameter3: int;	r14 := @parameter4: java.lang.String;	i2 := @parameter5: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error at line ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r13 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Encountered: ");	if z0 == 0 goto $r5 = new java.lang.StringBuilder;	$r28 = "<EOF>";	goto [?= $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28)];	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	if r14 == null goto $r29 = "";	$r29 = "";	goto [?= $r20 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29)];	$r20 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	if i3 != 0 goto $r16 = new java.lang.StringBuilder;	$r30 = "";	goto [?= $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30)];	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	return $r22
;block_num 7