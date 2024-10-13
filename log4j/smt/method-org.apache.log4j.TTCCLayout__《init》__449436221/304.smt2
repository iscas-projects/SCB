(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var277 0)
(declare-sort var2452 0)
(declare-sort var1898 0)
(declare-sort var45 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/56641460 (var2452) void)
(declare-fun cast-from-var277-to-var2452 (var277) var2452)
(declare-fun threadPrinting/-806237388 (var277) Bool)
(declare-fun categoryPrefixing/-806237388 (var277) Bool)
(declare-fun contextPrinting/-806237388 (var277) Bool)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun buf/-806237388 (var277) String)
(declare-fun setDateFormat/1721794909 (var2452 String var1898) void)
(declare-const null-var277 var277)
(declare-const null-NullType var45)
(declare-const null-var1898 var1898)
(declare-const var2074 var277) ; Statement: r0 := @this: org.apache.log4j.TTCCLayout 
(assert (not (= var2074 null-var277)))
(assert true)
;(assert (<init>/56641460 (cast-from-var277-to-var2452 var2074))) ; Statement: specialinvoke r0.<org.apache.log4j.helpers.DateLayout: void <init>()>() 

(declare-const var2074!1 var277)
(declare-const var2074!2 var277)
(assert (not (= var2074!2 null-var277)))
(assert (= (threadPrinting/-806237388 var2074!2) (ite (= 1 1) true false))) ; Statement: r0.<org.apache.log4j.TTCCLayout: boolean threadPrinting> = 1 
(declare-const var2074!3 var277)
(assert (not (= var2074!3 null-var277)))
(assert (= (categoryPrefixing/-806237388 var2074!3) (ite (= 1 1) true false))) ; Statement: r0.<org.apache.log4j.TTCCLayout: boolean categoryPrefixing> = 1 
(declare-const var2074!4 var277)
(assert (not (= var2074!4 null-var277)))
(assert (= (contextPrinting/-806237388 var2074!4) (ite (= 1 1) true false))) ; Statement: r0.<org.apache.log4j.TTCCLayout: boolean contextPrinting> = 1 
(define-const var1527 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var1527 256)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(256) 

(declare-const var1527!1 String)
(declare-const var3383 Int)
(declare-const var2074!5 var277)
(assert (not (= var2074!5 null-var277)))
(assert (= (buf/-806237388 var2074!5) var1527!1)) ; Statement: r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf> = $r1 
(assert true)
;(assert (setDateFormat/1721794909 (cast-from-var277-to-var2452 var2074!5) "RELATIVE" null-var1898)) ; Statement: virtualinvoke r0.<org.apache.log4j.TTCCLayout: void setDateFormat(java.lang.String,java.util.TimeZone)>("RELATIVE", null) 

(declare-const var2074!6 var277)
(declare-const var3106 String)
(declare-const var3844 var45)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/56641460=([org.apache.log4j.helpers.DateLayout], void), cast-from-var277-to-var2452=([org.apache.log4j.TTCCLayout], org.apache.log4j.helpers.DateLayout), threadPrinting/-806237388=([org.apache.log4j.TTCCLayout], boolean), categoryPrefixing/-806237388=([org.apache.log4j.TTCCLayout], boolean), contextPrinting/-806237388=([org.apache.log4j.TTCCLayout], boolean), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), buf/-806237388=([org.apache.log4j.TTCCLayout], java.lang.StringBuffer), setDateFormat/1721794909=([org.apache.log4j.helpers.DateLayout, java.lang.String, java.util.TimeZone], void)}
; {var277=org.apache.log4j.TTCCLayout, var2074=r0, var2452=org.apache.log4j.helpers.DateLayout, var1527=$r1, var3383=256, var1898=java.util.TimeZone, var3106="RELATIVE", var3844=null, var45=null_type}
; {org.apache.log4j.TTCCLayout=var277, r0=var2074, org.apache.log4j.helpers.DateLayout=var2452, $r1=var1527, 256=var3383, java.util.TimeZone=var1898, "RELATIVE"=var3106, null=var3844, null_type=var45}
;seq <java.lang.StringBuffer: void <init>(int)>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.log4j.TTCCLayout;	specialinvoke r0.<org.apache.log4j.helpers.DateLayout: void <init>()>();	r0.<org.apache.log4j.TTCCLayout: boolean threadPrinting> = 1;	r0.<org.apache.log4j.TTCCLayout: boolean categoryPrefixing> = 1;	r0.<org.apache.log4j.TTCCLayout: boolean contextPrinting> = 1;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(256);	r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf> = $r1;	virtualinvoke r0.<org.apache.log4j.TTCCLayout: void setDateFormat(java.lang.String,java.util.TimeZone)>("RELATIVE", null);	return
;block_num 1