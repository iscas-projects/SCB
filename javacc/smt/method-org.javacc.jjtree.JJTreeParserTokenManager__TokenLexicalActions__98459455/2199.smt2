(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1743 0)
(declare-sort var2932 0)
(declare-sort var3952 0)
(declare-sort var3087 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jjmatchedKind/-1450700737 (var1743) Int)
(declare-fun image/-1450700737 (var1743) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun lengthOfMatch/-1450700737 (var1743) Int)
(declare-fun kind/-1103324373 (var2932) Int)
(declare-fun cast-from-var2932-to-var3952 (var2932) var3952)
(declare-fun realKind/-190849901 (var3952) Int)
(declare-fun input_stream/-1450700737 (var1743) var3087)
(declare-fun backup/-1560050078 (var3087 Int) void)
(declare-fun image/-1103324373 (var2932) String)
(declare-const null-var1743 var1743)
(declare-const null-var2932 var2932)
(declare-const var1743-jjstrLiteralImages (Array Int String))
(declare-const null-var3952 var3952)
(declare-const var1721 var1743) ; Statement: r0 := @this: org.javacc.jjtree.JJTreeParserTokenManager 
(assert (not (= var1721 null-var1743)))
(declare-const var1621 var2932) ; Statement: r6 := @parameter0: org.javacc.jjtree.Token 
(assert (not (= var1621 null-var2932)))
(define-const var3163 Int (jjmatchedKind/-1450700737 var1721)) ; Statement: $i0 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: int jjmatchedKind> 
 ; Statement: lookupswitch($i0) {     case 126: goto $r11 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder image>;     case 127: goto $r3 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder image>;     default: goto return; } 
(assert (and (= var3163 127) (and (not (= var3163 126)) true))) ; Intersect: Cond: $i0 == 127  and Intersect: Negate: Cond: $i0 == 126   and Non Conditional  
(define-const var965 String (image/-1450700737 var1721)) ; Statement: $r3 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder image> 
(define-const var3795 (Array Int String) var1743-jjstrLiteralImages) ; Statement: $r1 = <org.javacc.jjtree.JJTreeParserTokenManager: java.lang.String[] jjstrLiteralImages> 
(define-const var2362 String (select var3795 127)) ; Statement: $r2 = $r1[127] 
(assert true)
;(assert (append/672562846 var965 var2362)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var965!1 String)
(assert (= var965!1 (str.++ var965 var2362)))
(define-const var2627 (Array Int String) var1743-jjstrLiteralImages) ; Statement: $r4 = <org.javacc.jjtree.JJTreeParserTokenManager: java.lang.String[] jjstrLiteralImages> 
(define-const var3020 String (select var2627 127)) ; Statement: $r5 = $r4[127] 
(assert true)
(define-const var158 Int (length/-134980193 var3020)) ; Statement: $i1 = virtualinvoke $r5.<java.lang.String: int length()>() 
(declare-const var1721!1 var1743)
(assert (not (= var1721!1 null-var1743)))
(assert (= (lengthOfMatch/-1450700737 var1721!1) var158)) ; Statement: r0.<org.javacc.jjtree.JJTreeParserTokenManager: int lengthOfMatch> = $i1 
(declare-const var1621!1 var2932)
(assert (not (= var1621!1 null-var2932)))
(assert (= (kind/-1103324373 var1621!1) 128)) ; Statement: r6.<org.javacc.jjtree.Token: int kind> = 128 
(define-const var3935 var3952 (cast-from-var2932-to-var3952 var1621!1)) ; Statement: $r7 = (org.javacc.jjtree.Token$GTToken) r6 
(declare-const var3935!1 var3952)
(assert (not (= var3935!1 null-var3952)))
(assert (= (realKind/-190849901 var3935!1) 127)) ; Statement: $r7.<org.javacc.jjtree.Token$GTToken: int realKind> = 127 
(define-const var830 var3087 (input_stream/-1450700737 var1721!1)) ; Statement: $r8 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: org.javacc.jjtree.JavaCharStream input_stream> 
(assert true)
;(assert (backup/-1560050078 var830 1)) ; Statement: virtualinvoke $r8.<org.javacc.jjtree.JavaCharStream: void backup(int)>(1) 

(declare-const var830!1 var3087)
(declare-const var2728 Int)
(declare-const var1621!2 var2932)
(assert (not (= var1621!2 null-var2932)))
(assert (= (image/-1103324373 var1621!2) ">")) ; Statement: r6.<org.javacc.jjtree.Token: java.lang.String image> = ">" 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jjmatchedKind/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], int), image/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), lengthOfMatch/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], int), kind/-1103324373=([org.javacc.jjtree.Token], int), cast-from-var2932-to-var3952=([org.javacc.jjtree.Token], org.javacc.jjtree.Token$GTToken), realKind/-190849901=([org.javacc.jjtree.Token$GTToken], int), input_stream/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], org.javacc.jjtree.JavaCharStream), backup/-1560050078=([org.javacc.jjtree.JavaCharStream, int], void), image/-1103324373=([org.javacc.jjtree.Token], java.lang.String)}
; {var1743=org.javacc.jjtree.JJTreeParserTokenManager, var1721=r0, var2932=org.javacc.jjtree.Token, var1621=r6, var3163=$i0, var965=$r3, var3795=$r1, var2362=$r2, var2627=$r4, var3020=$r5, var158=$i1, var3952=org.javacc.jjtree.Token$GTToken, var3935=$r7, var3087=org.javacc.jjtree.JavaCharStream, var830=$r8, var2728=1}
; {org.javacc.jjtree.JJTreeParserTokenManager=var1743, r0=var1721, org.javacc.jjtree.Token=var2932, r6=var1621, $i0=var3163, $r3=var965, $r1=var3795, $r2=var2362, $r4=var2627, $r5=var3020, $i1=var158, org.javacc.jjtree.Token$GTToken=var3952, $r7=var3935, org.javacc.jjtree.JavaCharStream=var3087, $r8=var830, 1=var2728}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.javacc.jjtree.JJTreeParserTokenManager;	r6 := @parameter0: org.javacc.jjtree.Token;	$i0 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: int jjmatchedKind>;	lookupswitch($i0) {     case 126: goto $r11 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder image>;     case 127: goto $r3 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder image>;     default: goto return; };	$r3 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder image>;	$r1 = <org.javacc.jjtree.JJTreeParserTokenManager: java.lang.String[] jjstrLiteralImages>;	$r2 = $r1[127];	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = <org.javacc.jjtree.JJTreeParserTokenManager: java.lang.String[] jjstrLiteralImages>;	$r5 = $r4[127];	$i1 = virtualinvoke $r5.<java.lang.String: int length()>();	r0.<org.javacc.jjtree.JJTreeParserTokenManager: int lengthOfMatch> = $i1;	r6.<org.javacc.jjtree.Token: int kind> = 128;	$r7 = (org.javacc.jjtree.Token$GTToken) r6;	$r7.<org.javacc.jjtree.Token$GTToken: int realKind> = 127;	$r8 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: org.javacc.jjtree.JavaCharStream input_stream>;	virtualinvoke $r8.<org.javacc.jjtree.JavaCharStream: void backup(int)>(1);	r6.<org.javacc.jjtree.Token: java.lang.String image> = ">";	goto [?= return];	return
;block_num 3