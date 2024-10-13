(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2178 0)
(declare-sort var2262 0)
(declare-sort var2128 0)
(declare-sort var1227 0)
(declare-sort var1103 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2178_indent/-623136394 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2178 var2178)
(declare-const null-String String)
(declare-const null-var2262 var2262)
(declare-const null-var2128 var2128)
(declare-const null-var1103 var1103)
(declare-const null-Int Int)
(declare-const var1493 var2178) ; Statement: r29 := @this: jdk.nashorn.internal.ir.debug.ASTWriter 
(assert (not (= var1493 null-var2178)))
(declare-const var1939 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1939 null-String)))
(declare-const var3308 var2262) ; Statement: r2 := @parameter1: java.util.List 
(assert (not (= var3308 null-var2262)))
(declare-const var1947 var2128) ; Statement: r3 := @parameter2: java.lang.reflect.Field 
(assert (not (= var1947 null-var2128)))
(declare-const var2520 String) ; Statement: r7 := @parameter3: java.lang.String 
(assert (not (= var2520 null-String)))
(declare-const var3671 var1103) ; Statement: r1 := @parameter4: jdk.nashorn.internal.ir.Node 
(assert (not (= var3671 null-var1103)))
(declare-const var1519 Int) ; Statement: i0 := @parameter5: int 
(assert (not (= var1519 null-Int)))
;(assert (var2178_indent/-623136394 var1939 var1519)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.ASTWriter: void indent(java.lang.StringBuilder,int)>(r0, i0) 

(declare-const var1939!1 String)
(declare-const var1519!1 Int)
 ; Statement: if r1 != null goto (branch) 
(assert (not (not (= var3671 null-var1103)))) ; Negate: Cond: r1 != null  
(assert true)
;(assert (append/672562846 var1939!1 "[Object ")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[Object ") 
(declare-const var1939!2 String)
(assert (= var1939!2 (str.++ var1939!1 "[Object ")))
(assert true)
;(assert (append/672562846 var1939!2 var2520)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1939!3 String)
(assert (= var1939!3 (str.++ var1939!2 var2520)))
(assert true)
;(assert (append/672562846 var1939!3 " null]\n")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" null]\n") 
(declare-const var1939!4 String)
(assert (= var1939!4 (str.++ var1939!3 " null]\n")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2178_indent/-623136394=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2178=jdk.nashorn.internal.ir.debug.ASTWriter, var1493=r29, var1939=r0, var2262=java.util.List, var3308=r2, var2128=java.lang.reflect.Field, var1947=r3, var2520=r7, var1227=null_type, var1103=jdk.nashorn.internal.ir.Node, var3671=r1, var1519=i0}
; {jdk.nashorn.internal.ir.debug.ASTWriter=var2178, r29=var1493, r0=var1939, java.util.List=var2262, r2=var3308, java.lang.reflect.Field=var2128, r3=var1947, r7=var2520, null_type=var1227, jdk.nashorn.internal.ir.Node=var1103, r1=var3671, i0=var1519}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r29 := @this: jdk.nashorn.internal.ir.debug.ASTWriter;	r0 := @parameter0: java.lang.StringBuilder;	r2 := @parameter1: java.util.List;	r3 := @parameter2: java.lang.reflect.Field;	r7 := @parameter3: java.lang.String;	r1 := @parameter4: jdk.nashorn.internal.ir.Node;	i0 := @parameter5: int;	staticinvoke <jdk.nashorn.internal.ir.debug.ASTWriter: void indent(java.lang.StringBuilder,int)>(r0, i0);	if r1 != null goto (branch);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[Object ");	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" null]\n");	return
;block_num 2