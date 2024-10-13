(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var434 0)
(declare-sort var900 0)
(declare-sort var74 0)
(declare-sort var2577 0)
(declare-sort var2610 0)
(declare-sort var1157 0)
(declare-sort var1255 0)
(declare-sort var3376 0)
(declare-sort var637 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2577) void)
(declare-fun cast-from-var434-to-var2577 (var434) var2577)
(declare-fun _state/1302581035 (var434) Int)
(declare-fun _escapeCharacters/1302581035 (var434) Bool)
(declare-fun _doIndent/1302581035 (var434) Bool)
(declare-fun var2610_getProperty/258823597 (String) String)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun _lineSep/1302581035 (var434) (Array Int Int))
(declare-fun var3376-init () var3376)
(declare-fun <init>/1941092334 (var3376 var637) void)
(declare-fun cast-from-var1255-to-var637 (var1255) var637)
(declare-const null-var434 var434)
(declare-const null-var900 var900)
(declare-const null-String String)
(declare-const null-var1157 var1157)
(declare-const null-var1255 var1255)
(declare-const var3175 var434) ; Statement: r0 := @this: jdk.internal.util.xml.impl.XMLStreamWriterImpl 
(assert (not (= var3175 null-var434)))
(declare-const var2143 var900) ; Statement: r5 := @parameter0: java.io.OutputStream 
(assert (not (= var2143 null-var900)))
(declare-const var253 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var253 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var434-to-var2577 var3175))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3175!1 var434)
(declare-const var3175!2 var434)
(assert (not (= var3175!2 null-var434)))
(assert (= (_state/1302581035 var3175!2) 0)) ; Statement: r0.<jdk.internal.util.xml.impl.XMLStreamWriterImpl: int _state> = 0 
(declare-const var3175!3 var434)
(assert (not (= var3175!3 null-var434)))
(assert (= (_escapeCharacters/1302581035 var3175!3) (ite (= 1 1) true false))) ; Statement: r0.<jdk.internal.util.xml.impl.XMLStreamWriterImpl: boolean _escapeCharacters> = 1 
(declare-const var3175!4 var434)
(assert (not (= var3175!4 null-var434)))
(assert (= (_doIndent/1302581035 var3175!4) (ite (= 1 1) true false))) ; Statement: r0.<jdk.internal.util.xml.impl.XMLStreamWriterImpl: boolean _doIndent> = 1 
(define-const var3651 String (var2610_getProperty/258823597 "line.separator")) ; Statement: $r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("line.separator") 
(assert true)
(define-const var2528 (Array Int Int) (toCharArray/415275702 var3651)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>() 
(declare-const var3175!5 var434)
(assert (not (= var3175!5 null-var434)))
(assert (= (_lineSep/1302581035 var3175!5) var2528)) ; Statement: r0.<jdk.internal.util.xml.impl.XMLStreamWriterImpl: char[] _lineSep> = $r2 
(define-const var169 var1157 null-var1157) ; Statement: r8 = null 
 ; Statement: if r3 != null goto r8 = specialinvoke r0.<jdk.internal.util.xml.impl.XMLStreamWriterImpl: java.nio.charset.Charset getCharset(java.lang.String)>(r3) 
(assert (not (not (= var253 null-String)))) ; Negate: Cond: r3 != null  
(declare-const var1459 var1255) ; Statement: $r6 := @caughtexception 
(assert (not (= var1459 null-var1255)))
(define-const var1176 var3376 var3376-init) ; Statement: $r7 = new jdk.internal.util.xml.XMLStreamException 
(assert true)
;(assert (<init>/1941092334 var1176 (cast-from-var1255-to-var637 var1459))) ; Statement: specialinvoke $r7.<jdk.internal.util.xml.XMLStreamException: void <init>(java.lang.Throwable)>($r6) 

(declare-const var1176!1 var3376)
(declare-const var1459!1 var1255)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var434-to-var2577=([jdk.internal.util.xml.impl.XMLStreamWriterImpl], java.lang.Object), _state/1302581035=([jdk.internal.util.xml.impl.XMLStreamWriterImpl], int), _escapeCharacters/1302581035=([jdk.internal.util.xml.impl.XMLStreamWriterImpl], boolean), _doIndent/1302581035=([jdk.internal.util.xml.impl.XMLStreamWriterImpl], boolean), var2610_getProperty/258823597=([java.lang.String], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), _lineSep/1302581035=([jdk.internal.util.xml.impl.XMLStreamWriterImpl], char[]), var3376-init=([], jdk.internal.util.xml.XMLStreamException), <init>/1941092334=([jdk.internal.util.xml.XMLStreamException, java.lang.Throwable], void), cast-from-var1255-to-var637=([java.io.UnsupportedEncodingException], java.lang.Throwable)}
; {var434=jdk.internal.util.xml.impl.XMLStreamWriterImpl, var3175=r0, var900=java.io.OutputStream, var2143=r5, var253=r3, var74=null_type, var2577=java.lang.Object, var2610=java.lang.System, var3651=$r1, var2528=$r2, var1157=java.nio.charset.Charset, var169=r8, var1255=java.io.UnsupportedEncodingException, var1459=$r6, var3376=jdk.internal.util.xml.XMLStreamException, var1176=$r7, var637=java.lang.Throwable}
; {jdk.internal.util.xml.impl.XMLStreamWriterImpl=var434, r0=var3175, java.io.OutputStream=var900, r5=var2143, r3=var253, null_type=var74, java.lang.Object=var2577, java.lang.System=var2610, $r1=var3651, $r2=var2528, java.nio.charset.Charset=var1157, r8=var169, java.io.UnsupportedEncodingException=var1255, $r6=var1459, jdk.internal.util.xml.XMLStreamException=var3376, $r7=var1176, java.lang.Throwable=var637}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: jdk.internal.util.xml.impl.XMLStreamWriterImpl;	r5 := @parameter0: java.io.OutputStream;	r3 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<jdk.internal.util.xml.impl.XMLStreamWriterImpl: int _state> = 0;	r0.<jdk.internal.util.xml.impl.XMLStreamWriterImpl: boolean _escapeCharacters> = 1;	r0.<jdk.internal.util.xml.impl.XMLStreamWriterImpl: boolean _doIndent> = 1;	$r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("line.separator");	$r2 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>();	r0.<jdk.internal.util.xml.impl.XMLStreamWriterImpl: char[] _lineSep> = $r2;	r8 = null;	if r3 != null goto r8 = specialinvoke r0.<jdk.internal.util.xml.impl.XMLStreamWriterImpl: java.nio.charset.Charset getCharset(java.lang.String)>(r3);	$r6 := @caughtexception;	$r7 = new jdk.internal.util.xml.XMLStreamException;	specialinvoke $r7.<jdk.internal.util.xml.XMLStreamException: void <init>(java.lang.Throwable)>($r6);	throw $r7
;block_num 2