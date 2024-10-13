(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3731 0)
(declare-sort var2922 0)
(declare-sort var2275 0)
(declare-sort var288 0)
(declare-sort var3828 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun channel/1110566221 (var2922) Int)
(declare-fun cast-from-var3731-to-var2922 (var3731) var2922)
(declare-fun getText/1335168926 (var2922) String)
(declare-fun var288_replaceEscapes/-260926646 (String) String)
(declare-fun type/1110566221 (var2922) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTokenIndex/-1646574922 (var2922) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun start/1110566221 (var2922) Int)
(declare-fun stop/1110566221 (var2922) Int)
(declare-fun line/1110566221 (var2922) Int)
(declare-fun getCharPositionInLine/-1298433929 (var2922) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3731 var3731)
(declare-const null-String String)
(declare-const var3828-tokenNames (Array Int String))
(declare-const var1820 var3731) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.STLexer$STToken 
(assert (not (= var1820 null-var3731)))
(define-const var2693 String "") ; Statement: r25 = "" 
(define-const var1913 Int (channel/1110566221 (cast-from-var3731-to-var2922 var1820))) ; Statement: $i0 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int channel> 
 ; Statement: if $i0 <= 0 goto $r24 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: java.lang.String getText()>() 
(assert (<= var1913 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var976 String (getText/1335168926 (cast-from-var3731-to-var2922 var1820))) ; Statement: $r24 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: java.lang.String getText()>() 
 ; Statement: if $r24 == null goto r26 = "<no text>" 
(assert (not (= var976 null-String))) ; Negate: Cond: $r24 == null  
(define-const var2518 String (var288_replaceEscapes/-260926646 var976)) ; Statement: r26 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String replaceEscapes(java.lang.String)>($r24) 
 ; Statement: goto [?= $i1 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int type>] 
(assert true) ; Non Conditional
(define-const var8 Int (type/1110566221 (cast-from-var3731-to-var2922 var1820))) ; Statement: $i1 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int type> 
(define-const var3225 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i1 != $i10 goto $r1 = <org.stringtemplate.v4.compiler.STParser: java.lang.String[] tokenNames> 
(assert (not (= var8 var3225))) ; Cond: $i1 != $i10 
(define-const var2718 (Array Int String) var3828-tokenNames) ; Statement: $r1 = <org.stringtemplate.v4.compiler.STParser: java.lang.String[] tokenNames> 
(define-const var702 Int (type/1110566221 (cast-from-var3731-to-var2922 var1820))) ; Statement: $i2 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int type> 
(define-const var3430 String (select var2718 var702)) ; Statement: r27 = $r1[$i2] 
(assert true) ; Non Conditional
(define-const var1148 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1148)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1148!1 String)
(assert (= var1148!1 ""))
(assert true)
(define-const var592 String (append/672562846 var1148!1 "[@")) ; Statement: $r3 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[@") 
(declare-const var1148!2 String)
(assert (= var1148!2 (str.++ var1148!1 "[@")))
(assert true)
(define-const var3887 Int (getTokenIndex/-1646574922 (cast-from-var3731-to-var2922 var1820))) ; Statement: $i3 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int getTokenIndex()>() 
(assert true)
(define-const var3988 String (append/-1001720160 var592 var3887)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var592!1 String)
(assert (str.prefixof var592 var592!1))
(assert true)
(define-const var2061 String (append/672562846 var3988 ",")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var3988!1 String)
(assert (= var3988!1 (str.++ var3988 ",")))
(define-const var3538 Int (start/1110566221 (cast-from-var3731-to-var2922 var1820))) ; Statement: $i4 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int start> 
(assert true)
(define-const var3337 String (append/-1001720160 var2061 var3538)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var2061!1 String)
(assert (str.prefixof var2061 var2061!1))
(assert true)
(define-const var1816 String (append/672562846 var3337 ":")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3337!1 String)
(assert (= var3337!1 (str.++ var3337 ":")))
(define-const var2492 Int (stop/1110566221 (cast-from-var3731-to-var2922 var1820))) ; Statement: $i5 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int stop> 
(assert true)
(define-const var1880 String (append/-1001720160 var1816 var2492)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var1816!1 String)
(assert (str.prefixof var1816 var1816!1))
(assert true)
(define-const var1091 String (append/672562846 var1880 "=\u0027")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=\'") 
(declare-const var1880!1 String)
(assert (= var1880!1 (str.++ var1880 "=\u0027")))
(assert true)
(define-const var3322 String (append/672562846 var1091 var2518)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var1091!1 String)
(assert (= var1091!1 (str.++ var1091 var2518)))
(assert true)
(define-const var1414 String (append/672562846 var3322 "\u0027,<")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\',<") 
(declare-const var3322!1 String)
(assert (= var3322!1 (str.++ var3322 "\u0027,<")))
(assert true)
(define-const var1003 String (append/672562846 var1414 var3430)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(declare-const var1414!1 String)
(assert (= var1414!1 (str.++ var1414 var3430)))
(assert true)
(define-const var1367 String (append/672562846 var1003 ">")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1003!1 String)
(assert (= var1003!1 (str.++ var1003 ">")))
(assert true)
(define-const var925 String (append/672562846 var1367 var2693)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r25) 
(declare-const var1367!1 String)
(assert (= var1367!1 (str.++ var1367 var2693)))
(assert true)
(define-const var784 String (append/672562846 var925 ",")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var925!1 String)
(assert (= var925!1 (str.++ var925 ",")))
(define-const var1030 Int (line/1110566221 (cast-from-var3731-to-var2922 var1820))) ; Statement: $i6 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int line> 
(assert true)
(define-const var1857 String (append/-1001720160 var784 var1030)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6) 
(declare-const var784!1 String)
(assert (str.prefixof var784 var784!1))
(assert true)
(define-const var3955 String (append/672562846 var1857 ":")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1857!1 String)
(assert (= var1857!1 (str.++ var1857 ":")))
(assert true)
(define-const var589 Int (getCharPositionInLine/-1298433929 (cast-from-var3731-to-var2922 var1820))) ; Statement: $i7 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int getCharPositionInLine()>() 
(assert true)
(define-const var1874 String (append/-1001720160 var3955 var589)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7) 
(declare-const var3955!1 String)
(assert (str.prefixof var3955 var3955!1))
(assert true)
(define-const var880 String (append/672562846 var1874 "]")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1874!1 String)
(assert (= var1874!1 (str.++ var1874 "]")))
(assert true)
(define-const var346 String (toString/-2075883882 var880)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {channel/1110566221=([org.antlr.runtime.CommonToken], int), cast-from-var3731-to-var2922=([org.stringtemplate.v4.compiler.STLexer$STToken], org.antlr.runtime.CommonToken), getText/1335168926=([org.antlr.runtime.CommonToken], java.lang.String), var288_replaceEscapes/-260926646=([java.lang.String], java.lang.String), type/1110566221=([org.antlr.runtime.CommonToken], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTokenIndex/-1646574922=([org.antlr.runtime.CommonToken], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), start/1110566221=([org.antlr.runtime.CommonToken], int), stop/1110566221=([org.antlr.runtime.CommonToken], int), line/1110566221=([org.antlr.runtime.CommonToken], int), getCharPositionInLine/-1298433929=([org.antlr.runtime.CommonToken], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3731=org.stringtemplate.v4.compiler.STLexer$STToken, var1820=r0, var2693=r25, var2922=org.antlr.runtime.CommonToken, var1913=$i0, var976=$r24, var2275=null_type, var288=org.stringtemplate.v4.misc.Misc, var2518=r26, var8=$i1, var3225=$i10, var3828=org.stringtemplate.v4.compiler.STParser, var2718=$r1, var702=$i2, var3430=r27, var1148=$r29, var592=$r3, var3887=$i3, var3988=$r4, var2061=$r5, var3538=$i4, var3337=$r6, var1816=$r7, var2492=$i5, var1880=$r8, var1091=$r9, var3322=$r10, var1414=$r11, var1003=$r12, var1367=$r13, var925=$r14, var784=$r15, var1030=$i6, var1857=$r16, var3955=$r17, var589=$i7, var1874=$r18, var880=$r19, var346=$r20}
; {org.stringtemplate.v4.compiler.STLexer$STToken=var3731, r0=var1820, r25=var2693, org.antlr.runtime.CommonToken=var2922, $i0=var1913, $r24=var976, null_type=var2275, org.stringtemplate.v4.misc.Misc=var288, r26=var2518, $i1=var8, $i10=var3225, org.stringtemplate.v4.compiler.STParser=var3828, $r1=var2718, $i2=var702, r27=var3430, $r29=var1148, $r3=var592, $i3=var3887, $r4=var3988, $r5=var2061, $i4=var3538, $r6=var3337, $r7=var1816, $i5=var2492, $r8=var1880, $r9=var1091, $r10=var3322, $r11=var1414, $r12=var1003, $r13=var1367, $r14=var925, $r15=var784, $i6=var1030, $r16=var1857, $r17=var3955, $i7=var589, $r18=var1874, $r19=var880, $r20=var346}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 12,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.compiler.STLexer$STToken;	r25 = "";	$i0 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int channel>;	if $i0 <= 0 goto $r24 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: java.lang.String getText()>();	$r24 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: java.lang.String getText()>();	if $r24 == null goto r26 = "<no text>";	r26 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String replaceEscapes(java.lang.String)>($r24);	goto [?= $i1 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int type>];	$i1 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int type>;	$i10 = (int) -1;	if $i1 != $i10 goto $r1 = <org.stringtemplate.v4.compiler.STParser: java.lang.String[] tokenNames>;	$r1 = <org.stringtemplate.v4.compiler.STParser: java.lang.String[] tokenNames>;	$i2 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int type>;	r27 = $r1[$i2];	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[@");	$i3 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int getTokenIndex()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$i4 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int start>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i5 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int stop>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=\'");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\',<");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r25);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$i6 = r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int line>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i7 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer$STToken: int getCharPositionInLine()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	return $r20
;block_num 6