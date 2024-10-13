(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2685 0)
(declare-sort var1597 0)
(declare-sort var2506 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun chars/2073447641 (var1597) (Array Int Int))
(declare-fun name/2073447641 (var1597) String)
(declare-fun mPref/-281370018 (var2685) var1597)
(declare-fun pair/-1800420241 (var2685 var1597) var1597)
(declare-fun mElm/-281370018 (var2685) var1597)
(declare-fun list/2073447641 (var1597) var1597)
(declare-fun value/2073447641 (var1597) String)
(declare-fun num/2073447641 (var1597) Int)
(declare-const null-var2685 var2685)
(declare-const null-var1597 var1597)
(declare-const null-String String)
(declare-const var2685-NONS (Array Int Int))
(declare-const var3889 var2685) ; Statement: r4 := @this: jdk.internal.util.xml.impl.Parser 
(assert (not (= var3889 null-var2685)))
(declare-const var2692 var1597) ; Statement: r0 := @parameter0: jdk.internal.util.xml.impl.Pair 
(assert (not (= var2692 null-var1597)))
(declare-const var3419 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var3419 null-String)))
(define-const var3625 (Array Int Int) (chars/2073447641 var2692)) ; Statement: $r1 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars> 
(define-const var338 Int (select var3625 0)) ; Statement: $c0 = $r1[0] 
 ; Statement: if $c0 != 0 goto $r2 = <jdk.internal.util.xml.impl.Parser: char[] XMLNS> 
(assert (not (not (= var338 0)))) ; Negate: Cond: $c0 != 0  
(define-const var2543 String "xmlns") ; Statement: $r22 = "xmlns" 
(define-const var2560 String (name/2073447641 var2692)) ; Statement: $r21 = r0.<jdk.internal.util.xml.impl.Pair: java.lang.String name> 
(assert true)
(define-const var2570 Bool (= var2543 var2560)) ; Statement: $z1 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>($r21) 
 ; Statement: if $z1 != 1 goto return 0 
(assert (not (not (= (ite var2570 1 0) 1)))) ; Negate: Cond: $z1 != 1  
(define-const var768 var1597 (mPref/-281370018 var3889)) ; Statement: $r23 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref> 
(assert true)
(define-const var740 var1597 (pair/-1800420241 var3889 var768)) ; Statement: $r24 = virtualinvoke r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair pair(jdk.internal.util.xml.impl.Pair)>($r23) 
(declare-const var3889!1 var2685)
(assert (not (= var3889!1 null-var2685)))
(assert (= (mPref/-281370018 var3889!1) var740)) ; Statement: r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref> = $r24 
(define-const var1769 var1597 (mPref/-281370018 var3889!1)) ; Statement: $r26 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref> 
(define-const var1190 var1597 (mElm/-281370018 var3889!1)) ; Statement: $r25 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mElm> 
(declare-const var1769!1 var1597)
(assert (not (= var1769!1 null-var1597)))
(assert (= (list/2073447641 var1769!1) var1190)) ; Statement: $r26.<jdk.internal.util.xml.impl.Pair: jdk.internal.util.xml.impl.Pair list> = $r25 
(define-const var2490 var1597 (mPref/-281370018 var3889!1)) ; Statement: $r27 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref> 
(declare-const var2490!1 var1597)
(assert (not (= var2490!1 null-var1597)))
(assert (= (value/2073447641 var2490!1) var3419)) ; Statement: $r27.<jdk.internal.util.xml.impl.Pair: java.lang.String value> = r9 
(define-const var3688 var1597 (mPref/-281370018 var3889!1)) ; Statement: $r28 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref> 
(declare-const var3688!1 var1597)
(assert (not (= var3688!1 null-var1597)))
(assert (= (name/2073447641 var3688!1) "")) ; Statement: $r28.<jdk.internal.util.xml.impl.Pair: java.lang.String name> = "" 
(define-const var1222 var1597 (mPref/-281370018 var3889!1)) ; Statement: $r30 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref> 
(define-const var1416 (Array Int Int) var2685-NONS) ; Statement: $r29 = <jdk.internal.util.xml.impl.Parser: char[] NONS> 
(declare-const var1222!1 var1597)
(assert (not (= var1222!1 null-var1597)))
(assert (= (chars/2073447641 var1222!1) var1416)) ; Statement: $r30.<jdk.internal.util.xml.impl.Pair: char[] chars> = $r29 
(define-const var3739 var1597 (mElm/-281370018 var3889!1)) ; Statement: $r31 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mElm> 
(define-const var1712 Int (num/2073447641 var3739)) ; Statement: $i7 = $r31.<jdk.internal.util.xml.impl.Pair: int num> 
(define-const var3164 Int (+ var1712 1)) ; Statement: $i8 = $i7 + 1 
(declare-const var3739!1 var1597)
(assert (not (= var3739!1 null-var1597)))
(assert (= (num/2073447641 var3739!1) var3164)) ; Statement: $r31.<jdk.internal.util.xml.impl.Pair: int num> = $i8 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {chars/2073447641=([jdk.internal.util.xml.impl.Pair], char[]), name/2073447641=([jdk.internal.util.xml.impl.Pair], java.lang.String), mPref/-281370018=([jdk.internal.util.xml.impl.Parser], jdk.internal.util.xml.impl.Pair), pair/-1800420241=([jdk.internal.util.xml.impl.Parser, jdk.internal.util.xml.impl.Pair], jdk.internal.util.xml.impl.Pair), mElm/-281370018=([jdk.internal.util.xml.impl.Parser], jdk.internal.util.xml.impl.Pair), list/2073447641=([jdk.internal.util.xml.impl.Pair], jdk.internal.util.xml.impl.Pair), value/2073447641=([jdk.internal.util.xml.impl.Pair], java.lang.String), num/2073447641=([jdk.internal.util.xml.impl.Pair], int)}
; {var2685=jdk.internal.util.xml.impl.Parser, var3889=r4, var1597=jdk.internal.util.xml.impl.Pair, var2692=r0, var3419=r9, var2506=null_type, var3625=$r1, var338=$c0, var2543=$r22, var2560=$r21, var2570=$z1, var768=$r23, var740=$r24, var1769=$r26, var1190=$r25, var2490=$r27, var3688=$r28, var1222=$r30, var1416=$r29, var3739=$r31, var1712=$i7, var3164=$i8}
; {jdk.internal.util.xml.impl.Parser=var2685, r4=var3889, jdk.internal.util.xml.impl.Pair=var1597, r0=var2692, r9=var3419, null_type=var2506, $r1=var3625, $c0=var338, $r22=var2543, $r21=var2560, $z1=var2570, $r23=var768, $r24=var740, $r26=var1769, $r25=var1190, $r27=var2490, $r28=var3688, $r30=var1222, $r29=var1416, $r31=var3739, $i7=var1712, $i8=var3164}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: jdk.internal.util.xml.impl.Parser;	r0 := @parameter0: jdk.internal.util.xml.impl.Pair;	r9 := @parameter1: java.lang.String;	$r1 = r0.<jdk.internal.util.xml.impl.Pair: char[] chars>;	$c0 = $r1[0];	if $c0 != 0 goto $r2 = <jdk.internal.util.xml.impl.Parser: char[] XMLNS>;	$r22 = "xmlns";	$r21 = r0.<jdk.internal.util.xml.impl.Pair: java.lang.String name>;	$z1 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>($r21);	if $z1 != 1 goto return 0;	$r23 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref>;	$r24 = virtualinvoke r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair pair(jdk.internal.util.xml.impl.Pair)>($r23);	r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref> = $r24;	$r26 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref>;	$r25 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mElm>;	$r26.<jdk.internal.util.xml.impl.Pair: jdk.internal.util.xml.impl.Pair list> = $r25;	$r27 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref>;	$r27.<jdk.internal.util.xml.impl.Pair: java.lang.String value> = r9;	$r28 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref>;	$r28.<jdk.internal.util.xml.impl.Pair: java.lang.String name> = "";	$r30 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mPref>;	$r29 = <jdk.internal.util.xml.impl.Parser: char[] NONS>;	$r30.<jdk.internal.util.xml.impl.Pair: char[] chars> = $r29;	$r31 = r4.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair mElm>;	$i7 = $r31.<jdk.internal.util.xml.impl.Pair: int num>;	$i8 = $i7 + 1;	$r31.<jdk.internal.util.xml.impl.Pair: int num> = $i8;	return 1
;block_num 3