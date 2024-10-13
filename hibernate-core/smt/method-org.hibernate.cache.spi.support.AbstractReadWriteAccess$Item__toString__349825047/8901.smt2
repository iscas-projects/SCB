(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1955 0)
(declare-sort var86 0)
(declare-sort var1745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1745-init () (Array Int var1745))
(declare-fun getValue/-1561478506 (var1955) var1745)
(declare-fun String_format/-647569892 (var86 String (Array Int var1745)) String)
(declare-const null-var1955 var1955)
(declare-const var86-ROOT var86)
(declare-const null-__Array__Int__var1745__ (Array Int var1745))
(declare-const var3902 var1955) ; Statement: r1 := @this: org.hibernate.cache.spi.support.AbstractReadWriteAccess$Item 
(assert (not (= var3902 null-var1955)))
(define-const var3083 var86 var86-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var1954 (Array Int var1745) arr-var1745-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var553 var1745 (getValue/-1561478506 var3902)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.cache.spi.support.AbstractReadWriteAccess$Item: java.lang.Object getValue()>() 
(declare-const var1954!1 (Array Int var1745))
(assert (not (= var1954!1 null-__Array__Int__var1745__)))
(assert (= (select var1954!1 0) var553)) ; Statement: $r0[0] = $r3 
(define-const var3610 String (String_format/-647569892 var3083 "read-write Item(%s)" var1954!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "read-write Item(%s)", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1745-init=([], java.lang.Object[]), getValue/-1561478506=([org.hibernate.cache.spi.support.AbstractReadWriteAccess$Item], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1955=org.hibernate.cache.spi.support.AbstractReadWriteAccess$Item, var3902=r1, var86=java.util.Locale, var3083=$r2, var1745=java.lang.Object, var1954=$r0, var553=$r3, var3610=$r4}
; {org.hibernate.cache.spi.support.AbstractReadWriteAccess$Item=var1955, r1=var3902, java.util.Locale=var86, $r2=var3083, java.lang.Object=var1745, $r0=var1954, $r3=var553, $r4=var3610}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.cache.spi.support.AbstractReadWriteAccess$Item;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r0 = newarray (java.lang.Object)[1];	$r3 = virtualinvoke r1.<org.hibernate.cache.spi.support.AbstractReadWriteAccess$Item: java.lang.Object getValue()>();	$r0[0] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "read-write Item(%s)", $r0);	return $r4
;block_num 1