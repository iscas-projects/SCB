(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var136 0)
(declare-sort var3406 0)
(declare-sort var1014 0)
(declare-sort var3261 0)
(declare-sort var1963 0)
(declare-sort var1663 0)
(declare-sort var2046 0)
(declare-sort var1763 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1014-init () var1014)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun <init>/291801963 (var1014 (Array Int Int)) void)
(declare-fun var3261-init () var3261)
(declare-fun <init>/1384748107 (var3261) void)
(declare-fun var1963-init () var1963)
(declare-fun <init>/186014028 (var1963 var1663) void)
(declare-fun cast-from-var1014-to-var1663 (var1014) var1663)
(declare-fun parse/2036542877 (var2046 var1963 var1763) void)
(declare-fun cast-from-var3261-to-var2046 (var3261) var2046)
(declare-fun cast-from-var3406-to-var1763 (var3406) var1763)
(declare-const null-String String)
(declare-const null-var3406 var3406)
(declare-const var2789 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2789 null-String)))
(declare-const var987 var3406) ; Statement: r5 := @parameter1: jdk.jfr.internal.jfc.JFCParserHandler 
(assert (not (= var987 null-var3406)))
(define-const var1591 var1014 var1014-init) ; Statement: $r0 = new java.io.CharArrayReader 
(assert true)
(define-const var1488 (Array Int Int) (toCharArray/415275702 var2789)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(assert true)
;(assert (<init>/291801963 var1591 var1488)) ; Statement: specialinvoke $r0.<java.io.CharArrayReader: void <init>(char[])>($r2) 

(declare-const var1591!1 var1014)
(declare-const var1488!1 (Array Int Int))
(define-const var3487 var3261 var3261-init) ; Statement: $r3 = new jdk.internal.util.xml.impl.SAXParserImpl 
(assert true)
;(assert (<init>/1384748107 var3487)) ; Statement: specialinvoke $r3.<jdk.internal.util.xml.impl.SAXParserImpl: void <init>()>() 

(declare-const var3487!1 var3261)
(define-const var3524 var1963 var1963-init) ; Statement: $r4 = new jdk.internal.org.xml.sax.InputSource 
(assert true)
;(assert (<init>/186014028 var3524 (cast-from-var1014-to-var1663 var1591!1))) ; Statement: specialinvoke $r4.<jdk.internal.org.xml.sax.InputSource: void <init>(java.io.Reader)>($r0) 

(declare-const var3524!1 var1963)
(declare-const var1591!2 var1014)
(assert true)
;(assert (parse/2036542877 (cast-from-var3261-to-var2046 var3487!1) var3524!1 (cast-from-var3406-to-var1763 var987))) ; Statement: virtualinvoke $r3.<jdk.internal.util.xml.SAXParser: void parse(jdk.internal.org.xml.sax.InputSource,jdk.internal.org.xml.sax.helpers.DefaultHandler)>($r4, r5) 

(declare-const var3487!2 var3261)
(declare-const var3524!2 var1963)
(declare-const var987!1 var3406)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1014-init=([], java.io.CharArrayReader), toCharArray/415275702=([java.lang.String], char[]), <init>/291801963=([java.io.CharArrayReader, char[]], void), var3261-init=([], jdk.internal.util.xml.impl.SAXParserImpl), <init>/1384748107=([jdk.internal.util.xml.impl.SAXParserImpl], void), var1963-init=([], jdk.internal.org.xml.sax.InputSource), <init>/186014028=([jdk.internal.org.xml.sax.InputSource, java.io.Reader], void), cast-from-var1014-to-var1663=([java.io.CharArrayReader], java.io.Reader), parse/2036542877=([jdk.internal.util.xml.SAXParser, jdk.internal.org.xml.sax.InputSource, jdk.internal.org.xml.sax.helpers.DefaultHandler], void), cast-from-var3261-to-var2046=([jdk.internal.util.xml.impl.SAXParserImpl], jdk.internal.util.xml.SAXParser), cast-from-var3406-to-var1763=([jdk.jfr.internal.jfc.JFCParserHandler], jdk.internal.org.xml.sax.helpers.DefaultHandler)}
; {var2789=r1, var136=null_type, var3406=jdk.jfr.internal.jfc.JFCParserHandler, var987=r5, var1014=java.io.CharArrayReader, var1591=$r0, var1488=$r2, var3261=jdk.internal.util.xml.impl.SAXParserImpl, var3487=$r3, var1963=jdk.internal.org.xml.sax.InputSource, var3524=$r4, var1663=java.io.Reader, var2046=jdk.internal.util.xml.SAXParser, var1763=jdk.internal.org.xml.sax.helpers.DefaultHandler}
; {r1=var2789, null_type=var136, jdk.jfr.internal.jfc.JFCParserHandler=var3406, r5=var987, java.io.CharArrayReader=var1014, $r0=var1591, $r2=var1488, jdk.internal.util.xml.impl.SAXParserImpl=var3261, $r3=var3487, jdk.internal.org.xml.sax.InputSource=var1963, $r4=var3524, java.io.Reader=var1663, jdk.internal.util.xml.SAXParser=var2046, jdk.internal.org.xml.sax.helpers.DefaultHandler=var1763}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r5 := @parameter1: jdk.jfr.internal.jfc.JFCParserHandler;	$r0 = new java.io.CharArrayReader;	$r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	specialinvoke $r0.<java.io.CharArrayReader: void <init>(char[])>($r2);	$r3 = new jdk.internal.util.xml.impl.SAXParserImpl;	specialinvoke $r3.<jdk.internal.util.xml.impl.SAXParserImpl: void <init>()>();	$r4 = new jdk.internal.org.xml.sax.InputSource;	specialinvoke $r4.<jdk.internal.org.xml.sax.InputSource: void <init>(java.io.Reader)>($r0);	virtualinvoke $r3.<jdk.internal.util.xml.SAXParser: void parse(jdk.internal.org.xml.sax.InputSource,jdk.internal.org.xml.sax.helpers.DefaultHandler)>($r4, r5);	return
;block_num 1