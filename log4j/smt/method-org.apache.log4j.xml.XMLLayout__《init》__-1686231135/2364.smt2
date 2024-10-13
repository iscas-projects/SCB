(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3380 0)
(declare-sort var1935 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-179722659 (var1935) void)
(declare-fun cast-from-var3380-to-var1935 (var3380) var1935)
(declare-fun DEFAULT_SIZE/545532832 (var3380) Int)
(declare-fun UPPER_LIMIT/545532832 (var3380) Int)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun buf/545532832 (var3380) String)
(declare-fun locationInfo/545532832 (var3380) Bool)
(declare-fun properties/545532832 (var3380) Bool)
(declare-const null-var3380 var3380)
(declare-const var1372 var3380) ; Statement: r0 := @this: org.apache.log4j.xml.XMLLayout 
(assert (not (= var1372 null-var3380)))
(assert true)
;(assert (<init>/-179722659 (cast-from-var3380-to-var1935 var1372))) ; Statement: specialinvoke r0.<org.apache.log4j.Layout: void <init>()>() 

(declare-const var1372!1 var3380)
(declare-const var1372!2 var3380)
(assert (not (= var1372!2 null-var3380)))
(assert (= (DEFAULT_SIZE/545532832 var1372!2) 256)) ; Statement: r0.<org.apache.log4j.xml.XMLLayout: int DEFAULT_SIZE> = 256 
(declare-const var1372!3 var3380)
(assert (not (= var1372!3 null-var3380)))
(assert (= (UPPER_LIMIT/545532832 var1372!3) 2048)) ; Statement: r0.<org.apache.log4j.xml.XMLLayout: int UPPER_LIMIT> = 2048 
(define-const var62 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var62 256)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(256) 

(declare-const var62!1 String)
(declare-const var464 Int)
(declare-const var1372!4 var3380)
(assert (not (= var1372!4 null-var3380)))
(assert (= (buf/545532832 var1372!4) var62!1)) ; Statement: r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> = $r1 
(declare-const var1372!5 var3380)
(assert (not (= var1372!5 null-var3380)))
(assert (= (locationInfo/545532832 var1372!5) (ite (= 1 0) true false))) ; Statement: r0.<org.apache.log4j.xml.XMLLayout: boolean locationInfo> = 0 
(declare-const var1372!6 var3380)
(assert (not (= var1372!6 null-var3380)))
(assert (= (properties/545532832 var1372!6) (ite (= 1 0) true false))) ; Statement: r0.<org.apache.log4j.xml.XMLLayout: boolean properties> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-179722659=([org.apache.log4j.Layout], void), cast-from-var3380-to-var1935=([org.apache.log4j.xml.XMLLayout], org.apache.log4j.Layout), DEFAULT_SIZE/545532832=([org.apache.log4j.xml.XMLLayout], int), UPPER_LIMIT/545532832=([org.apache.log4j.xml.XMLLayout], int), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), buf/545532832=([org.apache.log4j.xml.XMLLayout], java.lang.StringBuffer), locationInfo/545532832=([org.apache.log4j.xml.XMLLayout], boolean), properties/545532832=([org.apache.log4j.xml.XMLLayout], boolean)}
; {var3380=org.apache.log4j.xml.XMLLayout, var1372=r0, var1935=org.apache.log4j.Layout, var62=$r1, var464=256}
; {org.apache.log4j.xml.XMLLayout=var3380, r0=var1372, org.apache.log4j.Layout=var1935, $r1=var62, 256=var464}
;seq <java.lang.StringBuffer: void <init>(int)>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.log4j.xml.XMLLayout;	specialinvoke r0.<org.apache.log4j.Layout: void <init>()>();	r0.<org.apache.log4j.xml.XMLLayout: int DEFAULT_SIZE> = 256;	r0.<org.apache.log4j.xml.XMLLayout: int UPPER_LIMIT> = 2048;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(256);	r0.<org.apache.log4j.xml.XMLLayout: java.lang.StringBuffer buf> = $r1;	r0.<org.apache.log4j.xml.XMLLayout: boolean locationInfo> = 0;	r0.<org.apache.log4j.xml.XMLLayout: boolean properties> = 0;	return
;block_num 1