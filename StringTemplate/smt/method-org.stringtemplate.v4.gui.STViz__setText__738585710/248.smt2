(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3513 0)
(declare-sort var1580 0)
(declare-sort var2979 0)
(declare-sort var2068 0)
(declare-sort var293 0)
(declare-sort var682 0)
(declare-sort var2831 0)
(declare-sort var3665 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2068-init () var2068)
(declare-fun <init>/-325640736 (var2068) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var293_size/-959786421 (var293) Int)
(declare-fun cast-from-var2068-to-var293 (var2068) var293)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun setText/-358474082 (var1580 String) void)
(declare-fun getDocument/-1325266783 (var2831) var682)
(declare-fun cast-from-var1580-to-var2831 (var1580) var2831)
(declare-fun var682_putProperty/-1728862449 (var682 var3665 var3665) void)
(declare-fun cast-from-String-to-var3665 (String) var3665)
(declare-fun cast-from-__Array__Int__Int__-to-var3665 ((Array Int Int)) var3665)
(declare-const null-var3513 var3513)
(declare-const null-var1580 var1580)
(declare-const null-String String)
(declare-const var643 var3513) ; Statement: r8 := @this: org.stringtemplate.v4.gui.STViz 
(assert (not (= var643 null-var3513)))
(declare-const var1996 var1580) ; Statement: r2 := @parameter0: javax.swing.JEditorPane 
(assert (not (= var1996 null-var1580)))
(declare-const var2928 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2928 null-String)))
(define-const var1748 var2068 var2068-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1748)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var1748!1 var2068)
(define-const var1261 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var543 Int (length/-134980193 var2928)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i0 goto $i1 = interfaceinvoke $r0.<java.util.List: int size()>() 
(assert (>= var1261 var543)) ; Cond: i3 >= $i0 
(define-const var130 Int (var293_size/-959786421 (cast-from-var2068-to-var293 var1748!1))) ; Statement: $i1 = interfaceinvoke $r0.<java.util.List: int size()>() 
(define-const var2739 (Array Int Int) arr-Int-init) ; Statement: $r7 = newarray (int)[$i1] 
(define-const var2734 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var1786 Int (var293_size/-959786421 (cast-from-var2068-to-var293 var1748!1))) ; Statement: $i6 = interfaceinvoke $r0.<java.util.List: int size()>() 
 ; Statement: if i5 >= $i6 goto virtualinvoke r2.<javax.swing.JEditorPane: void setText(java.lang.String)>(r1) 
(assert (>= var2734 var1786)) ; Cond: i5 >= $i6 
(assert true)
;(assert (setText/-358474082 var1996 var2928)) ; Statement: virtualinvoke r2.<javax.swing.JEditorPane: void setText(java.lang.String)>(r1) 

(declare-const var1996!1 var1580)
(declare-const var2928!1 String)
(assert true)
(define-const var1914 var682 (getDocument/-1325266783 (cast-from-var1580-to-var2831 var1996!1))) ; Statement: $r3 = virtualinvoke r2.<javax.swing.JEditorPane: javax.swing.text.Document getDocument()>() 
;(assert (var682_putProperty/-1728862449 var1914 (cast-from-String-to-var3665 "WINDOWS_LINE_ENDINGS") (cast-from-__Array__Int__Int__-to-var3665 var2739))) ; Statement: interfaceinvoke $r3.<javax.swing.text.Document: void putProperty(java.lang.Object,java.lang.Object)>("WINDOWS_LINE_ENDINGS", $r7) 

(declare-const var1914!1 var682)
(declare-const var1417 String)
(declare-const var2739!1 (Array Int Int))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2068-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), length/-134980193=([java.lang.String], int), var293_size/-959786421=([java.util.List], int), cast-from-var2068-to-var293=([java.util.ArrayList], java.util.List), arr-Int-init=([], int[]), setText/-358474082=([javax.swing.JEditorPane, java.lang.String], void), getDocument/-1325266783=([javax.swing.text.JTextComponent], javax.swing.text.Document), cast-from-var1580-to-var2831=([javax.swing.JEditorPane], javax.swing.text.JTextComponent), var682_putProperty/-1728862449=([javax.swing.text.Document, java.lang.Object, java.lang.Object], void), cast-from-String-to-var3665=([java.lang.String], java.lang.Object), cast-from-__Array__Int__Int__-to-var3665=([int[]], java.lang.Object)}
; {var3513=org.stringtemplate.v4.gui.STViz, var643=r8, var1580=javax.swing.JEditorPane, var1996=r2, var2928=r1, var2979=null_type, var2068=java.util.ArrayList, var1748=$r0, var1261=i3, var543=$i0, var293=java.util.List, var130=$i1, var2739=$r7, var2734=i5, var1786=$i6, var682=javax.swing.text.Document, var2831=javax.swing.text.JTextComponent, var1914=$r3, var3665=java.lang.Object, var1417="WINDOWS_LINE_ENDINGS"}
; {org.stringtemplate.v4.gui.STViz=var3513, r8=var643, javax.swing.JEditorPane=var1580, r2=var1996, r1=var2928, null_type=var2979, java.util.ArrayList=var2068, $r0=var1748, i3=var1261, $i0=var543, java.util.List=var293, $i1=var130, $r7=var2739, i5=var2734, $i6=var1786, javax.swing.text.Document=var682, javax.swing.text.JTextComponent=var2831, $r3=var1914, java.lang.Object=var3665, "WINDOWS_LINE_ENDINGS"=var1417}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r8 := @this: org.stringtemplate.v4.gui.STViz;	r2 := @parameter0: javax.swing.JEditorPane;	r1 := @parameter1: java.lang.String;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	i3 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i3 >= $i0 goto $i1 = interfaceinvoke $r0.<java.util.List: int size()>();	$i1 = interfaceinvoke $r0.<java.util.List: int size()>();	$r7 = newarray (int)[$i1];	i5 = 0;	$i6 = interfaceinvoke $r0.<java.util.List: int size()>();	if i5 >= $i6 goto virtualinvoke r2.<javax.swing.JEditorPane: void setText(java.lang.String)>(r1);	virtualinvoke r2.<javax.swing.JEditorPane: void setText(java.lang.String)>(r1);	$r3 = virtualinvoke r2.<javax.swing.JEditorPane: javax.swing.text.Document getDocument()>();	interfaceinvoke $r3.<javax.swing.text.Document: void putProperty(java.lang.Object,java.lang.Object)>("WINDOWS_LINE_ENDINGS", $r7);	return
;block_num 5