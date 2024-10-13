(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2361 0)
(declare-sort var3381 0)
(declare-sort var1564 0)
(declare-sort var1792 0)
(declare-sort var2267 0)
(declare-sort var3887 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun conversion/-1017332238 (var1564) var3381)
(declare-fun cast-from-var2361-to-var1564 (var2361) var1564)
(declare-fun var3381_toString/1584554521 (var3381 String) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun isForIn/-1409066486 (var2361) Bool)
(declare-fun init/-1815544689 (var2361) var1792)
(declare-fun toString/740977591 (var2267 String Bool) void)
(declare-fun cast-from-var1792-to-var2267 (var1792) var2267)
(declare-fun modify/-1815544689 (var2361) var3887)
(declare-fun toString/-950452462 (var3887 String Bool) void)
(declare-const null-var2361 var2361)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3034 var2361) ; Statement: r1 := @this: jdk.nashorn.internal.ir.ForNode 
(assert (not (= var3034 null-var2361)))
(declare-const var286 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var286 null-String)))
(declare-const var629 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var629 null-Bool)))
(assert true)
;(assert (append/672562846 var286 "for")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("for") 
(declare-const var286!1 String)
(assert (= var286!1 (str.++ var286 "for")))
(define-const var2313 var3381 (conversion/-1017332238 (cast-from-var2361-to-var1564 var3034))) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.ForNode: jdk.nashorn.internal.ir.LocalVariableConversion conversion> 
(define-const var3166 String (var3381_toString/1584554521 var2313 var286!1)) ; Statement: $r3 = staticinvoke <jdk.nashorn.internal.ir.LocalVariableConversion: java.lang.StringBuilder toString(jdk.nashorn.internal.ir.LocalVariableConversion,java.lang.StringBuilder)>($r2, r0) 
(assert true)
;(assert (append/-1166366385 var3166 32)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3166!1 String)
(assert (str.prefixof var3166 var3166!1))
(assert true)
(define-const var725 Bool (isForIn/-1409066486 var3034)) ; Statement: $z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.ForNode: boolean isForIn()>() 
 ; Statement: if $z0 == 0 goto $r4 = r1.<jdk.nashorn.internal.ir.ForNode: jdk.nashorn.internal.ir.Expression init> 
(assert (not (= (ite var725 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1603 var1792 (init/-1815544689 var3034)) ; Statement: $r10 = r1.<jdk.nashorn.internal.ir.ForNode: jdk.nashorn.internal.ir.Expression init> 
(assert true)
;(assert (toString/740977591 (cast-from-var1792-to-var2267 var1603) var286!1 var629)) ; Statement: virtualinvoke $r10.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r0, z1) 

(declare-const var1603!1 var1792)
(declare-const var286!2 String)
(declare-const var629!1 Bool)
(assert true)
;(assert (append/672562846 var286!2 " in ")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ") 
(declare-const var286!3 String)
(assert (= var286!3 (str.++ var286!2 " in ")))
(define-const var1134 var3887 (modify/-1815544689 var3034)) ; Statement: $r11 = r1.<jdk.nashorn.internal.ir.ForNode: jdk.nashorn.internal.ir.JoinPredecessorExpression modify> 
(assert true)
;(assert (toString/-950452462 var1134 var286!3 var629!1)) ; Statement: virtualinvoke $r11.<jdk.nashorn.internal.ir.JoinPredecessorExpression: void toString(java.lang.StringBuilder,boolean)>(r0, z1) 

(declare-const var1134!1 var3887)
(declare-const var286!4 String)
(declare-const var629!2 Bool)
 ; Statement: goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var286!4 41)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var286!5 String)
(assert (str.prefixof var286!4 var286!5))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), conversion/-1017332238=([jdk.nashorn.internal.ir.BreakableStatement], jdk.nashorn.internal.ir.LocalVariableConversion), cast-from-var2361-to-var1564=([jdk.nashorn.internal.ir.ForNode], jdk.nashorn.internal.ir.BreakableStatement), var3381_toString/1584554521=([jdk.nashorn.internal.ir.LocalVariableConversion, java.lang.StringBuilder], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), isForIn/-1409066486=([jdk.nashorn.internal.ir.ForNode], boolean), init/-1815544689=([jdk.nashorn.internal.ir.ForNode], jdk.nashorn.internal.ir.Expression), toString/740977591=([jdk.nashorn.internal.ir.Node, java.lang.StringBuilder, boolean], void), cast-from-var1792-to-var2267=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.ir.Node), modify/-1815544689=([jdk.nashorn.internal.ir.ForNode], jdk.nashorn.internal.ir.JoinPredecessorExpression), toString/-950452462=([jdk.nashorn.internal.ir.JoinPredecessorExpression, java.lang.StringBuilder, boolean], void)}
; {var2361=jdk.nashorn.internal.ir.ForNode, var3034=r1, var286=r0, var629=z1, var3381=jdk.nashorn.internal.ir.LocalVariableConversion, var1564=jdk.nashorn.internal.ir.BreakableStatement, var2313=$r2, var3166=$r3, var725=$z0, var1792=jdk.nashorn.internal.ir.Expression, var1603=$r10, var2267=jdk.nashorn.internal.ir.Node, var3887=jdk.nashorn.internal.ir.JoinPredecessorExpression, var1134=$r11}
; {jdk.nashorn.internal.ir.ForNode=var2361, r1=var3034, r0=var286, z1=var629, jdk.nashorn.internal.ir.LocalVariableConversion=var3381, jdk.nashorn.internal.ir.BreakableStatement=var1564, $r2=var2313, $r3=var3166, $z0=var725, jdk.nashorn.internal.ir.Expression=var1792, $r10=var1603, jdk.nashorn.internal.ir.Node=var2267, jdk.nashorn.internal.ir.JoinPredecessorExpression=var3887, $r11=var1134}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.ir.LocalVariableConversion: java.lang.StringBuilder toString(jdk.nashorn.internal.ir.LocalVariableConversion,java.lang.StringBuilder)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.nashorn.internal.ir.JoinPredecessorExpression: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.ir.ForNode;	r0 := @parameter0: java.lang.StringBuilder;	z1 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("for");	$r2 = r1.<jdk.nashorn.internal.ir.ForNode: jdk.nashorn.internal.ir.LocalVariableConversion conversion>;	$r3 = staticinvoke <jdk.nashorn.internal.ir.LocalVariableConversion: java.lang.StringBuilder toString(jdk.nashorn.internal.ir.LocalVariableConversion,java.lang.StringBuilder)>($r2, r0);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.ForNode: boolean isForIn()>();	if $z0 == 0 goto $r4 = r1.<jdk.nashorn.internal.ir.ForNode: jdk.nashorn.internal.ir.Expression init>;	$r10 = r1.<jdk.nashorn.internal.ir.ForNode: jdk.nashorn.internal.ir.Expression init>;	virtualinvoke $r10.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r0, z1);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ");	$r11 = r1.<jdk.nashorn.internal.ir.ForNode: jdk.nashorn.internal.ir.JoinPredecessorExpression modify>;	virtualinvoke $r11.<jdk.nashorn.internal.ir.JoinPredecessorExpression: void toString(java.lang.StringBuilder,boolean)>(r0, z1);	goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41)];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 3