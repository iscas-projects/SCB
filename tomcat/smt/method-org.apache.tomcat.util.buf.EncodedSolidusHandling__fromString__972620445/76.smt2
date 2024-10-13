(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1984 0)
(declare-sort var3896 0)
(declare-sort var3626 0)
(declare-sort var889 0)
(declare-sort var283 0)
(declare-sort var1310 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun toLowerCase/1946809429 (String var3896) String)
(declare-fun var3626_values/-1727407181 () (Array Int var3626))
(declare-fun getLength-Arr-var3626-1 ((Array Int var3626)) Int)
(declare-fun var889-init () var889)
(declare-fun arr-var1310-init () (Array Int var1310))
(declare-fun cast-from-String-to-var1310 (String) var1310)
(declare-fun getString/-496799379 (var283 String (Array Int var1310)) String)
(declare-fun <init>/-1092629202 (var889 String) void)
(declare-const null-String String)
(declare-const var3896-ENGLISH var3896)
(declare-const var3626-sm var283)
(declare-const null-__Array__Int__var1310__ (Array Int var1310))
(declare-const var1860 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1860 null-String)))
(assert true)
(define-const var973 String (trim/-847153721 var1860)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(define-const var1958 var3896 var3896-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var128 String (toLowerCase/1946809429 var973 var1958)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var1996 (Array Int var3626) var3626_values/-1727407181) ; Statement: r4 = staticinvoke <org.apache.tomcat.util.buf.EncodedSolidusHandling: org.apache.tomcat.util.buf.EncodedSolidusHandling[] values()>() 
(define-const var2153 Int (getLength-Arr-var3626-1 var1996)) ; Statement: i0 = lengthof r4 
(define-const var3278 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r5 = new java.lang.IllegalStateException 
(assert (>= var3278 var2153)) ; Cond: i1 >= i0 
(define-const var1428 var889 var889-init) ; Statement: $r5 = new java.lang.IllegalStateException 
(define-const var2357 var283 var3626-sm) ; Statement: $r7 = <org.apache.tomcat.util.buf.EncodedSolidusHandling: org.apache.tomcat.util.res.StringManager sm> 
(define-const var2355 (Array Int var1310) arr-var1310-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var2355!1 (Array Int var1310))
(assert (not (= var2355!1 null-__Array__Int__var1310__)))
(assert (= (select var2355!1 0) (cast-from-String-to-var1310 var1860))) ; Statement: $r6[0] = r0 
(assert true)
(define-const var2134 String (getString/-496799379 var2357 "encodedSolidusHandling.invalid" var2355!1)) ; Statement: $r8 = virtualinvoke $r7.<org.apache.tomcat.util.res.StringManager: java.lang.String getString(java.lang.String,java.lang.Object[])>("encodedSolidusHandling.invalid", $r6) 
(assert true)
;(assert (<init>/-1092629202 var1428 var2134)) ; Statement: specialinvoke $r5.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var1428!1 var889)
(declare-const var2134!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var3626_values/-1727407181=([], org.apache.tomcat.util.buf.EncodedSolidusHandling[]), getLength-Arr-var3626-1=([org.apache.tomcat.util.buf.EncodedSolidusHandling[]], int), var889-init=([], java.lang.IllegalStateException), arr-var1310-init=([], java.lang.Object[]), cast-from-String-to-var1310=([java.lang.String], java.lang.Object), getString/-496799379=([org.apache.tomcat.util.res.StringManager, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1860=r0, var1984=null_type, var973=$r2, var3896=java.util.Locale, var1958=$r1, var128=r3, var3626=org.apache.tomcat.util.buf.EncodedSolidusHandling, var1996=r4, var2153=i0, var3278=i1, var889=java.lang.IllegalStateException, var1428=$r5, var283=org.apache.tomcat.util.res.StringManager, var2357=$r7, var1310=java.lang.Object, var2355=$r6, var2134=$r8}
; {r0=var1860, null_type=var1984, $r2=var973, java.util.Locale=var3896, $r1=var1958, r3=var128, org.apache.tomcat.util.buf.EncodedSolidusHandling=var3626, r4=var1996, i0=var2153, i1=var3278, java.lang.IllegalStateException=var889, $r5=var1428, org.apache.tomcat.util.res.StringManager=var283, $r7=var2357, java.lang.Object=var1310, $r6=var2355, $r8=var2134}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	r4 = staticinvoke <org.apache.tomcat.util.buf.EncodedSolidusHandling: org.apache.tomcat.util.buf.EncodedSolidusHandling[] values()>();	i0 = lengthof r4;	i1 = 0;	if i1 >= i0 goto $r5 = new java.lang.IllegalStateException;	$r5 = new java.lang.IllegalStateException;	$r7 = <org.apache.tomcat.util.buf.EncodedSolidusHandling: org.apache.tomcat.util.res.StringManager sm>;	$r6 = newarray (java.lang.Object)[1];	$r6[0] = r0;	$r8 = virtualinvoke $r7.<org.apache.tomcat.util.res.StringManager: java.lang.String getString(java.lang.String,java.lang.Object[])>("encodedSolidusHandling.invalid", $r6);	specialinvoke $r5.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r5
;block_num 3