(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3365 0)
(declare-sort var3699 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3699_getProperty/-1659784690 (String String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun getLength-Arr-Int-2 ((Array Int (Array Int Int))) Int)
(declare-fun next/2146518970 (var3365) var3365)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun beginLine/2146518970 (var3365) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun beginColumn/2146518970 (var3365) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3365 var3365)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3286 var3365) ; Statement: r3 := @parameter0: org.javacc.utils.Token 
(assert (not (= var3286 null-var3365)))
(declare-const var1140 (Array Int (Array Int Int))) ; Statement: r2 := @parameter1: int[][] 
(assert (not (= var1140 null-__Array__Int____Array__Int__Int____)))
(declare-const var989 (Array Int String)) ; Statement: r33 := @parameter2: java.lang.String[] 
(assert (not (= var989 null-__Array__Int__String__)))
(define-const var3283 String (var3699_getProperty/-1659784690 "line.separator" "\n")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("line.separator", "\n") 
(define-const var2243 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2243)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2243!1 String)
(define-const var274 Int 0) ; Statement: i11 = 0 
(define-const var3765 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
(define-const var2854 Int (getLength-Arr-Int-2 var1140)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i12 >= $i0 goto r66 = "Encountered \"" 
(assert (>= var3765 var2854)) ; Cond: i12 >= $i0 
(define-const var2564 String "Encountered \u0022") ; Statement: r66 = "Encountered \"" 
(define-const var1376 var3365 (next/2146518970 var3286)) ; Statement: r67 = r3.<org.javacc.utils.Token: org.javacc.utils.Token next> 
(define-const var2703 Int 0) ; Statement: i15 = 0 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i11 goto $r4 = new java.lang.StringBuilder 
(assert (>= var2703 var274)) ; Cond: i15 >= i11 
(define-const var1377 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1377)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1377!1 String)
(assert (= var1377!1 ""))
(assert true)
(define-const var1179 String (append/672562846 var1377!1 var2564)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r66) 
(declare-const var1377!2 String)
(assert (= var1377!2 (str.++ var1377!1 var2564)))
(assert true)
(define-const var3815 String (append/672562846 var1179 "\u0022 at line ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" at line ") 
(declare-const var1179!1 String)
(assert (= var1179!1 (str.++ var1179 "\u0022 at line ")))
(define-const var3369 var3365 (next/2146518970 var3286)) ; Statement: $r6 = r3.<org.javacc.utils.Token: org.javacc.utils.Token next> 
(define-const var445 Int (beginLine/2146518970 var3369)) ; Statement: $i1 = $r6.<org.javacc.utils.Token: int beginLine> 
(assert true)
(define-const var963 String (append/-1001720160 var3815 var445)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3815!1 String)
(assert (str.prefixof var3815 var3815!1))
(assert true)
(define-const var3903 String (append/672562846 var963 ", column ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var963!1 String)
(assert (= var963!1 (str.++ var963 ", column ")))
(define-const var3770 var3365 (next/2146518970 var3286)) ; Statement: $r9 = r3.<org.javacc.utils.Token: org.javacc.utils.Token next> 
(define-const var878 Int (beginColumn/2146518970 var3770)) ; Statement: $i2 = $r9.<org.javacc.utils.Token: int beginColumn> 
(assert true)
(define-const var3459 String (append/-1001720160 var3903 var878)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3903!1 String)
(assert (str.prefixof var3903 var3903!1))
(assert true)
(define-const var1214 String (toString/-2075883882 var3459)) ; Statement: $r52 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var275 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var275)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var275!1 String)
(assert (= var275!1 ""))
(assert true)
(define-const var1293 String (append/672562846 var275!1 var1214)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52) 
(declare-const var275!2 String)
(assert (= var275!2 (str.++ var275!1 var1214)))
(assert true)
(define-const var1968 String (append/672562846 var1293 ".")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1293!1 String)
(assert (= var1293!1 (str.++ var1293 ".")))
(assert true)
(define-const var1019 String (append/672562846 var1968 var3283)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1968!1 String)
(assert (= var1968!1 (str.++ var1968 var3283)))
(assert true)
(define-const var1262 String (toString/-2075883882 var1019)) ; Statement: $r53 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1051 Int (getLength-Arr-Int-2 var1140)) ; Statement: $i3 = lengthof r2 
 ; Statement: if $i3 != 1 goto $r16 = new java.lang.StringBuilder 
(assert (not (= var1051 1))) ; Cond: $i3 != 1 
(define-const var3039 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3039)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3039!1 String)
(assert (= var3039!1 ""))
(assert true)
(define-const var1514 String (append/672562846 var3039!1 var1262)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r53) 
(declare-const var3039!2 String)
(assert (= var3039!2 (str.++ var3039!1 var1262)))
(assert true)
(define-const var3795 String (append/672562846 var1514 "Was expecting one of:")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Was expecting one of:") 
(declare-const var1514!1 String)
(assert (= var1514!1 (str.++ var1514 "Was expecting one of:")))
(assert true)
(define-const var1980 String (append/672562846 var3795 var3283)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3795!1 String)
(assert (= var3795!1 (str.++ var3795 var3283)))
(assert true)
(define-const var530 String (append/672562846 var1980 "    ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var1980!1 String)
(assert (= var1980!1 (str.++ var1980 "    ")))
(assert true)
(define-const var2098 String (toString/-2075883882 var530)) ; Statement: r71 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3889 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3889)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3889!1 String)
(assert (= var3889!1 ""))
(assert true)
(define-const var1704 String (append/672562846 var3889!1 var2098)) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71) 
(declare-const var3889!2 String)
(assert (= var3889!2 (str.++ var3889!1 var2098)))
(assert true)
(define-const var1761 String (toString/-222306083 var2243!1)) ; Statement: $r22 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
(define-const var1550 String (append/672562846 var1704 var1761)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var1704!1 String)
(assert (= var1704!1 (str.++ var1704 var1761)))
(assert true)
(define-const var2698 String (toString/-2075883882 var1550)) ; Statement: $r30 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var3699_getProperty/-1659784690=([java.lang.String, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), getLength-Arr-Int-2=([int[][]], int), next/2146518970=([org.javacc.utils.Token], org.javacc.utils.Token), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), beginLine/2146518970=([org.javacc.utils.Token], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), beginColumn/2146518970=([org.javacc.utils.Token], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3365=org.javacc.utils.Token, var3286=r3, var1140=r2, var989=r33, var3699=java.lang.System, var3283=r0, var2243=$r1, var274=i11, var3765=i12, var2854=$i0, var2564=r66, var1376=r67, var2703=i15, var1377=$r4, var1179=$r5, var3815=$r7, var3369=$r6, var445=$i1, var963=$r8, var3903=$r10, var3770=$r9, var878=$i2, var3459=$r11, var1214=$r52, var275=$r12, var1293=$r13, var1968=$r14, var1019=$r15, var1262=$r53, var1051=$i3, var3039=$r16, var1514=$r17, var3795=$r18, var1980=$r19, var530=$r20, var2098=r71, var3889=$r21, var1704=$r23, var1761=$r22, var1550=$r24, var2698=$r30}
; {org.javacc.utils.Token=var3365, r3=var3286, r2=var1140, r33=var989, java.lang.System=var3699, r0=var3283, $r1=var2243, i11=var274, i12=var3765, $i0=var2854, r66=var2564, r67=var1376, i15=var2703, $r4=var1377, $r5=var1179, $r7=var3815, $r6=var3369, $i1=var445, $r8=var963, $r10=var3903, $r9=var3770, $i2=var878, $r11=var3459, $r52=var1214, $r12=var275, $r13=var1293, $r14=var1968, $r15=var1019, $r53=var1262, $i3=var1051, $r16=var3039, $r17=var1514, $r18=var3795, $r19=var1980, $r20=var530, r71=var2098, $r21=var3889, $r23=var1704, $r22=var1761, $r24=var1550, $r30=var2698}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: org.javacc.utils.Token;	r2 := @parameter1: int[][];	r33 := @parameter2: java.lang.String[];	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("line.separator", "\n");	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	i11 = 0;	i12 = 0;	$i0 = lengthof r2;	if i12 >= $i0 goto r66 = "Encountered \"";	r66 = "Encountered \"";	r67 = r3.<org.javacc.utils.Token: org.javacc.utils.Token next>;	i15 = 0;	if i15 >= i11 goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r66);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" at line ");	$r6 = r3.<org.javacc.utils.Token: org.javacc.utils.Token next>;	$i1 = $r6.<org.javacc.utils.Token: int beginLine>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r9 = r3.<org.javacc.utils.Token: org.javacc.utils.Token next>;	$i2 = $r9.<org.javacc.utils.Token: int beginColumn>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r52 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r53 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$i3 = lengthof r2;	if $i3 != 1 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r53);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Was expecting one of:");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	r71 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71);	$r22 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r30 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	return $r30
;block_num 7