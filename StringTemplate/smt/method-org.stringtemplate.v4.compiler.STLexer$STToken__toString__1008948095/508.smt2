(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1619 0)
(declare-sort var809 0)
(declare-sort var2559 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun channel/1110566221 (var809) Int)
(declare-fun cast-from-var1619-to-var809 (var1619) var809)
(declare-fun getText/1335168926 (var809) String)
(declare-fun type/1110566221 (var809) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTokenIndex/-1646574922 (var809) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun start/1110566221 (var809) Int)
(declare-fun stop/1110566221 (var809) Int)
(declare-fun line/1110566221 (var809) Int)
(declare-fun getCharPositionInLine/-1298433929 (var809) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1619 var1619)
(declare-const null-String String)
(declare-const var1773 var1619) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.STLexer$STToken 
(assert (not (= var1773 null-var1619)))
(define-const var145 String "") ; Statement: r25 = "" 
(define-const var2925 Int (channel/1110566221 (cast-from-var1619-to-var809 var1773))) ; Statement: $i0 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int channel> 
 ; Statement: if $i0 <= 0 goto $r24 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: java.lang.String getText()>() 
(assert (<= var2925 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var1870 String (getText/1335168926 (cast-from-var1619-to-var809 var1773))) ; Statement: $r24 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: java.lang.String getText()>() 
 ; Statement: if $r24 == null goto r26 = "<no text>" 
(assert (= var1870 null-String)) ; Cond: $r24 == null 
(define-const var3815 String "<no text>") ; Statement: r26 = "<no text>" 
(assert true) ; Non Conditional
(define-const var3069 Int (type/1110566221 (cast-from-var1619-to-var809 var1773))) ; Statement: $i1 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int type> 
(define-const var3006 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i1 != $i10 goto $r1 = <org.stringtemplate.v4.compiler.STParser: java.lang.String[] tokenNames> 
(assert (not (not (= var3069 var3006)))) ; Negate: Cond: $i1 != $i10  
(define-const var2816 String "EOF") ; Statement: r27 = "EOF" 
 ; Statement: goto [?= $r29 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2830 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2830)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2830!1 String)
(assert (= var2830!1 ""))
(assert true)
(define-const var1102 String (append/672562846 var2830!1 "[@")) ; Statement: $r3 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[@") 
(declare-const var2830!2 String)
(assert (= var2830!2 (str.++ var2830!1 "[@")))
(assert true)
(define-const var3341 Int (getTokenIndex/-1646574922 (cast-from-var1619-to-var809 var1773))) ; Statement: $i3 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int getTokenIndex()>() 
(assert true)
(define-const var830 String (append/-1001720160 var1102 var3341)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var1102!1 String)
(assert (str.prefixof var1102 var1102!1))
(assert true)
(define-const var1566 String (append/672562846 var830 ",")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var830!1 String)
(assert (= var830!1 (str.++ var830 ",")))
(define-const var2538 Int (start/1110566221 (cast-from-var1619-to-var809 var1773))) ; Statement: $i4 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int start> 
(assert true)
(define-const var1051 String (append/-1001720160 var1566 var2538)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var1566!1 String)
(assert (str.prefixof var1566 var1566!1))
(assert true)
(define-const var2811 String (append/672562846 var1051 ":")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1051!1 String)
(assert (= var1051!1 (str.++ var1051 ":")))
(define-const var2706 Int (stop/1110566221 (cast-from-var1619-to-var809 var1773))) ; Statement: $i5 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int stop> 
(assert true)
(define-const var1839 String (append/-1001720160 var2811 var2706)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var2811!1 String)
(assert (str.prefixof var2811 var2811!1))
(assert true)
(define-const var363 String (append/672562846 var1839 "=\u0027")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=\'") 
(declare-const var1839!1 String)
(assert (= var1839!1 (str.++ var1839 "=\u0027")))
(assert true)
(define-const var2119 String (append/672562846 var363 var3815)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var363!1 String)
(assert (= var363!1 (str.++ var363 var3815)))
(assert true)
(define-const var1061 String (append/672562846 var2119 "\u0027,<")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\',<") 
(declare-const var2119!1 String)
(assert (= var2119!1 (str.++ var2119 "\u0027,<")))
(assert true)
(define-const var1750 String (append/672562846 var1061 var2816)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(declare-const var1061!1 String)
(assert (= var1061!1 (str.++ var1061 var2816)))
(assert true)
(define-const var3640 String (append/672562846 var1750 ">")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1750!1 String)
(assert (= var1750!1 (str.++ var1750 ">")))
(assert true)
(define-const var476 String (append/672562846 var3640 var145)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r25) 
(declare-const var3640!1 String)
(assert (= var3640!1 (str.++ var3640 var145)))
(assert true)
(define-const var893 String (append/672562846 var476 ",")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var476!1 String)
(assert (= var476!1 (str.++ var476 ",")))
(define-const var3137 Int (line/1110566221 (cast-from-var1619-to-var809 var1773))) ; Statement: $i6 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int line> 
(assert true)
(define-const var2430 String (append/-1001720160 var893 var3137)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6) 
(declare-const var893!1 String)
(assert (str.prefixof var893 var893!1))
(assert true)
(define-const var2342 String (append/672562846 var2430 ":")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2430!1 String)
(assert (= var2430!1 (str.++ var2430 ":")))
(assert true)
(define-const var3373 Int (getCharPositionInLine/-1298433929 (cast-from-var1619-to-var809 var1773))) ; Statement: $i7 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int getCharPositionInLine()>() 
(assert true)
(define-const var2573 String (append/-1001720160 var2342 var3373)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7) 
(declare-const var2342!1 String)
(assert (str.prefixof var2342 var2342!1))
(assert true)
(define-const var3591 String (append/672562846 var2573 "]")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2573!1 String)
(assert (= var2573!1 (str.++ var2573 "]")))
(assert true)
(define-const var2409 String (toString/-2075883882 var3591)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {channel/1110566221=([org.antlr.runtime.CommonToken], int), cast-from-var1619-to-var809=([org.stringtemplate.v4.compiler.STLexer$STToken], org.antlr.runtime.CommonToken), getText/1335168926=([org.antlr.runtime.CommonToken], java.lang.String), type/1110566221=([org.antlr.runtime.CommonToken], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTokenIndex/-1646574922=([org.antlr.runtime.CommonToken], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), start/1110566221=([org.antlr.runtime.CommonToken], int), stop/1110566221=([org.antlr.runtime.CommonToken], int), line/1110566221=([org.antlr.runtime.CommonToken], int), getCharPositionInLine/-1298433929=([org.antlr.runtime.CommonToken], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1619=org.stringtemplate.v4.compiler.STLexer$STToken, var1773=r0, var145=r25, var809=org.antlr.runtime.CommonToken, var2925=$i0, var1870=$r24, var2559=null_type, var3815=r26, var3069=$i1, var3006=$i10, var2816=r27, var2830=$r29, var1102=$r3, var3341=$i3, var830=$r4, var1566=$r5, var2538=$i4, var1051=$r6, var2811=$r7, var2706=$i5, var1839=$r8, var363=$r9, var2119=$r10, var1061=$r11, var1750=$r12, var3640=$r13, var476=$r14, var893=$r15, var3137=$i6, var2430=$r16, var2342=$r17, var3373=$i7, var2573=$r18, var3591=$r19, var2409=$r20}
; {org.stringtemplate.v4.compiler.STLexer$STToken=var1619, r0=var1773, r25=var145, org.antlr.runtime.CommonToken=var809, $i0=var2925, $r24=var1870, null_type=var2559, r26=var3815, $i1=var3069, $i10=var3006, r27=var2816, $r29=var2830, $r3=var1102, $i3=var3341, $r4=var830, $r5=var1566, $i4=var2538, $r6=var1051, $r7=var2811, $i5=var2706, $r8=var1839, $r9=var363, $r10=var2119, $r11=var1061, $r12=var1750, $r13=var3640, $r14=var476, $r15=var893, $i6=var3137, $r16=var2430, $r17=var2342, $i7=var3373, $r18=var2573, $r19=var3591, $r20=var2409}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.compiler.STLexer$STToken;	r25 = "";	$i0 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int channel>;	if $i0 <= 0 goto $r24 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: java.lang.String getText()>();	$r24 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: java.lang.String getText()>();	if $r24 == null goto r26 = "<no text>";	r26 = "<no text>";	$i1 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int type>;	$i10 = (int) -1;	if $i1 != $i10 goto $r1 = <org.stringtemplate.v4.compiler.STParser: java.lang.String[] tokenNames>;	r27 = "EOF";	goto [?= $r29 = new java.lang.StringBuilder];	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[@");	$i3 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int getTokenIndex()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$i4 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int start>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i5 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int stop>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=\'");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\',<");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r25);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$i6 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int line>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i7 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int getCharPositionInLine()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	return $r20
;block_num 6