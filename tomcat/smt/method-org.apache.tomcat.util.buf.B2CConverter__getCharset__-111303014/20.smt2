(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var766 0)
(declare-sort var2071 0)
(declare-sort var3998 0)
(declare-sort var2434 0)
(declare-sort var792 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var2071) String)
(declare-fun getCharset/1637918851 (var3998 String) var792)
(declare-const null-String String)
(declare-const var2071-ENGLISH var2071)
(declare-const var2434-charsetCache var3998)
(declare-const null-var792 var792)
(declare-const var3487 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3487 null-String)))
(define-const var402 var2071 var2071-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var801 String (toLowerCase/1946809429 var3487 var402)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var3407 var3998 var2434-charsetCache) ; Statement: $r3 = <org.apache.tomcat.util.buf.B2CConverter: org.apache.tomcat.util.buf.CharsetCache charsetCache> 
(assert true)
(define-const var258 var792 (getCharset/1637918851 var3407 var801)) ; Statement: r4 = virtualinvoke $r3.<org.apache.tomcat.util.buf.CharsetCache: java.nio.charset.Charset getCharset(java.lang.String)>(r2) 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var258 null-var792))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), getCharset/1637918851=([org.apache.tomcat.util.buf.CharsetCache, java.lang.String], java.nio.charset.Charset)}
; {var3487=r0, var766=null_type, var2071=java.util.Locale, var402=$r1, var801=r2, var3998=org.apache.tomcat.util.buf.CharsetCache, var2434=org.apache.tomcat.util.buf.B2CConverter, var3407=$r3, var792=java.nio.charset.Charset, var258=r4}
; {r0=var3487, null_type=var766, java.util.Locale=var2071, $r1=var402, r2=var801, org.apache.tomcat.util.buf.CharsetCache=var3998, org.apache.tomcat.util.buf.B2CConverter=var2434, $r3=var3407, java.nio.charset.Charset=var792, r4=var258}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r3 = <org.apache.tomcat.util.buf.B2CConverter: org.apache.tomcat.util.buf.CharsetCache charsetCache>;	r4 = virtualinvoke $r3.<org.apache.tomcat.util.buf.CharsetCache: java.nio.charset.Charset getCharset(java.lang.String)>(r2);	if r4 != null goto return r4;	return r4
;block_num 2