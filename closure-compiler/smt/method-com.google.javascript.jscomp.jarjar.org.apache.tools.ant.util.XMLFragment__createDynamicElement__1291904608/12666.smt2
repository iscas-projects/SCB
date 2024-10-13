(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2215 0)
(declare-sort var460 0)
(declare-sort var3854 0)
(declare-sort var1700 0)
(declare-sort var3734 0)
(declare-sort var784 0)
(declare-sort var1601 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun doc/1792608666 (var2215) var3854)
(declare-fun var3854_createElementNS/1445905347 (var3854 String String) var1700)
(declare-fun fragment/1792608666 (var2215) var3734)
(declare-fun var784_appendChild/-892350246 (var784 var784) var784)
(declare-fun cast-from-var3734-to-var784 (var3734) var784)
(declare-fun cast-from-var1700-to-var784 (var1700) var784)
(declare-fun var1601-init () var1601)
(declare-fun <init>/1907435612 (var1601 var2215 var1700) void)
(declare-const null-var2215 var2215)
(declare-const null-String String)
(declare-const var382 var2215) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment 
(assert (not (= var382 null-var2215)))
(declare-const var480 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var480 null-String)))
(declare-const var1838 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var1838 null-String)))
(declare-const var1431 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1431 null-String)))
(assert true)
(define-const var308 Bool (isEmpty/-1285796103 var480)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment: org.w3c.dom.Document doc> 
(assert (= (ite var308 1 0) 0)) ; Cond: $z0 == 0 
(define-const var41 var3854 (doc/1792608666 var382)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment: org.w3c.dom.Document doc> 
(define-const var3685 var1700 (var3854_createElementNS/1445905347 var41 var480 var1431)) ; Statement: r8 = interfaceinvoke $r3.<org.w3c.dom.Document: org.w3c.dom.Element createElementNS(java.lang.String,java.lang.String)>(r0, r2) 
(assert true) ; Non Conditional
(define-const var1728 var3734 (fragment/1792608666 var382)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment: org.w3c.dom.DocumentFragment fragment> 
;(assert (var784_appendChild/-892350246 (cast-from-var3734-to-var784 var1728) (cast-from-var1700-to-var784 var3685))) ; Statement: interfaceinvoke $r4.<org.w3c.dom.DocumentFragment: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>(r8) 

(declare-const var1728!1 var3734)
(declare-const var3685!1 var1700)
(define-const var503 var1601 var1601-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child 
(assert true)
;(assert (<init>/1907435612 var503 var382 var3685!1)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment,org.w3c.dom.Element)>(r1, r8) 

(declare-const var503!1 var1601)
(declare-const var382!1 var2215)
(declare-const var3685!2 var1700)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), doc/1792608666=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment], org.w3c.dom.Document), var3854_createElementNS/1445905347=([org.w3c.dom.Document, java.lang.String, java.lang.String], org.w3c.dom.Element), fragment/1792608666=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment], org.w3c.dom.DocumentFragment), var784_appendChild/-892350246=([org.w3c.dom.Node, org.w3c.dom.Node], org.w3c.dom.Node), cast-from-var3734-to-var784=([org.w3c.dom.DocumentFragment], org.w3c.dom.Node), cast-from-var1700-to-var784=([org.w3c.dom.Element], org.w3c.dom.Node), var1601-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child), <init>/1907435612=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment, org.w3c.dom.Element], void)}
; {var2215=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment, var382=r1, var480=r0, var460=null_type, var1838=r6, var1431=r2, var308=$z0, var3854=org.w3c.dom.Document, var41=$r3, var1700=org.w3c.dom.Element, var3685=r8, var3734=org.w3c.dom.DocumentFragment, var1728=$r4, var784=org.w3c.dom.Node, var1601=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child, var503=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment=var2215, r1=var382, r0=var480, null_type=var460, r6=var1838, r2=var1431, $z0=var308, org.w3c.dom.Document=var3854, $r3=var41, org.w3c.dom.Element=var1700, r8=var3685, org.w3c.dom.DocumentFragment=var3734, $r4=var1728, org.w3c.dom.Node=var784, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child=var1601, $r5=var503}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment;	r0 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment: org.w3c.dom.Document doc>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment: org.w3c.dom.Document doc>;	r8 = interfaceinvoke $r3.<org.w3c.dom.Document: org.w3c.dom.Element createElementNS(java.lang.String,java.lang.String)>(r0, r2);	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment: org.w3c.dom.DocumentFragment fragment>;	interfaceinvoke $r4.<org.w3c.dom.DocumentFragment: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>(r8);	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child;	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment,org.w3c.dom.Element)>(r1, r8);	return $r5
;block_num 3