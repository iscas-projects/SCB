(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1206 0)
(declare-sort var1582 0)
(declare-sort var185 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun e/1342007666 (var1206) var185)
(declare-fun var185_setAttributeNS/209768256 (var185 String String String) void)
(declare-const null-var1206 var1206)
(declare-const null-String String)
(declare-const var52 var1206) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child 
(assert (not (= var52 null-var1206)))
(declare-const var714 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var714 null-String)))
(declare-const var3402 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3402 null-String)))
(declare-const var3972 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3972 null-String)))
(declare-const var2781 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var2781 null-String)))
(assert true)
(define-const var327 Bool (isEmpty/-1285796103 var714)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: org.w3c.dom.Element e> 
(assert (= (ite var327 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2047 var185 (e/1342007666 var52)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: org.w3c.dom.Element e> 
;(assert (var185_setAttributeNS/209768256 var2047 var714 var3972 var2781)) ; Statement: interfaceinvoke $r4.<org.w3c.dom.Element: void setAttributeNS(java.lang.String,java.lang.String,java.lang.String)>(r0, r2, r3) 

(declare-const var2047!1 var185)
(declare-const var714!1 String)
(declare-const var3972!1 String)
(declare-const var2781!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), e/1342007666=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child], org.w3c.dom.Element), var185_setAttributeNS/209768256=([org.w3c.dom.Element, java.lang.String, java.lang.String, java.lang.String], void)}
; {var1206=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child, var52=r1, var714=r0, var1582=null_type, var3402=r5, var3972=r2, var2781=r3, var327=$z0, var185=org.w3c.dom.Element, var2047=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child=var1206, r1=var52, r0=var714, null_type=var1582, r5=var3402, r2=var3972, r3=var2781, $z0=var327, org.w3c.dom.Element=var185, $r4=var2047}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child;	r0 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: org.w3c.dom.Element e>;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.XMLFragment$Child: org.w3c.dom.Element e>;	interfaceinvoke $r4.<org.w3c.dom.Element: void setAttributeNS(java.lang.String,java.lang.String,java.lang.String)>(r0, r2, r3);	return
;block_num 3