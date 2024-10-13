(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3994 0)
(declare-sort var1605 0)
(declare-sort var3510 0)
(declare-sort var3864 0)
(declare-sort var2396 0)
(declare-sort var3926 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun this$0/1342007666 (var3994) var3510)
(declare-fun var3510_access$100/-1988548868 (var3510) var3864)
(declare-fun var3864_createElementNS/1445905347 (var3864 String String) var2396)
(declare-fun e/1342007666 (var3994) var2396)
(declare-fun var3926_appendChild/-892350246 (var3926 var3926) var3926)
(declare-fun cast-from-var2396-to-var3926 (var2396) var3926)
(declare-fun var3994-init () var3994)
(declare-fun <init>/1907435612 (var3994 var3510 var2396) void)
(declare-const null-var3994 var3994)
(declare-const null-String String)
(declare-const var1870 var3994) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child 
(assert (not (= var1870 null-var3994)))
(declare-const var2257 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2257 null-String)))
(declare-const var1996 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var1996 null-String)))
(declare-const var1576 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var1576 null-String)))
(assert true)
(define-const var2135 Bool (isEmpty/-1285796103 var2257)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment this$0> 
(assert (= (ite var2135 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1471 var3510 (this$0/1342007666 var1870)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment this$0> 
(define-const var1888 var3864 (var3510_access$100/-1988548868 var1471)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment: org.w3c.dom.Document access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment)>($r2) 
(define-const var3578 var2396 (var3864_createElementNS/1445905347 var1888 var2257 var1576)) ; Statement: r11 = interfaceinvoke $r4.<org.w3c.dom.Document: org.w3c.dom.Element createElementNS(java.lang.String,java.lang.String)>(r0, r3) 
(assert true) ; Non Conditional
(define-const var1681 var2396 (e/1342007666 var1870)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: org.w3c.dom.Element e> 
;(assert (var3926_appendChild/-892350246 (cast-from-var2396-to-var3926 var1681) (cast-from-var2396-to-var3926 var3578))) ; Statement: interfaceinvoke $r5.<org.w3c.dom.Element: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>(r11) 

(declare-const var1681!1 var2396)
(declare-const var3578!1 var2396)
(define-const var1487 var3994 var3994-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child 
(define-const var1335 var3510 (this$0/1342007666 var1870)) ; Statement: $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment this$0> 
(assert true)
;(assert (<init>/1907435612 var1487 var1335 var3578!1)) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment,org.w3c.dom.Element)>($r7, r11) 

(declare-const var1487!1 var3994)
(declare-const var1335!1 var3510)
(declare-const var3578!2 var2396)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), this$0/1342007666=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment), var3510_access$100/-1988548868=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment], org.w3c.dom.Document), var3864_createElementNS/1445905347=([org.w3c.dom.Document, java.lang.String, java.lang.String], org.w3c.dom.Element), e/1342007666=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child], org.w3c.dom.Element), var3926_appendChild/-892350246=([org.w3c.dom.Node, org.w3c.dom.Node], org.w3c.dom.Node), cast-from-var2396-to-var3926=([org.w3c.dom.Element], org.w3c.dom.Node), var3994-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child), <init>/1907435612=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment, org.w3c.dom.Element], void)}
; {var3994=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child, var1870=r1, var2257=r0, var1605=null_type, var1996=r9, var1576=r3, var2135=$z0, var3510=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment, var1471=$r2, var3864=org.w3c.dom.Document, var1888=$r4, var2396=org.w3c.dom.Element, var3578=r11, var1681=$r5, var3926=org.w3c.dom.Node, var1487=$r6, var1335=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child=var3994, r1=var1870, r0=var2257, null_type=var1605, r9=var1996, r3=var1576, $z0=var2135, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment=var3510, $r2=var1471, org.w3c.dom.Document=var3864, $r4=var1888, org.w3c.dom.Element=var2396, r11=var3578, $r5=var1681, org.w3c.dom.Node=var3926, $r6=var1487, $r7=var1335}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child;	r0 := @parameter0: java.lang.String;	r9 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment this$0>;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment this$0>;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment: org.w3c.dom.Document access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment)>($r2);	r11 = interfaceinvoke $r4.<org.w3c.dom.Document: org.w3c.dom.Element createElementNS(java.lang.String,java.lang.String)>(r0, r3);	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: org.w3c.dom.Element e>;	interfaceinvoke $r5.<org.w3c.dom.Element: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>(r11);	$r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child;	$r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment this$0>;	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment,org.w3c.dom.Element)>($r7, r11);	return $r6
;block_num 3