(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2162 0)
(declare-sort var3943 0)
(declare-sort var2811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun v/187381314 (var2162) var3943)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun addElement/-1717065458 (var3943 var2811) void)
(declare-fun cast-from-String-to-var2811 (String) var2811)
(declare-const null-var2162 var2162)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2005 var2162) ; Statement: r0 := @this: org.apache.log4j.spi.VectorWriter 
(assert (not (= var2005 null-var2162)))
(declare-const var3768 (Array Int Int)) ; Statement: r2 := @parameter0: char[] 
(assert (not (= var3768 null-__Array__Int__Int__)))
(define-const var1317 var3943 (v/187381314 var2005)) ; Statement: $r3 = r0.<org.apache.log4j.spi.VectorWriter: java.util.Vector v> 
(define-const var1788 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var1788 var3768)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[])>(r2) 

(declare-const var1788!1 String)
(declare-const var3768!1 (Array Int Int))
(assert true)
;(assert (addElement/-1717065458 var1317 (cast-from-String-to-var2811 var1788!1))) ; Statement: virtualinvoke $r3.<java.util.Vector: void addElement(java.lang.Object)>($r1) 

(declare-const var1317!1 var3943)
(declare-const var1788!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {v/187381314=([org.apache.log4j.spi.VectorWriter], java.util.Vector), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void), addElement/-1717065458=([java.util.Vector, java.lang.Object], void), cast-from-String-to-var2811=([java.lang.String], java.lang.Object)}
; {var2162=org.apache.log4j.spi.VectorWriter, var2005=r0, var3768=r2, var3943=java.util.Vector, var1317=$r3, var1788=$r1, var2811=java.lang.Object}
; {org.apache.log4j.spi.VectorWriter=var2162, r0=var2005, r2=var3768, java.util.Vector=var3943, $r3=var1317, $r1=var1788, java.lang.Object=var2811}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @this: org.apache.log4j.spi.VectorWriter;	r2 := @parameter0: char[];	$r3 = r0.<org.apache.log4j.spi.VectorWriter: java.util.Vector v>;	$r1 = new java.lang.String;	specialinvoke $r1.<java.lang.String: void <init>(char[])>(r2);	virtualinvoke $r3.<java.util.Vector: void addElement(java.lang.Object)>($r1);	return
;block_num 1