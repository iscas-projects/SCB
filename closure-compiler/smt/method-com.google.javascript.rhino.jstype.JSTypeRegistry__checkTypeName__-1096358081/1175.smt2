(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var601 0)
(declare-sort var3660 0)
(declare-sort var3498 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3660_checkArgument/-972017905 (Bool var3498) void)
(declare-fun cast-from-String-to-var3498 (String) var3498)
(declare-const null-String String)
(declare-const var1861 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1861 null-String)))
(assert true)
(define-const var446 Bool (contains/1009244746 var1861 (cast-from-String-to-String "<"))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("<") 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var446 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3508 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z1, "Type names cannot contain template annotations.")] 
(assert true) ; Non Conditional
;(assert (var3660_checkArgument/-972017905 var3508 (cast-from-String-to-var3498 "Type names cannot contain template annotations."))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z1, "Type names cannot contain template annotations.") 

(declare-const var3508!1 Bool)
(declare-const var2639 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3660_checkArgument/-972017905=([boolean, java.lang.Object], void), cast-from-String-to-var3498=([java.lang.String], java.lang.Object)}
; {var1861=r0, var601=null_type, var446=$z0, var3508=$z1, var3660=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3498=java.lang.Object, var2639="Type names cannot contain template annotations."}
; {r0=var1861, null_type=var601, $z0=var446, $z1=var3508, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3660, java.lang.Object=var3498, "Type names cannot contain template annotations."=var2639}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("<");	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z1, "Type names cannot contain template annotations.")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z1, "Type names cannot contain template annotations.");	return
;block_num 3