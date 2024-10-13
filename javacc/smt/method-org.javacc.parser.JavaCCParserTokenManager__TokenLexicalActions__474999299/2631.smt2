(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var686 0)
(declare-sort var3742 0)
(declare-sort var3631 0)
(declare-sort var3068 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jjmatchedKind/1964309570 (var686) Int)
(declare-fun image/1964309570 (var686) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun lengthOfMatch/1964309570 (var686) Int)
(declare-fun kind/197050796 (var3742) Int)
(declare-fun cast-from-var3742-to-var3631 (var3742) var3631)
(declare-fun realKind/2132275732 (var3631) Int)
(declare-fun input_stream/1964309570 (var686) var3068)
(declare-fun backup/649253219 (var3068 Int) void)
(declare-fun image/197050796 (var3742) String)
(declare-const null-var686 var686)
(declare-const null-var3742 var3742)
(declare-const var686-jjstrLiteralImages (Array Int String))
(declare-const null-var3631 var3631)
(declare-const var3757 var686) ; Statement: r0 := @this: org.javacc.parser.JavaCCParserTokenManager 
(assert (not (= var3757 null-var686)))
(declare-const var968 var3742) ; Statement: r6 := @parameter0: org.javacc.parser.Token 
(assert (not (= var968 null-var3742)))
(define-const var3593 Int (jjmatchedKind/1964309570 var3757)) ; Statement: $i0 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind> 
 ; Statement: lookupswitch($i0) {     case 135: goto $r11 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;     case 136: goto $r3 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;     default: goto return; } 
(assert (and (= var3593 136) (and (not (= var3593 135)) true))) ; Intersect: Cond: $i0 == 136  and Intersect: Negate: Cond: $i0 == 135   and Non Conditional  
(define-const var3688 String (image/1964309570 var3757)) ; Statement: $r3 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image> 
(define-const var682 (Array Int String) var686-jjstrLiteralImages) ; Statement: $r1 = <org.javacc.parser.JavaCCParserTokenManager: java.lang.String[] jjstrLiteralImages> 
(define-const var3035 String (select var682 136)) ; Statement: $r2 = $r1[136] 
(assert true)
;(assert (append/672562846 var3688 var3035)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3688!1 String)
(assert (= var3688!1 (str.++ var3688 var3035)))
(define-const var1403 (Array Int String) var686-jjstrLiteralImages) ; Statement: $r4 = <org.javacc.parser.JavaCCParserTokenManager: java.lang.String[] jjstrLiteralImages> 
(define-const var962 String (select var1403 136)) ; Statement: $r5 = $r4[136] 
(assert true)
(define-const var3699 Int (length/-134980193 var962)) ; Statement: $i1 = virtualinvoke $r5.<java.lang.String: int length()>() 
(declare-const var3757!1 var686)
(assert (not (= var3757!1 null-var686)))
(assert (= (lengthOfMatch/1964309570 var3757!1) var3699)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int lengthOfMatch> = $i1 
(declare-const var968!1 var3742)
(assert (not (= var968!1 null-var3742)))
(assert (= (kind/197050796 var968!1) 137)) ; Statement: r6.<org.javacc.parser.Token: int kind> = 137 
(define-const var3161 var3631 (cast-from-var3742-to-var3631 var968!1)) ; Statement: $r7 = (org.javacc.parser.Token$GTToken) r6 
(declare-const var3161!1 var3631)
(assert (not (= var3161!1 null-var3631)))
(assert (= (realKind/2132275732 var3161!1) 136)) ; Statement: $r7.<org.javacc.parser.Token$GTToken: int realKind> = 136 
(define-const var1739 var3068 (input_stream/1964309570 var3757!1)) ; Statement: $r8 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream> 
(assert true)
;(assert (backup/649253219 var1739 1)) ; Statement: virtualinvoke $r8.<org.javacc.parser.JavaCharStream: void backup(int)>(1) 

(declare-const var1739!1 var3068)
(declare-const var1043 Int)
(declare-const var968!2 var3742)
(assert (not (= var968!2 null-var3742)))
(assert (= (image/197050796 var968!2) ">")) ; Statement: r6.<org.javacc.parser.Token: java.lang.String image> = ">" 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jjmatchedKind/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), image/1964309570=([org.javacc.parser.JavaCCParserTokenManager], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), lengthOfMatch/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), kind/197050796=([org.javacc.parser.Token], int), cast-from-var3742-to-var3631=([org.javacc.parser.Token], org.javacc.parser.Token$GTToken), realKind/2132275732=([org.javacc.parser.Token$GTToken], int), input_stream/1964309570=([org.javacc.parser.JavaCCParserTokenManager], org.javacc.parser.JavaCharStream), backup/649253219=([org.javacc.parser.JavaCharStream, int], void), image/197050796=([org.javacc.parser.Token], java.lang.String)}
; {var686=org.javacc.parser.JavaCCParserTokenManager, var3757=r0, var3742=org.javacc.parser.Token, var968=r6, var3593=$i0, var3688=$r3, var682=$r1, var3035=$r2, var1403=$r4, var962=$r5, var3699=$i1, var3631=org.javacc.parser.Token$GTToken, var3161=$r7, var3068=org.javacc.parser.JavaCharStream, var1739=$r8, var1043=1}
; {org.javacc.parser.JavaCCParserTokenManager=var686, r0=var3757, org.javacc.parser.Token=var3742, r6=var968, $i0=var3593, $r3=var3688, $r1=var682, $r2=var3035, $r4=var1403, $r5=var962, $i1=var3699, org.javacc.parser.Token$GTToken=var3631, $r7=var3161, org.javacc.parser.JavaCharStream=var3068, $r8=var1739, 1=var1043}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.javacc.parser.JavaCCParserTokenManager;	r6 := @parameter0: org.javacc.parser.Token;	$i0 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind>;	lookupswitch($i0) {     case 135: goto $r11 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;     case 136: goto $r3 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;     default: goto return; };	$r3 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;	$r1 = <org.javacc.parser.JavaCCParserTokenManager: java.lang.String[] jjstrLiteralImages>;	$r2 = $r1[136];	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = <org.javacc.parser.JavaCCParserTokenManager: java.lang.String[] jjstrLiteralImages>;	$r5 = $r4[136];	$i1 = virtualinvoke $r5.<java.lang.String: int length()>();	r0.<org.javacc.parser.JavaCCParserTokenManager: int lengthOfMatch> = $i1;	r6.<org.javacc.parser.Token: int kind> = 137;	$r7 = (org.javacc.parser.Token$GTToken) r6;	$r7.<org.javacc.parser.Token$GTToken: int realKind> = 136;	$r8 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream>;	virtualinvoke $r8.<org.javacc.parser.JavaCharStream: void backup(int)>(1);	r6.<org.javacc.parser.Token: java.lang.String image> = ">";	goto [?= return];	return
;block_num 3