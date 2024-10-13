(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1143 0)
(declare-sort var3330 0)
(declare-sort var2239 0)
(declare-sort var3689 0)
(declare-sort var3769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun string/663297651 (var1143) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun tokens/663297651 (var1143) var3330)
(declare-fun var2239-init () var2239)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/-295378240 (var2239 var3689 String) void)
(declare-fun var3330_add/328494887 (var3330 var3769) Bool)
(declare-fun cast-from-var2239-to-var3769 (var2239) var3769)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1143 var1143)
(declare-const null-Int Int)
(declare-const var3689-LNUM_DOUBLE var3689)
(declare-const var2421 var1143) ; Statement: r0 := @this: com.mysql.cj.xdevapi.ExprParser 
(assert (not (= var2421 null-var1143)))
(declare-const var3278 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var3278 null-Int)))
(define-const var178 Bool (ite (= 1 1) true false)) ; Statement: z3 = 1 
(define-const var2708 Int var3278) ; Statement: i0 = i3 
(assert true) ; Non Conditional
(define-const var2283 String (string/663297651 var2421)) ; Statement: $r1 = r0.<com.mysql.cj.xdevapi.ExprParser: java.lang.String string> 
(assert true)
(define-const var344 Int (length/-134980193 var2283)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i1 goto (branch) 
(assert (>= var3278 var344)) ; Cond: i3 >= $i1 
 ; Statement: if z3 == 0 goto $r4 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens> 
(assert (= (ite var178 1 0) 0)) ; Cond: z3 == 0 
(define-const var2697 var3330 (tokens/663297651 var2421)) ; Statement: $r4 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens> 
(define-const var3293 var2239 var2239-init) ; Statement: $r14 = new com.mysql.cj.xdevapi.ExprParser$Token 
(define-const var3042 var3689 var3689-LNUM_DOUBLE) ; Statement: $r5 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType LNUM_DOUBLE> 
(define-const var1486 String (string/663297651 var2421)) ; Statement: $r3 = r0.<com.mysql.cj.xdevapi.ExprParser: java.lang.String string> 
(assert (and true (and (>= var2708 0) (>= (str.len var1486) var3278) (>= var3278 var2708))))
(define-const var3717 String (substring/-1240304868 var1486 var2708 var3278)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int,int)>(i0, i3) 
(assert true)
;(assert (<init>/-295378240 var3293 var3042 var3717)) ; Statement: specialinvoke $r14.<com.mysql.cj.xdevapi.ExprParser$Token: void <init>(com.mysql.cj.xdevapi.ExprParser$TokenType,java.lang.String)>($r5, $r6) 

(declare-const var3293!1 var2239)
(declare-const var3042!1 var3689)
(declare-const var3717!1 String)
;(assert (var3330_add/328494887 var2697 (cast-from-var2239-to-var3769 var3293!1))) ; Statement: interfaceinvoke $r4.<java.util.List: boolean add(java.lang.Object)>($r14) 

(declare-const var2697!1 var3330)
(declare-const var3293!2 var2239)
(assert true) ; Non Conditional
(define-const var514 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
(define-const var534 Int (+ var3278 var514)) ; Statement: i4 = i3 + $i9 
 ; Statement: return i4 
(check-sat)
(get-model)
(get-unsat-core)
; {string/663297651=([com.mysql.cj.xdevapi.ExprParser], java.lang.String), length/-134980193=([java.lang.String], int), tokens/663297651=([com.mysql.cj.xdevapi.ExprParser], java.util.List), var2239-init=([], com.mysql.cj.xdevapi.ExprParser$Token), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/-295378240=([com.mysql.cj.xdevapi.ExprParser$Token, com.mysql.cj.xdevapi.ExprParser$TokenType, java.lang.String], void), var3330_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var2239-to-var3769=([com.mysql.cj.xdevapi.ExprParser$Token], java.lang.Object), cast-from-Int-to-Int=([int], int)}
; {var1143=com.mysql.cj.xdevapi.ExprParser, var2421=r0, var3278=i3, var178=z3, var2708=i0, var2283=$r1, var344=$i1, var3330=java.util.List, var2697=$r4, var2239=com.mysql.cj.xdevapi.ExprParser$Token, var3293=$r14, var3689=com.mysql.cj.xdevapi.ExprParser$TokenType, var3042=$r5, var1486=$r3, var3717=$r6, var3769=java.lang.Object, var514=$i9, var534=i4}
; {com.mysql.cj.xdevapi.ExprParser=var1143, r0=var2421, i3=var3278, z3=var178, i0=var2708, $r1=var2283, $i1=var344, java.util.List=var3330, $r4=var2697, com.mysql.cj.xdevapi.ExprParser$Token=var2239, $r14=var3293, com.mysql.cj.xdevapi.ExprParser$TokenType=var3689, $r5=var3042, $r3=var1486, $r6=var3717, java.lang.Object=var3769, $i9=var514, i4=var534}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.mysql.cj.xdevapi.ExprParser;	i3 := @parameter0: int;	z3 = 1;	i0 = i3;	$r1 = r0.<com.mysql.cj.xdevapi.ExprParser: java.lang.String string>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if i3 >= $i1 goto (branch);	if z3 == 0 goto $r4 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens>;	$r4 = r0.<com.mysql.cj.xdevapi.ExprParser: java.util.List tokens>;	$r14 = new com.mysql.cj.xdevapi.ExprParser$Token;	$r5 = <com.mysql.cj.xdevapi.ExprParser$TokenType: com.mysql.cj.xdevapi.ExprParser$TokenType LNUM_DOUBLE>;	$r3 = r0.<com.mysql.cj.xdevapi.ExprParser: java.lang.String string>;	$r6 = virtualinvoke $r3.<java.lang.String: java.lang.String substring(int,int)>(i0, i3);	specialinvoke $r14.<com.mysql.cj.xdevapi.ExprParser$Token: void <init>(com.mysql.cj.xdevapi.ExprParser$TokenType,java.lang.String)>($r5, $r6);	interfaceinvoke $r4.<java.util.List: boolean add(java.lang.Object)>($r14);	$i9 = (int) -1;	i4 = i3 + $i9;	return i4
;block_num 5