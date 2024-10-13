(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3628 0)
(declare-sort var1493 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun var1493_addEscapes/-2068437822 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1699 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1699 null-Bool)))
(declare-const var3914 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var3914 null-Int)))
(declare-const var1259 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1259 null-Int)))
(declare-const var560 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var560 null-Int)))
(declare-const var1171 String) ; Statement: r16 := @parameter4: java.lang.String 
(assert (not (= var1171 null-String)))
(declare-const var3462 Int) ; Statement: c2 := @parameter5: char 
(assert (not (= var3462 null-Int)))
(define-const var2393 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2393)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2393!1 String)
(assert (= var2393!1 ""))
(assert true)
(define-const var2865 String (append/672562846 var2393!1 "Lexical error at line ")) ; Statement: $r1 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error at line ") 
(declare-const var2393!2 String)
(assert (= var2393!2 (str.++ var2393!1 "Lexical error at line ")))
(assert true)
(define-const var246 String (append/-1001720160 var2865 var1259)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2865!1 String)
(assert (str.prefixof var2865 var2865!1))
(assert true)
(define-const var507 String (append/672562846 var246 ", column ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var246!1 String)
(assert (= var246!1 (str.++ var246 ", column ")))
(assert true)
(define-const var3576 String (append/-1001720160 var507 var560)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var507!1 String)
(assert (str.prefixof var507 var507!1))
(assert true)
(define-const var99 String (append/672562846 var3576 ".  Encountered: ")) ; Statement: $r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Encountered: ") 
(declare-const var3576!1 String)
(assert (= var3576!1 (str.++ var3576 ".  Encountered: ")))
 ; Statement: if z0 == 0 goto $r24 = new java.lang.StringBuilder 
(assert (not (= (ite var1699 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2112 String "<EOF> ") ; Statement: $r22 = "<EOF> " 
 ; Statement: goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3167 String (append/672562846 var99 var2112)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var99!1 String)
(assert (= var99!1 (str.++ var99 var2112)))
(assert true)
(define-const var2333 String (append/672562846 var3167 "after : \u0022")) ; Statement: $r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("after : \"") 
(declare-const var3167!1 String)
(assert (= var3167!1 (str.++ var3167 "after : \u0022")))
(define-const var524 String (var1493_addEscapes/-2068437822 var1171)) ; Statement: $r17 = staticinvoke <org.javacc.utils.TokenMgrError: java.lang.String addEscapes(java.lang.String)>(r16) 
(assert true)
(define-const var78 String (append/672562846 var2333 var524)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2333!1 String)
(assert (= var2333!1 (str.++ var2333 var524)))
(assert true)
(define-const var3780 String (append/672562846 var78 "\u0022")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var78!1 String)
(assert (= var78!1 (str.++ var78 "\u0022")))
(assert true)
(define-const var945 String (toString/-2075883882 var3780)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), var1493_addEscapes/-2068437822=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1699=z0, var3914=i3, var1259=i0, var560=i1, var1171=r16, var3628=null_type, var3462=c2, var2393=$r23, var2865=$r1, var246=$r2, var507=$r3, var3576=$r4, var99=$r14, var2112=$r22, var3167=$r15, var2333=$r18, var1493=org.javacc.utils.TokenMgrError, var524=$r17, var78=$r19, var3780=$r20, var945=$r21}
; {z0=var1699, i3=var3914, i0=var1259, i1=var560, r16=var1171, null_type=var3628, c2=var3462, $r23=var2393, $r1=var2865, $r2=var246, $r3=var507, $r4=var3576, $r14=var99, $r22=var2112, $r15=var3167, $r18=var2333, org.javacc.utils.TokenMgrError=var1493, $r17=var524, $r19=var78, $r20=var3780, $r21=var945}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	i3 := @parameter1: int;	i0 := @parameter2: int;	i1 := @parameter3: int;	r16 := @parameter4: java.lang.String;	c2 := @parameter5: char;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error at line ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Encountered: ");	if z0 == 0 goto $r24 = new java.lang.StringBuilder;	$r22 = "<EOF> ";	goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)];	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("after : \"");	$r17 = staticinvoke <org.javacc.utils.TokenMgrError: java.lang.String addEscapes(java.lang.String)>(r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	return $r21
;block_num 3