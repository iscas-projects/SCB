(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1157 0)
(declare-sort var1187 0)
(declare-sort var2293 0)
(declare-sort var2656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun channel/1110566221 (var1187) Int)
(declare-fun cast-from-var1157-to-var1187 (var1157) var1187)
(declare-fun getText/1335168926 (var1187) String)
(declare-fun type/1110566221 (var1187) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTokenIndex/-1646574922 (var1187) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun start/1110566221 (var1187) Int)
(declare-fun stop/1110566221 (var1187) Int)
(declare-fun line/1110566221 (var1187) Int)
(declare-fun getCharPositionInLine/-1298433929 (var1187) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1157 var1157)
(declare-const null-String String)
(declare-const var2656-tokenNames (Array Int String))
(declare-const var14 var1157) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.STLexer$STToken 
(assert (not (= var14 null-var1157)))
(define-const var176 String "") ; Statement: r25 = "" 
(define-const var658 Int (channel/1110566221 (cast-from-var1157-to-var1187 var14))) ; Statement: $i0 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int channel> 
 ; Statement: if $i0 <= 0 goto $r24 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: java.lang.String getText()>() 
(assert (<= var658 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var294 String (getText/1335168926 (cast-from-var1157-to-var1187 var14))) ; Statement: $r24 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: java.lang.String getText()>() 
 ; Statement: if $r24 == null goto r26 = "<no text>" 
(assert (= var294 null-String)) ; Cond: $r24 == null 
(define-const var1624 String "<no text>") ; Statement: r26 = "<no text>" 
(assert true) ; Non Conditional
(define-const var530 Int (type/1110566221 (cast-from-var1157-to-var1187 var14))) ; Statement: $i1 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int type> 
(define-const var1934 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i1 != $i10 goto $r1 = <org.stringtemplate.v4.compiler.STParser: java.lang.String[] tokenNames> 
(assert (not (= var530 var1934))) ; Cond: $i1 != $i10 
(define-const var1443 (Array Int String) var2656-tokenNames) ; Statement: $r1 = <org.stringtemplate.v4.compiler.STParser: java.lang.String[] tokenNames> 
(define-const var3761 Int (type/1110566221 (cast-from-var1157-to-var1187 var14))) ; Statement: $i2 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int type> 
(define-const var3206 String (select var1443 var3761)) ; Statement: r27 = $r1[$i2] 
(assert true) ; Non Conditional
(define-const var3851 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3851)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3851!1 String)
(assert (= var3851!1 ""))
(assert true)
(define-const var3698 String (append/672562846 var3851!1 "[@")) ; Statement: $r3 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[@") 
(declare-const var3851!2 String)
(assert (= var3851!2 (str.++ var3851!1 "[@")))
(assert true)
(define-const var638 Int (getTokenIndex/-1646574922 (cast-from-var1157-to-var1187 var14))) ; Statement: $i3 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int getTokenIndex()>() 
(assert true)
(define-const var444 String (append/-1001720160 var3698 var638)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var3698!1 String)
(assert (str.prefixof var3698 var3698!1))
(assert true)
(define-const var3511 String (append/672562846 var444 ",")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var444!1 String)
(assert (= var444!1 (str.++ var444 ",")))
(define-const var3251 Int (start/1110566221 (cast-from-var1157-to-var1187 var14))) ; Statement: $i4 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int start> 
(assert true)
(define-const var439 String (append/-1001720160 var3511 var3251)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var3511!1 String)
(assert (str.prefixof var3511 var3511!1))
(assert true)
(define-const var2459 String (append/672562846 var439 ":")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var439!1 String)
(assert (= var439!1 (str.++ var439 ":")))
(define-const var3038 Int (stop/1110566221 (cast-from-var1157-to-var1187 var14))) ; Statement: $i5 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int stop> 
(assert true)
(define-const var2481 String (append/-1001720160 var2459 var3038)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var2459!1 String)
(assert (str.prefixof var2459 var2459!1))
(assert true)
(define-const var3356 String (append/672562846 var2481 "=\u0027")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=\'") 
(declare-const var2481!1 String)
(assert (= var2481!1 (str.++ var2481 "=\u0027")))
(assert true)
(define-const var3390 String (append/672562846 var3356 var1624)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var3356!1 String)
(assert (= var3356!1 (str.++ var3356 var1624)))
(assert true)
(define-const var3342 String (append/672562846 var3390 "\u0027,<")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\',<") 
(declare-const var3390!1 String)
(assert (= var3390!1 (str.++ var3390 "\u0027,<")))
(assert true)
(define-const var2341 String (append/672562846 var3342 var3206)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(declare-const var3342!1 String)
(assert (= var3342!1 (str.++ var3342 var3206)))
(assert true)
(define-const var1989 String (append/672562846 var2341 ">")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var2341!1 String)
(assert (= var2341!1 (str.++ var2341 ">")))
(assert true)
(define-const var969 String (append/672562846 var1989 var176)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r25) 
(declare-const var1989!1 String)
(assert (= var1989!1 (str.++ var1989 var176)))
(assert true)
(define-const var2359 String (append/672562846 var969 ",")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var969!1 String)
(assert (= var969!1 (str.++ var969 ",")))
(define-const var616 Int (line/1110566221 (cast-from-var1157-to-var1187 var14))) ; Statement: $i6 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int line> 
(assert true)
(define-const var2608 String (append/-1001720160 var2359 var616)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6) 
(declare-const var2359!1 String)
(assert (str.prefixof var2359 var2359!1))
(assert true)
(define-const var2248 String (append/672562846 var2608 ":")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2608!1 String)
(assert (= var2608!1 (str.++ var2608 ":")))
(assert true)
(define-const var2495 Int (getCharPositionInLine/-1298433929 (cast-from-var1157-to-var1187 var14))) ; Statement: $i7 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int getCharPositionInLine()>() 
(assert true)
(define-const var3341 String (append/-1001720160 var2248 var2495)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7) 
(declare-const var2248!1 String)
(assert (str.prefixof var2248 var2248!1))
(assert true)
(define-const var3330 String (append/672562846 var3341 "]")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3341!1 String)
(assert (= var3341!1 (str.++ var3341 "]")))
(assert true)
(define-const var906 String (toString/-2075883882 var3330)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {channel/1110566221=([org.antlr.runtime.CommonToken], int), cast-from-var1157-to-var1187=([org.stringtemplate.v4.compiler.STLexer$STToken], org.antlr.runtime.CommonToken), getText/1335168926=([org.antlr.runtime.CommonToken], java.lang.String), type/1110566221=([org.antlr.runtime.CommonToken], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTokenIndex/-1646574922=([org.antlr.runtime.CommonToken], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), start/1110566221=([org.antlr.runtime.CommonToken], int), stop/1110566221=([org.antlr.runtime.CommonToken], int), line/1110566221=([org.antlr.runtime.CommonToken], int), getCharPositionInLine/-1298433929=([org.antlr.runtime.CommonToken], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1157=org.stringtemplate.v4.compiler.STLexer$STToken, var14=r0, var176=r25, var1187=org.antlr.runtime.CommonToken, var658=$i0, var294=$r24, var2293=null_type, var1624=r26, var530=$i1, var1934=$i10, var2656=org.stringtemplate.v4.compiler.STParser, var1443=$r1, var3761=$i2, var3206=r27, var3851=$r29, var3698=$r3, var638=$i3, var444=$r4, var3511=$r5, var3251=$i4, var439=$r6, var2459=$r7, var3038=$i5, var2481=$r8, var3356=$r9, var3390=$r10, var3342=$r11, var2341=$r12, var1989=$r13, var969=$r14, var2359=$r15, var616=$i6, var2608=$r16, var2248=$r17, var2495=$i7, var3341=$r18, var3330=$r19, var906=$r20}
; {org.stringtemplate.v4.compiler.STLexer$STToken=var1157, r0=var14, r25=var176, org.antlr.runtime.CommonToken=var1187, $i0=var658, $r24=var294, null_type=var2293, r26=var1624, $i1=var530, $i10=var1934, org.stringtemplate.v4.compiler.STParser=var2656, $r1=var1443, $i2=var3761, r27=var3206, $r29=var3851, $r3=var3698, $i3=var638, $r4=var444, $r5=var3511, $i4=var3251, $r6=var439, $r7=var2459, $i5=var3038, $r8=var2481, $r9=var3356, $r10=var3390, $r11=var3342, $r12=var2341, $r13=var1989, $r14=var969, $r15=var2359, $i6=var616, $r16=var2608, $r17=var2248, $i7=var2495, $r18=var3341, $r19=var3330, $r20=var906}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.compiler.STLexer$STToken;	r25 = "";	$i0 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int channel>;	if $i0 <= 0 goto $r24 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: java.lang.String getText()>();	$r24 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: java.lang.String getText()>();	if $r24 == null goto r26 = "<no text>";	r26 = "<no text>";	$i1 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int type>;	$i10 = (int) -1;	if $i1 != $i10 goto $r1 = <org.stringtemplate.v4.compiler.STParser: java.lang.String[] tokenNames>;	$r1 = <org.stringtemplate.v4.compiler.STParser: java.lang.String[] tokenNames>;	$i2 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int type>;	r27 = $r1[$i2];	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[@");	$i3 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int getTokenIndex()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$i4 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int start>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i5 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int stop>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=\'");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\',<");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r25);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$i6 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int line>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i7 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int getCharPositionInLine()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	return $r20
;block_num 6