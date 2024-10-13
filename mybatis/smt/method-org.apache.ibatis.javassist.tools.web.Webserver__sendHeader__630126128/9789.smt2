(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3110 0)
(declare-sort var1657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun write/1886568149 (var1657 (Array Int Int)) void)
(declare-fun Int_toString/1077016676 (Int) String)
(declare-const null-var3110 var3110)
(declare-const null-var1657 var1657)
(declare-const null-Int Int)
(declare-const var3110-endofline (Array Int Int))
(declare-const var2916 var3110) ; Statement: r19 := @this: org.apache.ibatis.javassist.tools.web.Webserver 
(assert (not (= var2916 null-var3110)))
(declare-const var1097 var1657) ; Statement: r0 := @parameter0: java.io.OutputStream 
(assert (not (= var1097 null-var1657)))
(declare-const var535 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var535 null-Int)))
(declare-const var2691 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2691 null-Int)))
(define-const var3597 String "HTTP/1.0 200 OK") ; Statement: $r1 = "HTTP/1.0 200 OK" 
(assert true)
(define-const var3762 (Array Int Int) (getBytes/1068683673 var3597)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (write/1886568149 var1097 var3762)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r2) 

(declare-const var1097!1 var1657)
(declare-const var3762!1 (Array Int Int))
(define-const var1718 (Array Int Int) var3110-endofline) ; Statement: $r3 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline> 
(assert true)
;(assert (write/1886568149 var1097!1 var1718)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r3) 

(declare-const var1097!2 var1657)
(declare-const var1718!1 (Array Int Int))
(define-const var1180 String "Content-Length: ") ; Statement: $r4 = "Content-Length: " 
(assert true)
(define-const var791 (Array Int Int) (getBytes/1068683673 var1180)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (write/1886568149 var1097!2 var791)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r5) 

(declare-const var1097!3 var1657)
(declare-const var791!1 (Array Int Int))
(define-const var167 String (Int_toString/1077016676 var535)) ; Statement: $r6 = staticinvoke <java.lang.Long: java.lang.String toString(long)>(l0) 
(assert true)
(define-const var2227 (Array Int Int) (getBytes/1068683673 var167)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (write/1886568149 var1097!3 var2227)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r7) 

(declare-const var1097!4 var1657)
(declare-const var2227!1 (Array Int Int))
(define-const var3199 (Array Int Int) var3110-endofline) ; Statement: $r8 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline> 
(assert true)
;(assert (write/1886568149 var1097!4 var3199)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r8) 

(declare-const var1097!5 var1657)
(declare-const var3199!1 (Array Int Int))
 ; Statement: if i1 != 2 goto (branch) 
(assert (not (= var2691 2))) ; Cond: i1 != 2 
 ; Statement: if i1 != 1 goto (branch) 
(assert (not (= var2691 1))) ; Cond: i1 != 1 
 ; Statement: if i1 != 3 goto (branch) 
(assert (not (not (= var2691 3)))) ; Negate: Cond: i1 != 3  
(define-const var1262 String "Content-Type: image/gif") ; Statement: $r13 = "Content-Type: image/gif" 
(assert true)
(define-const var2825 (Array Int Int) (getBytes/1068683673 var1262)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (write/1886568149 var1097!5 var2825)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r14) 

(declare-const var1097!6 var1657)
(declare-const var2825!1 (Array Int Int))
 ; Statement: goto [?= $r20 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>] 
(assert true) ; Non Conditional
(define-const var2849 (Array Int Int) var3110-endofline) ; Statement: $r20 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline> 
(assert true)
;(assert (write/1886568149 var1097!6 var2849)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r20) 

(declare-const var1097!7 var1657)
(declare-const var2849!1 (Array Int Int))
(define-const var2529 (Array Int Int) var3110-endofline) ; Statement: $r21 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline> 
(assert true)
;(assert (write/1886568149 var1097!7 var2529)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r21) 

(declare-const var1097!8 var1657)
(declare-const var2529!1 (Array Int Int))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/1068683673=([java.lang.String], byte[]), write/1886568149=([java.io.OutputStream, byte[]], void), Int_toString/1077016676=([long], java.lang.String)}
; {var3110=org.apache.ibatis.javassist.tools.web.Webserver, var2916=r19, var1657=java.io.OutputStream, var1097=r0, var535=l0, var2691=i1, var3597=$r1, var3762=$r2, var1718=$r3, var1180=$r4, var791=$r5, var167=$r6, var2227=$r7, var3199=$r8, var1262=$r13, var2825=$r14, var2849=$r20, var2529=$r21}
; {org.apache.ibatis.javassist.tools.web.Webserver=var3110, r19=var2916, java.io.OutputStream=var1657, r0=var1097, l0=var535, i1=var2691, $r1=var3597, $r2=var3762, $r3=var1718, $r4=var1180, $r5=var791, $r6=var167, $r7=var2227, $r8=var3199, $r13=var1262, $r14=var2825, $r20=var2849, $r21=var2529}
;seq <java.lang.String: byte[] getBytes()>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Long: java.lang.String toString(long)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 4}
;stmts r19 := @this: org.apache.ibatis.javassist.tools.web.Webserver;	r0 := @parameter0: java.io.OutputStream;	l0 := @parameter1: long;	i1 := @parameter2: int;	$r1 = "HTTP/1.0 200 OK";	$r2 = virtualinvoke $r1.<java.lang.String: byte[] getBytes()>();	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r2);	$r3 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>;	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r3);	$r4 = "Content-Length: ";	$r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>();	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r5);	$r6 = staticinvoke <java.lang.Long: java.lang.String toString(long)>(l0);	$r7 = virtualinvoke $r6.<java.lang.String: byte[] getBytes()>();	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r7);	$r8 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>;	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r8);	if i1 != 2 goto (branch);	if i1 != 1 goto (branch);	if i1 != 3 goto (branch);	$r13 = "Content-Type: image/gif";	$r14 = virtualinvoke $r13.<java.lang.String: byte[] getBytes()>();	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r14);	goto [?= $r20 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>];	$r20 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>;	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r20);	$r21 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>;	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r21);	return
;block_num 5