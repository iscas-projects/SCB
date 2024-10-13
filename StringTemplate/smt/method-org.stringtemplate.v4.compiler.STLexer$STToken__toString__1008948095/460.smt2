(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3445 0)
(declare-sort var1447 0)
(declare-sort var2710 0)
(declare-sort var1283 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun channel/1110566221 (var1447) Int)
(declare-fun cast-from-var3445-to-var1447 (var3445) var1447)
(declare-fun getText/1335168926 (var1447) String)
(declare-fun var1283_replaceEscapes/-260926646 (String) String)
(declare-fun type/1110566221 (var1447) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTokenIndex/-1646574922 (var1447) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun start/1110566221 (var1447) Int)
(declare-fun stop/1110566221 (var1447) Int)
(declare-fun line/1110566221 (var1447) Int)
(declare-fun getCharPositionInLine/-1298433929 (var1447) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3445 var3445)
(declare-const null-String String)
(declare-const var2978 var3445) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.STLexer$STToken 
(assert (not (= var2978 null-var3445)))
(define-const var2466 String "") ; Statement: r25 = "" 
(define-const var2111 Int (channel/1110566221 (cast-from-var3445-to-var1447 var2978))) ; Statement: $i0 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int channel> 
 ; Statement: if $i0 <= 0 goto $r24 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: java.lang.String getText()>() 
(assert (<= var2111 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var1798 String (getText/1335168926 (cast-from-var3445-to-var1447 var2978))) ; Statement: $r24 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: java.lang.String getText()>() 
 ; Statement: if $r24 == null goto r26 = "<no text>" 
(assert (not (= var1798 null-String))) ; Negate: Cond: $r24 == null  
(define-const var252 String (var1283_replaceEscapes/-260926646 var1798)) ; Statement: r26 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String replaceEscapes(java.lang.String)>($r24) 
 ; Statement: goto [?= $i1 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int type>] 
(assert true) ; Non Conditional
(define-const var1608 Int (type/1110566221 (cast-from-var3445-to-var1447 var2978))) ; Statement: $i1 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int type> 
(define-const var3791 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i1 != $i10 goto $r1 = <org.stringtemplate.v4.compiler.STParser: java.lang.String[] tokenNames> 
(assert (not (not (= var1608 var3791)))) ; Negate: Cond: $i1 != $i10  
(define-const var3324 String "EOF") ; Statement: r27 = "EOF" 
 ; Statement: goto [?= $r29 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var7 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var7)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var7!1 String)
(assert (= var7!1 ""))
(assert true)
(define-const var250 String (append/672562846 var7!1 "[@")) ; Statement: $r3 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[@") 
(declare-const var7!2 String)
(assert (= var7!2 (str.++ var7!1 "[@")))
(assert true)
(define-const var2553 Int (getTokenIndex/-1646574922 (cast-from-var3445-to-var1447 var2978))) ; Statement: $i3 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int getTokenIndex()>() 
(assert true)
(define-const var1960 String (append/-1001720160 var250 var2553)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var250!1 String)
(assert (str.prefixof var250 var250!1))
(assert true)
(define-const var3419 String (append/672562846 var1960 ",")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var1960!1 String)
(assert (= var1960!1 (str.++ var1960 ",")))
(define-const var575 Int (start/1110566221 (cast-from-var3445-to-var1447 var2978))) ; Statement: $i4 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int start> 
(assert true)
(define-const var3611 String (append/-1001720160 var3419 var575)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var3419!1 String)
(assert (str.prefixof var3419 var3419!1))
(assert true)
(define-const var481 String (append/672562846 var3611 ":")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3611!1 String)
(assert (= var3611!1 (str.++ var3611 ":")))
(define-const var2524 Int (stop/1110566221 (cast-from-var3445-to-var1447 var2978))) ; Statement: $i5 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int stop> 
(assert true)
(define-const var2326 String (append/-1001720160 var481 var2524)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var481!1 String)
(assert (str.prefixof var481 var481!1))
(assert true)
(define-const var2665 String (append/672562846 var2326 "=\u0027")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=\'") 
(declare-const var2326!1 String)
(assert (= var2326!1 (str.++ var2326 "=\u0027")))
(assert true)
(define-const var2647 String (append/672562846 var2665 var252)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var2665!1 String)
(assert (= var2665!1 (str.++ var2665 var252)))
(assert true)
(define-const var1428 String (append/672562846 var2647 "\u0027,<")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\',<") 
(declare-const var2647!1 String)
(assert (= var2647!1 (str.++ var2647 "\u0027,<")))
(assert true)
(define-const var3914 String (append/672562846 var1428 var3324)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(declare-const var1428!1 String)
(assert (= var1428!1 (str.++ var1428 var3324)))
(assert true)
(define-const var2890 String (append/672562846 var3914 ">")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var3914!1 String)
(assert (= var3914!1 (str.++ var3914 ">")))
(assert true)
(define-const var1724 String (append/672562846 var2890 var2466)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r25) 
(declare-const var2890!1 String)
(assert (= var2890!1 (str.++ var2890 var2466)))
(assert true)
(define-const var1638 String (append/672562846 var1724 ",")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var1724!1 String)
(assert (= var1724!1 (str.++ var1724 ",")))
(define-const var2695 Int (line/1110566221 (cast-from-var3445-to-var1447 var2978))) ; Statement: $i6 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int line> 
(assert true)
(define-const var3120 String (append/-1001720160 var1638 var2695)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6) 
(declare-const var1638!1 String)
(assert (str.prefixof var1638 var1638!1))
(assert true)
(define-const var3394 String (append/672562846 var3120 ":")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3120!1 String)
(assert (= var3120!1 (str.++ var3120 ":")))
(assert true)
(define-const var3610 Int (getCharPositionInLine/-1298433929 (cast-from-var3445-to-var1447 var2978))) ; Statement: $i7 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int getCharPositionInLine()>() 
(assert true)
(define-const var1957 String (append/-1001720160 var3394 var3610)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7) 
(declare-const var3394!1 String)
(assert (str.prefixof var3394 var3394!1))
(assert true)
(define-const var307 String (append/672562846 var1957 "]")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1957!1 String)
(assert (= var1957!1 (str.++ var1957 "]")))
(assert true)
(define-const var3084 String (toString/-2075883882 var307)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {channel/1110566221=([org.antlr.runtime.CommonToken], int), cast-from-var3445-to-var1447=([org.stringtemplate.v4.compiler.STLexer$STToken], org.antlr.runtime.CommonToken), getText/1335168926=([org.antlr.runtime.CommonToken], java.lang.String), var1283_replaceEscapes/-260926646=([java.lang.String], java.lang.String), type/1110566221=([org.antlr.runtime.CommonToken], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTokenIndex/-1646574922=([org.antlr.runtime.CommonToken], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), start/1110566221=([org.antlr.runtime.CommonToken], int), stop/1110566221=([org.antlr.runtime.CommonToken], int), line/1110566221=([org.antlr.runtime.CommonToken], int), getCharPositionInLine/-1298433929=([org.antlr.runtime.CommonToken], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3445=org.stringtemplate.v4.compiler.STLexer$STToken, var2978=r0, var2466=r25, var1447=org.antlr.runtime.CommonToken, var2111=$i0, var1798=$r24, var2710=null_type, var1283=org.stringtemplate.v4.misc.Misc, var252=r26, var1608=$i1, var3791=$i10, var3324=r27, var7=$r29, var250=$r3, var2553=$i3, var1960=$r4, var3419=$r5, var575=$i4, var3611=$r6, var481=$r7, var2524=$i5, var2326=$r8, var2665=$r9, var2647=$r10, var1428=$r11, var3914=$r12, var2890=$r13, var1724=$r14, var1638=$r15, var2695=$i6, var3120=$r16, var3394=$r17, var3610=$i7, var1957=$r18, var307=$r19, var3084=$r20}
; {org.stringtemplate.v4.compiler.STLexer$STToken=var3445, r0=var2978, r25=var2466, org.antlr.runtime.CommonToken=var1447, $i0=var2111, $r24=var1798, null_type=var2710, org.stringtemplate.v4.misc.Misc=var1283, r26=var252, $i1=var1608, $i10=var3791, r27=var3324, $r29=var7, $r3=var250, $i3=var2553, $r4=var1960, $r5=var3419, $i4=var575, $r6=var3611, $r7=var481, $i5=var2524, $r8=var2326, $r9=var2665, $r10=var2647, $r11=var1428, $r12=var3914, $r13=var2890, $r14=var1724, $r15=var1638, $i6=var2695, $r16=var3120, $r17=var3394, $i7=var3610, $r18=var1957, $r19=var307, $r20=var3084}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.compiler.STLexer$STToken;	r25 = "";	$i0 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int channel>;	if $i0 <= 0 goto $r24 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: java.lang.String getText()>();	$r24 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: java.lang.String getText()>();	if $r24 == null goto r26 = "<no text>";	r26 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String replaceEscapes(java.lang.String)>($r24);	goto [?= $i1 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int type>];	$i1 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int type>;	$i10 = (int) -1;	if $i1 != $i10 goto $r1 = <org.stringtemplate.v4.compiler.STParser: java.lang.String[] tokenNames>;	r27 = "EOF";	goto [?= $r29 = new java.lang.StringBuilder];	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[@");	$i3 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int getTokenIndex()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$i4 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int start>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i5 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int stop>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=\'");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\',<");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r25);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$i6 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int line>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i7 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int getCharPositionInLine()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	return $r20
;block_num 6