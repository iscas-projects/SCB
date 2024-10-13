(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3780 0)
(declare-sort var1427 0)
(declare-sort var34 0)
(declare-sort var1881 0)
(declare-sort var3592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun getClass/1258963082 (var34) ClassObject)
(declare-fun cast-from-var3780-to-var34 (var3780) var34)
(declare-fun getResourceAsStream/2018191724 (ClassObject String) var1881)
(declare-fun var3592-init () var3592)
(declare-fun <init>/-1889831121 (var3592 var1881) void)
(declare-const null-var3780 var3780)
(declare-const null-String String)
(declare-const null-var1881 var1881)
(declare-const var1739 var3780) ; Statement: r1 := @this: org.apache.log4j.xml.Log4jEntityResolver 
(assert (not (= var1739 null-var3780)))
(declare-const var3519 String) ; Statement: r11 := @parameter0: java.lang.String 
(assert (not (= var3519 null-String)))
(declare-const var885 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var885 null-String)))
(assert true)
(define-const var3940 Bool (endsWith/985337093 var885 "log4j.dtd")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("log4j.dtd") 
 ; Statement: if $z0 != 0 goto $r13 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= (ite var3940 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var521 ClassObject (getClass/1258963082 (cast-from-var3780-to-var34 var1739))) ; Statement: $r13 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2681 var1881 (getResourceAsStream/2018191724 var521 "/org/apache/log4j/xml/log4j.dtd")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.Class: java.io.InputStream getResourceAsStream(java.lang.String)>("/org/apache/log4j/xml/log4j.dtd") 
(define-const var3910 var1881 var2681) ; Statement: r15 = $r14 
 ; Statement: if $r14 != null goto $r2 = new org.xml.sax.InputSource 
(assert (not (= var2681 null-var1881))) ; Cond: $r14 != null 
(define-const var3860 var3592 var3592-init) ; Statement: $r2 = new org.xml.sax.InputSource 
(assert true)
;(assert (<init>/-1889831121 var3860 var3910)) ; Statement: specialinvoke $r2.<org.xml.sax.InputSource: void <init>(java.io.InputStream)>(r15) 

(declare-const var3860!1 var3592)
(declare-const var3910!1 var1881)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3780-to-var34=([org.apache.log4j.xml.Log4jEntityResolver], java.lang.Object), getResourceAsStream/2018191724=([java.lang.Class, java.lang.String], java.io.InputStream), var3592-init=([], org.xml.sax.InputSource), <init>/-1889831121=([org.xml.sax.InputSource, java.io.InputStream], void)}
; {var3780=org.apache.log4j.xml.Log4jEntityResolver, var1739=r1, var3519=r11, var1427=null_type, var885=r0, var3940=$z0, var34=java.lang.Object, var521=$r13, var1881=java.io.InputStream, var2681=$r14, var3910=r15, var3592=org.xml.sax.InputSource, var3860=$r2}
; {org.apache.log4j.xml.Log4jEntityResolver=var3780, r1=var1739, r11=var3519, null_type=var1427, r0=var885, $z0=var3940, java.lang.Object=var34, $r13=var521, java.io.InputStream=var1881, $r14=var2681, r15=var3910, org.xml.sax.InputSource=var3592, $r2=var3860}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.log4j.xml.Log4jEntityResolver;	r11 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("log4j.dtd");	if $z0 != 0 goto $r13 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r13 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r14 = virtualinvoke $r13.<java.lang.Class: java.io.InputStream getResourceAsStream(java.lang.String)>("/org/apache/log4j/xml/log4j.dtd");	r15 = $r14;	if $r14 != null goto $r2 = new org.xml.sax.InputSource;	$r2 = new org.xml.sax.InputSource;	specialinvoke $r2.<org.xml.sax.InputSource: void <init>(java.io.InputStream)>(r15);	return $r2
;block_num 3