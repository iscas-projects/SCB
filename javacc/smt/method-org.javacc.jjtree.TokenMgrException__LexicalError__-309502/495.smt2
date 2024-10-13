(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3505 0)
(declare-sort var538 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun var538_addEscapes/-1529316606 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1389 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1389 null-Bool)))
(declare-const var1867 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var1867 null-Int)))
(declare-const var263 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var263 null-Int)))
(declare-const var686 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var686 null-Int)))
(declare-const var156 String) ; Statement: r16 := @parameter4: java.lang.String 
(assert (not (= var156 null-String)))
(declare-const var3525 Int) ; Statement: c2 := @parameter5: char 
(assert (not (= var3525 null-Int)))
(define-const var1506 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1506)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1506!1 String)
(assert (= var1506!1 ""))
(assert true)
(define-const var3528 String (append/672562846 var1506!1 "Lexical error at line ")) ; Statement: $r1 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error at line ") 
(declare-const var1506!2 String)
(assert (= var1506!2 (str.++ var1506!1 "Lexical error at line ")))
(assert true)
(define-const var2123 String (append/-1001720160 var3528 var263)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3528!1 String)
(assert (str.prefixof var3528 var3528!1))
(assert true)
(define-const var1013 String (append/672562846 var2123 ", column ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var2123!1 String)
(assert (= var2123!1 (str.++ var2123 ", column ")))
(assert true)
(define-const var431 String (append/-1001720160 var1013 var686)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1013!1 String)
(assert (str.prefixof var1013 var1013!1))
(assert true)
(define-const var2930 String (append/672562846 var431 ".  Encountered: ")) ; Statement: $r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Encountered: ") 
(declare-const var431!1 String)
(assert (= var431!1 (str.++ var431 ".  Encountered: ")))
 ; Statement: if z0 == 0 goto $r24 = new java.lang.StringBuilder 
(assert (not (= (ite var1389 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3988 String "<EOF> ") ; Statement: $r22 = "<EOF> " 
 ; Statement: goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2103 String (append/672562846 var2930 var3988)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2930!1 String)
(assert (= var2930!1 (str.++ var2930 var3988)))
(assert true)
(define-const var2393 String (append/672562846 var2103 "after : \u0022")) ; Statement: $r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("after : \"") 
(declare-const var2103!1 String)
(assert (= var2103!1 (str.++ var2103 "after : \u0022")))
(define-const var2844 String (var538_addEscapes/-1529316606 var156)) ; Statement: $r17 = staticinvoke <org.javacc.jjtree.TokenMgrException: java.lang.String addEscapes(java.lang.String)>(r16) 
(assert true)
(define-const var3347 String (append/672562846 var2393 var2844)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2393!1 String)
(assert (= var2393!1 (str.++ var2393 var2844)))
(assert true)
(define-const var1066 String (append/672562846 var3347 "\u0022")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3347!1 String)
(assert (= var3347!1 (str.++ var3347 "\u0022")))
(assert true)
(define-const var139 String (toString/-2075883882 var1066)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), var538_addEscapes/-1529316606=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1389=z0, var1867=i3, var263=i0, var686=i1, var156=r16, var3505=null_type, var3525=c2, var1506=$r23, var3528=$r1, var2123=$r2, var1013=$r3, var431=$r4, var2930=$r14, var3988=$r22, var2103=$r15, var2393=$r18, var538=org.javacc.jjtree.TokenMgrException, var2844=$r17, var3347=$r19, var1066=$r20, var139=$r21}
; {z0=var1389, i3=var1867, i0=var263, i1=var686, r16=var156, null_type=var3505, c2=var3525, $r23=var1506, $r1=var3528, $r2=var2123, $r3=var1013, $r4=var431, $r14=var2930, $r22=var3988, $r15=var2103, $r18=var2393, org.javacc.jjtree.TokenMgrException=var538, $r17=var2844, $r19=var3347, $r20=var1066, $r21=var139}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	i3 := @parameter1: int;	i0 := @parameter2: int;	i1 := @parameter3: int;	r16 := @parameter4: java.lang.String;	c2 := @parameter5: char;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error at line ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Encountered: ");	if z0 == 0 goto $r24 = new java.lang.StringBuilder;	$r22 = "<EOF> ";	goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)];	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("after : \"");	$r17 = staticinvoke <org.javacc.jjtree.TokenMgrException: java.lang.String addEscapes(java.lang.String)>(r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	return $r21
;block_num 3