(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3522 0)
(declare-sort var2139 0)
(declare-sort var3369 0)
(declare-sort var2198 0)
(declare-sort var3578 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAbsolutePath/-802773300 (var3522) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun isFile/1016913701 (var3522) Bool)
(declare-fun var3369-init () var3369)
(declare-fun var3578-init () var3578)
(declare-fun <init>/875830710 (var3578 String) void)
(declare-const null-var3522 var3522)
(declare-const null-var2139 var2139)
(declare-const var3522-separatorChar Int)
(declare-const null-var2198 var2198)
(declare-const var1332 var3522) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1332 null-var3522)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3704 var2139) ; Statement: $r10 := @caughtexception 
(assert (not (= var3704 null-var2139)))
(assert true)
(define-const var1187 String (getAbsolutePath/-802773300 var1332)) ; Statement: r12 = virtualinvoke r0.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true) ; Non Conditional
(define-const var3061 Int var3522-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var570 String (replace/1524665721 var1187 var3061 47)) ; Statement: $r11 = virtualinvoke r12.<java.lang.String: java.lang.String replace(char,char)>($c0, 47) 
(define-const var83 String var570) ; Statement: r13 = $r11 
(assert true)
(define-const var3291 Bool (startsWith/-1785782452 var570 "/")) ; Statement: $z0 = virtualinvoke $r11.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r0.<java.io.File: boolean isFile()>() 
(assert (not (= (ite var3291 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3627 Bool (isFile/1016913701 var1332)) ; Statement: $z1 = virtualinvoke r0.<java.io.File: boolean isFile()>() 
 ; Statement: if $z1 != 0 goto $r1 = new java.net.URL 
(assert (not (= (ite var3627 1 0) 0))) ; Cond: $z1 != 0 
(define-const var99 var3369 var3369-init) ; Statement: $r1 = new java.net.URL 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1234 var2198) ; Statement: $r8 := @caughtexception 
(assert (not (= var1234 null-var2198)))
(define-const var1458 var3578 var3578-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var1458 "file")) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("file") 

(declare-const var1458!1 var3578)
(declare-const var734 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getAbsolutePath/-802773300=([java.io.File], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), isFile/1016913701=([java.io.File], boolean), var3369-init=([], java.net.URL), var3578-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3522=java.io.File, var1332=r0, var2139=java.io.IOException, var3704=$r10, var1187=r12, var3061=$c0, var570=$r11, var83=r13, var3291=$z0, var3627=$z1, var3369=java.net.URL, var99=$r1, var2198=java.net.MalformedURLException, var1234=$r8, var3578=java.lang.IllegalArgumentException, var1458=$r9, var734="file"}
; {java.io.File=var3522, r0=var1332, java.io.IOException=var2139, $r10=var3704, r12=var1187, $c0=var3061, $r11=var570, r13=var83, $z0=var3291, $z1=var3627, java.net.URL=var3369, $r1=var99, java.net.MalformedURLException=var2198, $r8=var1234, java.lang.IllegalArgumentException=var3578, $r9=var1458, "file"=var734}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.io.File;	$r10 := @caughtexception;	r12 = virtualinvoke r0.<java.io.File: java.lang.String getAbsolutePath()>();	$c0 = <java.io.File: char separatorChar>;	$r11 = virtualinvoke r12.<java.lang.String: java.lang.String replace(char,char)>($c0, 47);	r13 = $r11;	$z0 = virtualinvoke $r11.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 != 0 goto $z1 = virtualinvoke r0.<java.io.File: boolean isFile()>();	$z1 = virtualinvoke r0.<java.io.File: boolean isFile()>();	if $z1 != 0 goto $r1 = new java.net.URL;	$r1 = new java.net.URL;	$r8 := @caughtexception;	$r9 = new java.lang.IllegalArgumentException;	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("file");	throw $r9
;block_num 6