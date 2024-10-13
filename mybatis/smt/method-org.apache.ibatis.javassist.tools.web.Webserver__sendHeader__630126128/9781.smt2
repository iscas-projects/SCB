(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1910 0)
(declare-sort var1041 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun write/1886568149 (var1041 (Array Int Int)) void)
(declare-fun Int_toString/1077016676 (Int) String)
(declare-const null-var1910 var1910)
(declare-const null-var1041 var1041)
(declare-const null-Int Int)
(declare-const var1910-endofline (Array Int Int))
(declare-const var558 var1910) ; Statement: r19 := @this: org.apache.ibatis.javassist.tools.web.Webserver 
(assert (not (= var558 null-var1910)))
(declare-const var1907 var1041) ; Statement: r0 := @parameter0: java.io.OutputStream 
(assert (not (= var1907 null-var1041)))
(declare-const var1628 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var1628 null-Int)))
(declare-const var3054 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3054 null-Int)))
(define-const var1745 String "HTTP/1.0 200 OK") ; Statement: $r1 = "HTTP/1.0 200 OK" 
(assert true)
(define-const var2094 (Array Int Int) (getBytes/1068683673 var1745)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (write/1886568149 var1907 var2094)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r2) 

(declare-const var1907!1 var1041)
(declare-const var2094!1 (Array Int Int))
(define-const var3714 (Array Int Int) var1910-endofline) ; Statement: $r3 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline> 
(assert true)
;(assert (write/1886568149 var1907!1 var3714)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r3) 

(declare-const var1907!2 var1041)
(declare-const var3714!1 (Array Int Int))
(define-const var1872 String "Content-Length: ") ; Statement: $r4 = "Content-Length: " 
(assert true)
(define-const var655 (Array Int Int) (getBytes/1068683673 var1872)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (write/1886568149 var1907!2 var655)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r5) 

(declare-const var1907!3 var1041)
(declare-const var655!1 (Array Int Int))
(define-const var2487 String (Int_toString/1077016676 var1628)) ; Statement: $r6 = staticinvoke <java.lang.Long: java.lang.String toString(long)>(l0) 
(assert true)
(define-const var273 (Array Int Int) (getBytes/1068683673 var2487)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (write/1886568149 var1907!3 var273)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r7) 

(declare-const var1907!4 var1041)
(declare-const var273!1 (Array Int Int))
(define-const var526 (Array Int Int) var1910-endofline) ; Statement: $r8 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline> 
(assert true)
;(assert (write/1886568149 var1907!4 var526)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r8) 

(declare-const var1907!5 var1041)
(declare-const var526!1 (Array Int Int))
 ; Statement: if i1 != 2 goto (branch) 
(assert (not (not (= var3054 2)))) ; Negate: Cond: i1 != 2  
(define-const var1812 String "Content-Type: application/octet-stream") ; Statement: $r17 = "Content-Type: application/octet-stream" 
(assert true)
(define-const var3845 (Array Int Int) (getBytes/1068683673 var1812)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (write/1886568149 var1907!5 var3845)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r18) 

(declare-const var1907!6 var1041)
(declare-const var3845!1 (Array Int Int))
 ; Statement: goto [?= $r20 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>] 
(assert true) ; Non Conditional
(define-const var1276 (Array Int Int) var1910-endofline) ; Statement: $r20 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline> 
(assert true)
;(assert (write/1886568149 var1907!6 var1276)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r20) 

(declare-const var1907!7 var1041)
(declare-const var1276!1 (Array Int Int))
(define-const var3219 (Array Int Int) var1910-endofline) ; Statement: $r21 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline> 
(assert true)
;(assert (write/1886568149 var1907!7 var3219)) ; Statement: virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r21) 

(declare-const var1907!8 var1041)
(declare-const var3219!1 (Array Int Int))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/1068683673=([java.lang.String], byte[]), write/1886568149=([java.io.OutputStream, byte[]], void), Int_toString/1077016676=([long], java.lang.String)}
; {var1910=org.apache.ibatis.javassist.tools.web.Webserver, var558=r19, var1041=java.io.OutputStream, var1907=r0, var1628=l0, var3054=i1, var1745=$r1, var2094=$r2, var3714=$r3, var1872=$r4, var655=$r5, var2487=$r6, var273=$r7, var526=$r8, var1812=$r17, var3845=$r18, var1276=$r20, var3219=$r21}
; {org.apache.ibatis.javassist.tools.web.Webserver=var1910, r19=var558, java.io.OutputStream=var1041, r0=var1907, l0=var1628, i1=var3054, $r1=var1745, $r2=var2094, $r3=var3714, $r4=var1872, $r5=var655, $r6=var2487, $r7=var273, $r8=var526, $r17=var1812, $r18=var3845, $r20=var1276, $r21=var3219}
;seq <java.lang.String: byte[] getBytes()>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Long: java.lang.String toString(long)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 4}
;stmts r19 := @this: org.apache.ibatis.javassist.tools.web.Webserver;	r0 := @parameter0: java.io.OutputStream;	l0 := @parameter1: long;	i1 := @parameter2: int;	$r1 = "HTTP/1.0 200 OK";	$r2 = virtualinvoke $r1.<java.lang.String: byte[] getBytes()>();	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r2);	$r3 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>;	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r3);	$r4 = "Content-Length: ";	$r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes()>();	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r5);	$r6 = staticinvoke <java.lang.Long: java.lang.String toString(long)>(l0);	$r7 = virtualinvoke $r6.<java.lang.String: byte[] getBytes()>();	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r7);	$r8 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>;	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r8);	if i1 != 2 goto (branch);	$r17 = "Content-Type: application/octet-stream";	$r18 = virtualinvoke $r17.<java.lang.String: byte[] getBytes()>();	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r18);	goto [?= $r20 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>];	$r20 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>;	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r20);	$r21 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>;	virtualinvoke r0.<java.io.OutputStream: void write(byte[])>($r21);	return
;block_num 3