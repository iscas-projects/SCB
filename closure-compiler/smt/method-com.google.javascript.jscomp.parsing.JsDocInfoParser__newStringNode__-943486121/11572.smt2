(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1118 0)
(declare-sort var3979 0)
(declare-sort var2230 0)
(declare-sort var319 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2230_newString/178324197 (String) var2230)
(declare-fun stream/764557185 (var1118) var319)
(declare-fun getLineno/810902738 (var319) Int)
(declare-fun getCharno/-125153616 (var319) Int)
(declare-fun setLinenoCharno/-176230503 (var2230 Int Int) var2230)
(declare-fun templateNode/764557185 (var1118) var2230)
(declare-fun clonePropsFrom/592479649 (var2230 var2230) var2230)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun setLength/1649856911 (var2230 Int) void)
(declare-const null-var1118 var1118)
(declare-const null-String String)
(declare-const var215 var1118) ; Statement: r1 := @this: com.google.javascript.jscomp.parsing.JsDocInfoParser 
(assert (not (= var215 null-var1118)))
(declare-const var3031 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3031 null-String)))
(define-const var2746 var2230 (var2230_newString/178324197 var3031)) ; Statement: $r4 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>(r0) 
(define-const var973 var319 (stream/764557185 var215)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocTokenStream stream> 
(assert true)
(define-const var3663 Int (getLineno/810902738 var973)) ; Statement: $i1 = virtualinvoke $r2.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int getLineno()>() 
(define-const var97 var319 (stream/764557185 var215)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocTokenStream stream> 
(assert true)
(define-const var971 Int (getCharno/-125153616 var97)) ; Statement: $i0 = virtualinvoke $r3.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int getCharno()>() 
(assert true)
(define-const var804 var2230 (setLinenoCharno/-176230503 var2746 var3663 var971)) ; Statement: $r6 = virtualinvoke $r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node setLinenoCharno(int,int)>($i1, $i0) 
(define-const var816 var2230 (templateNode/764557185 var215)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.rhino.Node templateNode> 
(assert true)
(define-const var1286 var2230 (clonePropsFrom/592479649 var804 var816)) ; Statement: r7 = virtualinvoke $r6.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node clonePropsFrom(com.google.javascript.rhino.Node)>($r5) 
(assert true)
(define-const var588 Int (length/-134980193 var3031)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
;(assert (setLength/1649856911 var1286 var588)) ; Statement: virtualinvoke r7.<com.google.javascript.rhino.Node: void setLength(int)>($i2) 

(declare-const var1286!1 var2230)
(declare-const var588!1 Int)
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2230_newString/178324197=([java.lang.String], com.google.javascript.rhino.Node), stream/764557185=([com.google.javascript.jscomp.parsing.JsDocInfoParser], com.google.javascript.jscomp.parsing.JsDocTokenStream), getLineno/810902738=([com.google.javascript.jscomp.parsing.JsDocTokenStream], int), getCharno/-125153616=([com.google.javascript.jscomp.parsing.JsDocTokenStream], int), setLinenoCharno/-176230503=([com.google.javascript.rhino.Node, int, int], com.google.javascript.rhino.Node), templateNode/764557185=([com.google.javascript.jscomp.parsing.JsDocInfoParser], com.google.javascript.rhino.Node), clonePropsFrom/592479649=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), length/-134980193=([java.lang.String], int), setLength/1649856911=([com.google.javascript.rhino.Node, int], void)}
; {var1118=com.google.javascript.jscomp.parsing.JsDocInfoParser, var215=r1, var3031=r0, var3979=null_type, var2230=com.google.javascript.rhino.Node, var2746=$r4, var319=com.google.javascript.jscomp.parsing.JsDocTokenStream, var973=$r2, var3663=$i1, var97=$r3, var971=$i0, var804=$r6, var816=$r5, var1286=r7, var588=$i2}
; {com.google.javascript.jscomp.parsing.JsDocInfoParser=var1118, r1=var215, r0=var3031, null_type=var3979, com.google.javascript.rhino.Node=var2230, $r4=var2746, com.google.javascript.jscomp.parsing.JsDocTokenStream=var319, $r2=var973, $i1=var3663, $r3=var97, $i0=var971, $r6=var804, $r5=var816, r7=var1286, $i2=var588}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.parsing.JsDocInfoParser;	r0 := @parameter0: java.lang.String;	$r4 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>(r0);	$r2 = r1.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocTokenStream stream>;	$i1 = virtualinvoke $r2.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int getLineno()>();	$r3 = r1.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocTokenStream stream>;	$i0 = virtualinvoke $r3.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int getCharno()>();	$r6 = virtualinvoke $r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node setLinenoCharno(int,int)>($i1, $i0);	$r5 = r1.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.rhino.Node templateNode>;	r7 = virtualinvoke $r6.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node clonePropsFrom(com.google.javascript.rhino.Node)>($r5);	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	virtualinvoke r7.<com.google.javascript.rhino.Node: void setLength(int)>($i2);	return r7
;block_num 1