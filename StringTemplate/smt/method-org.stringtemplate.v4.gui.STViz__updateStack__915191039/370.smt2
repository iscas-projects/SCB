(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1957 0)
(declare-sort var139 0)
(declare-sort var3848 0)
(declare-sort var259 0)
(declare-sort var1222 0)
(declare-sort var2703 0)
(declare-sort var3451 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1222_getEnclosingInstanceStack/-1854286439 (var139 Bool) var259)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var259_iterator/-912451715 (var259) Iterator)
(declare-fun var2703_join/-1468969580 (Iterator String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setTitle/-1722415661 (var3451 String) void)
(declare-fun cast-from-var3848-to-var3451 (var3848) var3451)
(declare-const null-var1957 var1957)
(declare-const null-var139 var139)
(declare-const null-var3848 var3848)
(declare-const var2788 var1957) ; Statement: r10 := @this: org.stringtemplate.v4.gui.STViz 
(assert (not (= var2788 null-var1957)))
(declare-const var1914 var139) ; Statement: r0 := @parameter0: org.stringtemplate.v4.InstanceScope 
(assert (not (= var1914 null-var139)))
(declare-const var1039 var3848) ; Statement: r2 := @parameter1: org.stringtemplate.v4.gui.STViewFrame 
(assert (not (= var1039 null-var3848)))
(define-const var1512 var259 (var1222_getEnclosingInstanceStack/-1854286439 var1914 (ite (= 1 1) true false))) ; Statement: r1 = staticinvoke <org.stringtemplate.v4.Interpreter: java.util.List getEnclosingInstanceStack(org.stringtemplate.v4.InstanceScope,boolean)>(r0, 1) 
(define-const var3285 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3285)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3285!1 String)
(assert (= var3285!1 ""))
(assert true)
(define-const var1831 String (append/672562846 var3285!1 "STViz - [")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("STViz - [") 
(declare-const var3285!2 String)
(assert (= var3285!2 (str.++ var3285!1 "STViz - [")))
(define-const var1732 Iterator (var259_iterator/-912451715 var1512)) ; Statement: $r4 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var1285 String (var2703_join/-1468969580 var1732 " ")) ; Statement: $r5 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String join(java.util.Iterator,java.lang.String)>($r4, " ") 
(assert true)
(define-const var53 String (append/672562846 var1831 var1285)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1831!1 String)
(assert (= var1831!1 (str.++ var1831 var1285)))
(assert true)
(define-const var1794 String (append/672562846 var53 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var53!1 String)
(assert (= var53!1 (str.++ var53 "]")))
(assert true)
(define-const var2049 String (toString/-2075883882 var1794)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setTitle/-1722415661 (cast-from-var3848-to-var3451 var1039) var2049)) ; Statement: virtualinvoke r2.<org.stringtemplate.v4.gui.STViewFrame: void setTitle(java.lang.String)>($r9) 

(declare-const var1039!1 var3848)
(declare-const var2049!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1222_getEnclosingInstanceStack/-1854286439=([org.stringtemplate.v4.InstanceScope, boolean], java.util.List), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var259_iterator/-912451715=([java.util.List], java.util.Iterator), var2703_join/-1468969580=([java.util.Iterator, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setTitle/-1722415661=([java.awt.Frame, java.lang.String], void), cast-from-var3848-to-var3451=([org.stringtemplate.v4.gui.STViewFrame], java.awt.Frame)}
; {var1957=org.stringtemplate.v4.gui.STViz, var2788=r10, var139=org.stringtemplate.v4.InstanceScope, var1914=r0, var3848=org.stringtemplate.v4.gui.STViewFrame, var1039=r2, var259=java.util.List, var1222=org.stringtemplate.v4.Interpreter, var1512=r1, var3285=$r3, var1831=$r6, var1732=$r4, var2703=org.stringtemplate.v4.misc.Misc, var1285=$r5, var53=$r7, var1794=$r8, var2049=$r9, var3451=java.awt.Frame}
; {org.stringtemplate.v4.gui.STViz=var1957, r10=var2788, org.stringtemplate.v4.InstanceScope=var139, r0=var1914, org.stringtemplate.v4.gui.STViewFrame=var3848, r2=var1039, java.util.List=var259, org.stringtemplate.v4.Interpreter=var1222, r1=var1512, $r3=var3285, $r6=var1831, $r4=var1732, org.stringtemplate.v4.misc.Misc=var2703, $r5=var1285, $r7=var53, $r8=var1794, $r9=var2049, java.awt.Frame=var3451}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.stringtemplate.v4.gui.STViz;	r0 := @parameter0: org.stringtemplate.v4.InstanceScope;	r2 := @parameter1: org.stringtemplate.v4.gui.STViewFrame;	r1 = staticinvoke <org.stringtemplate.v4.Interpreter: java.util.List getEnclosingInstanceStack(org.stringtemplate.v4.InstanceScope,boolean)>(r0, 1);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("STViz - [");	$r4 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$r5 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String join(java.util.Iterator,java.lang.String)>($r4, " ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r2.<org.stringtemplate.v4.gui.STViewFrame: void setTitle(java.lang.String)>($r9);	return
;block_num 1