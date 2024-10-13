(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2212 0)
(declare-sort var3953 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/2108799828 (var3953) void)
(declare-fun cast-from-var2212-to-var3953 (var2212) var3953)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun buf/608517899 (var2212) String)
(declare-fun sawComment/608517899 (var2212) Bool)
(declare-fun validEntry/608517899 (var2212) Bool)
(declare-fun rootElem/608517899 (var2212) Int)
(declare-const null-var2212 var2212)
(declare-const var2710 var2212) ; Statement: r0 := @this: jdk.internal.util.xml.PropertiesDefaultHandler 
(assert (not (= var2710 null-var2212)))
(assert true)
;(assert (<init>/2108799828 (cast-from-var2212-to-var3953 var2710))) ; Statement: specialinvoke r0.<jdk.internal.org.xml.sax.helpers.DefaultHandler: void <init>()>() 

(declare-const var2710!1 var2212)
(define-const var2359 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2359)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2359!1 String)
(declare-const var2710!2 var2212)
(assert (not (= var2710!2 null-var2212)))
(assert (= (buf/608517899 var2710!2) var2359!1)) ; Statement: r0.<jdk.internal.util.xml.PropertiesDefaultHandler: java.lang.StringBuffer buf> = $r1 
(declare-const var2710!3 var2212)
(assert (not (= var2710!3 null-var2212)))
(assert (= (sawComment/608517899 var2710!3) (ite (= 1 0) true false))) ; Statement: r0.<jdk.internal.util.xml.PropertiesDefaultHandler: boolean sawComment> = 0 
(declare-const var2710!4 var2212)
(assert (not (= var2710!4 null-var2212)))
(assert (= (validEntry/608517899 var2710!4) (ite (= 1 0) true false))) ; Statement: r0.<jdk.internal.util.xml.PropertiesDefaultHandler: boolean validEntry> = 0 
(declare-const var2710!5 var2212)
(assert (not (= var2710!5 null-var2212)))
(assert (= (rootElem/608517899 var2710!5) 0)) ; Statement: r0.<jdk.internal.util.xml.PropertiesDefaultHandler: int rootElem> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/2108799828=([jdk.internal.org.xml.sax.helpers.DefaultHandler], void), cast-from-var2212-to-var3953=([jdk.internal.util.xml.PropertiesDefaultHandler], jdk.internal.org.xml.sax.helpers.DefaultHandler), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), buf/608517899=([jdk.internal.util.xml.PropertiesDefaultHandler], java.lang.StringBuffer), sawComment/608517899=([jdk.internal.util.xml.PropertiesDefaultHandler], boolean), validEntry/608517899=([jdk.internal.util.xml.PropertiesDefaultHandler], boolean), rootElem/608517899=([jdk.internal.util.xml.PropertiesDefaultHandler], int)}
; {var2212=jdk.internal.util.xml.PropertiesDefaultHandler, var2710=r0, var3953=jdk.internal.org.xml.sax.helpers.DefaultHandler, var2359=$r1}
; {jdk.internal.util.xml.PropertiesDefaultHandler=var2212, r0=var2710, jdk.internal.org.xml.sax.helpers.DefaultHandler=var3953, $r1=var2359}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: jdk.internal.util.xml.PropertiesDefaultHandler;	specialinvoke r0.<jdk.internal.org.xml.sax.helpers.DefaultHandler: void <init>()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	r0.<jdk.internal.util.xml.PropertiesDefaultHandler: java.lang.StringBuffer buf> = $r1;	r0.<jdk.internal.util.xml.PropertiesDefaultHandler: boolean sawComment> = 0;	r0.<jdk.internal.util.xml.PropertiesDefaultHandler: boolean validEntry> = 0;	r0.<jdk.internal.util.xml.PropertiesDefaultHandler: int rootElem> = 0;	return
;block_num 1