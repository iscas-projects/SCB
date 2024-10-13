(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1731 0)
(declare-sort var3013 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var3013_addEscapes/793830251 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2127 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2127 null-Bool)))
(declare-const var2545 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var2545 null-Int)))
(declare-const var95 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var95 null-Int)))
(declare-const var3657 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var3657 null-Int)))
(declare-const var3261 String) ; Statement: r14 := @parameter4: java.lang.String 
(assert (not (= var3261 null-String)))
(declare-const var650 Int) ; Statement: i2 := @parameter5: int 
(assert (not (= var650 null-Int)))
(define-const var213 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var213)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var213!1 String)
(assert (= var213!1 ""))
(assert true)
(define-const var3756 String (append/672562846 var213!1 "Lexical error at line ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error at line ") 
(declare-const var213!2 String)
(assert (= var213!2 (str.++ var213!1 "Lexical error at line ")))
(assert true)
(define-const var2577 String (append/-1001720160 var3756 var95)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3756!1 String)
(assert (str.prefixof var3756 var3756!1))
(assert true)
(define-const var1155 String (append/672562846 var2577 ", column ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var2577!1 String)
(assert (= var2577!1 (str.++ var2577 ", column ")))
(assert true)
(define-const var2089 String (append/-1001720160 var1155 var3657)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1155!1 String)
(assert (str.prefixof var1155 var1155!1))
(assert true)
(define-const var1502 String (append/672562846 var2089 ".  Encountered: ")) ; Statement: $r13 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Encountered: ") 
(declare-const var2089!1 String)
(assert (= var2089!1 (str.++ var2089 ".  Encountered: ")))
 ; Statement: if z0 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= (ite var2127 1 0) 0)) ; Cond: z0 == 0 
(define-const var1466 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1466)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1466!1 String)
(assert (= var1466!1 ""))
(assert true)
(define-const var1589 String (append/672562846 var1466!1 "\u0027")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1466!2 String)
(assert (= var1466!2 (str.++ var1466!1 "\u0027")))
(define-const var876 String (String_valueOf/1240665136 var650)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i2) 
(define-const var2518 String (var3013_addEscapes/793830251 var876)) ; Statement: $r7 = staticinvoke <org.apache.ibatis.ognl.TokenMgrError: java.lang.String addEscapes(java.lang.String)>($r6) 
(assert true)
(define-const var2112 String (append/672562846 var1589 var2518)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1589!1 String)
(assert (= var1589!1 (str.++ var1589 var2518)))
(assert true)
(define-const var192 String (append/672562846 var2112 "\u0027 (")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' (") 
(declare-const var2112!1 String)
(assert (= var2112!1 (str.++ var2112 "\u0027 (")))
(assert true)
(define-const var3458 String (append/-1001720160 var192 var650)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var192!1 String)
(assert (str.prefixof var192 var192!1))
(assert true)
(define-const var456 String (append/672562846 var3458 "),")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("),") 
(declare-const var3458!1 String)
(assert (= var3458!1 (str.++ var3458 "),")))
(assert true)
(define-const var2655 String (toString/-2075883882 var456)) ; Statement: $r28 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var22 String (append/672562846 var1502 var2655)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var1502!1 String)
(assert (= var1502!1 (str.++ var1502 var2655)))
 ; Statement: if r14 == null goto $r29 = "" 
(assert (= var3261 null-String)) ; Cond: r14 == null 
(define-const var3942 String "") ; Statement: $r29 = "" 
 ; Statement: goto [?= $r20 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2629 String (append/672562846 var22 var3942)) ; Statement: $r20 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var22!1 String)
(assert (= var22!1 (str.++ var22 var3942)))
 ; Statement: if i3 != 0 goto $r16 = new java.lang.StringBuilder 
(assert (not (= var2545 0))) ; Cond: i3 != 0 
(define-const var1596 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1596)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1596!1 String)
(assert (= var1596!1 ""))
(assert true)
(define-const var2827 String (append/672562846 var1596!1 " (in lexical state ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (in lexical state ") 
(declare-const var1596!2 String)
(assert (= var1596!2 (str.++ var1596!1 " (in lexical state ")))
(assert true)
(define-const var3860 String (append/-1001720160 var2827 var2545)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var2827!1 String)
(assert (str.prefixof var2827 var2827!1))
(assert true)
(define-const var3621 String (append/672562846 var3860 ")")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3860!1 String)
(assert (= var3860!1 (str.++ var3860 ")")))
(assert true)
(define-const var3788 String (toString/-2075883882 var3621)) ; Statement: $r30 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2011 String (append/672562846 var2629 var3788)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var2629!1 String)
(assert (= var2629!1 (str.++ var2629 var3788)))
(assert true)
(define-const var1545 String (toString/-2075883882 var2011)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), String_valueOf/1240665136=([int], java.lang.String), var3013_addEscapes/793830251=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2127=z0, var2545=i3, var95=i0, var3657=i1, var3261=r14, var1731=null_type, var650=i2, var213=$r0, var3756=$r1, var2577=$r2, var1155=$r3, var2089=$r4, var1502=$r13, var1466=$r5, var1589=$r8, var876=$r6, var3013=org.apache.ibatis.ognl.TokenMgrError, var2518=$r7, var2112=$r9, var192=$r10, var3458=$r11, var456=$r12, var2655=$r28, var22=$r15, var3942=$r29, var2629=$r20, var1596=$r16, var2827=$r17, var3860=$r18, var3621=$r19, var3788=$r30, var2011=$r21, var1545=$r22}
; {z0=var2127, i3=var2545, i0=var95, i1=var3657, r14=var3261, null_type=var1731, i2=var650, $r0=var213, $r1=var3756, $r2=var2577, $r3=var1155, $r4=var2089, $r13=var1502, $r5=var1466, $r8=var1589, $r6=var876, org.apache.ibatis.ognl.TokenMgrError=var3013, $r7=var2518, $r9=var2112, $r10=var192, $r11=var3458, $r12=var456, $r28=var2655, $r15=var22, $r29=var3942, $r20=var2629, $r16=var1596, $r17=var2827, $r18=var3860, $r19=var3621, $r30=var3788, $r21=var2011, $r22=var1545}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String valueOf(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts z0 := @parameter0: boolean;	i3 := @parameter1: int;	i0 := @parameter2: int;	i1 := @parameter3: int;	r14 := @parameter4: java.lang.String;	i2 := @parameter5: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error at line ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r13 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Encountered: ");	if z0 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r6 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i2);	$r7 = staticinvoke <org.apache.ibatis.ognl.TokenMgrError: java.lang.String addEscapes(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' (");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("),");	$r28 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	if r14 == null goto $r29 = "";	$r29 = "";	goto [?= $r20 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29)];	$r20 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	if i3 != 0 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (in lexical state ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r30 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	return $r22
;block_num 7