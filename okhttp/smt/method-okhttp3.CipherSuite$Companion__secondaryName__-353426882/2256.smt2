(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2299 0)
(declare-sort var2114 0)
(declare-sort var1159 0)
(declare-sort var2941 0)
(declare-sort var3201 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1159_startsWith$default/493066340 (String String Bool Int var2941) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var3201_checkNotNullExpressionValue/47304269 (var2941 String) void)
(declare-fun cast-from-String-to-var2941 (String) var2941)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2299 var2299)
(declare-const null-String String)
(declare-const null-var2941 var2941)
(declare-const var3997 var2299) ; Statement: r9 := @this: okhttp3.CipherSuite$Companion 
(assert (not (= var3997 null-var2299)))
(declare-const var2734 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2734 null-String)))
(define-const var321 Bool (var1159_startsWith$default/493066340 var2734 "TLS_" (ite (= 1 0) true false) 2 null-var2941)) ; Statement: $z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "TLS_", 0, 2, null) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "SSL_", 0, 2, null) 
(assert (not (= (ite var321 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var592 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var592)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var592!1 String)
(assert (= var592!1 ""))
(assert true)
(define-const var3720 String (append/672562846 var592!1 "SSL_")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SSL_") 
(declare-const var592!2 String)
(assert (= var592!2 (str.++ var592!1 "SSL_")))
(assert (and true (and (>= 4 0) (>= (str.len var2734) 4))))
(define-const var3370 String (substring/850833817 var2734 4)) ; Statement: $r6 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(4) 
;(assert (var3201_checkNotNullExpressionValue/47304269 (cast-from-String-to-var2941 var3370) "this as java.lang.String).substring(startIndex)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r6, "this as java.lang.String).substring(startIndex)") 

(declare-const var3370!1 String)
(declare-const var720 String)
(assert true)
(define-const var936 String (append/672562846 var3720 var3370!1)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3720!1 String)
(assert (= var3720!1 (str.++ var3720 var3370!1)))
(assert true)
(define-const var3065 String (toString/-2075883882 var936)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r10] 
(assert true) ; Non Conditional
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var1159_startsWith$default/493066340=([java.lang.String, java.lang.String, boolean, int, java.lang.Object], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), var3201_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2941=([java.lang.String], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2299=okhttp3.CipherSuite$Companion, var3997=r9, var2734=r0, var2114=null_type, var1159=kotlin.text.StringsKt, var2941=java.lang.Object, var321=$z0, var592=$r5, var3720=$r7, var3370=$r6, var3201=kotlin.jvm.internal.Intrinsics, var720="this as java.lang.String).substring(startIndex)", var936=$r8, var3065=$r10}
; {okhttp3.CipherSuite$Companion=var2299, r9=var3997, r0=var2734, null_type=var2114, kotlin.text.StringsKt=var1159, java.lang.Object=var2941, $z0=var321, $r5=var592, $r7=var3720, $r6=var3370, kotlin.jvm.internal.Intrinsics=var3201, "this as java.lang.String).substring(startIndex)"=var720, $r8=var936, $r10=var3065}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: okhttp3.CipherSuite$Companion;	r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "TLS_", 0, 2, null);	if $z0 == 0 goto $z1 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "SSL_", 0, 2, null);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SSL_");	$r6 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(4);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r6, "this as java.lang.String).substring(startIndex)");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r10];	return $r10
;block_num 3