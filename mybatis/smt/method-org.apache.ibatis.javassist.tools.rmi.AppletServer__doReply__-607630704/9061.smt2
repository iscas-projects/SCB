(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2862 0)
(declare-sort var953 0)
(declare-sort var2572 0)
(declare-sort var2150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun processRMI/-1695505465 (var2862 var953 var2572) void)
(declare-const null-var2862 var2862)
(declare-const null-var953 var953)
(declare-const null-var2572 var2572)
(declare-const null-String String)
(declare-const var1655 var2862) ; Statement: r1 := @this: org.apache.ibatis.javassist.tools.rmi.AppletServer 
(assert (not (= var1655 null-var2862)))
(declare-const var2845 var953) ; Statement: r2 := @parameter0: java.io.InputStream 
(assert (not (= var2845 null-var953)))
(declare-const var3727 var2572) ; Statement: r3 := @parameter1: java.io.OutputStream 
(assert (not (= var3727 null-var2572)))
(declare-const var601 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var601 null-String)))
(assert true)
(define-const var159 Bool (startsWith/-1785782452 var601 "POST /rmi ")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("POST /rmi ") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("POST /lookup ") 
(assert (not (= (ite var159 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (processRMI/-1695505465 var1655 var2845 var3727)) ; Statement: specialinvoke r1.<org.apache.ibatis.javassist.tools.rmi.AppletServer: void processRMI(java.io.InputStream,java.io.OutputStream)>(r2, r3) 

(declare-const var1655!1 var2862)
(declare-const var2845!1 var953)
(declare-const var3727!1 var2572)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), processRMI/-1695505465=([org.apache.ibatis.javassist.tools.rmi.AppletServer, java.io.InputStream, java.io.OutputStream], void)}
; {var2862=org.apache.ibatis.javassist.tools.rmi.AppletServer, var1655=r1, var953=java.io.InputStream, var2845=r2, var2572=java.io.OutputStream, var3727=r3, var601=r0, var2150=null_type, var159=$z0}
; {org.apache.ibatis.javassist.tools.rmi.AppletServer=var2862, r1=var1655, java.io.InputStream=var953, r2=var2845, java.io.OutputStream=var2572, r3=var3727, r0=var601, null_type=var2150, $z0=var159}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.tools.rmi.AppletServer;	r2 := @parameter0: java.io.InputStream;	r3 := @parameter1: java.io.OutputStream;	r0 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("POST /rmi ");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("POST /lookup ");	specialinvoke r1.<org.apache.ibatis.javassist.tools.rmi.AppletServer: void processRMI(java.io.InputStream,java.io.OutputStream)>(r2, r3);	goto [?= return];	return
;block_num 3