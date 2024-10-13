(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1630 0)
(declare-sort var1076 0)
(declare-sort var2987 0)
(declare-sort var3241 0)
(declare-sort var2198 0)
(declare-sort var2847 0)
(declare-sort var714 0)
(declare-sort var88 0)
(declare-sort var2175 0)
(declare-sort var1163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3241_checkNotNullParameter/-2060636419 (var2198 String) void)
(declare-fun cast-from-String-to-var2198 (String) var2198)
(declare-fun cast-from-var2987-to-var2198 (var2987) var2198)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendQuotedString$okhttp/-2083224306 (var2847 String String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3241_checkNotNullExpressionValue/47304269 (var2198 String) void)
(declare-fun var88-init () var88)
(declare-fun <init>/-1034978905 (var88) void)
(declare-fun addUnsafeNonAscii/-984261350 (var88 String String) var88)
(declare-fun build/1856585968 (var88) var2175)
(declare-fun create/-868526116 (var1630 var2175 var2987) var1163)
(declare-const null-var1630 var1630)
(declare-const null-String String)
(declare-const null-var2987 var2987)
(declare-const var714-Companion var2847)
(declare-const var1684 var1630) ; Statement: r8 := @this: okhttp3.MultipartBody$Part$Companion 
(assert (not (= var1684 null-var1630)))
(declare-const var1904 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1904 null-String)))
(declare-const var3349 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3349 null-String)))
(declare-const var2540 var2987) ; Statement: r1 := @parameter2: okhttp3.RequestBody 
(assert (not (= var2540 null-var2987)))
;(assert (var3241_checkNotNullParameter/-2060636419 (cast-from-String-to-var2198 var1904) "name")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "name") 

(declare-const var1904!1 String)
(declare-const var445 String)
;(assert (var3241_checkNotNullParameter/-2060636419 (cast-from-var2987-to-var2198 var2540) "body")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "body") 

(declare-const var2540!1 var2987)
(declare-const var932 String)
(define-const var1354 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1354)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1354!1 String)
(assert (= var1354!1 ""))
(assert true)
;(assert (append/672562846 var1354!1 "form-data; name=")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("form-data; name=") 
(declare-const var1354!2 String)
(assert (= var1354!2 (str.++ var1354!1 "form-data; name=")))
(define-const var271 var2847 var714-Companion) ; Statement: $r3 = <okhttp3.MultipartBody: okhttp3.MultipartBody$Companion Companion> 
(assert true)
;(assert (appendQuotedString$okhttp/-2083224306 var271 var1354!2 var1904!1)) ; Statement: virtualinvoke $r3.<okhttp3.MultipartBody$Companion: void appendQuotedString$okhttp(java.lang.StringBuilder,java.lang.String)>($r2, r0) 

(declare-const var271!1 var2847)
(declare-const var1354!3 String)
(declare-const var1904!2 String)
 ; Statement: if r4 == null goto $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3349 null-String)) ; Cond: r4 == null 
(assert true)
(define-const var3190 String (toString/-2075883882 var1354!3)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3241_checkNotNullExpressionValue/47304269 (cast-from-String-to-var2198 var3190) "StringBuilder().apply(builderAction).toString()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r5, "StringBuilder().apply(builderAction).toString()") 

(declare-const var3190!1 String)
(declare-const var3167 String)
(define-const var2258 var88 var88-init) ; Statement: $r6 = new okhttp3.Headers$Builder 
(assert true)
;(assert (<init>/-1034978905 var2258)) ; Statement: specialinvoke $r6.<okhttp3.Headers$Builder: void <init>()>() 

(declare-const var2258!1 var88)
(assert true)
(define-const var1952 var88 (addUnsafeNonAscii/-984261350 var2258!1 "Content-Disposition" var3190!1)) ; Statement: $r7 = virtualinvoke $r6.<okhttp3.Headers$Builder: okhttp3.Headers$Builder addUnsafeNonAscii(java.lang.String,java.lang.String)>("Content-Disposition", $r5) 
(assert true)
(define-const var2687 var2175 (build/1856585968 var1952)) ; Statement: $r11 = virtualinvoke $r7.<okhttp3.Headers$Builder: okhttp3.Headers build()>() 
(assert true)
(define-const var1311 var1163 (create/-868526116 var1684 var2687 var2540!1)) ; Statement: $r9 = virtualinvoke r8.<okhttp3.MultipartBody$Part$Companion: okhttp3.MultipartBody$Part create(okhttp3.Headers,okhttp3.RequestBody)>($r11, r1) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3241_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2198=([java.lang.String], java.lang.Object), cast-from-var2987-to-var2198=([okhttp3.RequestBody], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), appendQuotedString$okhttp/-2083224306=([okhttp3.MultipartBody$Companion, java.lang.StringBuilder, java.lang.String], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3241_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), var88-init=([], okhttp3.Headers$Builder), <init>/-1034978905=([okhttp3.Headers$Builder], void), addUnsafeNonAscii/-984261350=([okhttp3.Headers$Builder, java.lang.String, java.lang.String], okhttp3.Headers$Builder), build/1856585968=([okhttp3.Headers$Builder], okhttp3.Headers), create/-868526116=([okhttp3.MultipartBody$Part$Companion, okhttp3.Headers, okhttp3.RequestBody], okhttp3.MultipartBody$Part)}
; {var1630=okhttp3.MultipartBody$Part$Companion, var1684=r8, var1904=r0, var1076=null_type, var3349=r4, var2987=okhttp3.RequestBody, var2540=r1, var3241=kotlin.jvm.internal.Intrinsics, var2198=java.lang.Object, var445="name", var932="body", var1354=$r2, var2847=okhttp3.MultipartBody$Companion, var714=okhttp3.MultipartBody, var271=$r3, var3190=$r5, var3167="StringBuilder().apply(builderAction).toString()", var88=okhttp3.Headers$Builder, var2258=$r6, var1952=$r7, var2175=okhttp3.Headers, var2687=$r11, var1163=okhttp3.MultipartBody$Part, var1311=$r9}
; {okhttp3.MultipartBody$Part$Companion=var1630, r8=var1684, r0=var1904, null_type=var1076, r4=var3349, okhttp3.RequestBody=var2987, r1=var2540, kotlin.jvm.internal.Intrinsics=var3241, java.lang.Object=var2198, "name"=var445, "body"=var932, $r2=var1354, okhttp3.MultipartBody$Companion=var2847, okhttp3.MultipartBody=var714, $r3=var271, $r5=var3190, "StringBuilder().apply(builderAction).toString()"=var3167, okhttp3.Headers$Builder=var88, $r6=var2258, $r7=var1952, okhttp3.Headers=var2175, $r11=var2687, okhttp3.MultipartBody$Part=var1163, $r9=var1311}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: okhttp3.MultipartBody$Part$Companion;	r0 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r1 := @parameter2: okhttp3.RequestBody;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "name");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "body");	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("form-data; name=");	$r3 = <okhttp3.MultipartBody: okhttp3.MultipartBody$Companion Companion>;	virtualinvoke $r3.<okhttp3.MultipartBody$Companion: void appendQuotedString$okhttp(java.lang.StringBuilder,java.lang.String)>($r2, r0);	if r4 == null goto $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r5, "StringBuilder().apply(builderAction).toString()");	$r6 = new okhttp3.Headers$Builder;	specialinvoke $r6.<okhttp3.Headers$Builder: void <init>()>();	$r7 = virtualinvoke $r6.<okhttp3.Headers$Builder: okhttp3.Headers$Builder addUnsafeNonAscii(java.lang.String,java.lang.String)>("Content-Disposition", $r5);	$r11 = virtualinvoke $r7.<okhttp3.Headers$Builder: okhttp3.Headers build()>();	$r9 = virtualinvoke r8.<okhttp3.MultipartBody$Part$Companion: okhttp3.MultipartBody$Part create(okhttp3.Headers,okhttp3.RequestBody)>($r11, r1);	return $r9
;block_num 2