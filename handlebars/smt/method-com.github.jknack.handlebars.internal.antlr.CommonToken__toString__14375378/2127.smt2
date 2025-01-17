(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1879 0)
(declare-sort var3922 0)
(declare-sort var3327 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun channel/720164270 (var1879) Int)
(declare-fun getText/1815794653 (var1879) String)
(declare-fun type/720164270 (var1879) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTokenIndex/-1726466217 (var1879) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun start/720164270 (var1879) Int)
(declare-fun stop/720164270 (var1879) Int)
(declare-fun line/720164270 (var1879) Int)
(declare-fun getCharPositionInLine/716061720 (var1879) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1879 var1879)
(declare-const null-var3922 var3922)
(declare-const null-String String)
(declare-const var3061 var1879) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.CommonToken 
(assert (not (= var3061 null-var1879)))
(declare-const var2684 var3922) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.Recognizer 
(assert (not (= var2684 null-var3922)))
(define-const var2261 String "") ; Statement: r26 = "" 
(define-const var2282 Int (channel/720164270 var3061)) ; Statement: $i0 = r0.<com.github.jknack.handlebars.internal.antlr.CommonToken: int channel> 
 ; Statement: if $i0 <= 0 goto $r25 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.CommonToken: java.lang.String getText()>() 
(assert (<= var2282 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var3486 String (getText/1815794653 var3061)) ; Statement: $r25 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.CommonToken: java.lang.String getText()>() 
 ; Statement: if $r25 == null goto r29 = "<no text>" 
(assert (= var3486 null-String)) ; Cond: $r25 == null 
(define-const var3897 String "<no text>") ; Statement: r29 = "<no text>" 
(assert true) ; Non Conditional
(define-const var201 Int (type/720164270 var3061)) ; Statement: $i1 = r0.<com.github.jknack.handlebars.internal.antlr.CommonToken: int type> 
(define-const var1838 String (String_valueOf/1240665136 var201)) ; Statement: r30 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1) 
 ; Statement: if r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var2684 null-var3922)) ; Cond: r1 == null 
(define-const var949 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var949)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var949!1 String)
(assert (= var949!1 ""))
(assert true)
(define-const var349 String (append/672562846 var949!1 "[@")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[@") 
(declare-const var949!2 String)
(assert (= var949!2 (str.++ var949!1 "[@")))
(assert true)
(define-const var1684 Int (getTokenIndex/-1726466217 var3061)) ; Statement: $i2 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.CommonToken: int getTokenIndex()>() 
(assert true)
(define-const var725 String (append/-1001720160 var349 var1684)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var349!1 String)
(assert (str.prefixof var349 var349!1))
(assert true)
(define-const var513 String (append/672562846 var725 ",")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var725!1 String)
(assert (= var725!1 (str.++ var725 ",")))
(define-const var1216 Int (start/720164270 var3061)) ; Statement: $i3 = r0.<com.github.jknack.handlebars.internal.antlr.CommonToken: int start> 
(assert true)
(define-const var3213 String (append/-1001720160 var513 var1216)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var513!1 String)
(assert (str.prefixof var513 var513!1))
(assert true)
(define-const var1242 String (append/672562846 var3213 ":")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3213!1 String)
(assert (= var3213!1 (str.++ var3213 ":")))
(define-const var2569 Int (stop/720164270 var3061)) ; Statement: $i4 = r0.<com.github.jknack.handlebars.internal.antlr.CommonToken: int stop> 
(assert true)
(define-const var2530 String (append/-1001720160 var1242 var2569)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var1242!1 String)
(assert (str.prefixof var1242 var1242!1))
(assert true)
(define-const var1312 String (append/672562846 var2530 "=\u0027")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=\'") 
(declare-const var2530!1 String)
(assert (= var2530!1 (str.++ var2530 "=\u0027")))
(assert true)
(define-const var3984 String (append/672562846 var1312 var3897)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r29) 
(declare-const var1312!1 String)
(assert (= var1312!1 (str.++ var1312 var3897)))
(assert true)
(define-const var1706 String (append/672562846 var3984 "\u0027,<")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\',<") 
(declare-const var3984!1 String)
(assert (= var3984!1 (str.++ var3984 "\u0027,<")))
(assert true)
(define-const var3388 String (append/672562846 var1706 var1838)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r30) 
(declare-const var1706!1 String)
(assert (= var1706!1 (str.++ var1706 var1838)))
(assert true)
(define-const var2994 String (append/672562846 var3388 ">")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var3388!1 String)
(assert (= var3388!1 (str.++ var3388 ">")))
(assert true)
(define-const var1856 String (append/672562846 var2994 var2261)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var2994!1 String)
(assert (= var2994!1 (str.++ var2994 var2261)))
(assert true)
(define-const var1185 String (append/672562846 var1856 ",")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var1856!1 String)
(assert (= var1856!1 (str.++ var1856 ",")))
(define-const var861 Int (line/720164270 var3061)) ; Statement: $i5 = r0.<com.github.jknack.handlebars.internal.antlr.CommonToken: int line> 
(assert true)
(define-const var3043 String (append/-1001720160 var1185 var861)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var1185!1 String)
(assert (str.prefixof var1185 var1185!1))
(assert true)
(define-const var585 String (append/672562846 var3043 ":")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3043!1 String)
(assert (= var3043!1 (str.++ var3043 ":")))
(assert true)
(define-const var785 Int (getCharPositionInLine/716061720 var3061)) ; Statement: $i6 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.CommonToken: int getCharPositionInLine()>() 
(assert true)
(define-const var732 String (append/-1001720160 var585 var785)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6) 
(declare-const var585!1 String)
(assert (str.prefixof var585 var585!1))
(assert true)
(define-const var130 String (append/672562846 var732 "]")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var732!1 String)
(assert (= var732!1 (str.++ var732 "]")))
(assert true)
(define-const var3068 String (toString/-2075883882 var130)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {channel/720164270=([com.github.jknack.handlebars.internal.antlr.CommonToken], int), getText/1815794653=([com.github.jknack.handlebars.internal.antlr.CommonToken], java.lang.String), type/720164270=([com.github.jknack.handlebars.internal.antlr.CommonToken], int), String_valueOf/1240665136=([int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTokenIndex/-1726466217=([com.github.jknack.handlebars.internal.antlr.CommonToken], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), start/720164270=([com.github.jknack.handlebars.internal.antlr.CommonToken], int), stop/720164270=([com.github.jknack.handlebars.internal.antlr.CommonToken], int), line/720164270=([com.github.jknack.handlebars.internal.antlr.CommonToken], int), getCharPositionInLine/716061720=([com.github.jknack.handlebars.internal.antlr.CommonToken], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1879=com.github.jknack.handlebars.internal.antlr.CommonToken, var3061=r0, var3922=com.github.jknack.handlebars.internal.antlr.Recognizer, var2684=r1, var2261=r26, var2282=$i0, var3486=$r25, var3327=null_type, var3897=r29, var201=$i1, var1838=r30, var949=$r2, var349=$r3, var1684=$i2, var725=$r4, var513=$r5, var1216=$i3, var3213=$r6, var1242=$r7, var2569=$i4, var2530=$r8, var1312=$r9, var3984=$r10, var1706=$r11, var3388=$r12, var2994=$r13, var1856=$r14, var1185=$r15, var861=$i5, var3043=$r16, var585=$r17, var785=$i6, var732=$r18, var130=$r19, var3068=$r20}
; {com.github.jknack.handlebars.internal.antlr.CommonToken=var1879, r0=var3061, com.github.jknack.handlebars.internal.antlr.Recognizer=var3922, r1=var2684, r26=var2261, $i0=var2282, $r25=var3486, null_type=var3327, r29=var3897, $i1=var201, r30=var1838, $r2=var949, $r3=var349, $i2=var1684, $r4=var725, $r5=var513, $i3=var1216, $r6=var3213, $r7=var1242, $i4=var2569, $r8=var2530, $r9=var1312, $r10=var3984, $r11=var1706, $r12=var3388, $r13=var2994, $r14=var1856, $r15=var1185, $i5=var861, $r16=var3043, $r17=var585, $i6=var785, $r18=var732, $r19=var130, $r20=var3068}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.CommonToken;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.Recognizer;	r26 = "";	$i0 = r0.<com.github.jknack.handlebars.internal.antlr.CommonToken: int channel>;	if $i0 <= 0 goto $r25 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.CommonToken: java.lang.String getText()>();	$r25 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.CommonToken: java.lang.String getText()>();	if $r25 == null goto r29 = "<no text>";	r29 = "<no text>";	$i1 = r0.<com.github.jknack.handlebars.internal.antlr.CommonToken: int type>;	r30 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1);	if r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[@");	$i2 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.CommonToken: int getTokenIndex()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$i3 = r0.<com.github.jknack.handlebars.internal.antlr.CommonToken: int start>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i4 = r0.<com.github.jknack.handlebars.internal.antlr.CommonToken: int stop>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=\'");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r29);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\',<");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r30);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$i5 = r0.<com.github.jknack.handlebars.internal.antlr.CommonToken: int line>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i6 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.CommonToken: int getCharPositionInLine()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	return $r20
;block_num 5