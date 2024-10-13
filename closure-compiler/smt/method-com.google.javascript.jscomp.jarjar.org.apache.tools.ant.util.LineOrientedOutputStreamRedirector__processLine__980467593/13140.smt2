(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1320 0)
(declare-sort var980 0)
(declare-sort var2621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stream/-112620571 (var1320) var980)
(declare-fun write/1886568149 (var980 (Array Int Int)) void)
(declare-fun var2621_lineSeparator/-342590142 () String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-const null-var1320 var1320)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var767 var1320) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStreamRedirector 
(assert (not (= var767 null-var1320)))
(declare-const var3277 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var3277 null-__Array__Int__Int__)))
(define-const var275 var980 (stream/-112620571 var767)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStreamRedirector: java.io.OutputStream stream> 
(assert true)
;(assert (write/1886568149 var275 var3277)) ; Statement: virtualinvoke $r2.<java.io.OutputStream: void write(byte[])>(r1) 

(declare-const var275!1 var980)
(declare-const var3277!1 (Array Int Int))
(define-const var700 var980 (stream/-112620571 var767)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStreamRedirector: java.io.OutputStream stream> 
(define-const var322 String var2621_lineSeparator/-342590142) ; Statement: $r4 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(assert true)
(define-const var2966 (Array Int Int) (getBytes/1068683673 var322)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (write/1886568149 var700 var2966)) ; Statement: virtualinvoke $r3.<java.io.OutputStream: void write(byte[])>($r5) 

(declare-const var700!1 var980)
(declare-const var2966!1 (Array Int Int))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {stream/-112620571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStreamRedirector], java.io.OutputStream), write/1886568149=([java.io.OutputStream, byte[]], void), var2621_lineSeparator/-342590142=([], java.lang.String), getBytes/1068683673=([java.lang.String], byte[])}
; {var1320=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStreamRedirector, var767=r0, var3277=r1, var980=java.io.OutputStream, var275=$r2, var700=$r3, var2621=java.lang.System, var322=$r4, var2966=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStreamRedirector=var1320, r0=var767, r1=var3277, java.io.OutputStream=var980, $r2=var275, $r3=var700, java.lang.System=var2621, $r4=var322, $r5=var2966}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStreamRedirector;	r1 := @parameter0: byte[];	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStreamRedirector: java.io.OutputStream stream>;	virtualinvoke $r2.<java.io.OutputStream: void write(byte[])>(r1);	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStreamRedirector: java.io.OutputStream stream>;	$r4 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>();	virtualinvoke $r3.<java.io.OutputStream: void write(byte[])>($r5);	return
;block_num 1