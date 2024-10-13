(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1995 0)
(declare-sort var2938 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2938_getProperty/-1659784690 (String String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun getLength-Arr-Int-2 ((Array Int (Array Int Int))) Int)
(declare-fun next/197050796 (var1995) var1995)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun beginLine/197050796 (var1995) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun beginColumn/197050796 (var1995) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1995 var1995)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3583 var1995) ; Statement: r3 := @parameter0: org.javacc.parser.Token 
(assert (not (= var3583 null-var1995)))
(declare-const var3093 (Array Int (Array Int Int))) ; Statement: r2 := @parameter1: int[][] 
(assert (not (= var3093 null-__Array__Int____Array__Int__Int____)))
(declare-const var904 (Array Int String)) ; Statement: r33 := @parameter2: java.lang.String[] 
(assert (not (= var904 null-__Array__Int__String__)))
(define-const var2751 String (var2938_getProperty/-1659784690 "line.separator" "\n")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("line.separator", "\n") 
(define-const var3754 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3754)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3754!1 String)
(define-const var2143 Int 0) ; Statement: i11 = 0 
(define-const var1671 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
(define-const var1725 Int (getLength-Arr-Int-2 var3093)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i12 >= $i0 goto r66 = "Encountered \"" 
(assert (>= var1671 var1725)) ; Cond: i12 >= $i0 
(define-const var1225 String "Encountered \u0022") ; Statement: r66 = "Encountered \"" 
(define-const var3484 var1995 (next/197050796 var3583)) ; Statement: r67 = r3.<org.javacc.parser.Token: org.javacc.parser.Token next> 
(define-const var786 Int 0) ; Statement: i15 = 0 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i11 goto $r4 = new java.lang.StringBuilder 
(assert (>= var786 var2143)) ; Cond: i15 >= i11 
(define-const var779 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var779)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var779!1 String)
(assert (= var779!1 ""))
(assert true)
(define-const var1317 String (append/672562846 var779!1 var1225)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r66) 
(declare-const var779!2 String)
(assert (= var779!2 (str.++ var779!1 var1225)))
(assert true)
(define-const var1110 String (append/672562846 var1317 "\u0022 at line ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" at line ") 
(declare-const var1317!1 String)
(assert (= var1317!1 (str.++ var1317 "\u0022 at line ")))
(define-const var3085 var1995 (next/197050796 var3583)) ; Statement: $r6 = r3.<org.javacc.parser.Token: org.javacc.parser.Token next> 
(define-const var2503 Int (beginLine/197050796 var3085)) ; Statement: $i1 = $r6.<org.javacc.parser.Token: int beginLine> 
(assert true)
(define-const var1164 String (append/-1001720160 var1110 var2503)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1110!1 String)
(assert (str.prefixof var1110 var1110!1))
(assert true)
(define-const var60 String (append/672562846 var1164 ", column ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var1164!1 String)
(assert (= var1164!1 (str.++ var1164 ", column ")))
(define-const var2879 var1995 (next/197050796 var3583)) ; Statement: $r9 = r3.<org.javacc.parser.Token: org.javacc.parser.Token next> 
(define-const var793 Int (beginColumn/197050796 var2879)) ; Statement: $i2 = $r9.<org.javacc.parser.Token: int beginColumn> 
(assert true)
(define-const var2042 String (append/-1001720160 var60 var793)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var60!1 String)
(assert (str.prefixof var60 var60!1))
(assert true)
(define-const var2910 String (toString/-2075883882 var2042)) ; Statement: $r52 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var107 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var107)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var107!1 String)
(assert (= var107!1 ""))
(assert true)
(define-const var3918 String (append/672562846 var107!1 var2910)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52) 
(declare-const var107!2 String)
(assert (= var107!2 (str.++ var107!1 var2910)))
(assert true)
(define-const var2735 String (append/672562846 var3918 ".")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3918!1 String)
(assert (= var3918!1 (str.++ var3918 ".")))
(assert true)
(define-const var91 String (append/672562846 var2735 var2751)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2735!1 String)
(assert (= var2735!1 (str.++ var2735 var2751)))
(assert true)
(define-const var1848 String (toString/-2075883882 var91)) ; Statement: $r53 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2706 Int (getLength-Arr-Int-2 var3093)) ; Statement: $i3 = lengthof r2 
 ; Statement: if $i3 != 1 goto $r16 = new java.lang.StringBuilder 
(assert (not (= var2706 1))) ; Cond: $i3 != 1 
(define-const var3922 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3922)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3922!1 String)
(assert (= var3922!1 ""))
(assert true)
(define-const var2998 String (append/672562846 var3922!1 var1848)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r53) 
(declare-const var3922!2 String)
(assert (= var3922!2 (str.++ var3922!1 var1848)))
(assert true)
(define-const var1117 String (append/672562846 var2998 "Was expecting one of:")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Was expecting one of:") 
(declare-const var2998!1 String)
(assert (= var2998!1 (str.++ var2998 "Was expecting one of:")))
(assert true)
(define-const var3864 String (append/672562846 var1117 var2751)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1117!1 String)
(assert (= var1117!1 (str.++ var1117 var2751)))
(assert true)
(define-const var2882 String (append/672562846 var3864 "    ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var3864!1 String)
(assert (= var3864!1 (str.++ var3864 "    ")))
(assert true)
(define-const var5 String (toString/-2075883882 var2882)) ; Statement: r71 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var217 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var217)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var217!1 String)
(assert (= var217!1 ""))
(assert true)
(define-const var2471 String (append/672562846 var217!1 var5)) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71) 
(declare-const var217!2 String)
(assert (= var217!2 (str.++ var217!1 var5)))
(assert true)
(define-const var821 String (toString/-222306083 var3754!1)) ; Statement: $r22 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
(define-const var1675 String (append/672562846 var2471 var821)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2471!1 String)
(assert (= var2471!1 (str.++ var2471 var821)))
(assert true)
(define-const var3470 String (toString/-2075883882 var1675)) ; Statement: $r30 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var2938_getProperty/-1659784690=([java.lang.String, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), getLength-Arr-Int-2=([int[][]], int), next/197050796=([org.javacc.parser.Token], org.javacc.parser.Token), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), beginLine/197050796=([org.javacc.parser.Token], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), beginColumn/197050796=([org.javacc.parser.Token], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1995=org.javacc.parser.Token, var3583=r3, var3093=r2, var904=r33, var2938=java.lang.System, var2751=r0, var3754=$r1, var2143=i11, var1671=i12, var1725=$i0, var1225=r66, var3484=r67, var786=i15, var779=$r4, var1317=$r5, var1110=$r7, var3085=$r6, var2503=$i1, var1164=$r8, var60=$r10, var2879=$r9, var793=$i2, var2042=$r11, var2910=$r52, var107=$r12, var3918=$r13, var2735=$r14, var91=$r15, var1848=$r53, var2706=$i3, var3922=$r16, var2998=$r17, var1117=$r18, var3864=$r19, var2882=$r20, var5=r71, var217=$r21, var2471=$r23, var821=$r22, var1675=$r24, var3470=$r30}
; {org.javacc.parser.Token=var1995, r3=var3583, r2=var3093, r33=var904, java.lang.System=var2938, r0=var2751, $r1=var3754, i11=var2143, i12=var1671, $i0=var1725, r66=var1225, r67=var3484, i15=var786, $r4=var779, $r5=var1317, $r7=var1110, $r6=var3085, $i1=var2503, $r8=var1164, $r10=var60, $r9=var2879, $i2=var793, $r11=var2042, $r52=var2910, $r12=var107, $r13=var3918, $r14=var2735, $r15=var91, $r53=var1848, $i3=var2706, $r16=var3922, $r17=var2998, $r18=var1117, $r19=var3864, $r20=var2882, r71=var5, $r21=var217, $r23=var2471, $r22=var821, $r24=var1675, $r30=var3470}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: org.javacc.parser.Token;	r2 := @parameter1: int[][];	r33 := @parameter2: java.lang.String[];	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("line.separator", "\n");	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	i11 = 0;	i12 = 0;	$i0 = lengthof r2;	if i12 >= $i0 goto r66 = "Encountered \"";	r66 = "Encountered \"";	r67 = r3.<org.javacc.parser.Token: org.javacc.parser.Token next>;	i15 = 0;	if i15 >= i11 goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r66);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" at line ");	$r6 = r3.<org.javacc.parser.Token: org.javacc.parser.Token next>;	$i1 = $r6.<org.javacc.parser.Token: int beginLine>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r9 = r3.<org.javacc.parser.Token: org.javacc.parser.Token next>;	$i2 = $r9.<org.javacc.parser.Token: int beginColumn>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r52 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r53 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$i3 = lengthof r2;	if $i3 != 1 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r53);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Was expecting one of:");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	r71 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71);	$r22 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r30 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	return $r30
;block_num 7