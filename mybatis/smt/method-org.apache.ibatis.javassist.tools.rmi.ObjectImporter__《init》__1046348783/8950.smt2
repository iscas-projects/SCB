(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3856 0)
(declare-sort var919 0)
(declare-sort var1860 0)
(declare-sort var2751 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1860) void)
(declare-fun cast-from-var3856-to-var1860 (var3856) var1860)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun endofline/903901612 (var3856) (Array Int Int))
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun lookupCommand/903901612 (var3856) (Array Int Int))
(declare-fun rmiCommand/903901612 (var3856) (Array Int Int))
(declare-fun getCodeBase/1439701523 (var919) var2751)
(declare-fun getHost/1963793670 (var2751) String)
(declare-fun servername/903901612 (var3856) String)
(declare-fun orgServername/903901612 (var3856) String)
(declare-fun getPort/-2026873749 (var2751) Int)
(declare-fun port/903901612 (var3856) Int)
(declare-fun orgPort/903901612 (var3856) Int)
(declare-const null-var3856 var3856)
(declare-const null-var919 var919)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1437 var3856) ; Statement: r0 := @this: org.apache.ibatis.javassist.tools.rmi.ObjectImporter 
(assert (not (= var1437 null-var3856)))
(declare-const var3470 var919) ; Statement: r6 := @parameter0: java.applet.Applet 
(assert (not (= var3470 null-var919)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3856-to-var1860 var1437))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1437!1 var3856)
(define-const var226 (Array Int Int) arr-Int-init) ; Statement: $r1 = newarray (byte)[2] 
(declare-const var226!1 (Array Int Int))
(assert (not (= var226!1 null-__Array__Int__Int__)))
(assert (= (select var226!1 0) 13)) ; Statement: $r1[0] = 13 
(declare-const var226!2 (Array Int Int))
(assert (not (= var226!2 null-__Array__Int__Int__)))
(assert (= (select var226!2 1) 10)) ; Statement: $r1[1] = 10 
(declare-const var1437!2 var3856)
(assert (not (= var1437!2 null-var3856)))
(assert (= (endofline/903901612 var1437!2) var226!2)) ; Statement: r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: byte[] endofline> = $r1 
(define-const var940 String "POST /lookup HTTP/1.0") ; Statement: $r2 = "POST /lookup HTTP/1.0" 
(assert true)
(define-const var2457 (Array Int Int) (getBytes/1068683673 var940)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes()>() 
(declare-const var1437!3 var3856)
(assert (not (= var1437!3 null-var3856)))
(assert (= (lookupCommand/903901612 var1437!3) var2457)) ; Statement: r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: byte[] lookupCommand> = $r3 
(define-const var936 String "POST /rmi HTTP/1.0") ; Statement: $r4 = "POST /rmi HTTP/1.0" 
(assert true)
(define-const var2045 (Array Int Int) (getBytes/1068683673 var936)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>() 
(declare-const var1437!4 var3856)
(assert (not (= var1437!4 null-var3856)))
(assert (= (rmiCommand/903901612 var1437!4) var2045)) ; Statement: r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: byte[] rmiCommand> = $r5 
(assert true)
(define-const var3185 var2751 (getCodeBase/1439701523 var3470)) ; Statement: r7 = virtualinvoke r6.<java.applet.Applet: java.net.URL getCodeBase()>() 
(assert true)
(define-const var1666 String (getHost/1963793670 var3185)) ; Statement: $r8 = virtualinvoke r7.<java.net.URL: java.lang.String getHost()>() 
(declare-const var1437!5 var3856)
(assert (not (= var1437!5 null-var3856)))
(assert (= (servername/903901612 var1437!5) var1666)) ; Statement: r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: java.lang.String servername> = $r8 
(declare-const var1437!6 var3856)
(assert (not (= var1437!6 null-var3856)))
(assert (= (orgServername/903901612 var1437!6) var1666)) ; Statement: r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: java.lang.String orgServername> = $r8 
(assert true)
(define-const var3701 Int (getPort/-2026873749 var3185)) ; Statement: $i0 = virtualinvoke r7.<java.net.URL: int getPort()>() 
(declare-const var1437!7 var3856)
(assert (not (= var1437!7 null-var3856)))
(assert (= (port/903901612 var1437!7) var3701)) ; Statement: r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: int port> = $i0 
(declare-const var1437!8 var3856)
(assert (not (= var1437!8 null-var3856)))
(assert (= (orgPort/903901612 var1437!8) var3701)) ; Statement: r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: int orgPort> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3856-to-var1860=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], java.lang.Object), arr-Int-init=([], byte[]), endofline/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], byte[]), getBytes/1068683673=([java.lang.String], byte[]), lookupCommand/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], byte[]), rmiCommand/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], byte[]), getCodeBase/1439701523=([java.applet.Applet], java.net.URL), getHost/1963793670=([java.net.URL], java.lang.String), servername/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], java.lang.String), orgServername/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], java.lang.String), getPort/-2026873749=([java.net.URL], int), port/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], int), orgPort/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], int)}
; {var3856=org.apache.ibatis.javassist.tools.rmi.ObjectImporter, var1437=r0, var919=java.applet.Applet, var3470=r6, var1860=java.lang.Object, var226=$r1, var940=$r2, var2457=$r3, var936=$r4, var2045=$r5, var2751=java.net.URL, var3185=r7, var1666=$r8, var3701=$i0}
; {org.apache.ibatis.javassist.tools.rmi.ObjectImporter=var3856, r0=var1437, java.applet.Applet=var919, r6=var3470, java.lang.Object=var1860, $r1=var226, $r2=var940, $r3=var2457, $r4=var936, $r5=var2045, java.net.URL=var2751, r7=var3185, $r8=var1666, $i0=var3701}
;seq <java.lang.String: byte[] getBytes()>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 2}
;stmts r0 := @this: org.apache.ibatis.javassist.tools.rmi.ObjectImporter;	r6 := @parameter0: java.applet.Applet;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = newarray (byte)[2];	$r1[0] = 13;	$r1[1] = 10;	r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: byte[] endofline> = $r1;	$r2 = "POST /lookup HTTP/1.0";	$r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes()>();	r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: byte[] lookupCommand> = $r3;	$r4 = "POST /rmi HTTP/1.0";	$r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>();	r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: byte[] rmiCommand> = $r5;	r7 = virtualinvoke r6.<java.applet.Applet: java.net.URL getCodeBase()>();	$r8 = virtualinvoke r7.<java.net.URL: java.lang.String getHost()>();	r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: java.lang.String servername> = $r8;	r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: java.lang.String orgServername> = $r8;	$i0 = virtualinvoke r7.<java.net.URL: int getPort()>();	r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: int port> = $i0;	r0.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: int orgPort> = $i0;	return
;block_num 1