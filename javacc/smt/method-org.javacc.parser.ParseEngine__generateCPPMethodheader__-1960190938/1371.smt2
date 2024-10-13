(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3836 0)
(declare-sort var3567 0)
(declare-sort var871 0)
(declare-sort var449 0)
(declare-sort var997 0)
(declare-sort var852 0)
(declare-sort var1652 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun getLhs/-759107248 (var449) String)
(declare-fun cast-from-var3567-to-var449 (var3567) var449)
(declare-fun codeGenerator/-1894308792 (var3836) var997)
(declare-fun printTokenSetup/-109122687 (var997 var871) void)
(declare-fun getLeadingComments/-327183083 (var997 var871) String)
(declare-fun beginLine/197050796 (var871) Int)
(declare-fun beginColumn/197050796 (var871) Int)
(declare-fun image/197050796 (var871) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun kind/197050796 (var871) Int)
(declare-fun getReturnTypeTokens/-2045221194 (var449) var852)
(declare-fun var852_size/-959786421 (var852) Int)
(declare-fun getTrailingComments/-901310105 (var997 var871) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun getParameterListTokens/-1968828001 (var449) var852)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun generateMethodDefHeader/-6362932 (var997 String String String String) void)
(declare-fun <init>/2110755883 (String String) void)
(declare-const null-var3836 var3836)
(declare-const null-var3567 var3567)
(declare-const null-var871 var871)
(declare-const var1652-cu_name String)
(declare-const var1512 var3836) ; Statement: r3 := @this: org.javacc.parser.ParseEngine 
(assert (not (= var1512 null-var3836)))
(declare-const var3937 var3567) ; Statement: r1 := @parameter0: org.javacc.parser.BNFProduction 
(assert (not (= var3937 null-var3567)))
(declare-const var3930 var871) ; Statement: r33 := @parameter1: org.javacc.parser.Token 
(assert (not (= var3930 null-var871)))
(define-const var2386 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2386)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2386!1 String)
(assert true)
(define-const var321 String (getLhs/-759107248 (cast-from-var3567-to-var449 var3937))) ; Statement: r2 = virtualinvoke r1.<org.javacc.parser.BNFProduction: java.lang.String getLhs()>() 
(define-const var3395 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var2727 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var542 var997 (codeGenerator/-1894308792 var1512)) ; Statement: $r4 = r3.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(assert true)
;(assert (printTokenSetup/-109122687 var542 var3930)) ; Statement: virtualinvoke $r4.<org.javacc.parser.CodeGenerator: void printTokenSetup(org.javacc.parser.Token)>(r33) 

(declare-const var542!1 var997)
(declare-const var3930!1 var871)
(define-const var2571 Int 1) ; Statement: <org.javacc.parser.JavaCCGlobals: int ccol> = 1 
(define-const var183 var997 (codeGenerator/-1894308792 var1512)) ; Statement: $r5 = r3.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(assert true)
;(assert (getLeadingComments/-327183083 var183 var3930!1)) ; Statement: virtualinvoke $r5.<org.javacc.parser.CodeGenerator: java.lang.String getLeadingComments(org.javacc.parser.Token)>(r33) 

(declare-const var183!1 var997)
(declare-const var3930!2 var871)
(define-const var863 Int (beginLine/197050796 var3930!2)) ; Statement: $i0 = r33.<org.javacc.parser.Token: int beginLine> 
(define-const var2811 Int var863) ; Statement: <org.javacc.parser.JavaCCGlobals: int cline> = $i0 
(define-const var43 Int (beginColumn/197050796 var3930!2)) ; Statement: $i1 = r33.<org.javacc.parser.Token: int beginColumn> 
(define-const var3299 Int var43) ; Statement: <org.javacc.parser.JavaCCGlobals: int ccol> = $i1 
(define-const var148 String (image/197050796 var3930!2)) ; Statement: $r6 = r33.<org.javacc.parser.Token: java.lang.String image> 
(assert true)
;(assert (append/1560614132 var2386!1 var148)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var2386!2 String)
(assert (str.prefixof var2386!1 var2386!2))
(define-const var3069 Int (kind/197050796 var3930!2)) ; Statement: $i2 = r33.<org.javacc.parser.Token: int kind> 
 ; Statement: if $i2 != 78 goto $i3 = r33.<org.javacc.parser.Token: int kind> 
(assert (not (= var3069 78))) ; Cond: $i2 != 78 
(define-const var3471 Int (kind/197050796 var3930!2)) ; Statement: $i3 = r33.<org.javacc.parser.Token: int kind> 
 ; Statement: if $i3 != 121 goto i7 = 1 
(assert (not (= var3471 121))) ; Cond: $i3 != 121 
(define-const var1614 Int 1) ; Statement: i7 = 1 
(assert true) ; Non Conditional
(assert true)
(define-const var3552 var852 (getReturnTypeTokens/-2045221194 (cast-from-var3567-to-var449 var3937))) ; Statement: $r34 = virtualinvoke r1.<org.javacc.parser.BNFProduction: java.util.List getReturnTypeTokens()>() 
(define-const var127 Int (var852_size/-959786421 var3552)) ; Statement: $i8 = interfaceinvoke $r34.<java.util.List: int size()>() 
 ; Statement: if i7 >= $i8 goto $r7 = r3.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(assert (>= var1614 var127)) ; Cond: i7 >= $i8 
(define-const var3890 var997 (codeGenerator/-1894308792 var1512)) ; Statement: $r7 = r3.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(assert true)
;(assert (getTrailingComments/-901310105 var3890 var3930!2)) ; Statement: virtualinvoke $r7.<org.javacc.parser.CodeGenerator: java.lang.String getTrailingComments(org.javacc.parser.Token)>(r33) 

(declare-const var3890!1 var997)
(declare-const var3930!3 var871)
(assert true)
(define-const var176 String (toString/-222306083 var2386!2)) ; Statement: r8 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (setLength/163251007 var2386!2 0)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2386!3 String)
(declare-const var3722 Int)
(assert true)
;(assert (append/1560614132 var2386!3 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("(") 
(declare-const var2386!4 String)
(assert (str.prefixof var2386!3 var2386!4))
(assert true)
(define-const var1221 var852 (getParameterListTokens/-1968828001 (cast-from-var3567-to-var449 var3937))) ; Statement: $r9 = virtualinvoke r1.<org.javacc.parser.BNFProduction: java.util.List getParameterListTokens()>() 
(define-const var2472 Int (var852_size/-959786421 var1221)) ; Statement: $i4 = interfaceinvoke $r9.<java.util.List: int size()>() 
 ; Statement: if $i4 == 0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")") 
(assert (= var2472 0)) ; Cond: $i4 == 0 
(assert true)
;(assert (append/1560614132 var2386!4 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")") 
(declare-const var2386!5 String)
(assert (str.prefixof var2386!4 var2386!5))
(assert true)
(define-const var1415 String (toString/-222306083 var2386!5)) ; Statement: $r25 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var3021 var997 (codeGenerator/-1894308792 var1512)) ; Statement: $r11 = r3.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var1386 String var1652-cu_name) ; Statement: $r12 = <org.javacc.parser.JavaCCGlobals: java.lang.String cu_name> 
(define-const var152 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var152)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var152!1 String)
(assert (= var152!1 ""))
(assert true)
(define-const var3158 String (getLhs/-759107248 (cast-from-var3567-to-var449 var3937))) ; Statement: $r13 = virtualinvoke r1.<org.javacc.parser.BNFProduction: java.lang.String getLhs()>() 
(assert true)
(define-const var1211 String (append/672562846 var152!1 var3158)) ; Statement: $r14 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var152!2 String)
(assert (= var152!2 (str.++ var152!1 var3158)))
(assert true)
(define-const var3561 String (append/672562846 var1211 var1415)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var1211!1 String)
(assert (= var1211!1 (str.++ var1211 var1415)))
(assert true)
(define-const var866 String (toString/-2075883882 var3561)) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3020 String (toString/-222306083 var2386!5)) ; Statement: $r16 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (generateMethodDefHeader/-6362932 var3021 var176 var1386 var866 var3020)) ; Statement: virtualinvoke $r11.<org.javacc.parser.CodeGenerator: void generateMethodDefHeader(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>(r8, $r12, $r17, $r16) 

(declare-const var3021!1 var997)
(declare-const var176!1 String)
(declare-const var1386!1 String)
(declare-const var866!1 String)
(declare-const var3020!1 String)
 ; Statement: if z2 == 0 goto (branch) 
(assert (not (= (ite var2727 1 0) 0))) ; Negate: Cond: z2 == 0  
(define-const var766 String "NULL") ; Statement: r36 = "NULL" 
 ; Statement: goto [?= $r37 = new java.lang.StringBuffer] 
(assert true) ; Non Conditional
(define-const var2468 String String-init) ; Statement: $r37 = new java.lang.StringBuffer 
(define-const var1684 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1684)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1684!1 String)
(assert (= var1684!1 ""))
(assert true)
(define-const var2759 String (append/672562846 var1684!1 "\n#if !defined ERROR_RET_")) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n#if !defined ERROR_RET_") 
(declare-const var1684!2 String)
(assert (= var1684!2 (str.++ var1684!1 "\n#if !defined ERROR_RET_")))
(assert true)
(define-const var1588 String (append/672562846 var2759 var321)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2759!1 String)
(assert (= var2759!1 (str.++ var2759 var321)))
(assert true)
(define-const var1528 String (append/672562846 var1588 "\n")) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1588!1 String)
(assert (= var1588!1 (str.++ var1588 "\n")))
(assert true)
(define-const var645 String (toString/-2075883882 var1528)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2110755883 var2468 var645)) ; Statement: specialinvoke $r37.<java.lang.StringBuffer: void <init>(java.lang.String)>($r42) 

(declare-const var2468!1 String)
(declare-const var645!1 String)
(define-const var3192 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3192)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3192!1 String)
(assert (= var3192!1 ""))
(assert true)
(define-const var1720 String (append/672562846 var3192!1 "#define ERROR_RET_")) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#define ERROR_RET_") 
(declare-const var3192!2 String)
(assert (= var3192!2 (str.++ var3192!1 "#define ERROR_RET_")))
(assert true)
(define-const var2762 String (append/672562846 var1720 var321)) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1720!1 String)
(assert (= var1720!1 (str.++ var1720 var321)))
(assert true)
(define-const var1703 String (append/672562846 var2762 " ")) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2762!1 String)
(assert (= var2762!1 (str.++ var2762 " ")))
(assert true)
(define-const var2399 String (append/672562846 var1703 var766)) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r36) 
(declare-const var1703!1 String)
(assert (= var1703!1 (str.++ var1703 var766)))
(assert true)
(define-const var190 String (append/672562846 var2399 "\n")) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var2399!1 String)
(assert (= var2399!1 (str.++ var2399 "\n")))
(assert true)
(define-const var477 String (toString/-2075883882 var190)) ; Statement: $r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var2468!1 var477)) ; Statement: virtualinvoke $r37.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r49) 
(declare-const var2468!2 String)
(assert (str.prefixof var2468!1 var2468!2))
(assert true)
;(assert (append/1560614132 var2468!2 "#endif\n")) ; Statement: virtualinvoke $r37.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("#endif\n") 
(declare-const var2468!3 String)
(assert (str.prefixof var2468!2 var2468!3))
(define-const var611 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var611)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var611!1 String)
(assert (= var611!1 ""))
(assert true)
(define-const var1231 String (append/672562846 var611!1 "#define __ERROR_RET__ ERROR_RET_")) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#define __ERROR_RET__ ERROR_RET_") 
(declare-const var611!2 String)
(assert (= var611!2 (str.++ var611!1 "#define __ERROR_RET__ ERROR_RET_")))
(assert true)
(define-const var3863 String (append/672562846 var1231 var321)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1231!1 String)
(assert (= var1231!1 (str.++ var1231 var321)))
(assert true)
(define-const var2170 String (append/672562846 var3863 "\n")) ; Statement: $r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var3863!1 String)
(assert (= var3863!1 (str.++ var3863 "\n")))
(assert true)
(define-const var1916 String (toString/-2075883882 var2170)) ; Statement: $r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var2468!3 var1916)) ; Statement: virtualinvoke $r37.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r54) 
(declare-const var2468!4 String)
(assert (str.prefixof var2468!3 var2468!4))
(assert true)
(define-const var1412 String (toString/-222306083 var2468!4)) ; Statement: $r55 = virtualinvoke $r37.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), getLhs/-759107248=([org.javacc.parser.NormalProduction], java.lang.String), cast-from-var3567-to-var449=([org.javacc.parser.BNFProduction], org.javacc.parser.NormalProduction), codeGenerator/-1894308792=([org.javacc.parser.ParseEngine], org.javacc.parser.CodeGenerator), printTokenSetup/-109122687=([org.javacc.parser.CodeGenerator, org.javacc.parser.Token], void), getLeadingComments/-327183083=([org.javacc.parser.CodeGenerator, org.javacc.parser.Token], java.lang.String), beginLine/197050796=([org.javacc.parser.Token], int), beginColumn/197050796=([org.javacc.parser.Token], int), image/197050796=([org.javacc.parser.Token], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), kind/197050796=([org.javacc.parser.Token], int), getReturnTypeTokens/-2045221194=([org.javacc.parser.NormalProduction], java.util.List), var852_size/-959786421=([java.util.List], int), getTrailingComments/-901310105=([org.javacc.parser.CodeGenerator, org.javacc.parser.Token], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), setLength/163251007=([java.lang.StringBuffer, int], void), getParameterListTokens/-1968828001=([org.javacc.parser.NormalProduction], java.util.List), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), generateMethodDefHeader/-6362932=([org.javacc.parser.CodeGenerator, java.lang.String, java.lang.String, java.lang.String, java.lang.String], void), <init>/2110755883=([java.lang.StringBuffer, java.lang.String], void)}
; {var3836=org.javacc.parser.ParseEngine, var1512=r3, var3567=org.javacc.parser.BNFProduction, var3937=r1, var871=org.javacc.parser.Token, var3930=r33, var2386=$r0, var449=org.javacc.parser.NormalProduction, var321=r2, var3395=z1, var2727=z2, var997=org.javacc.parser.CodeGenerator, var542=$r4, var2571=<org.javacc.parser.JavaCCGlobals: int ccol>, var183=$r5, var863=$i0, var2811=<org.javacc.parser.JavaCCGlobals: int cline>, var43=$i1, var3299=<org.javacc.parser.JavaCCGlobals: int ccol>, var148=$r6, var3069=$i2, var3471=$i3, var1614=i7, var852=java.util.List, var3552=$r34, var127=$i8, var3890=$r7, var176=r8, var3722=0, var1221=$r9, var2472=$i4, var1415=$r25, var3021=$r11, var1652=org.javacc.parser.JavaCCGlobals, var1386=$r12, var152=$r10, var3158=$r13, var1211=$r14, var3561=$r15, var866=$r17, var3020=$r16, var766=r36, var2468=$r37, var1684=$r38, var2759=$r39, var1588=$r40, var1528=$r41, var645=$r42, var3192=$r43, var1720=$r44, var2762=$r45, var1703=$r46, var2399=$r47, var190=$r48, var477=$r49, var611=$r50, var1231=$r51, var3863=$r52, var2170=$r53, var1916=$r54, var1412=$r55}
; {org.javacc.parser.ParseEngine=var3836, r3=var1512, org.javacc.parser.BNFProduction=var3567, r1=var3937, org.javacc.parser.Token=var871, r33=var3930, $r0=var2386, org.javacc.parser.NormalProduction=var449, r2=var321, z1=var3395, z2=var2727, org.javacc.parser.CodeGenerator=var997, $r4=var542, <org.javacc.parser.JavaCCGlobals: int ccol>=var2571, $r5=var183, $i0=var863, <org.javacc.parser.JavaCCGlobals: int cline>=var2811, $i1=var43, <org.javacc.parser.JavaCCGlobals: int ccol>=var3299, $r6=var148, $i2=var3069, $i3=var3471, i7=var1614, java.util.List=var852, $r34=var3552, $i8=var127, $r7=var3890, r8=var176, 0=var3722, $r9=var1221, $i4=var2472, $r25=var1415, $r11=var3021, org.javacc.parser.JavaCCGlobals=var1652, $r12=var1386, $r10=var152, $r13=var3158, $r14=var1211, $r15=var3561, $r17=var866, $r16=var3020, r36=var766, $r37=var2468, $r38=var1684, $r39=var2759, $r40=var1588, $r41=var1528, $r42=var645, $r43=var3192, $r44=var1720, $r45=var2762, $r46=var1703, $r47=var2399, $r48=var190, $r49=var477, $r50=var611, $r51=var1231, $r52=var3863, $r53=var2170, $r54=var1916, $r55=var1412}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 6,"<java.lang.StringBuffer: java.lang.String toString()>": 4,"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 13,"<java.lang.StringBuilder: java.lang.String toString()>": 4,"<java.lang.StringBuffer: void <init>(java.lang.String)>": 1}
;stmts r3 := @this: org.javacc.parser.ParseEngine;	r1 := @parameter0: org.javacc.parser.BNFProduction;	r33 := @parameter1: org.javacc.parser.Token;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	r2 = virtualinvoke r1.<org.javacc.parser.BNFProduction: java.lang.String getLhs()>();	z1 = 0;	z2 = 0;	$r4 = r3.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	virtualinvoke $r4.<org.javacc.parser.CodeGenerator: void printTokenSetup(org.javacc.parser.Token)>(r33);	<org.javacc.parser.JavaCCGlobals: int ccol> = 1;	$r5 = r3.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	virtualinvoke $r5.<org.javacc.parser.CodeGenerator: java.lang.String getLeadingComments(org.javacc.parser.Token)>(r33);	$i0 = r33.<org.javacc.parser.Token: int beginLine>;	<org.javacc.parser.JavaCCGlobals: int cline> = $i0;	$i1 = r33.<org.javacc.parser.Token: int beginColumn>;	<org.javacc.parser.JavaCCGlobals: int ccol> = $i1;	$r6 = r33.<org.javacc.parser.Token: java.lang.String image>;	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	$i2 = r33.<org.javacc.parser.Token: int kind>;	if $i2 != 78 goto $i3 = r33.<org.javacc.parser.Token: int kind>;	$i3 = r33.<org.javacc.parser.Token: int kind>;	if $i3 != 121 goto i7 = 1;	i7 = 1;	$r34 = virtualinvoke r1.<org.javacc.parser.BNFProduction: java.util.List getReturnTypeTokens()>();	$i8 = interfaceinvoke $r34.<java.util.List: int size()>();	if i7 >= $i8 goto $r7 = r3.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r7 = r3.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	virtualinvoke $r7.<org.javacc.parser.CodeGenerator: java.lang.String getTrailingComments(org.javacc.parser.Token)>(r33);	r8 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuffer: void setLength(int)>(0);	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("(");	$r9 = virtualinvoke r1.<org.javacc.parser.BNFProduction: java.util.List getParameterListTokens()>();	$i4 = interfaceinvoke $r9.<java.util.List: int size()>();	if $i4 == 0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")");	$r25 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	$r11 = r3.<org.javacc.parser.ParseEngine: org.javacc.parser.CodeGenerator codeGenerator>;	$r12 = <org.javacc.parser.JavaCCGlobals: java.lang.String cu_name>;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke r1.<org.javacc.parser.BNFProduction: java.lang.String getLhs()>();	$r14 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r11.<org.javacc.parser.CodeGenerator: void generateMethodDefHeader(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>(r8, $r12, $r17, $r16);	if z2 == 0 goto (branch);	r36 = "NULL";	goto [?= $r37 = new java.lang.StringBuffer];	$r37 = new java.lang.StringBuffer;	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n#if !defined ERROR_RET_");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r37.<java.lang.StringBuffer: void <init>(java.lang.String)>($r42);	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#define ERROR_RET_");	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r36);	$r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r37.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r49);	virtualinvoke $r37.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("#endif\n");	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#define __ERROR_RET__ ERROR_RET_");	$r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r37.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r54);	$r55 = virtualinvoke $r37.<java.lang.StringBuffer: java.lang.String toString()>();	return $r55
;block_num 8