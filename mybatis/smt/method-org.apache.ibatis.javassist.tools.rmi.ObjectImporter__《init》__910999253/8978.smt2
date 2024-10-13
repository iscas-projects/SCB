(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var108 0)
(declare-sort var3357 0)
(declare-sort var3964 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3964) void)
(declare-fun cast-from-var108-to-var3964 (var108) var3964)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun endofline/903901612 (var108) (Array Int Int))
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun lookupCommand/903901612 (var108) (Array Int Int))
(declare-fun rmiCommand/903901612 (var108) (Array Int Int))
(declare-fun servername/903901612 (var108) String)
(declare-fun orgServername/903901612 (var108) String)
(declare-fun port/903901612 (var108) Int)
(declare-fun orgPort/903901612 (var108) Int)
(declare-const null-var108 var108)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2064 var108) ; Statement: r0 := @this: org.apache.ibatis.javassist.tools.rmi.ObjectImporter 
(assert (not (= var2064 null-var108)))
(declare-const var3999 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var3999 null-String)))
(declare-const var1766 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1766 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var108-to-var3964 var2064))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2064!1 var108)
(define-const var738 (Array Int Int) arr-Int-init) ; Statement: $r1 = newarray (byte)[2] 
(declare-const var738!1 (Array Int Int))
(assert (not (= var738!1 null-__Array__Int__Int__)))
(assert (= (select var738!1 0) 13)) ; Statement: $r1[0] = 13 
(declare-const var738!2 (Array Int Int))
(assert (not (= var738!2 null-__Array__Int__Int__)))
(assert (= (select var738!2 1) 10)) ; Statement: $r1[1] = 10 
(declare-const var2064!2 var108)
(assert (not (= var2064!2 null-var108)))
(assert (= (endofline/903901612 var2064!2) var738!2)) ; Statement: r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: byte[] endofline> = $r1 
(define-const var2630 String "POST /lookup HTTP/1.0") ; Statement: $r2 = "POST /lookup HTTP/1.0" 
(assert true)
(define-const var3761 (Array Int Int) (getBytes/1068683673 var2630)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes()>() 
(declare-const var2064!3 var108)
(assert (not (= var2064!3 null-var108)))
(assert (= (lookupCommand/903901612 var2064!3) var3761)) ; Statement: r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: byte[] lookupCommand> = $r3 
(define-const var2061 String "POST /rmi HTTP/1.0") ; Statement: $r4 = "POST /rmi HTTP/1.0" 
(assert true)
(define-const var3564 (Array Int Int) (getBytes/1068683673 var2061)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>() 
(declare-const var2064!4 var108)
(assert (not (= var2064!4 null-var108)))
(assert (= (rmiCommand/903901612 var2064!4) var3564)) ; Statement: r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: byte[] rmiCommand> = $r5 
(declare-const var2064!5 var108)
(assert (not (= var2064!5 null-var108)))
(assert (= (servername/903901612 var2064!5) var3999)) ; Statement: r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: java.lang.String servername> = r6 
(declare-const var2064!6 var108)
(assert (not (= var2064!6 null-var108)))
(assert (= (orgServername/903901612 var2064!6) var3999)) ; Statement: r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: java.lang.String orgServername> = r6 
(declare-const var2064!7 var108)
(assert (not (= var2064!7 null-var108)))
(assert (= (port/903901612 var2064!7) var1766)) ; Statement: r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: int port> = i0 
(declare-const var2064!8 var108)
(assert (not (= var2064!8 null-var108)))
(assert (= (orgPort/903901612 var2064!8) var1766)) ; Statement: r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: int orgPort> = i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var108-to-var3964=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], java.lang.Object), arr-Int-init=([], byte[]), endofline/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], byte[]), getBytes/1068683673=([java.lang.String], byte[]), lookupCommand/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], byte[]), rmiCommand/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], byte[]), servername/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], java.lang.String), orgServername/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], java.lang.String), port/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], int), orgPort/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], int)}
; {var108=org.apache.ibatis.javassist.tools.rmi.ObjectImporter, var2064=r0, var3999=r6, var3357=null_type, var1766=i0, var3964=java.lang.Object, var738=$r1, var2630=$r2, var3761=$r3, var2061=$r4, var3564=$r5}
; {org.apache.ibatis.javassist.tools.rmi.ObjectImporter=var108, r0=var2064, r6=var3999, null_type=var3357, i0=var1766, java.lang.Object=var3964, $r1=var738, $r2=var2630, $r3=var3761, $r4=var2061, $r5=var3564}
;seq <java.lang.String: byte[] getBytes()>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 2}
;stmts r0 := @this: org.apache.ibatis.javassist.tools.rmi.ObjectImporter;	r6 := @parameter0: java.lang.String;	i0 := @parameter1: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = newarray (byte)[2];	$r1[0] = 13;	$r1[1] = 10;	r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: byte[] endofline> = $r1;	$r2 = "POST /lookup HTTP/1.0";	$r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes()>();	r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: byte[] lookupCommand> = $r3;	$r4 = "POST /rmi HTTP/1.0";	$r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>();	r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: byte[] rmiCommand> = $r5;	r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: java.lang.String servername> = r6;	r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: java.lang.String orgServername> = r6;	r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: int port> = i0;	r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: int orgPort> = i0;	return
;block_num 1