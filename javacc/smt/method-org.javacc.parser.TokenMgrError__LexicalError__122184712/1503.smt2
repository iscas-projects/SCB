(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3157 0)
(declare-sort var3214 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun var3214_addEscapes/455866812 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1663 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1663 null-Bool)))
(declare-const var2987 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var2987 null-Int)))
(declare-const var868 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var868 null-Int)))
(declare-const var1493 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1493 null-Int)))
(declare-const var2046 String) ; Statement: r16 := @parameter4: java.lang.String 
(assert (not (= var2046 null-String)))
(declare-const var979 Int) ; Statement: c2 := @parameter5: char 
(assert (not (= var979 null-Int)))
(define-const var2687 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2687)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2687!1 String)
(assert (= var2687!1 ""))
(assert true)
(define-const var930 String (append/672562846 var2687!1 "Lexical error at line ")) ; Statement: $r1 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error at line ") 
(declare-const var2687!2 String)
(assert (= var2687!2 (str.++ var2687!1 "Lexical error at line ")))
(assert true)
(define-const var1478 String (append/-1001720160 var930 var868)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var930!1 String)
(assert (str.prefixof var930 var930!1))
(assert true)
(define-const var1085 String (append/672562846 var1478 ", column ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var1478!1 String)
(assert (= var1478!1 (str.++ var1478 ", column ")))
(assert true)
(define-const var2533 String (append/-1001720160 var1085 var1493)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1085!1 String)
(assert (str.prefixof var1085 var1085!1))
(assert true)
(define-const var2679 String (append/672562846 var2533 ".  Encountered: ")) ; Statement: $r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Encountered: ") 
(declare-const var2533!1 String)
(assert (= var2533!1 (str.++ var2533 ".  Encountered: ")))
 ; Statement: if z0 == 0 goto $r24 = new java.lang.StringBuilder 
(assert (not (= (ite var1663 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1227 String "<EOF> ") ; Statement: $r22 = "<EOF> " 
 ; Statement: goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2680 String (append/672562846 var2679 var1227)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2679!1 String)
(assert (= var2679!1 (str.++ var2679 var1227)))
(assert true)
(define-const var2851 String (append/672562846 var2680 "after : \u0022")) ; Statement: $r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("after : \"") 
(declare-const var2680!1 String)
(assert (= var2680!1 (str.++ var2680 "after : \u0022")))
(define-const var2311 String (var3214_addEscapes/455866812 var2046)) ; Statement: $r17 = staticinvoke <org.javacc.parser.TokenMgrError: java.lang.String addEscapes(java.lang.String)>(r16) 
(assert true)
(define-const var2016 String (append/672562846 var2851 var2311)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2851!1 String)
(assert (= var2851!1 (str.++ var2851 var2311)))
(assert true)
(define-const var3470 String (append/672562846 var2016 "\u0022")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var2016!1 String)
(assert (= var2016!1 (str.++ var2016 "\u0022")))
(assert true)
(define-const var386 String (toString/-2075883882 var3470)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), var3214_addEscapes/455866812=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1663=z0, var2987=i3, var868=i0, var1493=i1, var2046=r16, var3157=null_type, var979=c2, var2687=$r23, var930=$r1, var1478=$r2, var1085=$r3, var2533=$r4, var2679=$r14, var1227=$r22, var2680=$r15, var2851=$r18, var3214=org.javacc.parser.TokenMgrError, var2311=$r17, var2016=$r19, var3470=$r20, var386=$r21}
; {z0=var1663, i3=var2987, i0=var868, i1=var1493, r16=var2046, null_type=var3157, c2=var979, $r23=var2687, $r1=var930, $r2=var1478, $r3=var1085, $r4=var2533, $r14=var2679, $r22=var1227, $r15=var2680, $r18=var2851, org.javacc.parser.TokenMgrError=var3214, $r17=var2311, $r19=var2016, $r20=var3470, $r21=var386}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	i3 := @parameter1: int;	i0 := @parameter2: int;	i1 := @parameter3: int;	r16 := @parameter4: java.lang.String;	c2 := @parameter5: char;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error at line ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Encountered: ");	if z0 == 0 goto $r24 = new java.lang.StringBuilder;	$r22 = "<EOF> ";	goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)];	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("after : \"");	$r17 = staticinvoke <org.javacc.parser.TokenMgrError: java.lang.String addEscapes(java.lang.String)>(r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	return $r21
;block_num 3