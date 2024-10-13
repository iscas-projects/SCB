(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2253 0)
(declare-sort var2484 0)
(declare-sort var1092 0)
(declare-sort var693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun constructorArgumentTypes/1194991192 (var2253) (Array Int var1092))
(declare-fun getLength-Arr-var1092-1 ((Array Int var1092)) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun arr-var693-init () (Array Int var693))
(declare-fun cast-from-String-to-var693 (String) var693)
(declare-fun String_format/1339386452 (String (Array Int var693)) String)
(declare-const null-var2253 var2253)
(declare-const null-String String)
(declare-const null-__Array__Int__var693__ (Array Int var693))
(declare-const var1648 var2253) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.ConstructorNode 
(assert (not (= var1648 null-var2253)))
(declare-const var413 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var413 null-String)))
(define-const var901 (Array Int var1092) (constructorArgumentTypes/1194991192 var1648)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.type.Type[] constructorArgumentTypes> 
(define-const var3763 Int (getLength-Arr-var1092-1 var901)) ; Statement: $i0 = lengthof $r1 
(define-const var2764 (Array Int String) arr-String-init) ; Statement: r2 = newarray (java.lang.String)[$i0] 
(define-const var53 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var138 (Array Int var1092) (constructorArgumentTypes/1194991192 var1648)) ; Statement: $r3 = r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.type.Type[] constructorArgumentTypes> 
(define-const var528 Int (getLength-Arr-var1092-1 var138)) ; Statement: $i1 = lengthof $r3 
 ; Statement: if i4 >= $i1 goto $i2 = lengthof r2 
(assert (>= var53 var528)) ; Cond: i4 >= $i1 
(define-const var317 Int (getLength-Arr-String-1 var2764)) ; Statement: $i2 = lengthof r2 
 ; Statement: if $i2 != 0 goto $r17 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r2) 
(assert (not (not (= var317 0)))) ; Negate: Cond: $i2 != 0  
(define-const var856 String "no arguments constructor") ; Statement: $r17 = "no arguments constructor" 
 ; Statement: goto [?= $r4 = newarray (java.lang.Object)[2]] 
(assert true) ; Non Conditional
(define-const var2477 (Array Int var693) arr-var693-init) ; Statement: $r4 = newarray (java.lang.Object)[2] 
(declare-const var2477!1 (Array Int var693))
(assert (not (= var2477!1 null-__Array__Int__var693__)))
(assert (= (select var2477!1 0) (cast-from-String-to-var693 var413))) ; Statement: $r4[0] = r5 
(declare-const var2477!2 (Array Int var693))
(assert (not (= var2477!2 null-__Array__Int__var693__)))
(assert (= (select var2477!2 1) (cast-from-String-to-var693 var856))) ; Statement: $r4[1] = $r17 
(define-const var1444 String (String_format/1339386452 "Unable to locate appropriate constructor on class [%s]. Expected arguments are: %s" var2477!2)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to locate appropriate constructor on class [%s]. Expected arguments are: %s", $r4) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {constructorArgumentTypes/1194991192=([org.hibernate.hql.internal.ast.tree.ConstructorNode], org.hibernate.type.Type[]), getLength-Arr-var1092-1=([org.hibernate.type.Type[]], int), arr-String-init=([], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), arr-var693-init=([], java.lang.Object[]), cast-from-String-to-var693=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2253=org.hibernate.hql.internal.ast.tree.ConstructorNode, var1648=r0, var413=r5, var2484=null_type, var1092=org.hibernate.type.Type, var901=$r1, var3763=$i0, var2764=r2, var53=i4, var138=$r3, var528=$i1, var317=$i2, var856=$r17, var693=java.lang.Object, var2477=$r4, var1444=$r6}
; {org.hibernate.hql.internal.ast.tree.ConstructorNode=var2253, r0=var1648, r5=var413, null_type=var2484, org.hibernate.type.Type=var1092, $r1=var901, $i0=var3763, r2=var2764, i4=var53, $r3=var138, $i1=var528, $i2=var317, $r17=var856, java.lang.Object=var693, $r4=var2477, $r6=var1444}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.ConstructorNode;	r5 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.type.Type[] constructorArgumentTypes>;	$i0 = lengthof $r1;	r2 = newarray (java.lang.String)[$i0];	i4 = 0;	$r3 = r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.type.Type[] constructorArgumentTypes>;	$i1 = lengthof $r3;	if i4 >= $i1 goto $i2 = lengthof r2;	$i2 = lengthof r2;	if $i2 != 0 goto $r17 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r2);	$r17 = "no arguments constructor";	goto [?= $r4 = newarray (java.lang.Object)[2]];	$r4 = newarray (java.lang.Object)[2];	$r4[0] = r5;	$r4[1] = $r17;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to locate appropriate constructor on class [%s]. Expected arguments are: %s", $r4);	return $r6
;block_num 5