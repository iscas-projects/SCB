(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3878 0)
(declare-sort var1010 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1010_getProperty/-1659784690 (String String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun getLength-Arr-Int-2 ((Array Int (Array Int Int))) Int)
(declare-fun next/2146518970 (var3878) var3878)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun beginLine/2146518970 (var3878) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun beginColumn/2146518970 (var3878) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3878 var3878)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1695 var3878) ; Statement: r3 := @parameter0: org.javacc.utils.Token 
(assert (not (= var1695 null-var3878)))
(declare-const var2578 (Array Int (Array Int Int))) ; Statement: r2 := @parameter1: int[][] 
(assert (not (= var2578 null-__Array__Int____Array__Int__Int____)))
(declare-const var1705 (Array Int String)) ; Statement: r33 := @parameter2: java.lang.String[] 
(assert (not (= var1705 null-__Array__Int__String__)))
(define-const var3774 String (var1010_getProperty/-1659784690 "line.separator" "\n")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("line.separator", "\n") 
(define-const var3076 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3076)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3076!1 String)
(define-const var581 Int 0) ; Statement: i11 = 0 
(define-const var36 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
(define-const var115 Int (getLength-Arr-Int-2 var2578)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i12 >= $i0 goto r66 = "Encountered \"" 
(assert (>= var36 var115)) ; Cond: i12 >= $i0 
(define-const var2389 String "Encountered \u0022") ; Statement: r66 = "Encountered \"" 
(define-const var1312 var3878 (next/2146518970 var1695)) ; Statement: r67 = r3.<org.javacc.utils.Token: org.javacc.utils.Token next> 
(define-const var1560 Int 0) ; Statement: i15 = 0 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i11 goto $r4 = new java.lang.StringBuilder 
(assert (>= var1560 var581)) ; Cond: i15 >= i11 
(define-const var1897 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1897)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1897!1 String)
(assert (= var1897!1 ""))
(assert true)
(define-const var1282 String (append/672562846 var1897!1 var2389)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r66) 
(declare-const var1897!2 String)
(assert (= var1897!2 (str.++ var1897!1 var2389)))
(assert true)
(define-const var3312 String (append/672562846 var1282 "\u0022 at line ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" at line ") 
(declare-const var1282!1 String)
(assert (= var1282!1 (str.++ var1282 "\u0022 at line ")))
(define-const var981 var3878 (next/2146518970 var1695)) ; Statement: $r6 = r3.<org.javacc.utils.Token: org.javacc.utils.Token next> 
(define-const var2451 Int (beginLine/2146518970 var981)) ; Statement: $i1 = $r6.<org.javacc.utils.Token: int beginLine> 
(assert true)
(define-const var3883 String (append/-1001720160 var3312 var2451)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3312!1 String)
(assert (str.prefixof var3312 var3312!1))
(assert true)
(define-const var1373 String (append/672562846 var3883 ", column ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var3883!1 String)
(assert (= var3883!1 (str.++ var3883 ", column ")))
(define-const var2343 var3878 (next/2146518970 var1695)) ; Statement: $r9 = r3.<org.javacc.utils.Token: org.javacc.utils.Token next> 
(define-const var606 Int (beginColumn/2146518970 var2343)) ; Statement: $i2 = $r9.<org.javacc.utils.Token: int beginColumn> 
(assert true)
(define-const var1898 String (append/-1001720160 var1373 var606)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1373!1 String)
(assert (str.prefixof var1373 var1373!1))
(assert true)
(define-const var3674 String (toString/-2075883882 var1898)) ; Statement: $r52 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2899 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2899)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2899!1 String)
(assert (= var2899!1 ""))
(assert true)
(define-const var3379 String (append/672562846 var2899!1 var3674)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52) 
(declare-const var2899!2 String)
(assert (= var2899!2 (str.++ var2899!1 var3674)))
(assert true)
(define-const var3308 String (append/672562846 var3379 ".")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3379!1 String)
(assert (= var3379!1 (str.++ var3379 ".")))
(assert true)
(define-const var296 String (append/672562846 var3308 var3774)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3308!1 String)
(assert (= var3308!1 (str.++ var3308 var3774)))
(assert true)
(define-const var3135 String (toString/-2075883882 var296)) ; Statement: $r53 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3381 Int (getLength-Arr-Int-2 var2578)) ; Statement: $i3 = lengthof r2 
 ; Statement: if $i3 != 1 goto $r16 = new java.lang.StringBuilder 
(assert (not (not (= var3381 1)))) ; Negate: Cond: $i3 != 1  
(define-const var1728 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1728)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1728!1 String)
(assert (= var1728!1 ""))
(assert true)
(define-const var1634 String (append/672562846 var1728!1 var3135)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r53) 
(declare-const var1728!2 String)
(assert (= var1728!2 (str.++ var1728!1 var3135)))
(assert true)
(define-const var1537 String (append/672562846 var1634 "Was expecting:")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Was expecting:") 
(declare-const var1634!1 String)
(assert (= var1634!1 (str.++ var1634 "Was expecting:")))
(assert true)
(define-const var3893 String (append/672562846 var1537 var3774)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1537!1 String)
(assert (= var1537!1 (str.++ var1537 var3774)))
(assert true)
(define-const var2018 String (append/672562846 var3893 "    ")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var3893!1 String)
(assert (= var3893!1 (str.++ var3893 "    ")))
(assert true)
(define-const var1519 String (toString/-2075883882 var2018)) ; Statement: r71 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r21 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3099 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3099)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3099!1 String)
(assert (= var3099!1 ""))
(assert true)
(define-const var2029 String (append/672562846 var3099!1 var1519)) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71) 
(declare-const var3099!2 String)
(assert (= var3099!2 (str.++ var3099!1 var1519)))
(assert true)
(define-const var1265 String (toString/-222306083 var3076!1)) ; Statement: $r22 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
(define-const var1706 String (append/672562846 var2029 var1265)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2029!1 String)
(assert (= var2029!1 (str.++ var2029 var1265)))
(assert true)
(define-const var856 String (toString/-2075883882 var1706)) ; Statement: $r30 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var1010_getProperty/-1659784690=([java.lang.String, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), getLength-Arr-Int-2=([int[][]], int), next/2146518970=([org.javacc.utils.Token], org.javacc.utils.Token), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), beginLine/2146518970=([org.javacc.utils.Token], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), beginColumn/2146518970=([org.javacc.utils.Token], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3878=org.javacc.utils.Token, var1695=r3, var2578=r2, var1705=r33, var1010=java.lang.System, var3774=r0, var3076=$r1, var581=i11, var36=i12, var115=$i0, var2389=r66, var1312=r67, var1560=i15, var1897=$r4, var1282=$r5, var3312=$r7, var981=$r6, var2451=$i1, var3883=$r8, var1373=$r10, var2343=$r9, var606=$i2, var1898=$r11, var3674=$r52, var2899=$r12, var3379=$r13, var3308=$r14, var296=$r15, var3135=$r53, var3381=$i3, var1728=$r25, var1634=$r26, var1537=$r27, var3893=$r28, var2018=$r29, var1519=r71, var3099=$r21, var2029=$r23, var1265=$r22, var1706=$r24, var856=$r30}
; {org.javacc.utils.Token=var3878, r3=var1695, r2=var2578, r33=var1705, java.lang.System=var1010, r0=var3774, $r1=var3076, i11=var581, i12=var36, $i0=var115, r66=var2389, r67=var1312, i15=var1560, $r4=var1897, $r5=var1282, $r7=var3312, $r6=var981, $i1=var2451, $r8=var3883, $r10=var1373, $r9=var2343, $i2=var606, $r11=var1898, $r52=var3674, $r12=var2899, $r13=var3379, $r14=var3308, $r15=var296, $r53=var3135, $i3=var3381, $r25=var1728, $r26=var1634, $r27=var1537, $r28=var3893, $r29=var2018, r71=var1519, $r21=var3099, $r23=var2029, $r22=var1265, $r24=var1706, $r30=var856}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: org.javacc.utils.Token;	r2 := @parameter1: int[][];	r33 := @parameter2: java.lang.String[];	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("line.separator", "\n");	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	i11 = 0;	i12 = 0;	$i0 = lengthof r2;	if i12 >= $i0 goto r66 = "Encountered \"";	r66 = "Encountered \"";	r67 = r3.<org.javacc.utils.Token: org.javacc.utils.Token next>;	i15 = 0;	if i15 >= i11 goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r66);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" at line ");	$r6 = r3.<org.javacc.utils.Token: org.javacc.utils.Token next>;	$i1 = $r6.<org.javacc.utils.Token: int beginLine>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r9 = r3.<org.javacc.utils.Token: org.javacc.utils.Token next>;	$i2 = $r9.<org.javacc.utils.Token: int beginColumn>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r52 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r53 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$i3 = lengthof r2;	if $i3 != 1 goto $r16 = new java.lang.StringBuilder;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r53);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Was expecting:");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	r71 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r21 = new java.lang.StringBuilder];	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71);	$r22 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r30 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	return $r30
;block_num 7