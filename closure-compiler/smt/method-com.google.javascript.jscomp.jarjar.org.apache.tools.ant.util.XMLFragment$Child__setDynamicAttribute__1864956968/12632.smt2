(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var851 0)
(declare-sort var1997 0)
(declare-sort var2809 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun e/1342007666 (var851) var2809)
(declare-fun var2809_setAttribute/1573420598 (var2809 String String) void)
(declare-const null-var851 var851)
(declare-const null-String String)
(declare-const var1521 var851) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child 
(assert (not (= var1521 null-var851)))
(declare-const var71 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var71 null-String)))
(declare-const var896 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var896 null-String)))
(declare-const var3290 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3290 null-String)))
(declare-const var1637 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var1637 null-String)))
(assert true)
(define-const var3311 Bool (isEmpty/-1285796103 var71)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: org.w3c.dom.Element e> 
(assert (not (= (ite var3311 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var940 var2809 (e/1342007666 var1521)) ; Statement: $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: org.w3c.dom.Element e> 
;(assert (var2809_setAttribute/1573420598 var940 var896 var1637)) ; Statement: interfaceinvoke $r6.<org.w3c.dom.Element: void setAttribute(java.lang.String,java.lang.String)>(r5, r3) 

(declare-const var940!1 var2809)
(declare-const var896!1 String)
(declare-const var1637!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), e/1342007666=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child], org.w3c.dom.Element), var2809_setAttribute/1573420598=([org.w3c.dom.Element, java.lang.String, java.lang.String], void)}
; {var851=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child, var1521=r1, var71=r0, var1997=null_type, var896=r5, var3290=r2, var1637=r3, var3311=$z0, var2809=org.w3c.dom.Element, var940=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child=var851, r1=var1521, r0=var71, null_type=var1997, r5=var896, r2=var3290, r3=var1637, $z0=var3311, org.w3c.dom.Element=var2809, $r6=var940}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child;	r0 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: org.w3c.dom.Element e>;	$r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: org.w3c.dom.Element e>;	interfaceinvoke $r6.<org.w3c.dom.Element: void setAttribute(java.lang.String,java.lang.String)>(r5, r3);	goto [?= return];	return
;block_num 3