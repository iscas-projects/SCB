(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1701 0)
(declare-sort var1567 0)
(declare-sort var2541 0)
(declare-sort var1332 0)
(declare-sort var693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-179722659 (var2541) void)
(declare-fun cast-from-var1701-to-var2541 (var1701) var2541)
(declare-fun BUF_SIZE/-2071271056 (var1701) Int)
(declare-fun MAX_CAPACITY/-2071271056 (var1701) Int)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun sbuf/-2071271056 (var1701) String)
(declare-fun pattern/-2071271056 (var1701) String)
(declare-fun createPatternParser/1974269377 (var1701 String) var1332)
(declare-fun parse/616658181 (var1332) var693)
(declare-fun head/-2071271056 (var1701) var693)
(declare-const null-var1701 var1701)
(declare-const null-String String)
(declare-const var2934 var1701) ; Statement: r0 := @this: org.apache.log4j.PatternLayout 
(assert (not (= var2934 null-var1701)))
(declare-const var1362 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1362 null-String)))
(assert true)
;(assert (<init>/-179722659 (cast-from-var1701-to-var2541 var2934))) ; Statement: specialinvoke r0.<org.apache.log4j.Layout: void <init>()>() 

(declare-const var2934!1 var1701)
(declare-const var2934!2 var1701)
(assert (not (= var2934!2 null-var1701)))
(assert (= (BUF_SIZE/-2071271056 var2934!2) 256)) ; Statement: r0.<org.apache.log4j.PatternLayout: int BUF_SIZE> = 256 
(declare-const var2934!3 var1701)
(assert (not (= var2934!3 null-var1701)))
(assert (= (MAX_CAPACITY/-2071271056 var2934!3) 1024)) ; Statement: r0.<org.apache.log4j.PatternLayout: int MAX_CAPACITY> = 1024 
(define-const var1838 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var1838 256)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(256) 

(declare-const var1838!1 String)
(declare-const var2966 Int)
(declare-const var2934!4 var1701)
(assert (not (= var2934!4 null-var1701)))
(assert (= (sbuf/-2071271056 var2934!4) var1838!1)) ; Statement: r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf> = $r1 
(declare-const var2934!5 var1701)
(assert (not (= var2934!5 null-var1701)))
(assert (= (pattern/-2071271056 var2934!5) var1362)) ; Statement: r0.<org.apache.log4j.PatternLayout: java.lang.String pattern> = r2 
 ; Statement: if r2 != null goto $r5 = r2 
(assert (not (not (= var1362 null-String)))) ; Negate: Cond: r2 != null  
(define-const var2202 String "%m%n") ; Statement: $r5 = "%m%n" 
 ; Statement: goto [?= $r3 = virtualinvoke r0.<org.apache.log4j.PatternLayout: org.apache.log4j.helpers.PatternParser createPatternParser(java.lang.String)>($r5)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1383 var1332 (createPatternParser/1974269377 var2934!5 var2202)) ; Statement: $r3 = virtualinvoke r0.<org.apache.log4j.PatternLayout: org.apache.log4j.helpers.PatternParser createPatternParser(java.lang.String)>($r5) 
(assert true)
(define-const var355 var693 (parse/616658181 var1383)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.log4j.helpers.PatternParser: org.apache.log4j.helpers.PatternConverter parse()>() 
(declare-const var2934!6 var1701)
(assert (not (= var2934!6 null-var1701)))
(assert (= (head/-2071271056 var2934!6) var355)) ; Statement: r0.<org.apache.log4j.PatternLayout: org.apache.log4j.helpers.PatternConverter head> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-179722659=([org.apache.log4j.Layout], void), cast-from-var1701-to-var2541=([org.apache.log4j.PatternLayout], org.apache.log4j.Layout), BUF_SIZE/-2071271056=([org.apache.log4j.PatternLayout], int), MAX_CAPACITY/-2071271056=([org.apache.log4j.PatternLayout], int), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), sbuf/-2071271056=([org.apache.log4j.PatternLayout], java.lang.StringBuffer), pattern/-2071271056=([org.apache.log4j.PatternLayout], java.lang.String), createPatternParser/1974269377=([org.apache.log4j.PatternLayout, java.lang.String], org.apache.log4j.helpers.PatternParser), parse/616658181=([org.apache.log4j.helpers.PatternParser], org.apache.log4j.helpers.PatternConverter), head/-2071271056=([org.apache.log4j.PatternLayout], org.apache.log4j.helpers.PatternConverter)}
; {var1701=org.apache.log4j.PatternLayout, var2934=r0, var1362=r2, var1567=null_type, var2541=org.apache.log4j.Layout, var1838=$r1, var2966=256, var2202=$r5, var1332=org.apache.log4j.helpers.PatternParser, var1383=$r3, var693=org.apache.log4j.helpers.PatternConverter, var355=$r4}
; {org.apache.log4j.PatternLayout=var1701, r0=var2934, r2=var1362, null_type=var1567, org.apache.log4j.Layout=var2541, $r1=var1838, 256=var2966, $r5=var2202, org.apache.log4j.helpers.PatternParser=var1332, $r3=var1383, org.apache.log4j.helpers.PatternConverter=var693, $r4=var355}
;seq <java.lang.StringBuffer: void <init>(int)>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.log4j.PatternLayout;	r2 := @parameter0: java.lang.String;	specialinvoke r0.<org.apache.log4j.Layout: void <init>()>();	r0.<org.apache.log4j.PatternLayout: int BUF_SIZE> = 256;	r0.<org.apache.log4j.PatternLayout: int MAX_CAPACITY> = 1024;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(256);	r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf> = $r1;	r0.<org.apache.log4j.PatternLayout: java.lang.String pattern> = r2;	if r2 != null goto $r5 = r2;	$r5 = "%m%n";	goto [?= $r3 = virtualinvoke r0.<org.apache.log4j.PatternLayout: org.apache.log4j.helpers.PatternParser createPatternParser(java.lang.String)>($r5)];	$r3 = virtualinvoke r0.<org.apache.log4j.PatternLayout: org.apache.log4j.helpers.PatternParser createPatternParser(java.lang.String)>($r5);	$r4 = virtualinvoke $r3.<org.apache.log4j.helpers.PatternParser: org.apache.log4j.helpers.PatternConverter parse()>();	r0.<org.apache.log4j.PatternLayout: org.apache.log4j.helpers.PatternConverter head> = $r4;	return
;block_num 3