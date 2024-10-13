(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var939 0)
(declare-sort var459 0)
(declare-sort var986 0)
(declare-sort var1387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun out/-972443259 (var1387) var986)
(declare-fun cast-from-var939-to-var1387 (var939) var1387)
(declare-fun write/654681022 (var986 String) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var939 var939)
(declare-const null-String String)
(declare-const var3247 var939) ; Statement: r0 := @this: org.stringtemplate.v4.NoIndentWriter 
(assert (not (= var3247 null-var939)))
(declare-const var2983 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2983 null-String)))
(define-const var1731 var986 (out/-972443259 (cast-from-var939-to-var1387 var3247))) ; Statement: $r2 = r0.<org.stringtemplate.v4.NoIndentWriter: java.io.Writer out> 
(assert true)
;(assert (write/654681022 var1731 var2983)) ; Statement: virtualinvoke $r2.<java.io.Writer: void write(java.lang.String)>(r1) 

(declare-const var1731!1 var986)
(declare-const var2983!1 String)
(assert true)
(define-const var3410 Int (length/-134980193 var2983!1)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {out/-972443259=([org.stringtemplate.v4.AutoIndentWriter], java.io.Writer), cast-from-var939-to-var1387=([org.stringtemplate.v4.NoIndentWriter], org.stringtemplate.v4.AutoIndentWriter), write/654681022=([java.io.Writer, java.lang.String], void), length/-134980193=([java.lang.String], int)}
; {var939=org.stringtemplate.v4.NoIndentWriter, var3247=r0, var2983=r1, var459=null_type, var986=java.io.Writer, var1387=org.stringtemplate.v4.AutoIndentWriter, var1731=$r2, var3410=$i0}
; {org.stringtemplate.v4.NoIndentWriter=var939, r0=var3247, r1=var2983, null_type=var459, java.io.Writer=var986, org.stringtemplate.v4.AutoIndentWriter=var1387, $r2=var1731, $i0=var3410}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.NoIndentWriter;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.stringtemplate.v4.NoIndentWriter: java.io.Writer out>;	virtualinvoke $r2.<java.io.Writer: void write(java.lang.String)>(r1);	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	return $i0
;block_num 1