(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1834 0)
(declare-sort var3081 0)
(declare-sort var1491 0)
(declare-sort var3321 0)
(declare-sort var3377 0)
(declare-sort var2235 0)
(declare-sort var1717 0)
(declare-sort var2798 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var3081) String)
(declare-fun getCharset/1637918851 (var1491 String) var3377)
(declare-fun var2235-init () var2235)
(declare-fun arr-var2798-init () (Array Int var2798))
(declare-fun cast-from-String-to-var2798 (String) var2798)
(declare-fun getString/-496799379 (var1717 String (Array Int var2798)) String)
(declare-fun <init>/-645024055 (var2235 String) void)
(declare-const null-String String)
(declare-const var3081-ENGLISH var3081)
(declare-const var3321-charsetCache var1491)
(declare-const null-var3377 var3377)
(declare-const var3321-sm var1717)
(declare-const null-__Array__Int__var2798__ (Array Int var2798))
(declare-const var1496 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1496 null-String)))
(define-const var1401 var3081 var3081-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var863 String (toLowerCase/1946809429 var1496 var1401)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var912 var1491 var3321-charsetCache) ; Statement: $r3 = <org.apache.tomcat.util.buf.B2CConverter: org.apache.tomcat.util.buf.CharsetCache charsetCache> 
(assert true)
(define-const var1158 var3377 (getCharset/1637918851 var912 var863)) ; Statement: r4 = virtualinvoke $r3.<org.apache.tomcat.util.buf.CharsetCache: java.nio.charset.Charset getCharset(java.lang.String)>(r2) 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var1158 null-var3377)))) ; Negate: Cond: r4 != null  
(define-const var3953 var2235 var2235-init) ; Statement: $r5 = new java.io.UnsupportedEncodingException 
(define-const var2238 var1717 var3321-sm) ; Statement: $r7 = <org.apache.tomcat.util.buf.B2CConverter: org.apache.tomcat.util.res.StringManager sm> 
(define-const var3710 (Array Int var2798) arr-var2798-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var3710!1 (Array Int var2798))
(assert (not (= var3710!1 null-__Array__Int__var2798__)))
(assert (= (select var3710!1 0) (cast-from-String-to-var2798 var863))) ; Statement: $r6[0] = r2 
(assert true)
(define-const var1431 String (getString/-496799379 var2238 "b2cConverter.unknownEncoding" var3710!1)) ; Statement: $r8 = virtualinvoke $r7.<org.apache.tomcat.util.res.StringManager: java.lang.String getString(java.lang.String,java.lang.Object[])>("b2cConverter.unknownEncoding", $r6) 
(assert true)
;(assert (<init>/-645024055 var3953 var1431)) ; Statement: specialinvoke $r5.<java.io.UnsupportedEncodingException: void <init>(java.lang.String)>($r8) 

(declare-const var3953!1 var2235)
(declare-const var1431!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), getCharset/1637918851=([org.apache.tomcat.util.buf.CharsetCache, java.lang.String], java.nio.charset.Charset), var2235-init=([], java.io.UnsupportedEncodingException), arr-var2798-init=([], java.lang.Object[]), cast-from-String-to-var2798=([java.lang.String], java.lang.Object), getString/-496799379=([org.apache.tomcat.util.res.StringManager, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-645024055=([java.io.UnsupportedEncodingException, java.lang.String], void)}
; {var1496=r0, var1834=null_type, var3081=java.util.Locale, var1401=$r1, var863=r2, var1491=org.apache.tomcat.util.buf.CharsetCache, var3321=org.apache.tomcat.util.buf.B2CConverter, var912=$r3, var3377=java.nio.charset.Charset, var1158=r4, var2235=java.io.UnsupportedEncodingException, var3953=$r5, var1717=org.apache.tomcat.util.res.StringManager, var2238=$r7, var2798=java.lang.Object, var3710=$r6, var1431=$r8}
; {r0=var1496, null_type=var1834, java.util.Locale=var3081, $r1=var1401, r2=var863, org.apache.tomcat.util.buf.CharsetCache=var1491, org.apache.tomcat.util.buf.B2CConverter=var3321, $r3=var912, java.nio.charset.Charset=var3377, r4=var1158, java.io.UnsupportedEncodingException=var2235, $r5=var3953, org.apache.tomcat.util.res.StringManager=var1717, $r7=var2238, java.lang.Object=var2798, $r6=var3710, $r8=var1431}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r3 = <org.apache.tomcat.util.buf.B2CConverter: org.apache.tomcat.util.buf.CharsetCache charsetCache>;	r4 = virtualinvoke $r3.<org.apache.tomcat.util.buf.CharsetCache: java.nio.charset.Charset getCharset(java.lang.String)>(r2);	if r4 != null goto return r4;	$r5 = new java.io.UnsupportedEncodingException;	$r7 = <org.apache.tomcat.util.buf.B2CConverter: org.apache.tomcat.util.res.StringManager sm>;	$r6 = newarray (java.lang.Object)[1];	$r6[0] = r2;	$r8 = virtualinvoke $r7.<org.apache.tomcat.util.res.StringManager: java.lang.String getString(java.lang.String,java.lang.Object[])>("b2cConverter.unknownEncoding", $r6);	specialinvoke $r5.<java.io.UnsupportedEncodingException: void <init>(java.lang.String)>($r8);	throw $r5
;block_num 2