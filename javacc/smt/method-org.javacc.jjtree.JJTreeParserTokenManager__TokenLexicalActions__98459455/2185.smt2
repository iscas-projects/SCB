(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3931 0)
(declare-sort var1324 0)
(declare-sort var2588 0)
(declare-sort var3657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jjmatchedKind/-1450700737 (var3931) Int)
(declare-fun image/-1450700737 (var3931) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun lengthOfMatch/-1450700737 (var3931) Int)
(declare-fun kind/-1103324373 (var1324) Int)
(declare-fun cast-from-var1324-to-var2588 (var1324) var2588)
(declare-fun realKind/-190849901 (var2588) Int)
(declare-fun input_stream/-1450700737 (var3931) var3657)
(declare-fun backup/-1560050078 (var3657 Int) void)
(declare-fun image/-1103324373 (var1324) String)
(declare-const null-var3931 var3931)
(declare-const null-var1324 var1324)
(declare-const var3931-jjstrLiteralImages (Array Int String))
(declare-const null-var2588 var2588)
(declare-const var3291 var3931) ; Statement: r0 := @this: org.javacc.jjtree.JJTreeParserTokenManager 
(assert (not (= var3291 null-var3931)))
(declare-const var1445 var1324) ; Statement: r6 := @parameter0: org.javacc.jjtree.Token 
(assert (not (= var1445 null-var1324)))
(define-const var3603 Int (jjmatchedKind/-1450700737 var3291)) ; Statement: $i0 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: int jjmatchedKind> 
 ; Statement: lookupswitch($i0) {     case 126: goto $r11 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder image>;     case 127: goto $r3 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder image>;     default: goto return; } 
(assert (and (= var3603 126) true)) ; Intersect: Cond: $i0 == 126  and Non Conditional 
(define-const var2143 String (image/-1450700737 var3291)) ; Statement: $r11 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder image> 
(define-const var386 (Array Int String) var3931-jjstrLiteralImages) ; Statement: $r9 = <org.javacc.jjtree.JJTreeParserTokenManager: java.lang.String[] jjstrLiteralImages> 
(define-const var977 String (select var386 126)) ; Statement: $r10 = $r9[126] 
(assert true)
;(assert (append/672562846 var2143 var977)) ; Statement: virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2143!1 String)
(assert (= var2143!1 (str.++ var2143 var977)))
(define-const var2009 (Array Int String) var3931-jjstrLiteralImages) ; Statement: $r12 = <org.javacc.jjtree.JJTreeParserTokenManager: java.lang.String[] jjstrLiteralImages> 
(define-const var2809 String (select var2009 126)) ; Statement: $r13 = $r12[126] 
(assert true)
(define-const var1431 Int (length/-134980193 var2809)) ; Statement: $i2 = virtualinvoke $r13.<java.lang.String: int length()>() 
(declare-const var3291!1 var3931)
(assert (not (= var3291!1 null-var3931)))
(assert (= (lengthOfMatch/-1450700737 var3291!1) var1431)) ; Statement: r0.<org.javacc.jjtree.JJTreeParserTokenManager: int lengthOfMatch> = $i2 
(declare-const var1445!1 var1324)
(assert (not (= var1445!1 null-var1324)))
(assert (= (kind/-1103324373 var1445!1) 128)) ; Statement: r6.<org.javacc.jjtree.Token: int kind> = 128 
(define-const var1177 var2588 (cast-from-var1324-to-var2588 var1445!1)) ; Statement: $r14 = (org.javacc.jjtree.Token$GTToken) r6 
(declare-const var1177!1 var2588)
(assert (not (= var1177!1 null-var2588)))
(assert (= (realKind/-190849901 var1177!1) 126)) ; Statement: $r14.<org.javacc.jjtree.Token$GTToken: int realKind> = 126 
(define-const var3813 var3657 (input_stream/-1450700737 var3291!1)) ; Statement: $r15 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: org.javacc.jjtree.JavaCharStream input_stream> 
(assert true)
;(assert (backup/-1560050078 var3813 2)) ; Statement: virtualinvoke $r15.<org.javacc.jjtree.JavaCharStream: void backup(int)>(2) 

(declare-const var3813!1 var3657)
(declare-const var527 Int)
(declare-const var1445!2 var1324)
(assert (not (= var1445!2 null-var1324)))
(assert (= (image/-1103324373 var1445!2) ">")) ; Statement: r6.<org.javacc.jjtree.Token: java.lang.String image> = ">" 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jjmatchedKind/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], int), image/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), lengthOfMatch/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], int), kind/-1103324373=([org.javacc.jjtree.Token], int), cast-from-var1324-to-var2588=([org.javacc.jjtree.Token], org.javacc.jjtree.Token$GTToken), realKind/-190849901=([org.javacc.jjtree.Token$GTToken], int), input_stream/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], org.javacc.jjtree.JavaCharStream), backup/-1560050078=([org.javacc.jjtree.JavaCharStream, int], void), image/-1103324373=([org.javacc.jjtree.Token], java.lang.String)}
; {var3931=org.javacc.jjtree.JJTreeParserTokenManager, var3291=r0, var1324=org.javacc.jjtree.Token, var1445=r6, var3603=$i0, var2143=$r11, var386=$r9, var977=$r10, var2009=$r12, var2809=$r13, var1431=$i2, var2588=org.javacc.jjtree.Token$GTToken, var1177=$r14, var3657=org.javacc.jjtree.JavaCharStream, var3813=$r15, var527=2}
; {org.javacc.jjtree.JJTreeParserTokenManager=var3931, r0=var3291, org.javacc.jjtree.Token=var1324, r6=var1445, $i0=var3603, $r11=var2143, $r9=var386, $r10=var977, $r12=var2009, $r13=var2809, $i2=var1431, org.javacc.jjtree.Token$GTToken=var2588, $r14=var1177, org.javacc.jjtree.JavaCharStream=var3657, $r15=var3813, 2=var527}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.javacc.jjtree.JJTreeParserTokenManager;	r6 := @parameter0: org.javacc.jjtree.Token;	$i0 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: int jjmatchedKind>;	lookupswitch($i0) {     case 126: goto $r11 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder image>;     case 127: goto $r3 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder image>;     default: goto return; };	$r11 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder image>;	$r9 = <org.javacc.jjtree.JJTreeParserTokenManager: java.lang.String[] jjstrLiteralImages>;	$r10 = $r9[126];	virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r12 = <org.javacc.jjtree.JJTreeParserTokenManager: java.lang.String[] jjstrLiteralImages>;	$r13 = $r12[126];	$i2 = virtualinvoke $r13.<java.lang.String: int length()>();	r0.<org.javacc.jjtree.JJTreeParserTokenManager: int lengthOfMatch> = $i2;	r6.<org.javacc.jjtree.Token: int kind> = 128;	$r14 = (org.javacc.jjtree.Token$GTToken) r6;	$r14.<org.javacc.jjtree.Token$GTToken: int realKind> = 126;	$r15 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: org.javacc.jjtree.JavaCharStream input_stream>;	virtualinvoke $r15.<org.javacc.jjtree.JavaCharStream: void backup(int)>(2);	r6.<org.javacc.jjtree.Token: java.lang.String image> = ">";	goto [?= return];	return
;block_num 3