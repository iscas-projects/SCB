(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2106 0)
(declare-sort var667 0)
(declare-sort var288 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/56641460 (var288) void)
(declare-fun cast-from-var2106-to-var288 (var2106) var288)
(declare-fun threadPrinting/-806237388 (var2106) Bool)
(declare-fun categoryPrefixing/-806237388 (var2106) Bool)
(declare-fun contextPrinting/-806237388 (var2106) Bool)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun buf/-806237388 (var2106) String)
(declare-fun setDateFormat/1211177906 (var288 String) void)
(declare-const null-var2106 var2106)
(declare-const null-String String)
(declare-const var1576 var2106) ; Statement: r0 := @this: org.apache.log4j.TTCCLayout 
(assert (not (= var1576 null-var2106)))
(declare-const var2294 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2294 null-String)))
(assert true)
;(assert (<init>/56641460 (cast-from-var2106-to-var288 var1576))) ; Statement: specialinvoke r0.<org.apache.log4j.helpers.DateLayout: void <init>()>() 

(declare-const var1576!1 var2106)
(declare-const var1576!2 var2106)
(assert (not (= var1576!2 null-var2106)))
(assert (= (threadPrinting/-806237388 var1576!2) (ite (= 1 1) true false))) ; Statement: r0.<org.apache.log4j.TTCCLayout: boolean threadPrinting> = 1 
(declare-const var1576!3 var2106)
(assert (not (= var1576!3 null-var2106)))
(assert (= (categoryPrefixing/-806237388 var1576!3) (ite (= 1 1) true false))) ; Statement: r0.<org.apache.log4j.TTCCLayout: boolean categoryPrefixing> = 1 
(declare-const var1576!4 var2106)
(assert (not (= var1576!4 null-var2106)))
(assert (= (contextPrinting/-806237388 var1576!4) (ite (= 1 1) true false))) ; Statement: r0.<org.apache.log4j.TTCCLayout: boolean contextPrinting> = 1 
(define-const var3683 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var3683 256)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(256) 

(declare-const var3683!1 String)
(declare-const var2317 Int)
(declare-const var1576!5 var2106)
(assert (not (= var1576!5 null-var2106)))
(assert (= (buf/-806237388 var1576!5) var3683!1)) ; Statement: r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf> = $r1 
(assert true)
;(assert (setDateFormat/1211177906 (cast-from-var2106-to-var288 var1576!5) var2294)) ; Statement: virtualinvoke r0.<org.apache.log4j.TTCCLayout: void setDateFormat(java.lang.String)>(r2) 

(declare-const var1576!6 var2106)
(declare-const var2294!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/56641460=([org.apache.log4j.helpers.DateLayout], void), cast-from-var2106-to-var288=([org.apache.log4j.TTCCLayout], org.apache.log4j.helpers.DateLayout), threadPrinting/-806237388=([org.apache.log4j.TTCCLayout], boolean), categoryPrefixing/-806237388=([org.apache.log4j.TTCCLayout], boolean), contextPrinting/-806237388=([org.apache.log4j.TTCCLayout], boolean), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), buf/-806237388=([org.apache.log4j.TTCCLayout], java.lang.StringBuffer), setDateFormat/1211177906=([org.apache.log4j.helpers.DateLayout, java.lang.String], void)}
; {var2106=org.apache.log4j.TTCCLayout, var1576=r0, var2294=r2, var667=null_type, var288=org.apache.log4j.helpers.DateLayout, var3683=$r1, var2317=256}
; {org.apache.log4j.TTCCLayout=var2106, r0=var1576, r2=var2294, null_type=var667, org.apache.log4j.helpers.DateLayout=var288, $r1=var3683, 256=var2317}
;seq <java.lang.StringBuffer: void <init>(int)>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.log4j.TTCCLayout;	r2 := @parameter0: java.lang.String;	specialinvoke r0.<org.apache.log4j.helpers.DateLayout: void <init>()>();	r0.<org.apache.log4j.TTCCLayout: boolean threadPrinting> = 1;	r0.<org.apache.log4j.TTCCLayout: boolean categoryPrefixing> = 1;	r0.<org.apache.log4j.TTCCLayout: boolean contextPrinting> = 1;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(256);	r0.<org.apache.log4j.TTCCLayout: java.lang.StringBuffer buf> = $r1;	virtualinvoke r0.<org.apache.log4j.TTCCLayout: void setDateFormat(java.lang.String)>(r2);	return
;block_num 1