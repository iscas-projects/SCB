(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1307 0)
(declare-sort var3489 0)
(declare-sort var2487 0)
(declare-sort var2149 0)
(declare-sort var3655 0)
(declare-sort var760 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2487_checkNotNullParameter/-2060636419 (var2149 String) void)
(declare-fun cast-from-String-to-var2149 (String) var2149)
(declare-fun var3655_startsWith$default/493066340 (String String Bool Int var2149) Bool)
(declare-fun var760-init () var760)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2134048064 (var760 String) void)
(declare-const null-var1307 var1307)
(declare-const null-String String)
(declare-const null-var2149 var2149)
(declare-const var2183 var1307) ; Statement: r35 := @this: okhttp3.internal.http.StatusLine$Companion 
(assert (not (= var2183 null-var1307)))
(declare-const var3170 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3170 null-String)))
;(assert (var2487_checkNotNullParameter/-2060636419 (cast-from-String-to-var2149 var3170) "statusLine")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "statusLine") 

(declare-const var3170!1 String)
(declare-const var370 String)
(define-const var2061 Bool (var3655_startsWith$default/493066340 var3170!1 "HTTP/1." (ite (= 1 0) true false) 2 null-var2149)) ; Statement: $z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "HTTP/1.", 0, 2, null) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "ICY ", 0, 2, null) 
(assert (= (ite var2061 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2169 Bool (var3655_startsWith$default/493066340 var3170!1 "ICY " (ite (= 1 0) true false) 2 null-var2149)) ; Statement: $z1 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "ICY ", 0, 2, null) 
 ; Statement: if $z1 == 0 goto $r44 = new java.net.ProtocolException 
(assert (= (ite var2169 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1133 var760 var760-init) ; Statement: $r44 = new java.net.ProtocolException 
(define-const var1739 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1739)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1739!1 String)
(assert (= var1739!1 ""))
(assert true)
(define-const var1498 String (append/672562846 var1739!1 "Unexpected status line: ")) ; Statement: $r3 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected status line: ") 
(declare-const var1739!2 String)
(assert (= var1739!2 (str.++ var1739!1 "Unexpected status line: ")))
(assert true)
(define-const var3722 String (append/672562846 var1498 var3170!1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1498!1 String)
(assert (= var1498!1 (str.++ var1498 var3170!1)))
(assert true)
(define-const var1586 String (toString/-2075883882 var3722)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2134048064 var1133 var1586)) ; Statement: specialinvoke $r44.<java.net.ProtocolException: void <init>(java.lang.String)>($r5) 

(declare-const var1133!1 var760)
(declare-const var1586!1 String)
 ; Statement: throw $r44 
(check-sat)
(get-model)
(get-unsat-core)
; {var2487_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2149=([java.lang.String], java.lang.Object), var3655_startsWith$default/493066340=([java.lang.String, java.lang.String, boolean, int, java.lang.Object], boolean), var760-init=([], java.net.ProtocolException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2134048064=([java.net.ProtocolException, java.lang.String], void)}
; {var1307=okhttp3.internal.http.StatusLine$Companion, var2183=r35, var3170=r0, var3489=null_type, var2487=kotlin.jvm.internal.Intrinsics, var2149=java.lang.Object, var370="statusLine", var3655=kotlin.text.StringsKt, var2061=$z0, var2169=$z1, var760=java.net.ProtocolException, var1133=$r44, var1739=$r43, var1498=$r3, var3722=$r4, var1586=$r5}
; {okhttp3.internal.http.StatusLine$Companion=var1307, r35=var2183, r0=var3170, null_type=var3489, kotlin.jvm.internal.Intrinsics=var2487, java.lang.Object=var2149, "statusLine"=var370, kotlin.text.StringsKt=var3655, $z0=var2061, $z1=var2169, java.net.ProtocolException=var760, $r44=var1133, $r43=var1739, $r3=var1498, $r4=var3722, $r5=var1586}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r35 := @this: okhttp3.internal.http.StatusLine$Companion;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "statusLine");	$z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "HTTP/1.", 0, 2, null);	if $z0 == 0 goto $z1 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "ICY ", 0, 2, null);	$z1 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "ICY ", 0, 2, null);	if $z1 == 0 goto $r44 = new java.net.ProtocolException;	$r44 = new java.net.ProtocolException;	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected status line: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r44.<java.net.ProtocolException: void <init>(java.lang.String)>($r5);	throw $r44
;block_num 3