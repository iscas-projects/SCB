(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2235 0)
(declare-sort var2075 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-179722659 (var2075) void)
(declare-fun cast-from-var2235-to-var2075 (var2235) var2075)
(declare-fun BUF_SIZE/1197757375 (var2235) Int)
(declare-fun MAX_CAPACITY/1197757375 (var2235) Int)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun sbuf/1197757375 (var2235) String)
(declare-fun locationInfo/1197757375 (var2235) Bool)
(declare-fun title/1197757375 (var2235) String)
(declare-const null-var2235 var2235)
(declare-const var2480 var2235) ; Statement: r0 := @this: org.apache.log4j.HTMLLayout 
(assert (not (= var2480 null-var2235)))
(assert true)
;(assert (<init>/-179722659 (cast-from-var2235-to-var2075 var2480))) ; Statement: specialinvoke r0.<org.apache.log4j.Layout: void <init>()>() 

(declare-const var2480!1 var2235)
(declare-const var2480!2 var2235)
(assert (not (= var2480!2 null-var2235)))
(assert (= (BUF_SIZE/1197757375 var2480!2) 256)) ; Statement: r0.<org.apache.log4j.HTMLLayout: int BUF_SIZE> = 256 
(declare-const var2480!3 var2235)
(assert (not (= var2480!3 null-var2235)))
(assert (= (MAX_CAPACITY/1197757375 var2480!3) 1024)) ; Statement: r0.<org.apache.log4j.HTMLLayout: int MAX_CAPACITY> = 1024 
(define-const var1806 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var1806 256)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(256) 

(declare-const var1806!1 String)
(declare-const var344 Int)
(declare-const var2480!4 var2235)
(assert (not (= var2480!4 null-var2235)))
(assert (= (sbuf/1197757375 var2480!4) var1806!1)) ; Statement: r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> = $r1 
(declare-const var2480!5 var2235)
(assert (not (= var2480!5 null-var2235)))
(assert (= (locationInfo/1197757375 var2480!5) (ite (= 1 0) true false))) ; Statement: r0.<org.apache.log4j.HTMLLayout: boolean locationInfo> = 0 
(declare-const var2480!6 var2235)
(assert (not (= var2480!6 null-var2235)))
(assert (= (title/1197757375 var2480!6) "Log4J Log Messages")) ; Statement: r0.<org.apache.log4j.HTMLLayout: java.lang.String title> = "Log4J Log Messages" 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-179722659=([org.apache.log4j.Layout], void), cast-from-var2235-to-var2075=([org.apache.log4j.HTMLLayout], org.apache.log4j.Layout), BUF_SIZE/1197757375=([org.apache.log4j.HTMLLayout], int), MAX_CAPACITY/1197757375=([org.apache.log4j.HTMLLayout], int), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), sbuf/1197757375=([org.apache.log4j.HTMLLayout], java.lang.StringBuffer), locationInfo/1197757375=([org.apache.log4j.HTMLLayout], boolean), title/1197757375=([org.apache.log4j.HTMLLayout], java.lang.String)}
; {var2235=org.apache.log4j.HTMLLayout, var2480=r0, var2075=org.apache.log4j.Layout, var1806=$r1, var344=256}
; {org.apache.log4j.HTMLLayout=var2235, r0=var2480, org.apache.log4j.Layout=var2075, $r1=var1806, 256=var344}
;seq <java.lang.StringBuffer: void <init>(int)>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.log4j.HTMLLayout;	specialinvoke r0.<org.apache.log4j.Layout: void <init>()>();	r0.<org.apache.log4j.HTMLLayout: int BUF_SIZE> = 256;	r0.<org.apache.log4j.HTMLLayout: int MAX_CAPACITY> = 1024;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(256);	r0.<org.apache.log4j.HTMLLayout: java.lang.StringBuffer sbuf> = $r1;	r0.<org.apache.log4j.HTMLLayout: boolean locationInfo> = 0;	r0.<org.apache.log4j.HTMLLayout: java.lang.String title> = "Log4J Log Messages";	return
;block_num 1