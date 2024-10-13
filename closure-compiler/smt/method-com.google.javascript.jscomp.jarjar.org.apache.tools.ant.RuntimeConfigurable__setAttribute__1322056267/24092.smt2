(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2785 0)
(declare-sort var3296 0)
(declare-sort var523 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun setAttribute/-382457351 (var2785 String var523) void)
(declare-fun cast-from-String-to-var523 (String) var523)
(declare-const null-var2785 var2785)
(declare-const null-String String)
(declare-const var1715 var2785) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable 
(assert (not (= var1715 null-var2785)))
(declare-const var2855 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2855 null-String)))
(declare-const var1337 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1337 null-String)))
(assert true)
(define-const var716 Bool (contains/1009244746 var2855 (cast-from-String-to-String ":"))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(":") 
 ; Statement: if $z0 == 0 goto virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: void setAttribute(java.lang.String,java.lang.Object)>(r0, r2) 
(assert (= (ite var716 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (setAttribute/-382457351 var1715 var2855 (cast-from-String-to-var523 var1337))) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: void setAttribute(java.lang.String,java.lang.Object)>(r0, r2) 

(declare-const var1715!1 var2785)
(declare-const var2855!1 String)
(declare-const var1337!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), setAttribute/-382457351=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable, java.lang.String, java.lang.Object], void), cast-from-String-to-var523=([java.lang.String], java.lang.Object)}
; {var2785=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable, var1715=r1, var2855=r0, var3296=null_type, var1337=r2, var716=$z0, var523=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable=var2785, r1=var1715, r0=var2855, null_type=var3296, r2=var1337, $z0=var716, java.lang.Object=var523}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(":");	if $z0 == 0 goto virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: void setAttribute(java.lang.String,java.lang.Object)>(r0, r2);	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: void setAttribute(java.lang.String,java.lang.Object)>(r0, r2);	return
;block_num 2