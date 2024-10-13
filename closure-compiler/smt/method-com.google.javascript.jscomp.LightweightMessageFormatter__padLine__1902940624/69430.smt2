(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var568 0)
(declare-sort var2448 0)
(declare-sort var2430 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var568 var568)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var2430 var2430)
(declare-const var3824 var568) ; Statement: r3 := @this: com.google.javascript.jscomp.LightweightMessageFormatter 
(assert (not (= var3824 null-var568)))
(declare-const var3251 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3251 null-Int)))
(declare-const var490 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var490 null-String)))
(declare-const var1278 String) ; Statement: r2 := @parameter2: java.lang.StringBuilder 
(assert (not (= var1278 null-String)))
(declare-const var541 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var541 null-Int)))
(declare-const var3561 var2430) ; Statement: r0 := @parameter4: com.google.javascript.rhino.Node 
(assert (not (= var3561 null-var2430)))
(define-const var766 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto (branch) 
(assert (>= var766 var3251)) ; Cond: i5 >= i0 
 ; Statement: if r0 != null goto $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (not (= var3561 null-var2430)))) ; Negate: Cond: r0 != null  
(assert true)
;(assert (append/672562846 var1278 "^")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("^") 
(declare-const var1278!1 String)
(assert (= var1278!1 (str.++ var1278 "^")))
 ; Statement: goto [?= virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1278!1 "\n")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1278!2 String)
(assert (= var1278!2 (str.++ var1278!1 "\n")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var568=com.google.javascript.jscomp.LightweightMessageFormatter, var3824=r3, var3251=i0, var490=r1, var2448=null_type, var1278=r2, var541=i1, var2430=com.google.javascript.rhino.Node, var3561=r0, var766=i5}
; {com.google.javascript.jscomp.LightweightMessageFormatter=var568, r3=var3824, i0=var3251, r1=var490, null_type=var2448, r2=var1278, i1=var541, com.google.javascript.rhino.Node=var2430, r0=var3561, i5=var766}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r3 := @this: com.google.javascript.jscomp.LightweightMessageFormatter;	i0 := @parameter0: int;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.StringBuilder;	i1 := @parameter3: int;	r0 := @parameter4: com.google.javascript.rhino.Node;	i5 = 0;	if i5 >= i0 goto (branch);	if r0 != null goto $i2 = virtualinvoke r1.<java.lang.String: int length()>();	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("^");	goto [?= virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n")];	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	return
;block_num 5