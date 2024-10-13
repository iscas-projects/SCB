(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3135 0)
(declare-sort var1067 0)
(declare-sort var3293 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1067_checkArgument/-972017905 (Bool var3293) void)
(declare-fun cast-from-String-to-var3293 (String) var3293)
(declare-const null-String String)
(declare-const var3149 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3149 null-String)))
(assert true)
(define-const var3276 Bool (contains/1009244746 var3149 (cast-from-String-to-String "<"))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("<") 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var3276 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2061 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var1067_checkArgument/-972017905 var2061 (cast-from-String-to-var3293 "Type names cannot contain template annotations."))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z1, "Type names cannot contain template annotations.") 

(declare-const var2061!1 Bool)
(declare-const var158 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1067_checkArgument/-972017905=([boolean, java.lang.Object], void), cast-from-String-to-var3293=([java.lang.String], java.lang.Object)}
; {var3149=r0, var3135=null_type, var3276=$z0, var2061=$z1, var1067=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3293=java.lang.Object, var158="Type names cannot contain template annotations."}
; {r0=var3149, null_type=var3135, $z0=var3276, $z1=var2061, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1067, java.lang.Object=var3293, "Type names cannot contain template annotations."=var158}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("<");	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z1, "Type names cannot contain template annotations.");	return
;block_num 3