(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3531 0)
(declare-sort var401 0)
(declare-sort var2128 0)
(declare-sort var2746 0)
(declare-sort var3810 0)
(declare-sort var223 0)
(declare-sort var1633 0)
(declare-sort var735 0)
(declare-sort var3359 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2746_checkNotNullParameter/-2060636419 (var3810 String) void)
(declare-fun cast-from-String-to-var3810 (String) var3810)
(declare-fun var223_indexOfFirstNonAsciiWhitespace$default/1788129714 (String Int Int Int var3810) Int)
(declare-fun var223_indexOfLastNonAsciiWhitespace$default/453564748 (String Int Int Int var3810) Int)
(declare-fun var1633_access$schemeDelimiterOffset/-1082311082 (var1633 String Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var735_startsWith/-1763852952 (String String Int Bool) Bool)
(declare-fun var3359-init () var3359)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var2746_checkNotNullExpressionValue/47304269 (var3810 String) void)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3359 String) void)
(declare-const null-var3531 var3531)
(declare-const null-var401 var401)
(declare-const null-String String)
(declare-const null-var3810 var3810)
(declare-const var3531-Companion var1633)
(declare-const var1446 var3531) ; Statement: r12 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var1446 null-var3531)))
(declare-const var2136 var401) ; Statement: r2 := @parameter0: okhttp3.HttpUrl 
(assert (not (= var2136 null-var401)))
(declare-const var2923 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2923 null-String)))
;(assert (var2746_checkNotNullParameter/-2060636419 (cast-from-String-to-var3810 var2923) "input")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "input") 

(declare-const var2923!1 String)
(declare-const var1941 String)
(define-const var1559 Int (var223_indexOfFirstNonAsciiWhitespace$default/1788129714 var2923!1 0 0 3 null-var3810)) ; Statement: i16 = staticinvoke <okhttp3.internal.Util: int indexOfFirstNonAsciiWhitespace$default(java.lang.String,int,int,int,java.lang.Object)>(r0, 0, 0, 3, null) 
(define-const var524 Int (var223_indexOfLastNonAsciiWhitespace$default/453564748 var2923!1 var1559 0 2 null-var3810)) ; Statement: i0 = staticinvoke <okhttp3.internal.Util: int indexOfLastNonAsciiWhitespace$default(java.lang.String,int,int,int,java.lang.Object)>(r0, i16, 0, 2, null) 
(define-const var1798 var1633 var3531-Companion) ; Statement: $r1 = <okhttp3.HttpUrl$Builder: okhttp3.HttpUrl$Builder$Companion Companion> 
(define-const var1584 Int (var1633_access$schemeDelimiterOffset/-1082311082 var1798 var2923!1 var1559 var524)) ; Statement: i1 = staticinvoke <okhttp3.HttpUrl$Builder$Companion: int access$schemeDelimiterOffset(okhttp3.HttpUrl$Builder$Companion,java.lang.String,int,int)>($r1, r0, i16, i0) 
(define-const var3365 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i27 = (int) -1 
 ; Statement: if i1 == $i27 goto (branch) 
(assert (not (= var1584 var3365))) ; Negate: Cond: i1 == $i27  
(define-const var1079 Bool (var735_startsWith/-1763852952 var2923!1 "https:" var1559 (ite (= 1 1) true false))) ; Statement: $z1 = staticinvoke <kotlin.text.StringsKt: boolean startsWith(java.lang.String,java.lang.String,int,boolean)>(r0, "https:", i16, 1) 
 ; Statement: if $z1 == 0 goto $z2 = staticinvoke <kotlin.text.StringsKt: boolean startsWith(java.lang.String,java.lang.String,int,boolean)>(r0, "http:", i16, 1) 
(assert (= (ite var1079 1 0) 0)) ; Cond: $z1 == 0 
(define-const var285 Bool (var735_startsWith/-1763852952 var2923!1 "http:" var1559 (ite (= 1 1) true false))) ; Statement: $z2 = staticinvoke <kotlin.text.StringsKt: boolean startsWith(java.lang.String,java.lang.String,int,boolean)>(r0, "http:", i16, 1) 
 ; Statement: if $z2 == 0 goto $r85 = new java.lang.IllegalArgumentException 
(assert (= (ite var285 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2311 var3359 var3359-init) ; Statement: $r85 = new java.lang.IllegalArgumentException 
(define-const var403 String String-init) ; Statement: $r84 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var403)) ; Statement: specialinvoke $r84.<java.lang.StringBuilder: void <init>()>() 
(declare-const var403!1 String)
(assert (= var403!1 ""))
(assert true)
(define-const var668 String (append/672562846 var403!1 "Expected URL scheme \u0027http\u0027 or \u0027https\u0027 but was \u0027")) ; Statement: $r75 = virtualinvoke $r84.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected URL scheme \'http\' or \'https\' but was \'") 
(declare-const var403!2 String)
(assert (= var403!2 (str.++ var403!1 "Expected URL scheme \u0027http\u0027 or \u0027https\u0027 but was \u0027")))
(assert (and true (and (>= 0 0) (>= (str.len var2923!1) var1584) (>= var1584 0))))
(define-const var1273 String (substring/-1240304868 var2923!1 0 var1584)) ; Statement: $r74 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1) 
;(assert (var2746_checkNotNullExpressionValue/47304269 (cast-from-String-to-var3810 var1273) "this as java.lang.String\u2026ing(startIndex, endIndex)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r74, "this as java.lang.String\u2026ing(startIndex, endIndex)") 

(declare-const var1273!1 String)
(declare-const var3765 String)
(assert true)
(define-const var429 String (append/672562846 var668 var1273!1)) ; Statement: $r76 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r74) 
(declare-const var668!1 String)
(assert (= var668!1 (str.++ var668 var1273!1)))
(assert true)
(define-const var2869 String (append/-1166366385 var429 39)) ; Statement: $r77 = virtualinvoke $r76.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var429!1 String)
(assert (str.prefixof var429 var429!1))
(assert true)
(define-const var227 String (toString/-2075883882 var2869)) ; Statement: $r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2311 var227)) ; Statement: specialinvoke $r85.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r78) 

(declare-const var2311!1 var3359)
(declare-const var227!1 String)
 ; Statement: throw $r85 
(check-sat)
(get-model)
(get-unsat-core)
; {var2746_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var3810=([java.lang.String], java.lang.Object), var223_indexOfFirstNonAsciiWhitespace$default/1788129714=([java.lang.String, int, int, int, java.lang.Object], int), var223_indexOfLastNonAsciiWhitespace$default/453564748=([java.lang.String, int, int, int, java.lang.Object], int), var1633_access$schemeDelimiterOffset/-1082311082=([okhttp3.HttpUrl$Builder$Companion, java.lang.String, int, int], int), cast-from-Int-to-Int=([int], int), var735_startsWith/-1763852952=([java.lang.String, java.lang.String, int, boolean], boolean), var3359-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var2746_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3531=okhttp3.HttpUrl$Builder, var1446=r12, var401=okhttp3.HttpUrl, var2136=r2, var2923=r0, var2128=null_type, var2746=kotlin.jvm.internal.Intrinsics, var3810=java.lang.Object, var1941="input", var223=okhttp3.internal.Util, var1559=i16, var524=i0, var1633=okhttp3.HttpUrl$Builder$Companion, var1798=$r1, var1584=i1, var3365=$i27, var735=kotlin.text.StringsKt, var1079=$z1, var285=$z2, var3359=java.lang.IllegalArgumentException, var2311=$r85, var403=$r84, var668=$r75, var1273=$r74, var3765="this as java.lang.String\u2026ing(startIndex, endIndex)", var429=$r76, var2869=$r77, var227=$r78}
; {okhttp3.HttpUrl$Builder=var3531, r12=var1446, okhttp3.HttpUrl=var401, r2=var2136, r0=var2923, null_type=var2128, kotlin.jvm.internal.Intrinsics=var2746, java.lang.Object=var3810, "input"=var1941, okhttp3.internal.Util=var223, i16=var1559, i0=var524, okhttp3.HttpUrl$Builder$Companion=var1633, $r1=var1798, i1=var1584, $i27=var3365, kotlin.text.StringsKt=var735, $z1=var1079, $z2=var285, java.lang.IllegalArgumentException=var3359, $r85=var2311, $r84=var403, $r75=var668, $r74=var1273, "this as java.lang.String\u2026ing(startIndex, endIndex)"=var3765, $r76=var429, $r77=var2869, $r78=var227}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: okhttp3.HttpUrl$Builder;	r2 := @parameter0: okhttp3.HttpUrl;	r0 := @parameter1: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "input");	i16 = staticinvoke <okhttp3.internal.Util: int indexOfFirstNonAsciiWhitespace$default(java.lang.String,int,int,int,java.lang.Object)>(r0, 0, 0, 3, null);	i0 = staticinvoke <okhttp3.internal.Util: int indexOfLastNonAsciiWhitespace$default(java.lang.String,int,int,int,java.lang.Object)>(r0, i16, 0, 2, null);	$r1 = <okhttp3.HttpUrl$Builder: okhttp3.HttpUrl$Builder$Companion Companion>;	i1 = staticinvoke <okhttp3.HttpUrl$Builder$Companion: int access$schemeDelimiterOffset(okhttp3.HttpUrl$Builder$Companion,java.lang.String,int,int)>($r1, r0, i16, i0);	$i27 = (int) -1;	if i1 == $i27 goto (branch);	$z1 = staticinvoke <kotlin.text.StringsKt: boolean startsWith(java.lang.String,java.lang.String,int,boolean)>(r0, "https:", i16, 1);	if $z1 == 0 goto $z2 = staticinvoke <kotlin.text.StringsKt: boolean startsWith(java.lang.String,java.lang.String,int,boolean)>(r0, "http:", i16, 1);	$z2 = staticinvoke <kotlin.text.StringsKt: boolean startsWith(java.lang.String,java.lang.String,int,boolean)>(r0, "http:", i16, 1);	if $z2 == 0 goto $r85 = new java.lang.IllegalArgumentException;	$r85 = new java.lang.IllegalArgumentException;	$r84 = new java.lang.StringBuilder;	specialinvoke $r84.<java.lang.StringBuilder: void <init>()>();	$r75 = virtualinvoke $r84.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected URL scheme \'http\' or \'https\' but was \'");	$r74 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r74, "this as java.lang.String\u2026ing(startIndex, endIndex)");	$r76 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r74);	$r77 = virtualinvoke $r76.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r85.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r78);	throw $r85
;block_num 4