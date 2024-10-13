(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3381 0)
(declare-sort var1430 0)
(declare-sort var1815 0)
(declare-sort var3305 0)
(declare-sort var209 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun string/663297651 (var3381) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun tokens/663297651 (var3381) var1430)
(declare-fun var1815-init () var1815)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/-295378240 (var1815 var3305 String) void)
(declare-fun var1430_add/328494887 (var1430 var209) Bool)
(declare-fun cast-from-var1815-to-var209 (var1815) var209)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3381 var3381)
(declare-const null-Int Int)
(declare-const var3305-LNUM_INT var3305)
(declare-const var2131 var3381) ; Statement: r0 := @this: com.mysql.cj.xdevapi.ExprParser 
(assert (not (= var2131 null-var3381)))
(declare-const var428 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var428 null-Int)))
(define-const var2324 Bool (ite (= 1 1) true false)) ; Statement: z3 = 1 
(define-const var1120 Int var428) ; Statement: i0 = i3 
(assert true) ; Non Conditional
(define-const var3070 String (string/663297651 var2131)) ; Statement: $r1 = r0.<com.mysql.cj.xdevapi.ExprParser: java.lang.String string> 
(assert true)
(define-const var943 Int (length/-134980193 var3070)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i1 goto (branch) 
(assert (>= var428 var943)) ; Cond: i3 >= $i1 
 ; Statement: if z3 == 0 goto $r4 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens> 
(assert (not (= (ite var2324 1 0) 0))) ; Negate: Cond: z3 == 0  
(define-const var2818 var1430 (tokens/663297651 var2131)) ; Statement: $r9 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens> 
(define-const var274 var1815 var1815-init) ; Statement: $r13 = new com.mysql.cj.xdevapi.ExprParser$Token 
(define-const var796 var3305 var3305-LNUM_INT) ; Statement: $r10 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType LNUM_INT> 
(define-const var3273 String (string/663297651 var2131)) ; Statement: $r8 = r0.<com.mysql.cj.xdevapi.ExprParser: java.lang.String string> 
(assert (and true (and (>= var1120 0) (>= (str.len var3273) var428) (>= var428 var1120))))
(define-const var2282 String (substring/-1240304868 var3273 var1120 var428)) ; Statement: $r11 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(i0, i3) 
(assert true)
;(assert (<init>/-295378240 var274 var796 var2282)) ; Statement: specialinvoke $r13.<com.mysql.cj.xdevapi.ExprParser$Token: void <init>(com.mysql.cj.xdevapi.ExprParser$TokenType,java.lang.String)>($r10, $r11) 

(declare-const var274!1 var1815)
(declare-const var796!1 var3305)
(declare-const var2282!1 String)
;(assert (var1430_add/328494887 var2818 (cast-from-var1815-to-var209 var274!1))) ; Statement: interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>($r13) 

(declare-const var2818!1 var1430)
(declare-const var274!2 var1815)
 ; Statement: goto [?= $i9 = (int) -1] 
(assert true) ; Non Conditional
(define-const var243 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
(define-const var639 Int (+ var428 var243)) ; Statement: i4 = i3 + $i9 
 ; Statement: return i4 
(check-sat)
(get-model)
(get-unsat-core)
; {string/663297651=([com.mysql.cj.xdevapi.ExprParser], java.lang.String), length/-134980193=([java.lang.String], int), tokens/663297651=([com.mysql.cj.xdevapi.ExprParser], java.util.List), var1815-init=([], com.mysql.cj.xdevapi.ExprParser$Token), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/-295378240=([com.mysql.cj.xdevapi.ExprParser$Token, com.mysql.cj.xdevapi.ExprParser$TokenType, java.lang.String], void), var1430_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1815-to-var209=([com.mysql.cj.xdevapi.ExprParser$Token], java.lang.Object), cast-from-Int-to-Int=([int], int)}
; {var3381=com.mysql.cj.xdevapi.ExprParser, var2131=r0, var428=i3, var2324=z3, var1120=i0, var3070=$r1, var943=$i1, var1430=java.util.List, var2818=$r9, var1815=com.mysql.cj.xdevapi.ExprParser$Token, var274=$r13, var3305=com.mysql.cj.xdevapi.ExprParser$TokenType, var796=$r10, var3273=$r8, var2282=$r11, var209=java.lang.Object, var243=$i9, var639=i4}
; {com.mysql.cj.xdevapi.ExprParser=var3381, r0=var2131, i3=var428, z3=var2324, i0=var1120, $r1=var3070, $i1=var943, java.util.List=var1430, $r9=var2818, com.mysql.cj.xdevapi.ExprParser$Token=var1815, $r13=var274, com.mysql.cj.xdevapi.ExprParser$TokenType=var3305, $r10=var796, $r8=var3273, $r11=var2282, java.lang.Object=var209, $i9=var243, i4=var639}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.mysql.cj.xdevapi.ExprParser;	i3 := @parameter0: int;	z3 = 1;	i0 = i3;	$r1 = r0.<com.mysql.cj.xdevapi.ExprParser: java.lang.String string>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if i3 >= $i1 goto (branch);	if z3 == 0 goto $r4 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens>;	$r9 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens>;	$r13 = new com.mysql.cj.xdevapi.ExprParser$Token;	$r10 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType LNUM_INT>;	$r8 = r0.<com.mysql.cj.xdevapi.ExprParser: java.lang.String string>;	$r11 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int,int)>(i0, i3);	specialinvoke $r13.<com.mysql.cj.xdevapi.ExprParser$Token: void <init>(com.mysql.cj.xdevapi.ExprParser$TokenType,java.lang.String)>($r10, $r11);	interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>($r13);	goto [?= $i9 = (int) -1];	$i9 = (int) -1;	i4 = i3 + $i9;	return i4
;block_num 5