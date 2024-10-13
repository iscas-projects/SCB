(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1220 0)
(declare-sort var2753 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun beginLine/197050796 (var1220) Int)
(declare-fun beginColumn/197050796 (var1220) Int)
(declare-fun kind/197050796 (var1220) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun image/197050796 (var1220) String)
(declare-fun var2753_addUnicodeEscapes/1686793564 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun endLine/197050796 (var1220) Int)
(declare-fun endColumn/197050796 (var1220) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1220 var1220)
(declare-const var2753-cline Int)
(declare-const var2753-ccol Int)
(declare-const var3940 var1220) ; Statement: r0 := @parameter0: org.javacc.parser.Token 
(assert (not (= var3940 null-var1220)))
(define-const var1689 String "") ; Statement: r18 = "" 
(assert true) ; Non Conditional
(define-const var744 Int var2753-cline) ; Statement: $i1 = <org.javacc.parser.JavaCCGlobals: int cline> 
(define-const var3996 Int (beginLine/197050796 var3940)) ; Statement: $i0 = r0.<org.javacc.parser.Token: int beginLine> 
 ; Statement: if $i1 >= $i0 goto $i3 = <org.javacc.parser.JavaCCGlobals: int ccol> 
(assert (>= var744 var3996)) ; Cond: $i1 >= $i0 
(define-const var3769 Int var2753-ccol) ; Statement: $i3 = <org.javacc.parser.JavaCCGlobals: int ccol> 
(define-const var2879 Int (beginColumn/197050796 var3940)) ; Statement: $i2 = r0.<org.javacc.parser.Token: int beginColumn> 
 ; Statement: if $i3 >= $i2 goto $i4 = r0.<org.javacc.parser.Token: int kind> 
(assert (>= var3769 var2879)) ; Cond: $i3 >= $i2 
(define-const var1843 Int (kind/197050796 var3940)) ; Statement: $i4 = r0.<org.javacc.parser.Token: int kind> 
 ; Statement: if $i4 == 94 goto $r22 = new java.lang.StringBuilder 
(assert (= var1843 94)) ; Cond: $i4 == 94 
(define-const var3625 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3625)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3625!1 String)
(assert (= var3625!1 ""))
(assert true)
(define-const var3564 String (append/672562846 var3625!1 var1689)) ; Statement: $r4 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r18) 
(declare-const var3625!2 String)
(assert (= var3625!2 (str.++ var3625!1 var1689)))
(define-const var1109 String (image/197050796 var3940)) ; Statement: $r2 = r0.<org.javacc.parser.Token: java.lang.String image> 
(define-const var2155 String (var2753_addUnicodeEscapes/1686793564 var1109)) ; Statement: $r3 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String addUnicodeEscapes(java.lang.String)>($r2) 
(assert true)
(define-const var2957 String (append/672562846 var3564 var2155)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3564!1 String)
(assert (= var3564!1 (str.++ var3564 var2155)))
(assert true)
(define-const var1164 String (toString/-2075883882 var2957)) ; Statement: r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $i5 = r0.<org.javacc.parser.Token: int endLine>] 
(assert true) ; Non Conditional
(define-const var3011 Int (endLine/197050796 var3940)) ; Statement: $i5 = r0.<org.javacc.parser.Token: int endLine> 
(define-const var3906 Int var3011) ; Statement: <org.javacc.parser.JavaCCGlobals: int cline> = $i5 
(define-const var2481 Int (endColumn/197050796 var3940)) ; Statement: $i6 = r0.<org.javacc.parser.Token: int endColumn> 
(define-const var2116 Int (+ var2481 1)) ; Statement: $i7 = $i6 + 1 
(define-const var408 Int var2116) ; Statement: <org.javacc.parser.JavaCCGlobals: int ccol> = $i7 
(define-const var3226 String (image/197050796 var3940)) ; Statement: $r7 = r0.<org.javacc.parser.Token: java.lang.String image> 
(define-const var2520 String (image/197050796 var3940)) ; Statement: $r6 = r0.<org.javacc.parser.Token: java.lang.String image> 
(assert true)
(define-const var2958 Int (length/-134980193 var2520)) ; Statement: $i8 = virtualinvoke $r6.<java.lang.String: int length()>() 
(define-const var986 Int (- var2958 1)) ; Statement: $i9 = $i8 - 1 
(assert (and true (and (> (str.len var3226) var986) (<= 0 var986))))
(define-const var750 Int (charAt/698050440 var3226 var986)) ; Statement: $c13 = virtualinvoke $r7.<java.lang.String: char charAt(int)>($i9) 
(define-const var3442 Int (cast-from-Int-to-Int var750)) ; Statement: $i18 = (int) $c13 
 ; Statement: if $i18 == 10 goto $i10 = <org.javacc.parser.JavaCCGlobals: int cline> 
(assert (not (= var3442 10))) ; Negate: Cond: $i18 == 10  
(define-const var768 Int (cast-from-Int-to-Int var750)) ; Statement: $i19 = (int) $c13 
 ; Statement: if $i19 != 13 goto return r19 
(assert (not (= var768 13))) ; Cond: $i19 != 13 
 ; Statement: return r19 
(check-sat)
(get-model)
(get-unsat-core)
; {beginLine/197050796=([org.javacc.parser.Token], int), beginColumn/197050796=([org.javacc.parser.Token], int), kind/197050796=([org.javacc.parser.Token], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), image/197050796=([org.javacc.parser.Token], java.lang.String), var2753_addUnicodeEscapes/1686793564=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), endLine/197050796=([org.javacc.parser.Token], int), endColumn/197050796=([org.javacc.parser.Token], int), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var1220=org.javacc.parser.Token, var3940=r0, var1689=r18, var2753=org.javacc.parser.JavaCCGlobals, var744=$i1, var3996=$i0, var3769=$i3, var2879=$i2, var1843=$i4, var3625=$r22, var3564=$r4, var1109=$r2, var2155=$r3, var2957=$r5, var1164=r19, var3011=$i5, var3906=<org.javacc.parser.JavaCCGlobals: int cline>, var2481=$i6, var2116=$i7, var408=<org.javacc.parser.JavaCCGlobals: int ccol>, var3226=$r7, var2520=$r6, var2958=$i8, var986=$i9, var750=$c13, var3442=$i18, var768=$i19}
; {org.javacc.parser.Token=var1220, r0=var3940, r18=var1689, org.javacc.parser.JavaCCGlobals=var2753, $i1=var744, $i0=var3996, $i3=var3769, $i2=var2879, $i4=var1843, $r22=var3625, $r4=var3564, $r2=var1109, $r3=var2155, $r5=var2957, r19=var1164, $i5=var3011, <org.javacc.parser.JavaCCGlobals: int cline>=var3906, $i6=var2481, $i7=var2116, <org.javacc.parser.JavaCCGlobals: int ccol>=var408, $r7=var3226, $r6=var2520, $i8=var2958, $i9=var986, $c13=var750, $i18=var3442, $i19=var768}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: org.javacc.parser.Token;	r18 = "";	$i1 = <org.javacc.parser.JavaCCGlobals: int cline>;	$i0 = r0.<org.javacc.parser.Token: int beginLine>;	if $i1 >= $i0 goto $i3 = <org.javacc.parser.JavaCCGlobals: int ccol>;	$i3 = <org.javacc.parser.JavaCCGlobals: int ccol>;	$i2 = r0.<org.javacc.parser.Token: int beginColumn>;	if $i3 >= $i2 goto $i4 = r0.<org.javacc.parser.Token: int kind>;	$i4 = r0.<org.javacc.parser.Token: int kind>;	if $i4 == 94 goto $r22 = new java.lang.StringBuilder;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r18);	$r2 = r0.<org.javacc.parser.Token: java.lang.String image>;	$r3 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String addUnicodeEscapes(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $i5 = r0.<org.javacc.parser.Token: int endLine>];	$i5 = r0.<org.javacc.parser.Token: int endLine>;	<org.javacc.parser.JavaCCGlobals: int cline> = $i5;	$i6 = r0.<org.javacc.parser.Token: int endColumn>;	$i7 = $i6 + 1;	<org.javacc.parser.JavaCCGlobals: int ccol> = $i7;	$r7 = r0.<org.javacc.parser.Token: java.lang.String image>;	$r6 = r0.<org.javacc.parser.Token: java.lang.String image>;	$i8 = virtualinvoke $r6.<java.lang.String: int length()>();	$i9 = $i8 - 1;	$c13 = virtualinvoke $r7.<java.lang.String: char charAt(int)>($i9);	$i18 = (int) $c13;	if $i18 == 10 goto $i10 = <org.javacc.parser.JavaCCGlobals: int cline>;	$i19 = (int) $c13;	if $i19 != 13 goto return r19;	return r19
;block_num 8