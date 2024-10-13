(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1450 0)
(declare-sort var1372 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var1372_containsKey/1715618542 (var1372 var1450) Bool)
(declare-fun cast-from-__Array__Int__var1450__-to-var1450 ((Array Int var1450)) var1450)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const null-__Array__Int__var1450__ (Array Int var1450))
(declare-const null-var1372 var1372)
(declare-const var1388 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1388 null-String)))
(declare-const var450 (Array Int var1450)) ; Statement: r2 := @parameter1: java.lang.Object[] 
(assert (not (= var450 null-__Array__Int__var1450__)))
(declare-const var642 var1372) ; Statement: r1 := @parameter2: java.util.Map 
(assert (not (= var642 null-var1372)))
(assert true)
;(assert (append/-1166366385 var1388 91)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var1388!1 String)
(assert (str.prefixof var1388 var1388!1))
(define-const var1934 Bool (var1372_containsKey/1715618542 var642 (cast-from-__Array__Int__var1450__-to-var1450 var450))) ; Statement: $z0 = interfaceinvoke r1.<java.util.Map: boolean containsKey(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...") 
(assert (not (= (ite var1934 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (append/672562846 var1388!1 "...")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...") 
(declare-const var1388!2 String)
(assert (= var1388!2 (str.++ var1388!1 "...")))
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var1388!2 93)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1388!3 String)
(assert (str.prefixof var1388!2 var1388!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var1372_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-__Array__Int__var1450__-to-var1450=([java.lang.Object[]], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1388=r0, var1450=java.lang.Object, var450=r2, var1372=java.util.Map, var642=r1, var1934=$z0}
; {r0=var1388, java.lang.Object=var1450, r2=var450, java.util.Map=var1372, r1=var642, $z0=var1934}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r2 := @parameter1: java.lang.Object[];	r1 := @parameter2: java.util.Map;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$z0 = interfaceinvoke r1.<java.util.Map: boolean containsKey(java.lang.Object)>(r2);	if $z0 != 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...");	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...");	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	return
;block_num 3