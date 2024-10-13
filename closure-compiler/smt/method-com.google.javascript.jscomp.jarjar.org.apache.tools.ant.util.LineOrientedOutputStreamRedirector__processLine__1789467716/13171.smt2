(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var677 0)
(declare-sort var590 0)
(declare-sort var3870 0)
(declare-sort var620 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stream/-112620571 (var677) var3870)
(declare-fun arr-var620-init () (Array Int var620))
(declare-fun cast-from-String-to-var620 (String) var620)
(declare-fun String_format/1339386452 (String (Array Int var620)) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun write/1886568149 (var3870 (Array Int Int)) void)
(declare-const null-var677 var677)
(declare-const null-String String)
(declare-const null-__Array__Int__var620__ (Array Int var620))
(declare-const var1626 var677) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStreamRedirector 
(assert (not (= var1626 null-var677)))
(declare-const var1223 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1223 null-String)))
(define-const var120 var3870 (stream/-112620571 var1626)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStreamRedirector: java.io.OutputStream stream> 
(define-const var1814 (Array Int var620) arr-var620-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var1814!1 (Array Int var620))
(assert (not (= var1814!1 null-__Array__Int__var620__)))
(assert (= (select var1814!1 0) (cast-from-String-to-var620 var1223))) ; Statement: $r1[0] = r2 
(define-const var574 String (String_format/1339386452 "%s%n" var1814!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s%n", $r1) 
(assert true)
(define-const var2392 (Array Int Int) (getBytes/1068683673 var574)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (write/1886568149 var120 var2392)) ; Statement: virtualinvoke $r3.<java.io.OutputStream: void write(byte[])>($r5) 

(declare-const var120!1 var3870)
(declare-const var2392!1 (Array Int Int))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {stream/-112620571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStreamRedirector], java.io.OutputStream), arr-var620-init=([], java.lang.Object[]), cast-from-String-to-var620=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), write/1886568149=([java.io.OutputStream, byte[]], void)}
; {var677=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStreamRedirector, var1626=r0, var1223=r2, var590=null_type, var3870=java.io.OutputStream, var120=$r3, var620=java.lang.Object, var1814=$r1, var574=$r4, var2392=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStreamRedirector=var677, r0=var1626, r2=var1223, null_type=var590, java.io.OutputStream=var3870, $r3=var120, java.lang.Object=var620, $r1=var1814, $r4=var574, $r5=var2392}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStreamRedirector;	r2 := @parameter0: java.lang.String;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStreamRedirector: java.io.OutputStream stream>;	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s%n", $r1);	$r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>();	virtualinvoke $r3.<java.io.OutputStream: void write(byte[])>($r5);	return
;block_num 1