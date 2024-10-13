(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var262 0)
(declare-sort var1066 0)
(declare-sort var3368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3368-init () (Array Int var3368))
(declare-fun escapeLiteral/-872613907 (var262 String) String)
(declare-fun cast-from-String-to-var3368 (String) var3368)
(declare-fun String_format/1339386452 (String (Array Int var3368)) String)
(declare-const null-var262 var262)
(declare-const null-String String)
(declare-const null-__Array__Int__var3368__ (Array Int var3368))
(declare-const var1425 var262) ; Statement: r1 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var1425 null-var262)))
(declare-const var3771 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3771 null-String)))
(define-const var2930 (Array Int var3368) arr-var3368-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var3069 String (escapeLiteral/-872613907 var1425 var3771)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String escapeLiteral(java.lang.String)>(r2) 
(declare-const var2930!1 (Array Int var3368))
(assert (not (= var2930!1 null-__Array__Int__var3368__)))
(assert (= (select var2930!1 0) (cast-from-String-to-var3368 var3069))) ; Statement: $r0[0] = $r3 
(define-const var3330 String (String_format/1339386452 "\u0027%s\u0027" var2930!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("\'%s\'", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3368-init=([], java.lang.Object[]), escapeLiteral/-872613907=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String), cast-from-String-to-var3368=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var262=org.hibernate.dialect.Dialect, var1425=r1, var3771=r2, var1066=null_type, var3368=java.lang.Object, var2930=$r0, var3069=$r3, var3330=$r4}
; {org.hibernate.dialect.Dialect=var262, r1=var1425, r2=var3771, null_type=var1066, java.lang.Object=var3368, $r0=var2930, $r3=var3069, $r4=var3330}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.dialect.Dialect;	r2 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.Object)[1];	$r3 = virtualinvoke r1.<org.hibernate.dialect.Dialect: java.lang.String escapeLiteral(java.lang.String)>(r2);	$r0[0] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("\'%s\'", $r0);	return $r4
;block_num 1