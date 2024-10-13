(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2019 0)
(declare-sort var3660 0)
(declare-sort var2905 0)
(declare-sort var1728 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3660-init () var3660)
(declare-fun data/-934077959 (var2019) String)
(declare-fun getBytes/-163691139 (String var2905) (Array Int Int))
(declare-fun <init>/1208500544 (var3660 (Array Int Int)) void)
(declare-const null-var2019 var2019)
(declare-const var1728-ISO_8859_1 var2905)
(declare-const var1869 var2019) ; Statement: r1 := @this: org.hibernate.dialect.AbstractHANADialect$MaterializedNClob 
(assert (not (= var1869 null-var2019)))
(define-const var2430 var3660 var3660-init) ; Statement: $r0 = new java.io.ByteArrayInputStream 
(define-const var2296 String (data/-934077959 var1869)) ; Statement: $r3 = r1.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data> 
(define-const var2449 var2905 var1728-ISO_8859_1) ; Statement: $r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1> 
(assert true)
(define-const var3561 (Array Int Int) (getBytes/-163691139 var2296 var2449)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r2) 
(assert true)
;(assert (<init>/1208500544 var2430 var3561)) ; Statement: specialinvoke $r0.<java.io.ByteArrayInputStream: void <init>(byte[])>($r4) 

(declare-const var2430!1 var3660)
(declare-const var3561!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3660-init=([], java.io.ByteArrayInputStream), data/-934077959=([org.hibernate.dialect.AbstractHANADialect$MaterializedNClob], java.lang.String), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), <init>/1208500544=([java.io.ByteArrayInputStream, byte[]], void)}
; {var2019=org.hibernate.dialect.AbstractHANADialect$MaterializedNClob, var1869=r1, var3660=java.io.ByteArrayInputStream, var2430=$r0, var2296=$r3, var2905=java.nio.charset.Charset, var1728=java.nio.charset.StandardCharsets, var2449=$r2, var3561=$r4}
; {org.hibernate.dialect.AbstractHANADialect$MaterializedNClob=var2019, r1=var1869, java.io.ByteArrayInputStream=var3660, $r0=var2430, $r3=var2296, java.nio.charset.Charset=var2905, java.nio.charset.StandardCharsets=var1728, $r2=var2449, $r4=var3561}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r1 := @this: org.hibernate.dialect.AbstractHANADialect$MaterializedNClob;	$r0 = new java.io.ByteArrayInputStream;	$r3 = r1.<org.hibernate.dialect.AbstractHANADialect$MaterializedNClob: java.lang.String data>;	$r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1>;	$r4 = virtualinvoke $r3.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r2);	specialinvoke $r0.<java.io.ByteArrayInputStream: void <init>(byte[])>($r4);	return $r0
;block_num 1