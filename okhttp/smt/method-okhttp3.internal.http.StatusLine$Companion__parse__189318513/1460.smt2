(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1654 0)
(declare-sort var1313 0)
(declare-sort var2760 0)
(declare-sort var1376 0)
(declare-sort var3218 0)
(declare-sort var780 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2760_checkNotNullParameter/-2060636419 (var1376 String) void)
(declare-fun cast-from-String-to-var1376 (String) var1376)
(declare-fun var3218_startsWith$default/493066340 (String String Bool Int var1376) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var780-init () var780)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2134048064 (var780 String) void)
(declare-const null-var1654 var1654)
(declare-const null-String String)
(declare-const null-var1376 var1376)
(declare-const var772 var1654) ; Statement: r35 := @this: okhttp3.internal.http.StatusLine$Companion 
(assert (not (= var772 null-var1654)))
(declare-const var3439 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3439 null-String)))
;(assert (var2760_checkNotNullParameter/-2060636419 (cast-from-String-to-var1376 var3439) "statusLine")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "statusLine") 

(declare-const var3439!1 String)
(declare-const var2044 String)
(define-const var1744 Bool (var3218_startsWith$default/493066340 var3439!1 "HTTP/1." (ite (= 1 0) true false) 2 null-var1376)) ; Statement: $z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "HTTP/1.", 0, 2, null) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "ICY ", 0, 2, null) 
(assert (not (= (ite var1744 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3794 Int (length/-134980193 var3439!1)) ; Statement: $i8 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i8 < 9 goto $r40 = new java.net.ProtocolException 
(assert (< var3794 9)) ; Cond: $i8 < 9 
(define-const var2275 var780 var780-init) ; Statement: $r40 = new java.net.ProtocolException 
(define-const var1656 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1656)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1656!1 String)
(assert (= var1656!1 ""))
(assert true)
(define-const var694 String (append/672562846 var1656!1 "Unexpected status line: ")) ; Statement: $r21 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected status line: ") 
(declare-const var1656!2 String)
(assert (= var1656!2 (str.++ var1656!1 "Unexpected status line: ")))
(assert true)
(define-const var3659 String (append/672562846 var694 var3439!1)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var694!1 String)
(assert (= var694!1 (str.++ var694 var3439!1)))
(assert true)
(define-const var1600 String (toString/-2075883882 var3659)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2134048064 var2275 var1600)) ; Statement: specialinvoke $r40.<java.net.ProtocolException: void <init>(java.lang.String)>($r23) 

(declare-const var2275!1 var780)
(declare-const var1600!1 String)
 ; Statement: throw $r40 
(check-sat)
(get-model)
(get-unsat-core)
; {var2760_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1376=([java.lang.String], java.lang.Object), var3218_startsWith$default/493066340=([java.lang.String, java.lang.String, boolean, int, java.lang.Object], boolean), length/-134980193=([java.lang.String], int), var780-init=([], java.net.ProtocolException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2134048064=([java.net.ProtocolException, java.lang.String], void)}
; {var1654=okhttp3.internal.http.StatusLine$Companion, var772=r35, var3439=r0, var1313=null_type, var2760=kotlin.jvm.internal.Intrinsics, var1376=java.lang.Object, var2044="statusLine", var3218=kotlin.text.StringsKt, var1744=$z0, var3794=$i8, var780=java.net.ProtocolException, var2275=$r40, var1656=$r39, var694=$r21, var3659=$r22, var1600=$r23}
; {okhttp3.internal.http.StatusLine$Companion=var1654, r35=var772, r0=var3439, null_type=var1313, kotlin.jvm.internal.Intrinsics=var2760, java.lang.Object=var1376, "statusLine"=var2044, kotlin.text.StringsKt=var3218, $z0=var1744, $i8=var3794, java.net.ProtocolException=var780, $r40=var2275, $r39=var1656, $r21=var694, $r22=var3659, $r23=var1600}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r35 := @this: okhttp3.internal.http.StatusLine$Companion;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "statusLine");	$z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "HTTP/1.", 0, 2, null);	if $z0 == 0 goto $z1 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "ICY ", 0, 2, null);	$i8 = virtualinvoke r0.<java.lang.String: int length()>();	if $i8 < 9 goto $r40 = new java.net.ProtocolException;	$r40 = new java.net.ProtocolException;	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected status line: ");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r40.<java.net.ProtocolException: void <init>(java.lang.String)>($r23);	throw $r40
;block_num 3