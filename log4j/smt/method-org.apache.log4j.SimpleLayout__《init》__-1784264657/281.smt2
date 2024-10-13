(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3484 0)
(declare-sort var596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-179722659 (var596) void)
(declare-fun cast-from-var3484-to-var596 (var3484) var596)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun sbuf/1879170598 (var3484) String)
(declare-const null-var3484 var3484)
(declare-const var1493 var3484) ; Statement: r0 := @this: org.apache.log4j.SimpleLayout 
(assert (not (= var1493 null-var3484)))
(assert true)
;(assert (<init>/-179722659 (cast-from-var3484-to-var596 var1493))) ; Statement: specialinvoke r0.<org.apache.log4j.Layout: void <init>()>() 

(declare-const var1493!1 var3484)
(define-const var2478 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var2478 128)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(128) 

(declare-const var2478!1 String)
(declare-const var6 Int)
(declare-const var1493!2 var3484)
(assert (not (= var1493!2 null-var3484)))
(assert (= (sbuf/1879170598 var1493!2) var2478!1)) ; Statement: r0.<org.apache.log4j.SimpleLayout: java.lang.StringBuffer sbuf> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-179722659=([org.apache.log4j.Layout], void), cast-from-var3484-to-var596=([org.apache.log4j.SimpleLayout], org.apache.log4j.Layout), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), sbuf/1879170598=([org.apache.log4j.SimpleLayout], java.lang.StringBuffer)}
; {var3484=org.apache.log4j.SimpleLayout, var1493=r0, var596=org.apache.log4j.Layout, var2478=$r1, var6=128}
; {org.apache.log4j.SimpleLayout=var3484, r0=var1493, org.apache.log4j.Layout=var596, $r1=var2478, 128=var6}
;seq <java.lang.StringBuffer: void <init>(int)>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.log4j.SimpleLayout;	specialinvoke r0.<org.apache.log4j.Layout: void <init>()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(128);	r0.<org.apache.log4j.SimpleLayout: java.lang.StringBuffer sbuf> = $r1;	return
;block_num 1