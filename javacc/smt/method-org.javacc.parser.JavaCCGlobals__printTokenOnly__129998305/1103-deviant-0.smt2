(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2883 0)
(declare-sort var1503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun beginLine/197050796 (var2883) Int)
(declare-fun beginColumn/197050796 (var2883) Int)
(declare-fun kind/197050796 (var2883) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun image/197050796 (var2883) String)
(declare-fun var1503_addUnicodeEscapes/1686793564 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun endLine/197050796 (var2883) Int)
(declare-fun endColumn/197050796 (var2883) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2883 var2883)
(declare-const var1503-cline Int)
(declare-const var1503-ccol Int)
(declare-const var2935 var2883) ; Statement: r0 := @parameter0: org.javacc.parser.Token 
(assert (not (= var2935 null-var2883)))
(define-const var2237 String "") ; Statement: r18 = "" 
(assert true) ; Non Conditional
(define-const var3903 Int var1503-cline) ; Statement: $i1 = <org.javacc.parser.JavaCCGlobals: int cline> 
(define-const var3732 Int (beginLine/197050796 var2935)) ; Statement: $i0 = r0.<org.javacc.parser.Token: int beginLine> 
 ; Statement: if $i1 >= $i0 goto $i3 = <org.javacc.parser.JavaCCGlobals: int ccol> 
(assert (>= var3903 var3732)) ; Cond: $i1 >= $i0 
(define-const var1386 Int var1503-ccol) ; Statement: $i3 = <org.javacc.parser.JavaCCGlobals: int ccol> 
(define-const var988 Int (beginColumn/197050796 var2935)) ; Statement: $i2 = r0.<org.javacc.parser.Token: int beginColumn> 
 ; Statement: if $i3 >= $i2 goto $i4 = r0.<org.javacc.parser.Token: int kind> 
(assert (>= var1386 var988)) ; Cond: $i3 >= $i2 
(define-const var3650 Int (kind/197050796 var2935)) ; Statement: $i4 = r0.<org.javacc.parser.Token: int kind> 
 ; Statement: if $i4 == 94 goto $r22 = new java.lang.StringBuilder 
(assert (= var3650 94)) ; Cond: $i4 == 94 
(define-const var3862 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3862)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3862!1 String)
(assert (= var3862!1 ""))
(assert true)
(define-const var3794 String (append/672562846 var3862!1 var2237)) ; Statement: $r4 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r18) 
(declare-const var3862!2 String)
(assert (= var3862!2 (str.++ var3862!1 var2237)))
(define-const var336 String (image/197050796 var2935)) ; Statement: $r2 = r0.<org.javacc.parser.Token: java.lang.String image> 
(define-const var2563 String (var1503_addUnicodeEscapes/1686793564 var336)) ; Statement: $r3 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String addUnicodeEscapes(java.lang.String)>($r2) 
(assert true)
(define-const var1324 String (append/672562846 var3794 var2563)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3794!1 String)
(assert (= var3794!1 (str.++ var3794 var2563)))
(assert true)
(define-const var573 String (toString/-2075883882 var1324)) ; Statement: r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $i5 = r0.<org.javacc.parser.Token: int endLine>] 
(assert true) ; Non Conditional
(define-const var3849 Int (endLine/197050796 var2935)) ; Statement: $i5 = r0.<org.javacc.parser.Token: int endLine> 
(define-const var3559 Int var3849) ; Statement: <org.javacc.parser.JavaCCGlobals: int cline> = $i5 
(define-const var2513 Int (endColumn/197050796 var2935)) ; Statement: $i6 = r0.<org.javacc.parser.Token: int endColumn> 
(define-const var18 Int (+ var2513 1)) ; Statement: $i7 = $i6 + 1 
(define-const var1033 Int var18) ; Statement: <org.javacc.parser.JavaCCGlobals: int ccol> = $i7 
(define-const var1952 String (image/197050796 var2935)) ; Statement: $r7 = r0.<org.javacc.parser.Token: java.lang.String image> 
(define-const var2874 String (image/197050796 var2935)) ; Statement: $r6 = r0.<org.javacc.parser.Token: java.lang.String image> 
(assert true)
(define-const var843 Int (length/-134980193 var2874)) ; Statement: $i8 = virtualinvoke $r6.<java.lang.String: int length()>() 
(define-const var3749 Int (- var843 1)) ; Statement: $i9 = $i8 - 1 
(assert (not (and true (and (> (str.len var1952) var3749) (<= 0 var3749)))))
(check-sat)
(get-model)
(get-unsat-core)
; {beginLine/197050796=([org.javacc.parser.Token], int), beginColumn/197050796=([org.javacc.parser.Token], int), kind/197050796=([org.javacc.parser.Token], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), image/197050796=([org.javacc.parser.Token], java.lang.String), var1503_addUnicodeEscapes/1686793564=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), endLine/197050796=([org.javacc.parser.Token], int), endColumn/197050796=([org.javacc.parser.Token], int), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var2883=org.javacc.parser.Token, var2935=r0, var2237=r18, var1503=org.javacc.parser.JavaCCGlobals, var3903=$i1, var3732=$i0, var1386=$i3, var988=$i2, var3650=$i4, var3862=$r22, var3794=$r4, var336=$r2, var2563=$r3, var1324=$r5, var573=r19, var3849=$i5, var3559=<org.javacc.parser.JavaCCGlobals: int cline>, var2513=$i6, var18=$i7, var1033=<org.javacc.parser.JavaCCGlobals: int ccol>, var1952=$r7, var2874=$r6, var843=$i8, var3749=$i9, var3253=$c13, var531=$i18, var2478=$i10, var1372=$i11, var405=<org.javacc.parser.JavaCCGlobals: int cline>, var253=<org.javacc.parser.JavaCCGlobals: int ccol>}
; {org.javacc.parser.Token=var2883, r0=var2935, r18=var2237, org.javacc.parser.JavaCCGlobals=var1503, $i1=var3903, $i0=var3732, $i3=var1386, $i2=var988, $i4=var3650, $r22=var3862, $r4=var3794, $r2=var336, $r3=var2563, $r5=var1324, r19=var573, $i5=var3849, <org.javacc.parser.JavaCCGlobals: int cline>=var3559, $i6=var2513, $i7=var18, <org.javacc.parser.JavaCCGlobals: int ccol>=var1033, $r7=var1952, $r6=var2874, $i8=var843, $i9=var3749, $c13=var3253, $i18=var531, $i10=var2478, $i11=var1372, <org.javacc.parser.JavaCCGlobals: int cline>=var405, <org.javacc.parser.JavaCCGlobals: int ccol>=var253}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: org.javacc.parser.Token;	r18 = "";	$i1 = <org.javacc.parser.JavaCCGlobals: int cline>;	$i0 = r0.<org.javacc.parser.Token: int beginLine>;	if $i1 >= $i0 goto $i3 = <org.javacc.parser.JavaCCGlobals: int ccol>;	$i3 = <org.javacc.parser.JavaCCGlobals: int ccol>;	$i2 = r0.<org.javacc.parser.Token: int beginColumn>;	if $i3 >= $i2 goto $i4 = r0.<org.javacc.parser.Token: int kind>;	$i4 = r0.<org.javacc.parser.Token: int kind>;	if $i4 == 94 goto $r22 = new java.lang.StringBuilder;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r18);	$r2 = r0.<org.javacc.parser.Token: java.lang.String image>;	$r3 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String addUnicodeEscapes(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $i5 = r0.<org.javacc.parser.Token: int endLine>];	$i5 = r0.<org.javacc.parser.Token: int endLine>;	<org.javacc.parser.JavaCCGlobals: int cline> = $i5;	$i6 = r0.<org.javacc.parser.Token: int endColumn>;	$i7 = $i6 + 1;	<org.javacc.parser.JavaCCGlobals: int ccol> = $i7;	$r7 = r0.<org.javacc.parser.Token: java.lang.String image>;	$r6 = r0.<org.javacc.parser.Token: java.lang.String image>;	$i8 = virtualinvoke $r6.<java.lang.String: int length()>();	$i9 = $i8 - 1;	$c13 = virtualinvoke $r7.<java.lang.String: char charAt(int)>($i9);	$i18 = (int) $c13;	if $i18 == 10 goto $i10 = <org.javacc.parser.JavaCCGlobals: int cline>;	$i10 = <org.javacc.parser.JavaCCGlobals: int cline>;	$i11 = $i10 + 1;	<org.javacc.parser.JavaCCGlobals: int cline> = $i11;	<org.javacc.parser.JavaCCGlobals: int ccol> = 1;	return r19
;block_num 8