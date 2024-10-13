(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var877 0)
(declare-sort var3192 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/285372278 (var877) String)
(declare-fun cast-from-var3192-to-var877 (var3192) var877)
(declare-const null-var877 var877)
(declare-const null-var3192 var3192)
(declare-const var1194 var877) ; Statement: r1 := @this: org.apache.tomcat.util.buf.StringCache$CharEntry 
(assert (not (= var1194 null-var877)))
(declare-const var1493 var3192) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1493 null-var3192)))
(define-const var328 Bool false) ; Statement: $z0 = r0 instanceof org.apache.tomcat.util.buf.StringCache$CharEntry 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var328 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3708 String (value/285372278 var1194)) ; Statement: $r4 = r1.<org.apache.tomcat.util.buf.StringCache$CharEntry: java.lang.String value> 
(define-const var1176 var877 (cast-from-var3192-to-var877 var1493)) ; Statement: $r2 = (org.apache.tomcat.util.buf.StringCache$CharEntry) r0 
(define-const var2207 String (value/285372278 var1176)) ; Statement: $r3 = $r2.<org.apache.tomcat.util.buf.StringCache$CharEntry: java.lang.String value> 
(assert true)
(define-const var2234 Bool (= var3708 var2207)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {value/285372278=([org.apache.tomcat.util.buf.StringCache$CharEntry], java.lang.String), cast-from-var3192-to-var877=([java.lang.Object], org.apache.tomcat.util.buf.StringCache$CharEntry)}
; {var877=org.apache.tomcat.util.buf.StringCache$CharEntry, var1194=r1, var3192=java.lang.Object, var1493=r0, var328=$z0, var3708=$r4, var1176=$r2, var2207=$r3, var2234=$z1}
; {org.apache.tomcat.util.buf.StringCache$CharEntry=var877, r1=var1194, java.lang.Object=var3192, r0=var1493, $z0=var328, $r4=var3708, $r2=var1176, $r3=var2207, $z1=var2234}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.tomcat.util.buf.StringCache$CharEntry;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof org.apache.tomcat.util.buf.StringCache$CharEntry;	if $z0 == 0 goto return 0;	$r4 = r1.<org.apache.tomcat.util.buf.StringCache$CharEntry: java.lang.String value>;	$r2 = (org.apache.tomcat.util.buf.StringCache$CharEntry) r0;	$r3 = $r2.<org.apache.tomcat.util.buf.StringCache$CharEntry: java.lang.String value>;	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	return $z1
;block_num 2