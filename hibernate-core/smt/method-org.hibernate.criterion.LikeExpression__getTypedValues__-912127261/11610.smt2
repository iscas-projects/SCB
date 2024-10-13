(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1019 0)
(declare-sort var3990 0)
(declare-sort var792 0)
(declare-sort var2699 0)
(declare-sort var753 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ignoreCase/-1321302526 (var1019) Bool)
(declare-fun value/-1321302526 (var1019) var2699)
(declare-fun toString/-522406933 (var2699) String)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun arr-var753-init () (Array Int var753))
(declare-fun propertyName/-1321302526 (var1019) String)
(declare-fun var792_getTypedValue/-975752508 (var792 var3990 String var2699) var753)
(declare-fun cast-from-String-to-var2699 (String) var2699)
(declare-const null-var1019 var1019)
(declare-const null-var3990 var3990)
(declare-const null-var792 var792)
(declare-const null-__Array__Int__var753__ (Array Int var753))
(declare-const var2346 var1019) ; Statement: r0 := @this: org.hibernate.criterion.LikeExpression 
(assert (not (= var2346 null-var1019)))
(declare-const var450 var3990) ; Statement: r4 := @parameter0: org.hibernate.Criteria 
(assert (not (= var450 null-var3990)))
(declare-const var351 var792) ; Statement: r3 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var351 null-var792)))
(define-const var392 Bool (ignoreCase/-1321302526 var2346)) ; Statement: $z0 = r0.<org.hibernate.criterion.LikeExpression: boolean ignoreCase> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<org.hibernate.criterion.LikeExpression: java.lang.Object value> 
(assert (not (= (ite var392 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3379 var2699 (value/-1321302526 var2346)) ; Statement: $r7 = r0.<org.hibernate.criterion.LikeExpression: java.lang.Object value> 
(assert true)
(define-const var1912 String (toString/-522406933 var3379)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var84 String (toLowerCase/415700667 var1912)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String toLowerCase()>() 
 ; Statement: goto [?= $r2 = newarray (org.hibernate.engine.spi.TypedValue)[1]] 
(assert true) ; Non Conditional
(define-const var2630 (Array Int var753) arr-var753-init) ; Statement: $r2 = newarray (org.hibernate.engine.spi.TypedValue)[1] 
(define-const var659 String (propertyName/-1321302526 var2346)) ; Statement: $r5 = r0.<org.hibernate.criterion.LikeExpression: java.lang.String propertyName> 
(define-const var1573 var753 (var792_getTypedValue/-975752508 var351 var450 var659 (cast-from-String-to-var2699 var84))) ; Statement: $r6 = interfaceinvoke r3.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.TypedValue getTypedValue(org.hibernate.Criteria,java.lang.String,java.lang.Object)>(r4, $r5, $r9) 
(declare-const var2630!1 (Array Int var753))
(assert (not (= var2630!1 null-__Array__Int__var753__)))
(assert (= (select var2630!1 0) var1573)) ; Statement: $r2[0] = $r6 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {ignoreCase/-1321302526=([org.hibernate.criterion.LikeExpression], boolean), value/-1321302526=([org.hibernate.criterion.LikeExpression], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), arr-var753-init=([], org.hibernate.engine.spi.TypedValue[]), propertyName/-1321302526=([org.hibernate.criterion.LikeExpression], java.lang.String), var792_getTypedValue/-975752508=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria, java.lang.String, java.lang.Object], org.hibernate.engine.spi.TypedValue), cast-from-String-to-var2699=([java.lang.String], java.lang.Object)}
; {var1019=org.hibernate.criterion.LikeExpression, var2346=r0, var3990=org.hibernate.Criteria, var450=r4, var792=org.hibernate.criterion.CriteriaQuery, var351=r3, var392=$z0, var2699=java.lang.Object, var3379=$r7, var1912=$r8, var84=$r9, var753=org.hibernate.engine.spi.TypedValue, var2630=$r2, var659=$r5, var1573=$r6}
; {org.hibernate.criterion.LikeExpression=var1019, r0=var2346, org.hibernate.Criteria=var3990, r4=var450, org.hibernate.criterion.CriteriaQuery=var792, r3=var351, $z0=var392, java.lang.Object=var2699, $r7=var3379, $r8=var1912, $r9=var84, org.hibernate.engine.spi.TypedValue=var753, $r2=var2630, $r5=var659, $r6=var1573}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: java.lang.String toLowerCase()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1}
;stmts r0 := @this: org.hibernate.criterion.LikeExpression;	r4 := @parameter0: org.hibernate.Criteria;	r3 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$z0 = r0.<org.hibernate.criterion.LikeExpression: boolean ignoreCase>;	if $z0 == 0 goto $r1 = r0.<org.hibernate.criterion.LikeExpression: java.lang.Object value>;	$r7 = r0.<org.hibernate.criterion.LikeExpression: java.lang.Object value>;	$r8 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String toLowerCase()>();	goto [?= $r2 = newarray (org.hibernate.engine.spi.TypedValue)[1]];	$r2 = newarray (org.hibernate.engine.spi.TypedValue)[1];	$r5 = r0.<org.hibernate.criterion.LikeExpression: java.lang.String propertyName>;	$r6 = interfaceinvoke r3.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.TypedValue getTypedValue(org.hibernate.Criteria,java.lang.String,java.lang.Object)>(r4, $r5, $r9);	$r2[0] = $r6;	return $r2
;block_num 3