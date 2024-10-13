(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1105 0)
(declare-sort var396 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var396_getProperty/-1659784690 (String String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun getLength-Arr-Int-2 ((Array Int (Array Int Int))) Int)
(declare-fun next/-1103324373 (var1105) var1105)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun beginLine/-1103324373 (var1105) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun beginColumn/-1103324373 (var1105) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1105 var1105)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3571 var1105) ; Statement: r3 := @parameter0: org.javacc.jjtree.Token 
(assert (not (= var3571 null-var1105)))
(declare-const var3119 (Array Int (Array Int Int))) ; Statement: r2 := @parameter1: int[][] 
(assert (not (= var3119 null-__Array__Int____Array__Int__Int____)))
(declare-const var164 (Array Int String)) ; Statement: r33 := @parameter2: java.lang.String[] 
(assert (not (= var164 null-__Array__Int__String__)))
(define-const var432 String (var396_getProperty/-1659784690 "line.separator" "\n")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("line.separator", "\n") 
(define-const var3984 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3984)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3984!1 String)
(define-const var1474 Int 0) ; Statement: i11 = 0 
(define-const var2246 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
(define-const var3263 Int (getLength-Arr-Int-2 var3119)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i12 >= $i0 goto r66 = "Encountered \"" 
(assert (>= var2246 var3263)) ; Cond: i12 >= $i0 
(define-const var3395 String "Encountered \u0022") ; Statement: r66 = "Encountered \"" 
(define-const var1217 var1105 (next/-1103324373 var3571)) ; Statement: r67 = r3.<org.javacc.jjtree.Token: org.javacc.jjtree.Token next> 
(define-const var2932 Int 0) ; Statement: i15 = 0 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i11 goto $r4 = new java.lang.StringBuilder 
(assert (>= var2932 var1474)) ; Cond: i15 >= i11 
(define-const var924 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var924)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var924!1 String)
(assert (= var924!1 ""))
(assert true)
(define-const var1569 String (append/672562846 var924!1 var3395)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r66) 
(declare-const var924!2 String)
(assert (= var924!2 (str.++ var924!1 var3395)))
(assert true)
(define-const var98 String (append/672562846 var1569 "\u0022 at line ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" at line ") 
(declare-const var1569!1 String)
(assert (= var1569!1 (str.++ var1569 "\u0022 at line ")))
(define-const var2108 var1105 (next/-1103324373 var3571)) ; Statement: $r6 = r3.<org.javacc.jjtree.Token: org.javacc.jjtree.Token next> 
(define-const var1387 Int (beginLine/-1103324373 var2108)) ; Statement: $i1 = $r6.<org.javacc.jjtree.Token: int beginLine> 
(assert true)
(define-const var3938 String (append/-1001720160 var98 var1387)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var98!1 String)
(assert (str.prefixof var98 var98!1))
(assert true)
(define-const var3939 String (append/672562846 var3938 ", column ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var3938!1 String)
(assert (= var3938!1 (str.++ var3938 ", column ")))
(define-const var3579 var1105 (next/-1103324373 var3571)) ; Statement: $r9 = r3.<org.javacc.jjtree.Token: org.javacc.jjtree.Token next> 
(define-const var3950 Int (beginColumn/-1103324373 var3579)) ; Statement: $i2 = $r9.<org.javacc.jjtree.Token: int beginColumn> 
(assert true)
(define-const var1746 String (append/-1001720160 var3939 var3950)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3939!1 String)
(assert (str.prefixof var3939 var3939!1))
(assert true)
(define-const var1373 String (toString/-2075883882 var1746)) ; Statement: $r52 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var436 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var436)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var436!1 String)
(assert (= var436!1 ""))
(assert true)
(define-const var1617 String (append/672562846 var436!1 var1373)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52) 
(declare-const var436!2 String)
(assert (= var436!2 (str.++ var436!1 var1373)))
(assert true)
(define-const var853 String (append/672562846 var1617 ".")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1617!1 String)
(assert (= var1617!1 (str.++ var1617 ".")))
(assert true)
(define-const var697 String (append/672562846 var853 var432)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var853!1 String)
(assert (= var853!1 (str.++ var853 var432)))
(assert true)
(define-const var2905 String (toString/-2075883882 var697)) ; Statement: $r53 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3378 Int (getLength-Arr-Int-2 var3119)) ; Statement: $i3 = lengthof r2 
 ; Statement: if $i3 != 1 goto $r16 = new java.lang.StringBuilder 
(assert (not (= var3378 1))) ; Cond: $i3 != 1 
(define-const var286 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var286)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var286!1 String)
(assert (= var286!1 ""))
(assert true)
(define-const var960 String (append/672562846 var286!1 var2905)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r53) 
(declare-const var286!2 String)
(assert (= var286!2 (str.++ var286!1 var2905)))
(assert true)
(define-const var2714 String (append/672562846 var960 "Was expecting one of:")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Was expecting one of:") 
(declare-const var960!1 String)
(assert (= var960!1 (str.++ var960 "Was expecting one of:")))
(assert true)
(define-const var1475 String (append/672562846 var2714 var432)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2714!1 String)
(assert (= var2714!1 (str.++ var2714 var432)))
(assert true)
(define-const var1123 String (append/672562846 var1475 "    ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var1475!1 String)
(assert (= var1475!1 (str.++ var1475 "    ")))
(assert true)
(define-const var2685 String (toString/-2075883882 var1123)) ; Statement: r71 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var732 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var732)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var732!1 String)
(assert (= var732!1 ""))
(assert true)
(define-const var3382 String (append/672562846 var732!1 var2685)) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71) 
(declare-const var732!2 String)
(assert (= var732!2 (str.++ var732!1 var2685)))
(assert true)
(define-const var658 String (toString/-222306083 var3984!1)) ; Statement: $r22 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
(define-const var2166 String (append/672562846 var3382 var658)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3382!1 String)
(assert (= var3382!1 (str.++ var3382 var658)))
(assert true)
(define-const var1669 String (toString/-2075883882 var2166)) ; Statement: $r30 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var396_getProperty/-1659784690=([java.lang.String, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), getLength-Arr-Int-2=([int[][]], int), next/-1103324373=([org.javacc.jjtree.Token], org.javacc.jjtree.Token), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), beginLine/-1103324373=([org.javacc.jjtree.Token], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), beginColumn/-1103324373=([org.javacc.jjtree.Token], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1105=org.javacc.jjtree.Token, var3571=r3, var3119=r2, var164=r33, var396=java.lang.System, var432=r0, var3984=$r1, var1474=i11, var2246=i12, var3263=$i0, var3395=r66, var1217=r67, var2932=i15, var924=$r4, var1569=$r5, var98=$r7, var2108=$r6, var1387=$i1, var3938=$r8, var3939=$r10, var3579=$r9, var3950=$i2, var1746=$r11, var1373=$r52, var436=$r12, var1617=$r13, var853=$r14, var697=$r15, var2905=$r53, var3378=$i3, var286=$r16, var960=$r17, var2714=$r18, var1475=$r19, var1123=$r20, var2685=r71, var732=$r21, var3382=$r23, var658=$r22, var2166=$r24, var1669=$r30}
; {org.javacc.jjtree.Token=var1105, r3=var3571, r2=var3119, r33=var164, java.lang.System=var396, r0=var432, $r1=var3984, i11=var1474, i12=var2246, $i0=var3263, r66=var3395, r67=var1217, i15=var2932, $r4=var924, $r5=var1569, $r7=var98, $r6=var2108, $i1=var1387, $r8=var3938, $r10=var3939, $r9=var3579, $i2=var3950, $r11=var1746, $r52=var1373, $r12=var436, $r13=var1617, $r14=var853, $r15=var697, $r53=var2905, $i3=var3378, $r16=var286, $r17=var960, $r18=var2714, $r19=var1475, $r20=var1123, r71=var2685, $r21=var732, $r23=var3382, $r22=var658, $r24=var2166, $r30=var1669}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: org.javacc.jjtree.Token;	r2 := @parameter1: int[][];	r33 := @parameter2: java.lang.String[];	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String,java.lang.String)>("line.separator", "\n");	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	i11 = 0;	i12 = 0;	$i0 = lengthof r2;	if i12 >= $i0 goto r66 = "Encountered \"";	r66 = "Encountered \"";	r67 = r3.<org.javacc.jjtree.Token: org.javacc.jjtree.Token next>;	i15 = 0;	if i15 >= i11 goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r66);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" at line ");	$r6 = r3.<org.javacc.jjtree.Token: org.javacc.jjtree.Token next>;	$i1 = $r6.<org.javacc.jjtree.Token: int beginLine>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r9 = r3.<org.javacc.jjtree.Token: org.javacc.jjtree.Token next>;	$i2 = $r9.<org.javacc.jjtree.Token: int beginColumn>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r52 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r52);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r53 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$i3 = lengthof r2;	if $i3 != 1 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r53);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Was expecting one of:");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	r71 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71);	$r22 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r30 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	return $r30
;block_num 7