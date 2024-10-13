(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var51 0)
(declare-sort var1427 0)
(declare-sort var2316 0)
(declare-sort var3817 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun constructorArgumentTypes/1194991192 (var51) (Array Int var2316))
(declare-fun getLength-Arr-var2316-1 ((Array Int var2316)) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun arr-var3817-init () (Array Int var3817))
(declare-fun cast-from-String-to-var3817 (String) var3817)
(declare-fun String_format/1339386452 (String (Array Int var3817)) String)
(declare-const null-var51 var51)
(declare-const null-String String)
(declare-const null-__Array__Int__var3817__ (Array Int var3817))
(declare-const var236 var51) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.ConstructorNode 
(assert (not (= var236 null-var51)))
(declare-const var1957 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1957 null-String)))
(define-const var344 (Array Int var2316) (constructorArgumentTypes/1194991192 var236)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.type.Type[] constructorArgumentTypes> 
(define-const var1207 Int (getLength-Arr-var2316-1 var344)) ; Statement: $i0 = lengthof $r1 
(define-const var3578 (Array Int String) arr-String-init) ; Statement: r2 = newarray (java.lang.String)[$i0] 
(define-const var3260 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var316 (Array Int var2316) (constructorArgumentTypes/1194991192 var236)) ; Statement: $r3 = r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.type.Type[] constructorArgumentTypes> 
(define-const var1138 Int (getLength-Arr-var2316-1 var316)) ; Statement: $i1 = lengthof $r3 
 ; Statement: if i4 >= $i1 goto $i2 = lengthof r2 
(assert (>= var3260 var1138)) ; Cond: i4 >= $i1 
(define-const var2876 Int (getLength-Arr-String-1 var3578)) ; Statement: $i2 = lengthof r2 
 ; Statement: if $i2 != 0 goto $r17 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r2) 
(assert (not (= var2876 0))) ; Cond: $i2 != 0 
(define-const var3749 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var3578))) ; Statement: $r17 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r2) 
(assert true) ; Non Conditional
(define-const var3394 (Array Int var3817) arr-var3817-init) ; Statement: $r4 = newarray (java.lang.Object)[2] 
(declare-const var3394!1 (Array Int var3817))
(assert (not (= var3394!1 null-__Array__Int__var3817__)))
(assert (= (select var3394!1 0) (cast-from-String-to-var3817 var1957))) ; Statement: $r4[0] = r5 
(declare-const var3394!2 (Array Int var3817))
(assert (not (= var3394!2 null-__Array__Int__var3817__)))
(assert (= (select var3394!2 1) (cast-from-String-to-var3817 var3749))) ; Statement: $r4[1] = $r17 
(define-const var2930 String (String_format/1339386452 "Unable to locate appropriate constructor on class [%s]. Expected arguments are: %s" var3394!2)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to locate appropriate constructor on class [%s]. Expected arguments are: %s", $r4) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {constructorArgumentTypes/1194991192=([org.hibernate.hql.internal.ast.tree.ConstructorNode], org.hibernate.type.Type[]), getLength-Arr-var2316-1=([org.hibernate.type.Type[]], int), arr-String-init=([], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), arr-var3817-init=([], java.lang.Object[]), cast-from-String-to-var3817=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var51=org.hibernate.hql.internal.ast.tree.ConstructorNode, var236=r0, var1957=r5, var1427=null_type, var2316=org.hibernate.type.Type, var344=$r1, var1207=$i0, var3578=r2, var3260=i4, var316=$r3, var1138=$i1, var2876=$i2, var3749=$r17, var3817=java.lang.Object, var3394=$r4, var2930=$r6}
; {org.hibernate.hql.internal.ast.tree.ConstructorNode=var51, r0=var236, r5=var1957, null_type=var1427, org.hibernate.type.Type=var2316, $r1=var344, $i0=var1207, r2=var3578, i4=var3260, $r3=var316, $i1=var1138, $i2=var2876, $r17=var3749, java.lang.Object=var3817, $r4=var3394, $r6=var2930}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.ConstructorNode;	r5 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.type.Type[] constructorArgumentTypes>;	$i0 = lengthof $r1;	r2 = newarray (java.lang.String)[$i0];	i4 = 0;	$r3 = r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.type.Type[] constructorArgumentTypes>;	$i1 = lengthof $r3;	if i4 >= $i1 goto $i2 = lengthof r2;	$i2 = lengthof r2;	if $i2 != 0 goto $r17 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r2);	$r17 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r2);	$r4 = newarray (java.lang.Object)[2];	$r4[0] = r5;	$r4[1] = $r17;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to locate appropriate constructor on class [%s]. Expected arguments are: %s", $r4);	return $r6
;block_num 5