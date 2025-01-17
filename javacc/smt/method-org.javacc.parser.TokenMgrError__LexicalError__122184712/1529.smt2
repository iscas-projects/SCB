(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3865 0)
(declare-sort var1398 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun var1398_addEscapes/455866812 (String) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2017 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2017 null-Bool)))
(declare-const var2543 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var2543 null-Int)))
(declare-const var1024 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1024 null-Int)))
(declare-const var911 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var911 null-Int)))
(declare-const var19 String) ; Statement: r16 := @parameter4: java.lang.String 
(assert (not (= var19 null-String)))
(declare-const var1271 Int) ; Statement: c2 := @parameter5: char 
(assert (not (= var1271 null-Int)))
(define-const var2548 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2548)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2548!1 String)
(assert (= var2548!1 ""))
(assert true)
(define-const var1960 String (append/672562846 var2548!1 "Lexical error at line ")) ; Statement: $r1 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error at line ") 
(declare-const var2548!2 String)
(assert (= var2548!2 (str.++ var2548!1 "Lexical error at line ")))
(assert true)
(define-const var1969 String (append/-1001720160 var1960 var1024)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1960!1 String)
(assert (str.prefixof var1960 var1960!1))
(assert true)
(define-const var2865 String (append/672562846 var1969 ", column ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var1969!1 String)
(assert (= var1969!1 (str.++ var1969 ", column ")))
(assert true)
(define-const var3105 String (append/-1001720160 var2865 var911)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2865!1 String)
(assert (str.prefixof var2865 var2865!1))
(assert true)
(define-const var3086 String (append/672562846 var3105 ".  Encountered: ")) ; Statement: $r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Encountered: ") 
(declare-const var3105!1 String)
(assert (= var3105!1 (str.++ var3105 ".  Encountered: ")))
 ; Statement: if z0 == 0 goto $r24 = new java.lang.StringBuilder 
(assert (= (ite var2017 1 0) 0)) ; Cond: z0 == 0 
(define-const var429 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var429)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var429!1 String)
(assert (= var429!1 ""))
(assert true)
(define-const var1899 String (append/672562846 var429!1 "\u0022")) ; Statement: $r8 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var429!2 String)
(assert (= var429!2 (str.++ var429!1 "\u0022")))
(define-const var1682 String (String_valueOf/-371898945 var1271)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c2) 
(define-const var3823 String (var1398_addEscapes/455866812 var1682)) ; Statement: $r7 = staticinvoke <org.javacc.parser.TokenMgrError: java.lang.String addEscapes(java.lang.String)>($r6) 
(assert true)
(define-const var564 String (append/672562846 var1899 var3823)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1899!1 String)
(assert (= var1899!1 (str.++ var1899 var3823)))
(assert true)
(define-const var1760 String (append/672562846 var564 "\u0022")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var564!1 String)
(assert (= var564!1 (str.++ var564 "\u0022")))
(assert true)
(define-const var3802 String (append/672562846 var1760 " (")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var1760!1 String)
(assert (= var1760!1 (str.++ var1760 " (")))
(define-const var2612 Int (cast-from-Int-to-Int var1271)) ; Statement: $i4 = (int) c2 
(assert true)
(define-const var2983 String (append/-1001720160 var3802 var2612)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var3802!1 String)
(assert (str.prefixof var3802 var3802!1))
(assert true)
(define-const var3995 String (append/672562846 var2983 "), ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("), ") 
(declare-const var2983!1 String)
(assert (= var2983!1 (str.++ var2983 "), ")))
(assert true)
(define-const var2600 String (toString/-2075883882 var3995)) ; Statement: $r22 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var583 String (append/672562846 var3086 var2600)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3086!1 String)
(assert (= var3086!1 (str.++ var3086 var2600)))
(assert true)
(define-const var2337 String (append/672562846 var583 "after : \u0022")) ; Statement: $r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("after : \"") 
(declare-const var583!1 String)
(assert (= var583!1 (str.++ var583 "after : \u0022")))
(define-const var3523 String (var1398_addEscapes/455866812 var19)) ; Statement: $r17 = staticinvoke <org.javacc.parser.TokenMgrError: java.lang.String addEscapes(java.lang.String)>(r16) 
(assert true)
(define-const var2960 String (append/672562846 var2337 var3523)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2337!1 String)
(assert (= var2337!1 (str.++ var2337 var3523)))
(assert true)
(define-const var3745 String (append/672562846 var2960 "\u0022")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var2960!1 String)
(assert (= var2960!1 (str.++ var2960 "\u0022")))
(assert true)
(define-const var827 String (toString/-2075883882 var3745)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), String_valueOf/-371898945=([char], java.lang.String), var1398_addEscapes/455866812=([java.lang.String], java.lang.String), cast-from-Int-to-Int=([char], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2017=z0, var2543=i3, var1024=i0, var911=i1, var19=r16, var3865=null_type, var1271=c2, var2548=$r23, var1960=$r1, var1969=$r2, var2865=$r3, var3105=$r4, var3086=$r14, var429=$r24, var1899=$r8, var1682=$r6, var1398=org.javacc.parser.TokenMgrError, var3823=$r7, var564=$r9, var1760=$r10, var3802=$r11, var2612=$i4, var2983=$r12, var3995=$r13, var2600=$r22, var583=$r15, var2337=$r18, var3523=$r17, var2960=$r19, var3745=$r20, var827=$r21}
; {z0=var2017, i3=var2543, i0=var1024, i1=var911, r16=var19, null_type=var3865, c2=var1271, $r23=var2548, $r1=var1960, $r2=var1969, $r3=var2865, $r4=var3105, $r14=var3086, $r24=var429, $r8=var1899, $r6=var1682, org.javacc.parser.TokenMgrError=var1398, $r7=var3823, $r9=var564, $r10=var1760, $r11=var3802, $i4=var2612, $r12=var2983, $r13=var3995, $r22=var2600, $r15=var583, $r18=var2337, $r17=var3523, $r19=var2960, $r20=var3745, $r21=var827}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String valueOf(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.String: java.lang.String valueOf(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts z0 := @parameter0: boolean;	i3 := @parameter1: int;	i0 := @parameter2: int;	i1 := @parameter3: int;	r16 := @parameter4: java.lang.String;	c2 := @parameter5: char;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error at line ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Encountered: ");	if z0 == 0 goto $r24 = new java.lang.StringBuilder;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r6 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c2);	$r7 = staticinvoke <org.javacc.parser.TokenMgrError: java.lang.String addEscapes(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$i4 = (int) c2;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("), ");	$r22 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("after : \"");	$r17 = staticinvoke <org.javacc.parser.TokenMgrError: java.lang.String addEscapes(java.lang.String)>(r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	return $r21
;block_num 3