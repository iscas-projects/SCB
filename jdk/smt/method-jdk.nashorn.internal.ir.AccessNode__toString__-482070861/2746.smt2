(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2570 0)
(declare-sort var43 0)
(declare-sort var1305 0)
(declare-sort var2735 0)
(declare-sort var248 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tokenType/-595905731 (var1305) var43)
(declare-fun cast-from-var2570-to-var1305 (var2570) var1305)
(declare-fun getBase/-1101646703 (var248) var2735)
(declare-fun cast-from-var2570-to-var248 (var2570) var248)
(declare-fun cast-from-var2735-to-var1305 (var2735) var1305)
(declare-fun needsParens/294712685 (var43 var43 Bool) Bool)
(declare-fun base/1680130767 (var248) var2735)
(declare-fun toString/740977591 (var1305 String Bool) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun property/-478295838 (var2570) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2570 var2570)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3804 var2570) ; Statement: r0 := @this: jdk.nashorn.internal.ir.AccessNode 
(assert (not (= var3804 null-var2570)))
(declare-const var3886 String) ; Statement: r4 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3886 null-String)))
(declare-const var2323 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2323 null-Bool)))
(assert true)
(define-const var221 var43 (tokenType/-595905731 (cast-from-var2570-to-var1305 var3804))) ; Statement: $r3 = virtualinvoke r0.<jdk.nashorn.internal.ir.AccessNode: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var2436 var2735 (getBase/-1101646703 (cast-from-var2570-to-var248 var3804))) ; Statement: $r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.AccessNode: jdk.nashorn.internal.ir.Expression getBase()>() 
(assert true)
(define-const var412 var43 (tokenType/-595905731 (cast-from-var2735-to-var1305 var2436))) ; Statement: $r2 = virtualinvoke $r1.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>() 
(assert true)
(define-const var3565 Bool (needsParens/294712685 var221 var412 (ite (= 1 1) true false))) ; Statement: z0 = virtualinvoke $r3.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r2, 1) 
 ; Statement: if z1 == 0 goto (branch) 
(assert (= (ite var2323 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: if z0 == 0 goto $r5 = r0.<jdk.nashorn.internal.ir.AccessNode: jdk.nashorn.internal.ir.Expression base> 
(assert (= (ite var3565 1 0) 0)) ; Cond: z0 == 0 
(define-const var1571 var2735 (base/1680130767 (cast-from-var2570-to-var248 var3804))) ; Statement: $r5 = r0.<jdk.nashorn.internal.ir.AccessNode: jdk.nashorn.internal.ir.Expression base> 
(assert true)
;(assert (toString/740977591 (cast-from-var2735-to-var1305 var1571) var3886 var2323)) ; Statement: virtualinvoke $r5.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r4, z1) 

(declare-const var1571!1 var2735)
(declare-const var3886!1 String)
(declare-const var2323!1 Bool)
 ; Statement: if z0 == 0 goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(assert (= (ite var3565 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1166366385 var3886!1 46)) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var3886!2 String)
(assert (str.prefixof var3886!1 var3886!2))
(define-const var2711 String (property/-478295838 var3804)) ; Statement: $r6 = r0.<jdk.nashorn.internal.ir.AccessNode: java.lang.String property> 
(assert true)
;(assert (append/672562846 var3886!2 var2711)) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3886!3 String)
(assert (= var3886!3 (str.++ var3886!2 var2711)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {tokenType/-595905731=([jdk.nashorn.internal.ir.Node], jdk.nashorn.internal.parser.TokenType), cast-from-var2570-to-var1305=([jdk.nashorn.internal.ir.AccessNode], jdk.nashorn.internal.ir.Node), getBase/-1101646703=([jdk.nashorn.internal.ir.BaseNode], jdk.nashorn.internal.ir.Expression), cast-from-var2570-to-var248=([jdk.nashorn.internal.ir.AccessNode], jdk.nashorn.internal.ir.BaseNode), cast-from-var2735-to-var1305=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.ir.Node), needsParens/294712685=([jdk.nashorn.internal.parser.TokenType, jdk.nashorn.internal.parser.TokenType, boolean], boolean), base/1680130767=([jdk.nashorn.internal.ir.BaseNode], jdk.nashorn.internal.ir.Expression), toString/740977591=([jdk.nashorn.internal.ir.Node, java.lang.StringBuilder, boolean], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), property/-478295838=([jdk.nashorn.internal.ir.AccessNode], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2570=jdk.nashorn.internal.ir.AccessNode, var3804=r0, var3886=r4, var2323=z1, var43=jdk.nashorn.internal.parser.TokenType, var1305=jdk.nashorn.internal.ir.Node, var221=$r3, var2735=jdk.nashorn.internal.ir.Expression, var248=jdk.nashorn.internal.ir.BaseNode, var2436=$r1, var412=$r2, var3565=z0, var1571=$r5, var2711=$r6}
; {jdk.nashorn.internal.ir.AccessNode=var2570, r0=var3804, r4=var3886, z1=var2323, jdk.nashorn.internal.parser.TokenType=var43, jdk.nashorn.internal.ir.Node=var1305, $r3=var221, jdk.nashorn.internal.ir.Expression=var2735, jdk.nashorn.internal.ir.BaseNode=var248, $r1=var2436, $r2=var412, z0=var3565, $r5=var1571, $r6=var2711}
;seq <jdk.nashorn.internal.ir.Node: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.AccessNode;	r4 := @parameter0: java.lang.StringBuilder;	z1 := @parameter1: boolean;	$r3 = virtualinvoke r0.<jdk.nashorn.internal.ir.AccessNode: jdk.nashorn.internal.parser.TokenType tokenType()>();	$r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.AccessNode: jdk.nashorn.internal.ir.Expression getBase()>();	$r2 = virtualinvoke $r1.<jdk.nashorn.internal.ir.Expression: jdk.nashorn.internal.parser.TokenType tokenType()>();	z0 = virtualinvoke $r3.<jdk.nashorn.internal.parser.TokenType: boolean needsParens(jdk.nashorn.internal.parser.TokenType,boolean)>($r2, 1);	if z1 == 0 goto (branch);	if z0 == 0 goto $r5 = r0.<jdk.nashorn.internal.ir.AccessNode: jdk.nashorn.internal.ir.Expression base>;	$r5 = r0.<jdk.nashorn.internal.ir.AccessNode: jdk.nashorn.internal.ir.Expression base>;	virtualinvoke $r5.<jdk.nashorn.internal.ir.Expression: void toString(java.lang.StringBuilder,boolean)>(r4, z1);	if z0 == 0 goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r6 = r0.<jdk.nashorn.internal.ir.AccessNode: java.lang.String property>;	virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	return
;block_num 4