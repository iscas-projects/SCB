(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3578 0)
(declare-sort var2121 0)
(declare-sort var3858 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun queryNamesAndValues/-122403576 (var3578) var2121)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toQueryString$okhttp/1141793833 (var3858 var2121 String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3578 var3578)
(declare-const null-var2121 var2121)
(declare-const var3578-Companion var3858)
(declare-const var3220 var3578) ; Statement: r0 := @this: okhttp3.HttpUrl 
(assert (not (= var3220 null-var3578)))
(define-const var510 var2121 (queryNamesAndValues/-122403576 var3220)) ; Statement: $r1 = r0.<okhttp3.HttpUrl: java.util.List queryNamesAndValues> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var510 null-var2121))) ; Cond: $r1 != null 
(define-const var2944 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2944)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2944!1 String)
(assert (= var2944!1 ""))
(define-const var43 var3858 var3578-Companion) ; Statement: $r4 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion> 
(define-const var95 var2121 (queryNamesAndValues/-122403576 var3220)) ; Statement: $r3 = r0.<okhttp3.HttpUrl: java.util.List queryNamesAndValues> 
(assert true)
;(assert (toQueryString$okhttp/1141793833 var43 var95 var2944!1)) ; Statement: virtualinvoke $r4.<okhttp3.HttpUrl$Companion: void toQueryString$okhttp(java.util.List,java.lang.StringBuilder)>($r3, $r2) 

(declare-const var43!1 var3858)
(declare-const var95!1 var2121)
(declare-const var2944!2 String)
(assert true)
(define-const var2670 String (toString/-2075883882 var2944!2)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {queryNamesAndValues/-122403576=([okhttp3.HttpUrl], java.util.List), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toQueryString$okhttp/1141793833=([okhttp3.HttpUrl$Companion, java.util.List, java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3578=okhttp3.HttpUrl, var3220=r0, var2121=java.util.List, var510=$r1, var2944=$r2, var3858=okhttp3.HttpUrl$Companion, var43=$r4, var95=$r3, var2670=$r5}
; {okhttp3.HttpUrl=var3578, r0=var3220, java.util.List=var2121, $r1=var510, $r2=var2944, okhttp3.HttpUrl$Companion=var3858, $r4=var43, $r3=var95, $r5=var2670}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.HttpUrl;	$r1 = r0.<okhttp3.HttpUrl: java.util.List queryNamesAndValues>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = <okhttp3.HttpUrl: okhttp3.HttpUrl$Companion Companion>;	$r3 = r0.<okhttp3.HttpUrl: java.util.List queryNamesAndValues>;	virtualinvoke $r4.<okhttp3.HttpUrl$Companion: void toQueryString$okhttp(java.util.List,java.lang.StringBuilder)>($r3, $r2);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 2