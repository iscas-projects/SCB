(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var761 0)
(declare-sort var2031 0)
(declare-sort var616 0)
(declare-sort var310 0)
(declare-sort var3150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-179722659 (var616) void)
(declare-fun cast-from-var761-to-var616 (var761) var616)
(declare-fun BUF_SIZE/-2071271056 (var761) Int)
(declare-fun MAX_CAPACITY/-2071271056 (var761) Int)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun sbuf/-2071271056 (var761) String)
(declare-fun pattern/-2071271056 (var761) String)
(declare-fun createPatternParser/1974269377 (var761 String) var310)
(declare-fun parse/616658181 (var310) var3150)
(declare-fun head/-2071271056 (var761) var3150)
(declare-const null-var761 var761)
(declare-const null-String String)
(declare-const var915 var761) ; Statement: r0 := @this: org.apache.log4j.PatternLayout 
(assert (not (= var915 null-var761)))
(declare-const var9 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var9 null-String)))
(assert true)
;(assert (<init>/-179722659 (cast-from-var761-to-var616 var915))) ; Statement: specialinvoke r0.<org.apache.log4j.Layout: void <init>()>() 

(declare-const var915!1 var761)
(declare-const var915!2 var761)
(assert (not (= var915!2 null-var761)))
(assert (= (BUF_SIZE/-2071271056 var915!2) 256)) ; Statement: r0.<org.apache.log4j.PatternLayout: int BUF_SIZE> = 256 
(declare-const var915!3 var761)
(assert (not (= var915!3 null-var761)))
(assert (= (MAX_CAPACITY/-2071271056 var915!3) 1024)) ; Statement: r0.<org.apache.log4j.PatternLayout: int MAX_CAPACITY> = 1024 
(define-const var346 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var346 256)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(256) 

(declare-const var346!1 String)
(declare-const var1441 Int)
(declare-const var915!4 var761)
(assert (not (= var915!4 null-var761)))
(assert (= (sbuf/-2071271056 var915!4) var346!1)) ; Statement: r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf> = $r1 
(declare-const var915!5 var761)
(assert (not (= var915!5 null-var761)))
(assert (= (pattern/-2071271056 var915!5) var9)) ; Statement: r0.<org.apache.log4j.PatternLayout: java.lang.String pattern> = r2 
 ; Statement: if r2 != null goto $r5 = r2 
(assert (not (= var9 null-String))) ; Cond: r2 != null 
(define-const var3989 String var9) ; Statement: $r5 = r2 
(assert true) ; Non Conditional
(assert true)
(define-const var1846 var310 (createPatternParser/1974269377 var915!5 var3989)) ; Statement: $r3 = virtualinvoke r0.<org.apache.log4j.PatternLayout: org.apache.log4j.helpers.PatternParser createPatternParser(java.lang.String)>($r5) 
(assert true)
(define-const var83 var3150 (parse/616658181 var1846)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.log4j.helpers.PatternParser: org.apache.log4j.helpers.PatternConverter parse()>() 
(declare-const var915!6 var761)
(assert (not (= var915!6 null-var761)))
(assert (= (head/-2071271056 var915!6) var83)) ; Statement: r0.<org.apache.log4j.PatternLayout: org.apache.log4j.helpers.PatternConverter head> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-179722659=([org.apache.log4j.Layout], void), cast-from-var761-to-var616=([org.apache.log4j.PatternLayout], org.apache.log4j.Layout), BUF_SIZE/-2071271056=([org.apache.log4j.PatternLayout], int), MAX_CAPACITY/-2071271056=([org.apache.log4j.PatternLayout], int), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), sbuf/-2071271056=([org.apache.log4j.PatternLayout], java.lang.StringBuffer), pattern/-2071271056=([org.apache.log4j.PatternLayout], java.lang.String), createPatternParser/1974269377=([org.apache.log4j.PatternLayout, java.lang.String], org.apache.log4j.helpers.PatternParser), parse/616658181=([org.apache.log4j.helpers.PatternParser], org.apache.log4j.helpers.PatternConverter), head/-2071271056=([org.apache.log4j.PatternLayout], org.apache.log4j.helpers.PatternConverter)}
; {var761=org.apache.log4j.PatternLayout, var915=r0, var9=r2, var2031=null_type, var616=org.apache.log4j.Layout, var346=$r1, var1441=256, var3989=$r5, var310=org.apache.log4j.helpers.PatternParser, var1846=$r3, var3150=org.apache.log4j.helpers.PatternConverter, var83=$r4}
; {org.apache.log4j.PatternLayout=var761, r0=var915, r2=var9, null_type=var2031, org.apache.log4j.Layout=var616, $r1=var346, 256=var1441, $r5=var3989, org.apache.log4j.helpers.PatternParser=var310, $r3=var1846, org.apache.log4j.helpers.PatternConverter=var3150, $r4=var83}
;seq <java.lang.StringBuffer: void <init>(int)>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.log4j.PatternLayout;	r2 := @parameter0: java.lang.String;	specialinvoke r0.<org.apache.log4j.Layout: void <init>()>();	r0.<org.apache.log4j.PatternLayout: int BUF_SIZE> = 256;	r0.<org.apache.log4j.PatternLayout: int MAX_CAPACITY> = 1024;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(256);	r0.<org.apache.log4j.PatternLayout: java.lang.StringBuffer sbuf> = $r1;	r0.<org.apache.log4j.PatternLayout: java.lang.String pattern> = r2;	if r2 != null goto $r5 = r2;	$r5 = r2;	$r3 = virtualinvoke r0.<org.apache.log4j.PatternLayout: org.apache.log4j.helpers.PatternParser createPatternParser(java.lang.String)>($r5);	$r4 = virtualinvoke $r3.<org.apache.log4j.helpers.PatternParser: org.apache.log4j.helpers.PatternConverter parse()>();	r0.<org.apache.log4j.PatternLayout: org.apache.log4j.helpers.PatternConverter head> = $r4;	return
;block_num 3