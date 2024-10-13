(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var47 0)
(declare-sort var3442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun setText/981743401 (var3442 String) void)
(declare-fun cast-from-var47-to-var3442 (var47) var3442)
(declare-const null-var47 var47)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3041 var47) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode 
(assert (not (= var3041 null-var47)))
(declare-const var1889 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var1889 null-__Array__Int__String__)))
(define-const var1070 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var1889))) ; Statement: r7 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r0) 
(define-const var721 Int (getLength-Arr-String-1 var1889)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 <= 1 goto virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode: void setText(java.lang.String)>(r7) 
(assert (<= var721 1)) ; Cond: $i0 <= 1 
(assert true)
;(assert (setText/981743401 (cast-from-var47-to-var3442 var3041) var1070)) ; Statement: virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode: void setText(java.lang.String)>(r7) 

(declare-const var3041!1 var47)
(declare-const var1070!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), getLength-Arr-String-1=([java.lang.String[]], int), setText/981743401=([org.hibernate.hql.internal.ast.tree.SqlNode, java.lang.String], void), cast-from-var47-to-var3442=([org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode], org.hibernate.hql.internal.ast.tree.SqlNode)}
; {var47=org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode, var3041=r1, var1889=r0, var1070=r7, var721=$i0, var3442=org.hibernate.hql.internal.ast.tree.SqlNode}
; {org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode=var47, r1=var3041, r0=var1889, r7=var1070, $i0=var721, org.hibernate.hql.internal.ast.tree.SqlNode=var3442}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode;	r0 := @parameter0: java.lang.String[];	r7 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r0);	$i0 = lengthof r0;	if $i0 <= 1 goto virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode: void setText(java.lang.String)>(r7);	virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode: void setText(java.lang.String)>(r7);	return
;block_num 2