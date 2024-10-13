(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1843 0)
(declare-sort var3498 0)
(declare-sort var3898 0)
(declare-sort var2628 0)
(declare-sort var1168 0)
(declare-sort var2966 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun this$0/1342007666 (var1843) var3898)
(declare-fun var3898_access$100/-1988548868 (var3898) var2628)
(declare-fun var2628_createElement/-632548355 (var2628 String) var1168)
(declare-fun e/1342007666 (var1843) var1168)
(declare-fun var2966_appendChild/-892350246 (var2966 var2966) var2966)
(declare-fun cast-from-var1168-to-var2966 (var1168) var2966)
(declare-fun var1843-init () var1843)
(declare-fun <init>/1907435612 (var1843 var3898 var1168) void)
(declare-const null-var1843 var1843)
(declare-const null-String String)
(declare-const var3635 var1843) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child 
(assert (not (= var3635 null-var1843)))
(declare-const var1896 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1896 null-String)))
(declare-const var3043 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var3043 null-String)))
(declare-const var1576 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var1576 null-String)))
(assert true)
(define-const var132 Bool (isEmpty/-1285796103 var1896)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment this$0> 
(assert (not (= (ite var132 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2298 var3898 (this$0/1342007666 var3635)) ; Statement: $r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment this$0> 
(define-const var1301 var2628 (var3898_access$100/-1988548868 var2298)) ; Statement: $r10 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment: org.w3c.dom.Document access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment)>($r8) 
(define-const var1854 var1168 (var2628_createElement/-632548355 var1301 var3043)) ; Statement: r11 = interfaceinvoke $r10.<org.w3c.dom.Document: org.w3c.dom.Element createElement(java.lang.String)>(r9) 
 ; Statement: goto [?= $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: org.w3c.dom.Element e>] 
(assert true) ; Non Conditional
(define-const var3640 var1168 (e/1342007666 var3635)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: org.w3c.dom.Element e> 
;(assert (var2966_appendChild/-892350246 (cast-from-var1168-to-var2966 var3640) (cast-from-var1168-to-var2966 var1854))) ; Statement: interfaceinvoke $r5.<org.w3c.dom.Element: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>(r11) 

(declare-const var3640!1 var1168)
(declare-const var1854!1 var1168)
(define-const var366 var1843 var1843-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child 
(define-const var3208 var3898 (this$0/1342007666 var3635)) ; Statement: $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment this$0> 
(assert true)
;(assert (<init>/1907435612 var366 var3208 var1854!1)) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment,org.w3c.dom.Element)>($r7, r11) 

(declare-const var366!1 var1843)
(declare-const var3208!1 var3898)
(declare-const var1854!2 var1168)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), this$0/1342007666=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment), var3898_access$100/-1988548868=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment], org.w3c.dom.Document), var2628_createElement/-632548355=([org.w3c.dom.Document, java.lang.String], org.w3c.dom.Element), e/1342007666=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child], org.w3c.dom.Element), var2966_appendChild/-892350246=([org.w3c.dom.Node, org.w3c.dom.Node], org.w3c.dom.Node), cast-from-var1168-to-var2966=([org.w3c.dom.Element], org.w3c.dom.Node), var1843-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child), <init>/1907435612=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment, org.w3c.dom.Element], void)}
; {var1843=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child, var3635=r1, var1896=r0, var3498=null_type, var3043=r9, var1576=r3, var132=$z0, var3898=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment, var2298=$r8, var2628=org.w3c.dom.Document, var1301=$r10, var1168=org.w3c.dom.Element, var1854=r11, var3640=$r5, var2966=org.w3c.dom.Node, var366=$r6, var3208=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child=var1843, r1=var3635, r0=var1896, null_type=var3498, r9=var3043, r3=var1576, $z0=var132, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment=var3898, $r8=var2298, org.w3c.dom.Document=var2628, $r10=var1301, org.w3c.dom.Element=var1168, r11=var1854, $r5=var3640, org.w3c.dom.Node=var2966, $r6=var366, $r7=var3208}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child;	r0 := @parameter0: java.lang.String;	r9 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment this$0>;	$r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment this$0>;	$r10 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment: org.w3c.dom.Document access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment)>($r8);	r11 = interfaceinvoke $r10.<org.w3c.dom.Document: org.w3c.dom.Element createElement(java.lang.String)>(r9);	goto [?= $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: org.w3c.dom.Element e>];	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: org.w3c.dom.Element e>;	interfaceinvoke $r5.<org.w3c.dom.Element: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>(r11);	$r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child;	$r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment this$0>;	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment,org.w3c.dom.Element)>($r7, r11);	return $r6
;block_num 3