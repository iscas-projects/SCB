(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var881 0)
(declare-sort var3389 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun write/1886568149 (var3389 (Array Int Int)) void)
(declare-fun Int_toString/1077016676 (Int) String)
(declare-const null-var881 var881)
(declare-const null-var3389 var3389)
(declare-const null-Int Int)
(declare-const var881-endofline (Array Int Int))
(declare-const var3695 var881) ; Statement: r19 := @this: org.apache.ibatis.javassist.tools.web.Webserver 
(assert (not (= var3695 null-var881)))
(declare-const var2617 var3389) ; Statement: r0 := @parameter0: java.io.OutputStream 
(assert (not (= var2617 null-var3389)))
(declare-const var3677 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var3677 null-Int)))
(declare-const var1119 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1119 null-Int)))
(define-const var1894 String "HTTP/1.0 200 OK") ; Statement: $r1 = "HTTP/1.0 200 OK" 
(assert true)
(define-const var1095 (Array Int Int) (getBytes/1068683673 var1894)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (write/1886568149 var2617 var1095)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r2) 

(declare-const var2617!1 var3389)
(declare-const var1095!1 (Array Int Int))
(define-const var3105 (Array Int Int) var881-endofline) ; Statement: $r3 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline> 
(assert true)
;(assert (write/1886568149 var2617!1 var3105)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r3) 

(declare-const var2617!2 var3389)
(declare-const var3105!1 (Array Int Int))
(define-const var1407 String "Content-Length: ") ; Statement: $r4 = "Content-Length: " 
(assert true)
(define-const var1892 (Array Int Int) (getBytes/1068683673 var1407)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (write/1886568149 var2617!2 var1892)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r5) 

(declare-const var2617!3 var3389)
(declare-const var1892!1 (Array Int Int))
(define-const var3262 String (Int_toString/1077016676 var3677)) ; Statement: $r6 = staticinvoke <java.lang.Long: java.lang.String toString(long)>(l0) 
(assert true)
(define-const var2307 (Array Int Int) (getBytes/1068683673 var3262)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (write/1886568149 var2617!3 var2307)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r7) 

(declare-const var2617!4 var3389)
(declare-const var2307!1 (Array Int Int))
(define-const var2555 (Array Int Int) var881-endofline) ; Statement: $r8 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline> 
(assert true)
;(assert (write/1886568149 var2617!4 var2555)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r8) 

(declare-const var2617!5 var3389)
(declare-const var2555!1 (Array Int Int))
 ; Statement: if i1 != 2 goto (branch) 
(assert (not (= var1119 2))) ; Cond: i1 != 2 
 ; Statement: if i1 != 1 goto (branch) 
(assert (not (not (= var1119 1)))) ; Negate: Cond: i1 != 1  
(define-const var1464 String "Content-Type: text/html") ; Statement: $r15 = "Content-Type: text/html" 
(assert true)
(define-const var448 (Array Int Int) (getBytes/1068683673 var1464)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (write/1886568149 var2617!5 var448)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r16) 

(declare-const var2617!6 var3389)
(declare-const var448!1 (Array Int Int))
 ; Statement: goto [?= $r20 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>] 
(assert true) ; Non Conditional
(define-const var3372 (Array Int Int) var881-endofline) ; Statement: $r20 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline> 
(assert true)
;(assert (write/1886568149 var2617!6 var3372)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r20) 

(declare-const var2617!7 var3389)
(declare-const var3372!1 (Array Int Int))
(define-const var2065 (Array Int Int) var881-endofline) ; Statement: $r21 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline> 
(assert true)
;(assert (write/1886568149 var2617!7 var2065)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r21) 

(declare-const var2617!8 var3389)
(declare-const var2065!1 (Array Int Int))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/1068683673=([java.lang.String], byte[]), write/1886568149=([java.io.OutputStream, byte[]], void), Int_toString/1077016676=([long], java.lang.String)}
; {var881=org.apache.ibatis.javassist.tools.web.Webserver, var3695=r19, var3389=java.io.OutputStream, var2617=r0, var3677=l0, var1119=i1, var1894=$r1, var1095=$r2, var3105=$r3, var1407=$r4, var1892=$r5, var3262=$r6, var2307=$r7, var2555=$r8, var1464=$r15, var448=$r16, var3372=$r20, var2065=$r21}
; {org.apache.ibatis.javassist.tools.web.Webserver=var881, r19=var3695, java.io.OutputStream=var3389, r0=var2617, l0=var3677, i1=var1119, $r1=var1894, $r2=var1095, $r3=var3105, $r4=var1407, $r5=var1892, $r6=var3262, $r7=var2307, $r8=var2555, $r15=var1464, $r16=var448, $r20=var3372, $r21=var2065}
;seq <java.lang.String: byte[] getBytes()>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Long: java.lang.String toString(long)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 4}
;stmts r19 := @this: org.apache.ibatis.javassist.tools.web.Webserver;	r0 := @parameter0: java.io.OutputStream;	l0 := @parameter1: long;	i1 := @parameter2: int;	$r1 = "HTTP/1.0 200 OK";	$r2 = virtualinvoke $r1.<java.lang.String: byte[] getBytes()>();	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r2);	$r3 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>;	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r3);	$r4 = "Content-Length: ";	$r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>();	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r5);	$r6 = staticinvoke <java.lang.Long: java.lang.String toString(long)>(l0);	$r7 = virtualinvoke $r6.<java.lang.String: byte[] getBytes()>();	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r7);	$r8 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>;	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r8);	if i1 != 2 goto (branch);	if i1 != 1 goto (branch);	$r15 = "Content-Type: text/html";	$r16 = virtualinvoke $r15.<java.lang.String: byte[] getBytes()>();	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r16);	goto [?= $r20 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>];	$r20 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>;	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r20);	$r21 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>;	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r21);	return
;block_num 4