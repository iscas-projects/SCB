(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2367 0)
(declare-sort var2616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jjimageLen/1964309570 (var2367) Int)
(declare-fun jjmatchedPos/1964309570 (var2367) Int)
(declare-fun lengthOfMatch/1964309570 (var2367) Int)
(declare-fun jjmatchedKind/1964309570 (var2367) Int)
(declare-fun image/1964309570 (var2367) String)
(declare-fun input_stream/1964309570 (var2367) var2616)
(declare-fun GetSuffix/-1031269374 (var2616 Int) (Array Int Int))
(declare-fun append/109888945 (String (Array Int Int)) String)
(declare-fun getBeginLine/1549540318 (var2616) Int)
(declare-fun getBeginColumn/-1542439940 (var2616) Int)
(declare-fun saveBeginLineCol/1425662151 (var2367 Int Int) void)
(declare-const null-var2367 var2367)
(declare-const var1681 var2367) ; Statement: r0 := @this: org.javacc.parser.JavaCCParserTokenManager 
(assert (not (= var1681 null-var2367)))
(define-const var1820 Int (jjimageLen/1964309570 var1681)) ; Statement: $i2 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen> 
(define-const var2373 Int (jjmatchedPos/1964309570 var1681)) ; Statement: $i0 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedPos> 
(define-const var509 Int (+ var2373 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var1681!1 var2367)
(assert (not (= var1681!1 null-var2367)))
(assert (= (lengthOfMatch/1964309570 var1681!1) var509)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int lengthOfMatch> = $i1 
(define-const var1794 Int (+ var1820 var509)) ; Statement: $i3 = $i2 + $i1 
(declare-const var1681!2 var2367)
(assert (not (= var1681!2 null-var2367)))
(assert (= (jjimageLen/1964309570 var1681!2) var1794)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen> = $i3 
(define-const var1511 Int (jjmatchedKind/1964309570 var1681!2)) ; Statement: $i4 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind> 
 ; Statement: lookupswitch($i4) {     case 21: goto $r7 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;     case 23: goto $r2 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;     default: goto return; } 
(assert (and (= var1511 23) (and (not (= var1511 21)) true))) ; Intersect: Cond: $i4 == 23  and Intersect: Negate: Cond: $i4 == 21   and Non Conditional  
(define-const var497 String (image/1964309570 var1681!2)) ; Statement: $r2 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image> 
(define-const var889 var2616 (input_stream/1964309570 var1681!2)) ; Statement: $r1 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream> 
(define-const var239 Int (jjimageLen/1964309570 var1681!2)) ; Statement: $i5 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen> 
(assert true)
(define-const var3414 (Array Int Int) (GetSuffix/-1031269374 var889 var239)) ; Statement: $r3 = virtualinvoke $r1.<org.javacc.parser.JavaCharStream: char[] GetSuffix(int)>($i5) 
(assert true)
;(assert (append/109888945 var497 var3414)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r3) 
(declare-const var497!1 String)
(assert (str.prefixof var497 var497!1))
(declare-const var1681!3 var2367)
(assert (not (= var1681!3 null-var2367)))
(assert (= (jjimageLen/1964309570 var1681!3) 0)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen> = 0 
(define-const var3511 var2616 (input_stream/1964309570 var1681!3)) ; Statement: $r4 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream> 
(assert true)
(define-const var1614 Int (getBeginLine/1549540318 var3511)) ; Statement: $i7 = virtualinvoke $r4.<org.javacc.parser.JavaCharStream: int getBeginLine()>() 
(define-const var2607 var2616 (input_stream/1964309570 var1681!3)) ; Statement: $r5 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream> 
(assert true)
(define-const var729 Int (getBeginColumn/-1542439940 var2607)) ; Statement: $i6 = virtualinvoke $r5.<org.javacc.parser.JavaCharStream: int getBeginColumn()>() 
(assert true)
;(assert (saveBeginLineCol/1425662151 var1681!3 var1614 var729)) ; Statement: virtualinvoke r0.<org.javacc.parser.JavaCCParserTokenManager: void saveBeginLineCol(int,int)>($i7, $i6) 

(declare-const var1681!4 var2367)
(declare-const var1614!1 Int)
(declare-const var729!1 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jjimageLen/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), jjmatchedPos/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), lengthOfMatch/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), jjmatchedKind/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), image/1964309570=([org.javacc.parser.JavaCCParserTokenManager], java.lang.StringBuilder), input_stream/1964309570=([org.javacc.parser.JavaCCParserTokenManager], org.javacc.parser.JavaCharStream), GetSuffix/-1031269374=([org.javacc.parser.JavaCharStream, int], char[]), append/109888945=([java.lang.StringBuilder, char[]], java.lang.StringBuilder), getBeginLine/1549540318=([org.javacc.parser.JavaCharStream], int), getBeginColumn/-1542439940=([org.javacc.parser.JavaCharStream], int), saveBeginLineCol/1425662151=([org.javacc.parser.JavaCCParserTokenManager, int, int], void)}
; {var2367=org.javacc.parser.JavaCCParserTokenManager, var1681=r0, var1820=$i2, var2373=$i0, var509=$i1, var1794=$i3, var1511=$i4, var497=$r2, var2616=org.javacc.parser.JavaCharStream, var889=$r1, var239=$i5, var3414=$r3, var3511=$r4, var1614=$i7, var2607=$r5, var729=$i6}
; {org.javacc.parser.JavaCCParserTokenManager=var2367, r0=var1681, $i2=var1820, $i0=var2373, $i1=var509, $i3=var1794, $i4=var1511, $r2=var497, org.javacc.parser.JavaCharStream=var2616, $r1=var889, $i5=var239, $r3=var3414, $r4=var3511, $i7=var1614, $r5=var2607, $i6=var729}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[])>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>": 1}
;stmts r0 := @this: org.javacc.parser.JavaCCParserTokenManager;	$i2 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen>;	$i0 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedPos>;	$i1 = $i0 + 1;	r0.<org.javacc.parser.JavaCCParserTokenManager: int lengthOfMatch> = $i1;	$i3 = $i2 + $i1;	r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen> = $i3;	$i4 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind>;	lookupswitch($i4) {     case 21: goto $r7 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;     case 23: goto $r2 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;     default: goto return; };	$r2 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;	$r1 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream>;	$i5 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen>;	$r3 = virtualinvoke $r1.<org.javacc.parser.JavaCharStream: char[] GetSuffix(int)>($i5);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r3);	r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen> = 0;	$r4 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream>;	$i7 = virtualinvoke $r4.<org.javacc.parser.JavaCharStream: int getBeginLine()>();	$r5 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream>;	$i6 = virtualinvoke $r5.<org.javacc.parser.JavaCharStream: int getBeginColumn()>();	virtualinvoke r0.<org.javacc.parser.JavaCCParserTokenManager: void saveBeginLineCol(int,int)>($i7, $i6);	goto [?= return];	return
;block_num 3