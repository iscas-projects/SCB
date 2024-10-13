(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1853 0)
(declare-sort var3625 0)
(declare-sort var2317 0)
(declare-sort var2713 0)
(declare-sort var2060 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stream/764557185 (var1853) var2317)
(declare-fun getString/-597988158 (var2317) String)
(declare-fun var2060_newString/674291083 (var2713 String) var2060)
(declare-fun getLineno/810902738 (var2317) Int)
(declare-fun getCharno/-125153616 (var2317) Int)
(declare-fun setLinenoCharno/-176230503 (var2060 Int Int) var2060)
(declare-fun templateNode/764557185 (var1853) var2060)
(declare-fun clonePropsFrom/592479649 (var2060 var2060) var2060)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun setLength/1649856911 (var2060 Int) void)
(declare-const null-var1853 var1853)
(declare-const null-var3625 var3625)
(declare-const var3625-STRING var3625)
(declare-const var2713-STRING_KEY var2713)
(declare-const var3505 var1853) ; Statement: r2 := @this: com.google.javascript.jscomp.parsing.JsDocInfoParser 
(assert (not (= var3505 null-var1853)))
(declare-const var3338 var3625) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.JsDocToken 
(assert (not (= var3338 null-var3625)))
(define-const var3328 var3625 var3625-STRING) ; Statement: $r1 = <com.google.javascript.jscomp.parsing.JsDocToken: com.google.javascript.jscomp.parsing.JsDocToken STRING> 
 ; Statement: if r0 == $r1 goto $r3 = r2.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocTokenStream stream> 
(assert (= var3338 var3328)) ; Cond: r0 == $r1 
(define-const var3220 var2317 (stream/764557185 var3505)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocTokenStream stream> 
(assert true)
(define-const var248 String (getString/-597988158 var3220)) ; Statement: r4 = virtualinvoke $r3.<com.google.javascript.jscomp.parsing.JsDocTokenStream: java.lang.String getString()>() 
(define-const var639 var2713 var2713-STRING_KEY) ; Statement: $r5 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token STRING_KEY> 
(define-const var2005 var2060 (var2060_newString/674291083 var639 var248)) ; Statement: $r8 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(com.google.javascript.rhino.Token,java.lang.String)>($r5, r4) 
(define-const var1802 var2317 (stream/764557185 var3505)) ; Statement: $r6 = r2.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocTokenStream stream> 
(assert true)
(define-const var1523 Int (getLineno/810902738 var1802)) ; Statement: $i1 = virtualinvoke $r6.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int getLineno()>() 
(define-const var44 var2317 (stream/764557185 var3505)) ; Statement: $r7 = r2.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocTokenStream stream> 
(assert true)
(define-const var716 Int (getCharno/-125153616 var44)) ; Statement: $i0 = virtualinvoke $r7.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int getCharno()>() 
(assert true)
(define-const var1232 var2060 (setLinenoCharno/-176230503 var2005 var1523 var716)) ; Statement: $r10 = virtualinvoke $r8.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node setLinenoCharno(int,int)>($i1, $i0) 
(define-const var3681 var2060 (templateNode/764557185 var3505)) ; Statement: $r9 = r2.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.rhino.Node templateNode> 
(assert true)
(define-const var534 var2060 (clonePropsFrom/592479649 var1232 var3681)) ; Statement: r11 = virtualinvoke $r10.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node clonePropsFrom(com.google.javascript.rhino.Node)>($r9) 
(assert true)
(define-const var3738 Int (length/-134980193 var248)) ; Statement: $i2 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert true)
;(assert (setLength/1649856911 var534 var3738)) ; Statement: virtualinvoke r11.<com.google.javascript.rhino.Node: void setLength(int)>($i2) 

(declare-const var534!1 var2060)
(declare-const var3738!1 Int)
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {stream/764557185=([com.google.javascript.jscomp.parsing.JsDocInfoParser], com.google.javascript.jscomp.parsing.JsDocTokenStream), getString/-597988158=([com.google.javascript.jscomp.parsing.JsDocTokenStream], java.lang.String), var2060_newString/674291083=([com.google.javascript.rhino.Token, java.lang.String], com.google.javascript.rhino.Node), getLineno/810902738=([com.google.javascript.jscomp.parsing.JsDocTokenStream], int), getCharno/-125153616=([com.google.javascript.jscomp.parsing.JsDocTokenStream], int), setLinenoCharno/-176230503=([com.google.javascript.rhino.Node, int, int], com.google.javascript.rhino.Node), templateNode/764557185=([com.google.javascript.jscomp.parsing.JsDocInfoParser], com.google.javascript.rhino.Node), clonePropsFrom/592479649=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), length/-134980193=([java.lang.String], int), setLength/1649856911=([com.google.javascript.rhino.Node, int], void)}
; {var1853=com.google.javascript.jscomp.parsing.JsDocInfoParser, var3505=r2, var3625=com.google.javascript.jscomp.parsing.JsDocToken, var3338=r0, var3328=$r1, var2317=com.google.javascript.jscomp.parsing.JsDocTokenStream, var3220=$r3, var248=r4, var2713=com.google.javascript.rhino.Token, var639=$r5, var2060=com.google.javascript.rhino.Node, var2005=$r8, var1802=$r6, var1523=$i1, var44=$r7, var716=$i0, var1232=$r10, var3681=$r9, var534=r11, var3738=$i2}
; {com.google.javascript.jscomp.parsing.JsDocInfoParser=var1853, r2=var3505, com.google.javascript.jscomp.parsing.JsDocToken=var3625, r0=var3338, $r1=var3328, com.google.javascript.jscomp.parsing.JsDocTokenStream=var2317, $r3=var3220, r4=var248, com.google.javascript.rhino.Token=var2713, $r5=var639, com.google.javascript.rhino.Node=var2060, $r8=var2005, $r6=var1802, $i1=var1523, $r7=var44, $i0=var716, $r10=var1232, $r9=var3681, r11=var534, $i2=var3738}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.parsing.JsDocInfoParser;	r0 := @parameter0: com.google.javascript.jscomp.parsing.JsDocToken;	$r1 = <com.google.javascript.jscomp.parsing.JsDocToken: com.google.javascript.jscomp.parsing.JsDocToken STRING>;	if r0 == $r1 goto $r3 = r2.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocTokenStream stream>;	$r3 = r2.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocTokenStream stream>;	r4 = virtualinvoke $r3.<com.google.javascript.jscomp.parsing.JsDocTokenStream: java.lang.String getString()>();	$r5 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token STRING_KEY>;	$r8 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(com.google.javascript.rhino.Token,java.lang.String)>($r5, r4);	$r6 = r2.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocTokenStream stream>;	$i1 = virtualinvoke $r6.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int getLineno()>();	$r7 = r2.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocTokenStream stream>;	$i0 = virtualinvoke $r7.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int getCharno()>();	$r10 = virtualinvoke $r8.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node setLinenoCharno(int,int)>($i1, $i0);	$r9 = r2.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.rhino.Node templateNode>;	r11 = virtualinvoke $r10.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node clonePropsFrom(com.google.javascript.rhino.Node)>($r9);	$i2 = virtualinvoke r4.<java.lang.String: int length()>();	virtualinvoke r11.<com.google.javascript.rhino.Node: void setLength(int)>($i2);	return r11
;block_num 2