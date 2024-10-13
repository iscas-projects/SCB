(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3985 0)
(declare-sort var265 0)
(declare-sort var2536 0)
(declare-sort var1219 0)
(declare-sort var1130 0)
(declare-sort var3018 0)
(declare-sort var1997 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun doc/1792608666 (var3985) var2536)
(declare-fun var2536_createElement/-632548355 (var2536 String) var1219)
(declare-fun fragment/1792608666 (var3985) var1130)
(declare-fun var3018_appendChild/-892350246 (var3018 var3018) var3018)
(declare-fun cast-from-var1130-to-var3018 (var1130) var3018)
(declare-fun cast-from-var1219-to-var3018 (var1219) var3018)
(declare-fun var1997-init () var1997)
(declare-fun <init>/1907435612 (var1997 var3985 var1219) void)
(declare-const null-var3985 var3985)
(declare-const null-String String)
(declare-const var923 var3985) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment 
(assert (not (= var923 null-var3985)))
(declare-const var1159 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1159 null-String)))
(declare-const var3407 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var3407 null-String)))
(declare-const var361 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var361 null-String)))
(assert true)
(define-const var301 Bool (isEmpty/-1285796103 var1159)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment: org.w3c.dom.Document doc> 
(assert (not (= (ite var301 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1082 var2536 (doc/1792608666 var923)) ; Statement: $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment: org.w3c.dom.Document doc> 
(define-const var2985 var1219 (var2536_createElement/-632548355 var1082 var3407)) ; Statement: r8 = interfaceinvoke $r7.<org.w3c.dom.Document: org.w3c.dom.Element createElement(java.lang.String)>(r6) 
 ; Statement: goto [?= $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment: org.w3c.dom.DocumentFragment fragment>] 
(assert true) ; Non Conditional
(define-const var2122 var1130 (fragment/1792608666 var923)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment: org.w3c.dom.DocumentFragment fragment> 
;(assert (var3018_appendChild/-892350246 (cast-from-var1130-to-var3018 var2122) (cast-from-var1219-to-var3018 var2985))) ; Statement: interfaceinvoke $r4.<org.w3c.dom.DocumentFragment: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>(r8) 

(declare-const var2122!1 var1130)
(declare-const var2985!1 var1219)
(define-const var968 var1997 var1997-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child 
(assert true)
;(assert (<init>/1907435612 var968 var923 var2985!1)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment,org.w3c.dom.Element)>(r1, r8) 

(declare-const var968!1 var1997)
(declare-const var923!1 var3985)
(declare-const var2985!2 var1219)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), doc/1792608666=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment], org.w3c.dom.Document), var2536_createElement/-632548355=([org.w3c.dom.Document, java.lang.String], org.w3c.dom.Element), fragment/1792608666=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment], org.w3c.dom.DocumentFragment), var3018_appendChild/-892350246=([org.w3c.dom.Node, org.w3c.dom.Node], org.w3c.dom.Node), cast-from-var1130-to-var3018=([org.w3c.dom.DocumentFragment], org.w3c.dom.Node), cast-from-var1219-to-var3018=([org.w3c.dom.Element], org.w3c.dom.Node), var1997-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child), <init>/1907435612=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment, org.w3c.dom.Element], void)}
; {var3985=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment, var923=r1, var1159=r0, var265=null_type, var3407=r6, var361=r2, var301=$z0, var2536=org.w3c.dom.Document, var1082=$r7, var1219=org.w3c.dom.Element, var2985=r8, var1130=org.w3c.dom.DocumentFragment, var2122=$r4, var3018=org.w3c.dom.Node, var1997=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child, var968=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment=var3985, r1=var923, r0=var1159, null_type=var265, r6=var3407, r2=var361, $z0=var301, org.w3c.dom.Document=var2536, $r7=var1082, org.w3c.dom.Element=var1219, r8=var2985, org.w3c.dom.DocumentFragment=var1130, $r4=var2122, org.w3c.dom.Node=var3018, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child=var1997, $r5=var968}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment;	r0 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment: org.w3c.dom.Document doc>;	$r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment: org.w3c.dom.Document doc>;	r8 = interfaceinvoke $r7.<org.w3c.dom.Document: org.w3c.dom.Element createElement(java.lang.String)>(r6);	goto [?= $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment: org.w3c.dom.DocumentFragment fragment>];	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment: org.w3c.dom.DocumentFragment fragment>;	interfaceinvoke $r4.<org.w3c.dom.DocumentFragment: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>(r8);	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child;	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment,org.w3c.dom.Element)>(r1, r8);	return $r5
;block_num 3