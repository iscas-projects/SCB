(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3937 0)
(declare-sort var881 0)
(declare-sort var737 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1273662289 (var737) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logging2/-690598641 (var3937 String) void)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun write/1886568149 (var881 (Array Int Int)) void)
(declare-const null-var3937 var3937)
(declare-const null-var881 var881)
(declare-const null-var737 var737)
(declare-const var3937-endofline (Array Int Int))
(declare-const var1108 var3937) ; Statement: r0 := @this: org.apache.ibatis.javassist.tools.web.Webserver 
(assert (not (= var1108 null-var3937)))
(declare-const var3782 var881) ; Statement: r7 := @parameter0: java.io.OutputStream 
(assert (not (= var3782 null-var881)))
(declare-const var3680 var737) ; Statement: r2 := @parameter1: org.apache.ibatis.javassist.tools.web.BadHttpRequest 
(assert (not (= var3680 null-var737)))
(define-const var2774 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2774)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2774!1 String)
(assert (= var2774!1 ""))
(assert true)
(define-const var1174 String (append/672562846 var2774!1 "bad request: ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad request: ") 
(declare-const var2774!2 String)
(assert (= var2774!2 (str.++ var2774!1 "bad request: ")))
(assert true)
(define-const var2107 String (toString/-1273662289 var3680)) ; Statement: $r3 = virtualinvoke r2.<org.apache.ibatis.javassist.tools.web.BadHttpRequest: java.lang.String toString()>() 
(assert true)
(define-const var2158 String (append/672562846 var1174 var2107)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1174!1 String)
(assert (= var1174!1 (str.++ var1174 var2107)))
(assert true)
(define-const var3365 String (toString/-2075883882 var2158)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (logging2/-690598641 var1108 var3365)) ; Statement: virtualinvoke r0.<org.apache.ibatis.javassist.tools.web.Webserver: void logging2(java.lang.String)>($r6) 

(declare-const var1108!1 var3937)
(declare-const var3365!1 String)
(define-const var2673 String "HTTP/1.0 400 Bad Request") ; Statement: $r8 = "HTTP/1.0 400 Bad Request" 
(assert true)
(define-const var2363 (Array Int Int) (getBytes/1068683673 var2673)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (write/1886568149 var3782 var2363)) ; Statement: virtualinvoke r7.<java.io.OutputStream: void write(byte[])>($r9) 

(declare-const var3782!1 var881)
(declare-const var2363!1 (Array Int Int))
(define-const var2754 (Array Int Int) var3937-endofline) ; Statement: $r10 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline> 
(assert true)
;(assert (write/1886568149 var3782!1 var2754)) ; Statement: virtualinvoke r7.<java.io.OutputStream: void write(byte[])>($r10) 

(declare-const var3782!2 var881)
(declare-const var2754!1 (Array Int Int))
(define-const var1536 (Array Int Int) var3937-endofline) ; Statement: $r11 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline> 
(assert true)
;(assert (write/1886568149 var3782!2 var1536)) ; Statement: virtualinvoke r7.<java.io.OutputStream: void write(byte[])>($r11) 

(declare-const var3782!3 var881)
(declare-const var1536!1 (Array Int Int))
(define-const var53 String "<H1>Bad Request</H1>") ; Statement: $r12 = "<H1>Bad Request</H1>" 
(assert true)
(define-const var2939 (Array Int Int) (getBytes/1068683673 var53)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.String: byte[] getBytes()>() 
(assert true)
;(assert (write/1886568149 var3782!3 var2939)) ; Statement: virtualinvoke r7.<java.io.OutputStream: void write(byte[])>($r13) 

(declare-const var3782!4 var881)
(declare-const var2939!1 (Array Int Int))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1273662289=([org.apache.ibatis.javassist.tools.web.BadHttpRequest], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logging2/-690598641=([org.apache.ibatis.javassist.tools.web.Webserver, java.lang.String], void), getBytes/1068683673=([java.lang.String], byte[]), write/1886568149=([java.io.OutputStream, byte[]], void)}
; {var3937=org.apache.ibatis.javassist.tools.web.Webserver, var1108=r0, var881=java.io.OutputStream, var3782=r7, var737=org.apache.ibatis.javassist.tools.web.BadHttpRequest, var3680=r2, var2774=$r1, var1174=$r4, var2107=$r3, var2158=$r5, var3365=$r6, var2673=$r8, var2363=$r9, var2754=$r10, var1536=$r11, var53=$r12, var2939=$r13}
; {org.apache.ibatis.javassist.tools.web.Webserver=var3937, r0=var1108, java.io.OutputStream=var881, r7=var3782, org.apache.ibatis.javassist.tools.web.BadHttpRequest=var737, r2=var3680, $r1=var2774, $r4=var1174, $r3=var2107, $r5=var2158, $r6=var3365, $r8=var2673, $r9=var2363, $r10=var2754, $r11=var1536, $r12=var53, $r13=var2939}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.apache.ibatis.javassist.tools.web.BadHttpRequest: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: byte[] getBytes()>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: byte[] getBytes()>": 2}
;stmts r0 := @this: org.apache.ibatis.javassist.tools.web.Webserver;	r7 := @parameter0: java.io.OutputStream;	r2 := @parameter1: org.apache.ibatis.javassist.tools.web.BadHttpRequest;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad request: ");	$r3 = virtualinvoke r2.<org.apache.ibatis.javassist.tools.web.BadHttpRequest: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.apache.ibatis.javassist.tools.web.Webserver: void logging2(java.lang.String)>($r6);	$r8 = "HTTP/1.0 400 Bad Request";	$r9 = virtualinvoke $r8.<java.lang.String: byte[] getBytes()>();	virtualinvoke r7.<java.io.OutputStream: void write(byte[])>($r9);	$r10 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>;	virtualinvoke r7.<java.io.OutputStream: void write(byte[])>($r10);	$r11 = <org.apache.ibatis.javassist.tools.web.Webserver: byte[] endofline>;	virtualinvoke r7.<java.io.OutputStream: void write(byte[])>($r11);	$r12 = "<H1>Bad Request</H1>";	$r13 = virtualinvoke $r12.<java.lang.String: byte[] getBytes()>();	virtualinvoke r7.<java.io.OutputStream: void write(byte[])>($r13);	return
;block_num 1