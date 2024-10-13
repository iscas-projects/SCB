(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2653 0)
(declare-sort var3337 0)
(declare-sort var1990 0)
(declare-sort var2168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jjmatchedKind/1964309570 (var2653) Int)
(declare-fun image/1964309570 (var2653) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun lengthOfMatch/1964309570 (var2653) Int)
(declare-fun kind/197050796 (var3337) Int)
(declare-fun cast-from-var3337-to-var1990 (var3337) var1990)
(declare-fun realKind/2132275732 (var1990) Int)
(declare-fun input_stream/1964309570 (var2653) var2168)
(declare-fun backup/649253219 (var2168 Int) void)
(declare-fun image/197050796 (var3337) String)
(declare-const null-var2653 var2653)
(declare-const null-var3337 var3337)
(declare-const var2653-jjstrLiteralImages (Array Int String))
(declare-const null-var1990 var1990)
(declare-const var561 var2653) ; Statement: r0 := @this: org.javacc.parser.JavaCCParserTokenManager 
(assert (not (= var561 null-var2653)))
(declare-const var405 var3337) ; Statement: r6 := @parameter0: org.javacc.parser.Token 
(assert (not (= var405 null-var3337)))
(define-const var3663 Int (jjmatchedKind/1964309570 var561)) ; Statement: $i0 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind> 
 ; Statement: lookupswitch($i0) {     case 135: goto $r11 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;     case 136: goto $r3 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;     default: goto return; } 
(assert (and (= var3663 135) true)) ; Intersect: Cond: $i0 == 135  and Non Conditional 
(define-const var1646 String (image/1964309570 var561)) ; Statement: $r11 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image> 
(define-const var3624 (Array Int String) var2653-jjstrLiteralImages) ; Statement: $r9 = <org.javacc.parser.JavaCCParserTokenManager: java.lang.String[] jjstrLiteralImages> 
(define-const var3724 String (select var3624 135)) ; Statement: $r10 = $r9[135] 
(assert true)
;(assert (append/672562846 var1646 var3724)) ; Statement: virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1646!1 String)
(assert (= var1646!1 (str.++ var1646 var3724)))
(define-const var1846 (Array Int String) var2653-jjstrLiteralImages) ; Statement: $r12 = <org.javacc.parser.JavaCCParserTokenManager: java.lang.String[] jjstrLiteralImages> 
(define-const var2421 String (select var1846 135)) ; Statement: $r13 = $r12[135] 
(assert true)
(define-const var3003 Int (length/-134980193 var2421)) ; Statement: $i2 = virtualinvoke $r13.<java.lang.String: int length()>() 
(declare-const var561!1 var2653)
(assert (not (= var561!1 null-var2653)))
(assert (= (lengthOfMatch/1964309570 var561!1) var3003)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int lengthOfMatch> = $i2 
(declare-const var405!1 var3337)
(assert (not (= var405!1 null-var3337)))
(assert (= (kind/197050796 var405!1) 137)) ; Statement: r6.<org.javacc.parser.Token: int kind> = 137 
(define-const var2338 var1990 (cast-from-var3337-to-var1990 var405!1)) ; Statement: $r14 = (org.javacc.parser.Token$GTToken) r6 
(declare-const var2338!1 var1990)
(assert (not (= var2338!1 null-var1990)))
(assert (= (realKind/2132275732 var2338!1) 135)) ; Statement: $r14.<org.javacc.parser.Token$GTToken: int realKind> = 135 
(define-const var449 var2168 (input_stream/1964309570 var561!1)) ; Statement: $r15 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream> 
(assert true)
;(assert (backup/649253219 var449 2)) ; Statement: virtualinvoke $r15.<org.javacc.parser.JavaCharStream: void backup(int)>(2) 

(declare-const var449!1 var2168)
(declare-const var288 Int)
(declare-const var405!2 var3337)
(assert (not (= var405!2 null-var3337)))
(assert (= (image/197050796 var405!2) ">")) ; Statement: r6.<org.javacc.parser.Token: java.lang.String image> = ">" 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jjmatchedKind/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), image/1964309570=([org.javacc.parser.JavaCCParserTokenManager], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), lengthOfMatch/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), kind/197050796=([org.javacc.parser.Token], int), cast-from-var3337-to-var1990=([org.javacc.parser.Token], org.javacc.parser.Token$GTToken), realKind/2132275732=([org.javacc.parser.Token$GTToken], int), input_stream/1964309570=([org.javacc.parser.JavaCCParserTokenManager], org.javacc.parser.JavaCharStream), backup/649253219=([org.javacc.parser.JavaCharStream, int], void), image/197050796=([org.javacc.parser.Token], java.lang.String)}
; {var2653=org.javacc.parser.JavaCCParserTokenManager, var561=r0, var3337=org.javacc.parser.Token, var405=r6, var3663=$i0, var1646=$r11, var3624=$r9, var3724=$r10, var1846=$r12, var2421=$r13, var3003=$i2, var1990=org.javacc.parser.Token$GTToken, var2338=$r14, var2168=org.javacc.parser.JavaCharStream, var449=$r15, var288=2}
; {org.javacc.parser.JavaCCParserTokenManager=var2653, r0=var561, org.javacc.parser.Token=var3337, r6=var405, $i0=var3663, $r11=var1646, $r9=var3624, $r10=var3724, $r12=var1846, $r13=var2421, $i2=var3003, org.javacc.parser.Token$GTToken=var1990, $r14=var2338, org.javacc.parser.JavaCharStream=var2168, $r15=var449, 2=var288}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.javacc.parser.JavaCCParserTokenManager;	r6 := @parameter0: org.javacc.parser.Token;	$i0 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind>;	lookupswitch($i0) {     case 135: goto $r11 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;     case 136: goto $r3 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;     default: goto return; };	$r11 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;	$r9 = <org.javacc.parser.JavaCCParserTokenManager: java.lang.String[] jjstrLiteralImages>;	$r10 = $r9[135];	virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r12 = <org.javacc.parser.JavaCCParserTokenManager: java.lang.String[] jjstrLiteralImages>;	$r13 = $r12[135];	$i2 = virtualinvoke $r13.<java.lang.String: int length()>();	r0.<org.javacc.parser.JavaCCParserTokenManager: int lengthOfMatch> = $i2;	r6.<org.javacc.parser.Token: int kind> = 137;	$r14 = (org.javacc.parser.Token$GTToken) r6;	$r14.<org.javacc.parser.Token$GTToken: int realKind> = 135;	$r15 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream>;	virtualinvoke $r15.<org.javacc.parser.JavaCharStream: void backup(int)>(2);	r6.<org.javacc.parser.Token: java.lang.String image> = ">";	goto [?= return];	return
;block_num 3