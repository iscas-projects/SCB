(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var841 0)
(declare-sort var3635 0)
(declare-sort var3403 0)
(declare-sort var446 0)
(declare-sort var2469 0)
(declare-sort var2147 0)
(declare-sort var2514 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var446_requireNonNull/1378936425 (var2469 String) var2469)
(declare-fun cast-from-var841-to-var2469 (var841) var2469)
(declare-fun cast-from-String-to-var2469 (String) var2469)
(declare-fun String_valueOf/-333372740 (var2469) String)
(declare-fun var2147_toCharset/1927181655 (var3635) var3635)
(declare-fun getBytes/-163691139 (String var3635) (Array Int Int))
(declare-fun var2514_write/-1036285428 (var841 (Array Int Int) (Array Int var3403)) var841)
(declare-const null-var841 var841)
(declare-const null-String String)
(declare-const null-var3635 var3635)
(declare-const null-__Array__Int__var3403__ (Array Int var3403))
(declare-const var312 var841) ; Statement: r0 := @parameter0: java.nio.file.Path 
(assert (not (= var312 null-var841)))
(declare-const var2129 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var2129 null-String)))
(declare-const var1865 var3635) ; Statement: r2 := @parameter2: java.nio.charset.Charset 
(assert (not (= var1865 null-var3635)))
(declare-const var2121 (Array Int var3403)) ; Statement: r5 := @parameter3: java.nio.file.OpenOption[] 
(assert (not (= var2121 null-__Array__Int__var3403__)))
;(assert (var446_requireNonNull/1378936425 (cast-from-var841-to-var2469 var312) "path")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "path") 

(declare-const var312!1 var841)
(declare-const var3739 String)
;(assert (var446_requireNonNull/1378936425 (cast-from-String-to-var2469 var2129) "charSequence")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "charSequence") 

(declare-const var2129!1 String)
(declare-const var2540 String)
(define-const var2322 String (String_valueOf/-333372740 (cast-from-String-to-var2469 var2129!1))) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(define-const var2113 var3635 (var2147_toCharset/1927181655 var1865)) ; Statement: $r3 = staticinvoke <org.apache.commons.io.Charsets: java.nio.charset.Charset toCharset(java.nio.charset.Charset)>(r2) 
(assert true)
(define-const var2903 (Array Int Int) (getBytes/-163691139 var2322 var2113)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
;(assert (var2514_write/-1036285428 var312!1 var2903 var2121)) ; Statement: staticinvoke <java.nio.file.Files: java.nio.file.Path write(java.nio.file.Path,byte[],java.nio.file.OpenOption[])>(r0, $r6, r5) 

(declare-const var312!2 var841)
(declare-const var2903!1 (Array Int Int))
(declare-const var2121!1 (Array Int var3403))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var446_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var841-to-var2469=([java.nio.file.Path], java.lang.Object), cast-from-String-to-var2469=([java.lang.CharSequence], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String), var2147_toCharset/1927181655=([java.nio.charset.Charset], java.nio.charset.Charset), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), var2514_write/-1036285428=([java.nio.file.Path, byte[], java.nio.file.OpenOption[]], java.nio.file.Path)}
; {var841=java.nio.file.Path, var312=r0, var2129=r1, var3635=java.nio.charset.Charset, var1865=r2, var3403=java.nio.file.OpenOption, var2121=r5, var446=java.util.Objects, var2469=java.lang.Object, var3739="path", var2540="charSequence", var2322=$r4, var2147=org.apache.commons.io.Charsets, var2113=$r3, var2903=$r6, var2514=java.nio.file.Files}
; {java.nio.file.Path=var841, r0=var312, r1=var2129, java.nio.charset.Charset=var3635, r2=var1865, java.nio.file.OpenOption=var3403, r5=var2121, java.util.Objects=var446, java.lang.Object=var2469, "path"=var3739, "charSequence"=var2540, $r4=var2322, org.apache.commons.io.Charsets=var2147, $r3=var2113, $r6=var2903, java.nio.file.Files=var2514}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: java.nio.file.Path;	r1 := @parameter1: java.lang.CharSequence;	r2 := @parameter2: java.nio.charset.Charset;	r5 := @parameter3: java.nio.file.OpenOption[];	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "path");	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "charSequence");	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	$r3 = staticinvoke <org.apache.commons.io.Charsets: java.nio.charset.Charset toCharset(java.nio.charset.Charset)>(r2);	$r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	staticinvoke <java.nio.file.Files: java.nio.file.Path write(java.nio.file.Path,byte[],java.nio.file.OpenOption[])>(r0, $r6, r5);	return r0
;block_num 1