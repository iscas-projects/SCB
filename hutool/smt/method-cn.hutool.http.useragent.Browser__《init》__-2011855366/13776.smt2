(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2296 0)
(declare-sort var428 0)
(declare-sort var1662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1847769183 (var1662 String String) void)
(declare-fun cast-from-var2296-to-var1662 (var2296) var1662)
(declare-const null-var2296 var2296)
(declare-const null-String String)
(declare-const var769 var2296) ; Statement: r0 := @this: cn.hutool.http.useragent.Browser 
(assert (not (= var769 null-var2296)))
(declare-const var522 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var522 null-String)))
(declare-const var2749 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2749 null-String)))
(declare-const var425 String) ; Statement: r8 := @parameter2: java.lang.String 
(assert (not (= var425 null-String)))
(assert true)
;(assert (<init>/-1847769183 (cast-from-var2296-to-var1662 var769) var522 var2749)) ; Statement: specialinvoke r0.<cn.hutool.http.useragent.UserAgentInfo: void <init>(java.lang.String,java.lang.String)>(r1, r2) 

(declare-const var769!1 var2296)
(declare-const var522!1 String)
(declare-const var2749!1 String)
(define-const var38 String "[\u005c/ ]([\u005cd\u005cw\u005c.\u005c-]+)") ; Statement: $r3 = "[\\/ ]([\\d\\w\\.\\-]+)" 
(assert true)
(define-const var276 Bool (= var38 var425)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r8) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var276 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if null == r8 goto return 
(assert (= null-String var425)) ; Cond: null == r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1847769183=([cn.hutool.http.useragent.UserAgentInfo, java.lang.String, java.lang.String], void), cast-from-var2296-to-var1662=([cn.hutool.http.useragent.Browser], cn.hutool.http.useragent.UserAgentInfo)}
; {var2296=cn.hutool.http.useragent.Browser, var769=r0, var522=r1, var428=null_type, var2749=r2, var425=r8, var1662=cn.hutool.http.useragent.UserAgentInfo, var38=$r3, var276=$z0}
; {cn.hutool.http.useragent.Browser=var2296, r0=var769, r1=var522, null_type=var428, r2=var2749, r8=var425, cn.hutool.http.useragent.UserAgentInfo=var1662, $r3=var38, $z0=var276}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: cn.hutool.http.useragent.Browser;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r8 := @parameter2: java.lang.String;	specialinvoke r0.<cn.hutool.http.useragent.UserAgentInfo: void <init>(java.lang.String,java.lang.String)>(r1, r2);	$r3 = "[\\/ ]([\\d\\w\\.\\-]+)";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r8);	if $z0 == 0 goto (branch);	if null == r8 goto return;	return
;block_num 3