(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2265 0)
(declare-sort var3185 0)
(declare-sort var1523 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cline/-1919349735 (var2265) Int)
(declare-fun beginLine/197050796 (var3185) Int)
(declare-fun ccol/-1919349735 (var2265) Int)
(declare-fun beginColumn/197050796 (var3185) Int)
(declare-fun kind/197050796 (var3185) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun image/197050796 (var3185) String)
(declare-fun var1523_addUnicodeEscapes/1686793564 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun endLine/197050796 (var3185) Int)
(declare-fun endColumn/197050796 (var3185) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2265 var2265)
(declare-const null-var3185 var3185)
(declare-const var2020 var2265) ; Statement: r0 := @this: org.javacc.parser.CodeGenerator 
(assert (not (= var2020 null-var2265)))
(declare-const var797 var3185) ; Statement: r1 := @parameter0: org.javacc.parser.Token 
(assert (not (= var797 null-var3185)))
(define-const var2707 String "") ; Statement: r20 = "" 
(assert true) ; Non Conditional
(define-const var3685 Int (cline/-1919349735 var2020)) ; Statement: $i1 = r0.<org.javacc.parser.CodeGenerator: int cline> 
(define-const var2042 Int (beginLine/197050796 var797)) ; Statement: $i0 = r1.<org.javacc.parser.Token: int beginLine> 
 ; Statement: if $i1 >= $i0 goto $i3 = r0.<org.javacc.parser.CodeGenerator: int ccol> 
(assert (>= var3685 var2042)) ; Cond: $i1 >= $i0 
(define-const var2965 Int (ccol/-1919349735 var2020)) ; Statement: $i3 = r0.<org.javacc.parser.CodeGenerator: int ccol> 
(define-const var3067 Int (beginColumn/197050796 var797)) ; Statement: $i2 = r1.<org.javacc.parser.Token: int beginColumn> 
 ; Statement: if $i3 >= $i2 goto $i4 = r1.<org.javacc.parser.Token: int kind> 
(assert (>= var2965 var3067)) ; Cond: $i3 >= $i2 
(define-const var1360 Int (kind/197050796 var797)) ; Statement: $i4 = r1.<org.javacc.parser.Token: int kind> 
 ; Statement: if $i4 == 94 goto $r24 = new java.lang.StringBuilder 
(assert (= var1360 94)) ; Cond: $i4 == 94 
(define-const var2964 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2964)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2964!1 String)
(assert (= var2964!1 ""))
(assert true)
(define-const var2159 String (append/672562846 var2964!1 var2707)) ; Statement: $r5 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var2964!2 String)
(assert (= var2964!2 (str.++ var2964!1 var2707)))
(define-const var3163 String (image/197050796 var797)) ; Statement: $r3 = r1.<org.javacc.parser.Token: java.lang.String image> 
(define-const var366 String (var1523_addUnicodeEscapes/1686793564 var3163)) ; Statement: $r4 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String addUnicodeEscapes(java.lang.String)>($r3) 
(assert true)
(define-const var421 String (append/672562846 var2159 var366)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2159!1 String)
(assert (= var2159!1 (str.++ var2159 var366)))
(assert true)
(define-const var372 String (toString/-2075883882 var421)) ; Statement: r21 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $i5 = r1.<org.javacc.parser.Token: int endLine>] 
(assert true) ; Non Conditional
(define-const var3721 Int (endLine/197050796 var797)) ; Statement: $i5 = r1.<org.javacc.parser.Token: int endLine> 
(declare-const var2020!1 var2265)
(assert (not (= var2020!1 null-var2265)))
(assert (= (cline/-1919349735 var2020!1) var3721)) ; Statement: r0.<org.javacc.parser.CodeGenerator: int cline> = $i5 
(define-const var1037 Int (endColumn/197050796 var797)) ; Statement: $i6 = r1.<org.javacc.parser.Token: int endColumn> 
(define-const var391 Int (+ var1037 1)) ; Statement: $i7 = $i6 + 1 
(declare-const var2020!2 var2265)
(assert (not (= var2020!2 null-var2265)))
(assert (= (ccol/-1919349735 var2020!2) var391)) ; Statement: r0.<org.javacc.parser.CodeGenerator: int ccol> = $i7 
(define-const var2765 String (image/197050796 var797)) ; Statement: $r7 = r1.<org.javacc.parser.Token: java.lang.String image> 
(assert true)
(define-const var2238 Int (length/-134980193 var2765)) ; Statement: $i8 = virtualinvoke $r7.<java.lang.String: int length()>() 
 ; Statement: if $i8 <= 0 goto return r21 
(assert (<= var2238 0)) ; Cond: $i8 <= 0 
 ; Statement: return r21 
(check-sat)
(get-model)
(get-unsat-core)
; {cline/-1919349735=([org.javacc.parser.CodeGenerator], int), beginLine/197050796=([org.javacc.parser.Token], int), ccol/-1919349735=([org.javacc.parser.CodeGenerator], int), beginColumn/197050796=([org.javacc.parser.Token], int), kind/197050796=([org.javacc.parser.Token], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), image/197050796=([org.javacc.parser.Token], java.lang.String), var1523_addUnicodeEscapes/1686793564=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), endLine/197050796=([org.javacc.parser.Token], int), endColumn/197050796=([org.javacc.parser.Token], int), length/-134980193=([java.lang.String], int)}
; {var2265=org.javacc.parser.CodeGenerator, var2020=r0, var3185=org.javacc.parser.Token, var797=r1, var2707=r20, var3685=$i1, var2042=$i0, var2965=$i3, var3067=$i2, var1360=$i4, var2964=$r24, var2159=$r5, var3163=$r3, var1523=org.javacc.parser.JavaCCGlobals, var366=$r4, var421=$r6, var372=r21, var3721=$i5, var1037=$i6, var391=$i7, var2765=$r7, var2238=$i8}
; {org.javacc.parser.CodeGenerator=var2265, r0=var2020, org.javacc.parser.Token=var3185, r1=var797, r20=var2707, $i1=var3685, $i0=var2042, $i3=var2965, $i2=var3067, $i4=var1360, $r24=var2964, $r5=var2159, $r3=var3163, org.javacc.parser.JavaCCGlobals=var1523, $r4=var366, $r6=var421, r21=var372, $i5=var3721, $i6=var1037, $i7=var391, $r7=var2765, $i8=var2238}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.javacc.parser.CodeGenerator;	r1 := @parameter0: org.javacc.parser.Token;	r20 = "";	$i1 = r0.<org.javacc.parser.CodeGenerator: int cline>;	$i0 = r1.<org.javacc.parser.Token: int beginLine>;	if $i1 >= $i0 goto $i3 = r0.<org.javacc.parser.CodeGenerator: int ccol>;	$i3 = r0.<org.javacc.parser.CodeGenerator: int ccol>;	$i2 = r1.<org.javacc.parser.Token: int beginColumn>;	if $i3 >= $i2 goto $i4 = r1.<org.javacc.parser.Token: int kind>;	$i4 = r1.<org.javacc.parser.Token: int kind>;	if $i4 == 94 goto $r24 = new java.lang.StringBuilder;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	$r3 = r1.<org.javacc.parser.Token: java.lang.String image>;	$r4 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String addUnicodeEscapes(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	r21 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $i5 = r1.<org.javacc.parser.Token: int endLine>];	$i5 = r1.<org.javacc.parser.Token: int endLine>;	r0.<org.javacc.parser.CodeGenerator: int cline> = $i5;	$i6 = r1.<org.javacc.parser.Token: int endColumn>;	$i7 = $i6 + 1;	r0.<org.javacc.parser.CodeGenerator: int ccol> = $i7;	$r7 = r1.<org.javacc.parser.Token: java.lang.String image>;	$i8 = virtualinvoke $r7.<java.lang.String: int length()>();	if $i8 <= 0 goto return r21;	return r21
;block_num 7