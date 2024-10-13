(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1111 0)
(declare-sort var2719 0)
(declare-sort var422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun consume/146832376 (var1111) void)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun c/-659233613 (var1111) Int)
(declare-fun var1111_isUnicodeLetter/-1388848569 (Int) Bool)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun Int_parseInt/-1412036412 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun input/-659233613 (var1111) var2719)
(declare-fun var2719_getCharPositionInLine/1772701881 (var2719) Int)
(declare-fun newToken/-1598441684 (var1111 Int String Int) var422)
(declare-fun delimiterStopChar/-659233613 (var1111) Int)
(declare-fun match/-265621467 (var1111 Int) void)
(declare-const null-var1111 var1111)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var350 var1111) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.STLexer 
(assert (not (= var350 null-var1111)))
(assert true)
;(assert (consume/146832376 var350)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>() 

(declare-const var350!1 var1111)
(define-const var968 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[4] 
(define-const var2120 Int (c/-659233613 var350!1)) ; Statement: $c0 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(define-const var3091 Bool (var1111_isUnicodeLetter/-1388848569 var2120)) ; Statement: $z0 = staticinvoke <org.stringtemplate.v4.compiler.STLexer: boolean isUnicodeLetter(char)>($c0) 
 ; Statement: if $z0 != 0 goto $c1 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(assert (not (= (ite var3091 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1301 Int (c/-659233613 var350!1)) ; Statement: $c1 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(declare-const var968!1 (Array Int Int))
(assert (not (= var968!1 null-__Array__Int__Int__)))
(assert (= (select var968!1 0) var1301)) ; Statement: r1[0] = $c1 
(assert true)
;(assert (consume/146832376 var350!1)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>() 

(declare-const var350!2 var1111)
(define-const var834 Int (c/-659233613 var350!2)) ; Statement: $c2 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(define-const var195 Bool (var1111_isUnicodeLetter/-1388848569 var834)) ; Statement: $z1 = staticinvoke <org.stringtemplate.v4.compiler.STLexer: boolean isUnicodeLetter(char)>($c2) 
 ; Statement: if $z1 != 0 goto $c3 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(assert (not (= (ite var195 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1720 Int (c/-659233613 var350!2)) ; Statement: $c3 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(declare-const var968!2 (Array Int Int))
(assert (not (= var968!2 null-__Array__Int__Int__)))
(assert (= (select var968!2 1) var1720)) ; Statement: r1[1] = $c3 
(assert true)
;(assert (consume/146832376 var350!2)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>() 

(declare-const var350!3 var1111)
(define-const var2220 Int (c/-659233613 var350!3)) ; Statement: $c4 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(define-const var3000 Bool (var1111_isUnicodeLetter/-1388848569 var2220)) ; Statement: $z2 = staticinvoke <org.stringtemplate.v4.compiler.STLexer: boolean isUnicodeLetter(char)>($c4) 
 ; Statement: if $z2 != 0 goto $c5 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(assert (not (= (ite var3000 1 0) 0))) ; Cond: $z2 != 0 
(define-const var3475 Int (c/-659233613 var350!3)) ; Statement: $c5 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(declare-const var968!3 (Array Int Int))
(assert (not (= var968!3 null-__Array__Int__Int__)))
(assert (= (select var968!3 2) var3475)) ; Statement: r1[2] = $c5 
(assert true)
;(assert (consume/146832376 var350!3)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>() 

(declare-const var350!4 var1111)
(define-const var1126 Int (c/-659233613 var350!4)) ; Statement: $c6 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(define-const var3955 Bool (var1111_isUnicodeLetter/-1388848569 var1126)) ; Statement: $z3 = staticinvoke <org.stringtemplate.v4.compiler.STLexer: boolean isUnicodeLetter(char)>($c6) 
 ; Statement: if $z3 != 0 goto $c7 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(assert (not (= (ite var3955 1 0) 0))) ; Cond: $z3 != 0 
(define-const var1236 Int (c/-659233613 var350!4)) ; Statement: $c7 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(declare-const var968!4 (Array Int Int))
(assert (not (= var968!4 null-__Array__Int__Int__)))
(assert (= (select var968!4 3) var1236)) ; Statement: r1[3] = $c7 
(define-const var278 String String-init) ; Statement: $r62 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var278 var968!4)) ; Statement: specialinvoke $r62.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var278!1 String)
(declare-const var968!5 (Array Int Int))
(define-const var3735 Int (Int_parseInt/-1412036412 var278!1 16)) ; Statement: $i8 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String,int)>($r62, 16) 
(define-const var3896 Int (cast-from-Int-to-Int var3735)) ; Statement: $c13 = (char) $i8 
(define-const var3853 String (String_valueOf/-371898945 var3896)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c13) 
(define-const var2117 var2719 (input/-659233613 var350!4)) ; Statement: $r3 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.CharStream input> 
(define-const var1797 Int (var2719_getCharPositionInLine/1772701881 var2117)) ; Statement: $i9 = interfaceinvoke $r3.<org.antlr.runtime.CharStream: int getCharPositionInLine()>() 
(define-const var1862 Int (- var1797 6)) ; Statement: $i10 = $i9 - 6 
(assert true)
(define-const var3905 var422 (newToken/-1598441684 var350!4 22 var3853 var1862)) ; Statement: $r17 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int,java.lang.String,int)>(22, $r4, $i10) 
(assert true)
;(assert (consume/146832376 var350!4)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>() 

(declare-const var350!5 var1111)
(define-const var1844 Int (delimiterStopChar/-659233613 var350!5)) ; Statement: $c11 = r0.<org.stringtemplate.v4.compiler.STLexer: char delimiterStopChar> 
(assert true)
;(assert (match/-265621467 var350!5 var1844)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void match(char)>($c11) 

(declare-const var350!6 var1111)
(declare-const var1844!1 Int)
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {consume/146832376=([org.stringtemplate.v4.compiler.STLexer], void), arr-Int-init=([], char[]), c/-659233613=([org.stringtemplate.v4.compiler.STLexer], char), var1111_isUnicodeLetter/-1388848569=([char], boolean), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void), Int_parseInt/-1412036412=([java.lang.String, int], int), cast-from-Int-to-Int=([int], char), String_valueOf/-371898945=([char], java.lang.String), input/-659233613=([org.stringtemplate.v4.compiler.STLexer], org.antlr.runtime.CharStream), var2719_getCharPositionInLine/1772701881=([org.antlr.runtime.CharStream], int), newToken/-1598441684=([org.stringtemplate.v4.compiler.STLexer, int, java.lang.String, int], org.antlr.runtime.Token), delimiterStopChar/-659233613=([org.stringtemplate.v4.compiler.STLexer], char), match/-265621467=([org.stringtemplate.v4.compiler.STLexer, char], void)}
; {var1111=org.stringtemplate.v4.compiler.STLexer, var350=r0, var968=r1, var2120=$c0, var3091=$z0, var1301=$c1, var834=$c2, var195=$z1, var1720=$c3, var2220=$c4, var3000=$z2, var3475=$c5, var1126=$c6, var3955=$z3, var1236=$c7, var278=$r62, var3735=$i8, var3896=$c13, var3853=$r4, var2719=org.antlr.runtime.CharStream, var2117=$r3, var1797=$i9, var1862=$i10, var422=org.antlr.runtime.Token, var3905=$r17, var1844=$c11}
; {org.stringtemplate.v4.compiler.STLexer=var1111, r0=var350, r1=var968, $c0=var2120, $z0=var3091, $c1=var1301, $c2=var834, $z1=var195, $c3=var1720, $c4=var2220, $z2=var3000, $c5=var3475, $c6=var1126, $z3=var3955, $c7=var1236, $r62=var278, $i8=var3735, $c13=var3896, $r4=var3853, org.antlr.runtime.CharStream=var2719, $r3=var2117, $i9=var1797, $i10=var1862, org.antlr.runtime.Token=var422, $r17=var3905, $c11=var1844}
;seq <java.lang.String: void <init>(char[])>;	<java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: void <init>(char[])>": 1,"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r0 := @this: org.stringtemplate.v4.compiler.STLexer;	virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>();	r1 = newarray (char)[4];	$c0 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	$z0 = staticinvoke <org.stringtemplate.v4.compiler.STLexer: boolean isUnicodeLetter(char)>($c0);	if $z0 != 0 goto $c1 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	$c1 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	r1[0] = $c1;	virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>();	$c2 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	$z1 = staticinvoke <org.stringtemplate.v4.compiler.STLexer: boolean isUnicodeLetter(char)>($c2);	if $z1 != 0 goto $c3 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	$c3 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	r1[1] = $c3;	virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>();	$c4 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	$z2 = staticinvoke <org.stringtemplate.v4.compiler.STLexer: boolean isUnicodeLetter(char)>($c4);	if $z2 != 0 goto $c5 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	$c5 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	r1[2] = $c5;	virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>();	$c6 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	$z3 = staticinvoke <org.stringtemplate.v4.compiler.STLexer: boolean isUnicodeLetter(char)>($c6);	if $z3 != 0 goto $c7 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	$c7 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	r1[3] = $c7;	$r62 = new java.lang.String;	specialinvoke $r62.<java.lang.String: void <init>(char[])>(r1);	$i8 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String,int)>($r62, 16);	$c13 = (char) $i8;	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c13);	$r3 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.CharStream input>;	$i9 = interfaceinvoke $r3.<org.antlr.runtime.CharStream: int getCharPositionInLine()>();	$i10 = $i9 - 6;	$r17 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int,java.lang.String,int)>(22, $r4, $i10);	virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>();	$c11 = r0.<org.stringtemplate.v4.compiler.STLexer: char delimiterStopChar>;	virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void match(char)>($c11);	return $r17
;block_num 5