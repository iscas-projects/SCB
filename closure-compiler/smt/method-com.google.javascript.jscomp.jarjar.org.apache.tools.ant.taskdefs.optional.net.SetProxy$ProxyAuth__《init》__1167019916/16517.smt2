(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2387 0)
(declare-sort var1256 0)
(declare-sort var3430 0)
(declare-sort var2620 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-828865033 (var3430) void)
(declare-fun cast-from-var2387-to-var3430 (var2387) var3430)
(declare-fun var2620-init () var2620)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun <init>/395514544 (var2620 String (Array Int Int)) void)
(declare-fun auth/-366412991 (var2387) var2620)
(declare-const null-var2387 var2387)
(declare-const null-String String)
(declare-const var3760 var2387) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy$ProxyAuth 
(assert (not (= var3760 null-var2387)))
(declare-const var994 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var994 null-String)))
(declare-const var3885 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3885 null-String)))
(assert true)
;(assert (<init>/-828865033 (cast-from-var2387-to-var3430 var3760))) ; Statement: specialinvoke r0.<java.net.Authenticator: void <init>()>() 

(declare-const var3760!1 var2387)
(define-const var3765 var2620 var2620-init) ; Statement: $r1 = new java.net.PasswordAuthentication 
(assert true)
(define-const var2906 (Array Int Int) (toCharArray/415275702 var3885)) ; Statement: $r4 = virtualinvoke r3.<java.lang.String: char[] toCharArray()>() 
(assert true)
;(assert (<init>/395514544 var3765 var994 var2906)) ; Statement: specialinvoke $r1.<java.net.PasswordAuthentication: void <init>(java.lang.String,char[])>(r2, $r4) 

(declare-const var3765!1 var2620)
(declare-const var994!1 String)
(declare-const var2906!1 (Array Int Int))
(declare-const var3760!2 var2387)
(assert (not (= var3760!2 null-var2387)))
(assert (= (auth/-366412991 var3760!2) var3765!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy$ProxyAuth: java.net.PasswordAuthentication auth> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-828865033=([java.net.Authenticator], void), cast-from-var2387-to-var3430=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy$ProxyAuth], java.net.Authenticator), var2620-init=([], java.net.PasswordAuthentication), toCharArray/415275702=([java.lang.String], char[]), <init>/395514544=([java.net.PasswordAuthentication, java.lang.String, char[]], void), auth/-366412991=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy$ProxyAuth], java.net.PasswordAuthentication)}
; {var2387=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy$ProxyAuth, var3760=r0, var994=r2, var1256=null_type, var3885=r3, var3430=java.net.Authenticator, var2620=java.net.PasswordAuthentication, var3765=$r1, var2906=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy$ProxyAuth=var2387, r0=var3760, r2=var994, null_type=var1256, r3=var3885, java.net.Authenticator=var3430, java.net.PasswordAuthentication=var2620, $r1=var3765, $r4=var2906}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy$ProxyAuth;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	specialinvoke r0.<java.net.Authenticator: void <init>()>();	$r1 = new java.net.PasswordAuthentication;	$r4 = virtualinvoke r3.<java.lang.String: char[] toCharArray()>();	specialinvoke $r1.<java.net.PasswordAuthentication: void <init>(java.lang.String,char[])>(r2, $r4);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy$ProxyAuth: java.net.PasswordAuthentication auth> = $r1;	return
;block_num 1