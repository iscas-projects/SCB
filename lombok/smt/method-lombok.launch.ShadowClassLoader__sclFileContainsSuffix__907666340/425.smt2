(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1783 0)
(declare-sort var743 0)
(declare-sort var1979 0)
(declare-sort var1999 0)
(declare-sort var3286 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1979-init () var1979)
(declare-fun var1999-init () var1999)
(declare-fun <init>/630241661 (var1999 var1783 String) void)
(declare-fun <init>/30097470 (var1979 var3286) void)
(declare-fun cast-from-var1999-to-var3286 (var1999) var3286)
(declare-fun readLine/150542008 (var1979) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1783 var1783)
(declare-const null-String String)
(declare-const var2202 var1783) ; Statement: r2 := @parameter0: java.io.InputStream 
(assert (not (= var2202 null-var1783)))
(declare-const var2829 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2829 null-String)))
(define-const var3862 var1979 var1979-init) ; Statement: $r7 = new java.io.BufferedReader 
(define-const var2849 var1999 var1999-init) ; Statement: $r6 = new java.io.InputStreamReader 
(assert true)
;(assert (<init>/630241661 var2849 var2202 "UTF-8")) ; Statement: specialinvoke $r6.<java.io.InputStreamReader: void <init>(java.io.InputStream,java.lang.String)>(r2, "UTF-8") 

(declare-const var2849!1 var1999)
(declare-const var2202!1 var1783)
(declare-const var1495 String)
(assert true)
;(assert (<init>/30097470 var3862 (cast-from-var1999-to-var3286 var2849!1))) ; Statement: specialinvoke $r7.<java.io.BufferedReader: void <init>(java.io.Reader)>($r6) 

(declare-const var3862!1 var1979)
(declare-const var2849!2 var1999)
(assert true)
(define-const var172 String (readLine/150542008 var3862!1)) ; Statement: r4 = virtualinvoke $r7.<java.io.BufferedReader: java.lang.String readLine()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String trim()>() 
(assert (not (= var172 null-String))) ; Cond: r4 != null 
(assert true)
(define-const var2131 String (trim/-847153721 var172)) ; Statement: r5 = virtualinvoke r4.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var643 Bool (isEmpty/-1285796103 var2131)) ; Statement: $z0 = virtualinvoke r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto r4 = virtualinvoke $r7.<java.io.BufferedReader: java.lang.String readLine()>() 
(assert (not (= (ite var643 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var172!1 String (readLine/150542008 var3862!1)) ; Statement: r4 = virtualinvoke $r7.<java.io.BufferedReader: java.lang.String readLine()>() 
(assert true) ; Non Conditional
 ; Statement: if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String trim()>() 
(assert (not (not (= var172!1 null-String)))) ; Negate: Cond: r4 != null  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1979-init=([], java.io.BufferedReader), var1999-init=([], java.io.InputStreamReader), <init>/630241661=([java.io.InputStreamReader, java.io.InputStream, java.lang.String], void), <init>/30097470=([java.io.BufferedReader, java.io.Reader], void), cast-from-var1999-to-var3286=([java.io.InputStreamReader], java.io.Reader), readLine/150542008=([java.io.BufferedReader], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1783=java.io.InputStream, var2202=r2, var2829=r3, var743=null_type, var1979=java.io.BufferedReader, var3862=$r7, var1999=java.io.InputStreamReader, var2849=$r6, var1495="UTF-8", var3286=java.io.Reader, var172=r4, var2131=r5, var643=$z0}
; {java.io.InputStream=var1783, r2=var2202, r3=var2829, null_type=var743, java.io.BufferedReader=var1979, $r7=var3862, java.io.InputStreamReader=var1999, $r6=var2849, "UTF-8"=var1495, java.io.Reader=var3286, r4=var172, r5=var2131, $z0=var643}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @parameter0: java.io.InputStream;	r3 := @parameter1: java.lang.String;	$r7 = new java.io.BufferedReader;	$r6 = new java.io.InputStreamReader;	specialinvoke $r6.<java.io.InputStreamReader: void <init>(java.io.InputStream,java.lang.String)>(r2, "UTF-8");	specialinvoke $r7.<java.io.BufferedReader: void <init>(java.io.Reader)>($r6);	r4 = virtualinvoke $r7.<java.io.BufferedReader: java.lang.String readLine()>();	goto [?= (branch)];	if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String trim()>();	r5 = virtualinvoke r4.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke r5.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto r4 = virtualinvoke $r7.<java.io.BufferedReader: java.lang.String readLine()>();	r4 = virtualinvoke $r7.<java.io.BufferedReader: java.lang.String readLine()>();	if r4 != null goto r5 = virtualinvoke r4.<java.lang.String: java.lang.String trim()>();	return 0
;block_num 6