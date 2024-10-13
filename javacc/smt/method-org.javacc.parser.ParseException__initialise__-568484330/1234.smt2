(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3665 0)
(declare-sort var1316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1316_getProperty/-1659784690 (String String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun getLength-Arr-Int-2 ((Array Int (Array Int Int))) Int)
(declare-fun next/197050796 (var3665) var3665)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun beginLine/197050796 (var3665) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun beginColumn/197050796 (var3665) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3665 var3665)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var302 var3665) ; Statement: r3 := @parameter0: org.javacc.parser.Token 
(assert (not (= var302 null-var3665)))
(declare-const var3422 (Array Int (Array Int Int))) ; Statement: r2 := @parameter1: int[][] 
(assert (not (= var3422 null-__Array__Int____Array__Int__Int____)))
(declare-const var1662 (Array Int String)) ; Statement: r33 := @parameter2: java.lang.String[] 
(assert (not (= var1662 null-__Array__Int__String__)))
(define-const var3264 String (var1316_getProperty/-1659784690 "line.separator" "\n")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("line.separator", "\n") 
(define-const var995 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var995)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var995!1 String)
(define-const var921 Int 0) ; Statement: i11 = 0 
(define-const var3873 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
(define-const var1103 Int (getLength-Arr-Int-2 var3422)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i12 >= $i0 goto r66 = "Encountered \"" 
(assert (>= var3873 var1103)) ; Cond: i12 >= $i0 
(define-const var3505 String "Encountered \u0022") ; Statement: r66 = "Encountered \"" 
(define-const var1438 var3665 (next/197050796 var302)) ; Statement: r67 = r3.<org.javacc.parser.Token: org.javacc.parser.Token next> 
(define-const var3127 Int 0) ; Statement: i15 = 0 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i11 goto $r4 = new java.lang.StringBuilder 
(assert (>= var3127 var921)) ; Cond: i15 >= i11 
(define-const var2362 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2362)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2362!1 String)
(assert (= var2362!1 ""))
(assert true)
(define-const var3736 String (append/672562846 var2362!1 var3505)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r66) 
(declare-const var2362!2 String)
(assert (= var2362!2 (str.++ var2362!1 var3505)))
(assert true)
(define-const var3334 String (append/672562846 var3736 "\u0022 at line ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" at line ") 
(declare-const var3736!1 String)
(assert (= var3736!1 (str.++ var3736 "\u0022 at line ")))
(define-const var1850 var3665 (next/197050796 var302)) ; Statement: $r6 = r3.<org.javacc.parser.Token: org.javacc.parser.Token next> 
(define-const var3026 Int (beginLine/197050796 var1850)) ; Statement: $i1 = $r6.<org.javacc.parser.Token: int beginLine> 
(assert true)
(define-const var3013 String (append/-1001720160 var3334 var3026)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3334!1 String)
(assert (str.prefixof var3334 var3334!1))
(assert true)
(define-const var2367 String (append/672562846 var3013 ", column ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var3013!1 String)
(assert (= var3013!1 (str.++ var3013 ", column ")))
(define-const var226 var3665 (next/197050796 var302)) ; Statement: $r9 = r3.<org.javacc.parser.Token: org.javacc.parser.Token next> 
(define-const var2952 Int (beginColumn/197050796 var226)) ; Statement: $i2 = $r9.<org.javacc.parser.Token: int beginColumn> 
(assert true)
(define-const var3973 String (append/-1001720160 var2367 var2952)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2367!1 String)
(assert (str.prefixof var2367 var2367!1))
(assert true)
(define-const var1604 String (toString/-2075883882 var3973)) ; Statement: $r52 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2844 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2844)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2844!1 String)
(assert (= var2844!1 ""))
(assert true)
(define-const var3625 String (append/672562846 var2844!1 var1604)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52) 
(declare-const var2844!2 String)
(assert (= var2844!2 (str.++ var2844!1 var1604)))
(assert true)
(define-const var1808 String (append/672562846 var3625 ".")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3625!1 String)
(assert (= var3625!1 (str.++ var3625 ".")))
(assert true)
(define-const var2375 String (append/672562846 var1808 var3264)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1808!1 String)
(assert (= var1808!1 (str.++ var1808 var3264)))
(assert true)
(define-const var3368 String (toString/-2075883882 var2375)) ; Statement: $r53 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1797 Int (getLength-Arr-Int-2 var3422)) ; Statement: $i3 = lengthof r2 
 ; Statement: if $i3 != 1 goto $r16 = new java.lang.StringBuilder 
(assert (not (not (= var1797 1)))) ; Negate: Cond: $i3 != 1  
(define-const var3982 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3982)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3982!1 String)
(assert (= var3982!1 ""))
(assert true)
(define-const var2323 String (append/672562846 var3982!1 var3368)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r53) 
(declare-const var3982!2 String)
(assert (= var3982!2 (str.++ var3982!1 var3368)))
(assert true)
(define-const var649 String (append/672562846 var2323 "Was expecting:")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Was expecting:") 
(declare-const var2323!1 String)
(assert (= var2323!1 (str.++ var2323 "Was expecting:")))
(assert true)
(define-const var3643 String (append/672562846 var649 var3264)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var649!1 String)
(assert (= var649!1 (str.++ var649 var3264)))
(assert true)
(define-const var1783 String (append/672562846 var3643 "    ")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var3643!1 String)
(assert (= var3643!1 (str.++ var3643 "    ")))
(assert true)
(define-const var1200 String (toString/-2075883882 var1783)) ; Statement: r71 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r21 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var376 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var376)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var376!1 String)
(assert (= var376!1 ""))
(assert true)
(define-const var3600 String (append/672562846 var376!1 var1200)) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71) 
(declare-const var376!2 String)
(assert (= var376!2 (str.++ var376!1 var1200)))
(assert true)
(define-const var239 String (toString/-222306083 var995!1)) ; Statement: $r22 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
(define-const var3209 String (append/672562846 var3600 var239)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3600!1 String)
(assert (= var3600!1 (str.++ var3600 var239)))
(assert true)
(define-const var2587 String (toString/-2075883882 var3209)) ; Statement: $r30 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var1316_getProperty/-1659784690=([java.lang.String, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), getLength-Arr-Int-2=([int[][]], int), next/197050796=([org.javacc.parser.Token], org.javacc.parser.Token), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), beginLine/197050796=([org.javacc.parser.Token], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), beginColumn/197050796=([org.javacc.parser.Token], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3665=org.javacc.parser.Token, var302=r3, var3422=r2, var1662=r33, var1316=java.lang.System, var3264=r0, var995=$r1, var921=i11, var3873=i12, var1103=$i0, var3505=r66, var1438=r67, var3127=i15, var2362=$r4, var3736=$r5, var3334=$r7, var1850=$r6, var3026=$i1, var3013=$r8, var2367=$r10, var226=$r9, var2952=$i2, var3973=$r11, var1604=$r52, var2844=$r12, var3625=$r13, var1808=$r14, var2375=$r15, var3368=$r53, var1797=$i3, var3982=$r25, var2323=$r26, var649=$r27, var3643=$r28, var1783=$r29, var1200=r71, var376=$r21, var3600=$r23, var239=$r22, var3209=$r24, var2587=$r30}
; {org.javacc.parser.Token=var3665, r3=var302, r2=var3422, r33=var1662, java.lang.System=var1316, r0=var3264, $r1=var995, i11=var921, i12=var3873, $i0=var1103, r66=var3505, r67=var1438, i15=var3127, $r4=var2362, $r5=var3736, $r7=var3334, $r6=var1850, $i1=var3026, $r8=var3013, $r10=var2367, $r9=var226, $i2=var2952, $r11=var3973, $r52=var1604, $r12=var2844, $r13=var3625, $r14=var1808, $r15=var2375, $r53=var3368, $i3=var1797, $r25=var3982, $r26=var2323, $r27=var649, $r28=var3643, $r29=var1783, r71=var1200, $r21=var376, $r23=var3600, $r22=var239, $r24=var3209, $r30=var2587}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: org.javacc.parser.Token;	r2 := @parameter1: int[][];	r33 := @parameter2: java.lang.String[];	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("line.separator", "\n");	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	i11 = 0;	i12 = 0;	$i0 = lengthof r2;	if i12 >= $i0 goto r66 = "Encountered \"";	r66 = "Encountered \"";	r67 = r3.<org.javacc.parser.Token: org.javacc.parser.Token next>;	i15 = 0;	if i15 >= i11 goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r66);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" at line ");	$r6 = r3.<org.javacc.parser.Token: org.javacc.parser.Token next>;	$i1 = $r6.<org.javacc.parser.Token: int beginLine>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r9 = r3.<org.javacc.parser.Token: org.javacc.parser.Token next>;	$i2 = $r9.<org.javacc.parser.Token: int beginColumn>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r52 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r53 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$i3 = lengthof r2;	if $i3 != 1 goto $r16 = new java.lang.StringBuilder;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r53);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Was expecting:");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	r71 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r21 = new java.lang.StringBuilder];	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71);	$r22 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r30 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	return $r30
;block_num 7