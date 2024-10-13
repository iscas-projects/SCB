(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3256 0)
(declare-sort var140 0)
(declare-sort var2038 0)
(declare-sort var3001 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2038-init () (Array Int var2038))
(declare-fun name/673402333 (var3256) String)
(declare-fun cast-from-String-to-var2038 (String) var2038)
(declare-fun type/673402333 (var3256) var3001)
(declare-fun cast-from-var3001-to-var2038 (var3001) var2038)
(declare-fun String_format/-647569892 (var140 String (Array Int var2038)) String)
(declare-const null-var3256 var3256)
(declare-const var140-ENGLISH var140)
(declare-const null-__Array__Int__var2038__ (Array Int var2038))
(declare-const var1362 var3256) ; Statement: r1 := @this: org.hibernate.boot.jaxb.Origin 
(assert (not (= var1362 null-var3256)))
(define-const var968 var140 var140-ENGLISH) ; Statement: $r4 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var2510 (Array Int var2038) arr-var2038-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(define-const var748 String (name/673402333 var1362)) ; Statement: $r2 = r1.<org.hibernate.boot.jaxb.Origin: java.lang.String name> 
(declare-const var2510!1 (Array Int var2038))
(assert (not (= var2510!1 null-__Array__Int__var2038__)))
(assert (= (select var2510!1 0) (cast-from-String-to-var2038 var748))) ; Statement: $r0[0] = $r2 
(define-const var1160 var3001 (type/673402333 var1362)) ; Statement: $r3 = r1.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType type> 
(declare-const var2510!2 (Array Int var2038))
(assert (not (= var2510!2 null-__Array__Int__var2038__)))
(assert (= (select var2510!2 1) (cast-from-var3001-to-var2038 var1160))) ; Statement: $r0[1] = $r3 
(define-const var3027 String (String_format/-647569892 var968 "Origin(name=%s,type=%s)" var2510!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, "Origin(name=%s,type=%s)", $r0) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2038-init=([], java.lang.Object[]), name/673402333=([org.hibernate.boot.jaxb.Origin], java.lang.String), cast-from-String-to-var2038=([java.lang.String], java.lang.Object), type/673402333=([org.hibernate.boot.jaxb.Origin], org.hibernate.boot.jaxb.SourceType), cast-from-var3001-to-var2038=([org.hibernate.boot.jaxb.SourceType], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3256=org.hibernate.boot.jaxb.Origin, var1362=r1, var140=java.util.Locale, var968=$r4, var2038=java.lang.Object, var2510=$r0, var748=$r2, var3001=org.hibernate.boot.jaxb.SourceType, var1160=$r3, var3027=$r5}
; {org.hibernate.boot.jaxb.Origin=var3256, r1=var1362, java.util.Locale=var140, $r4=var968, java.lang.Object=var2038, $r0=var2510, $r2=var748, org.hibernate.boot.jaxb.SourceType=var3001, $r3=var1160, $r5=var3027}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.boot.jaxb.Origin;	$r4 = <java.util.Locale: java.util.Locale ENGLISH>;	$r0 = newarray (java.lang.Object)[2];	$r2 = r1.<org.hibernate.boot.jaxb.Origin: java.lang.String name>;	$r0[0] = $r2;	$r3 = r1.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType type>;	$r0[1] = $r3;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, "Origin(name=%s,type=%s)", $r0);	return $r5
;block_num 1