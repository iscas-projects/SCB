(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2637 0)
(declare-sort var2843 0)
(declare-sort var2344 0)
(declare-sort var3231 0)
(declare-sort var3309 0)
(declare-sort var984 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2344_checkNotNullParameter/-2060636419 (var3231 String) void)
(declare-fun cast-from-String-to-var3231 (String) var3231)
(define-fun cast-from-var2637-to-var2637 ((arg var2637)) var2637 arg)
(declare-fun var3309_equals/-561782163 (String String Bool) Bool)
(declare-fun var984-init () var984)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var984 String) void)
(declare-const null-var2637 var2637)
(declare-const null-String String)
(declare-const var223 var2637) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var223 null-var2637)))
(declare-const var1525 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1525 null-String)))
;(assert (var2344_checkNotNullParameter/-2060636419 (cast-from-String-to-var3231 var1525) "scheme")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "scheme") 

(declare-const var1525!1 String)
(declare-const var3652 String)
(define-const var1980 var2637 (cast-from-var2637-to-var2637 var223)) ; Statement: $r2 = (okhttp3.HttpUrl$Builder) r1 
(define-const var3061 Bool (var3309_equals/-561782163 var1525!1 "http" (ite (= 1 1) true false))) ; Statement: $z0 = staticinvoke <kotlin.text.StringsKt: boolean equals(java.lang.String,java.lang.String,boolean)>(r0, "http", 1) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <kotlin.text.StringsKt: boolean equals(java.lang.String,java.lang.String,boolean)>(r0, "https", 1) 
(assert (= (ite var3061 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2029 Bool (var3309_equals/-561782163 var1525!1 "https" (ite (= 1 1) true false))) ; Statement: $z1 = staticinvoke <kotlin.text.StringsKt: boolean equals(java.lang.String,java.lang.String,boolean)>(r0, "https", 1) 
 ; Statement: if $z1 == 0 goto $r3 = new java.lang.IllegalArgumentException 
(assert (= (ite var2029 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3033 var984 var984-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var3220 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3220)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3220!1 String)
(assert (= var3220!1 ""))
(assert true)
(define-const var2786 String (append/672562846 var3220!1 "unexpected scheme: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected scheme: ") 
(declare-const var3220!2 String)
(assert (= var3220!2 (str.++ var3220!1 "unexpected scheme: ")))
(assert true)
(define-const var3993 String (append/672562846 var2786 var1525!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2786!1 String)
(assert (= var2786!1 (str.++ var2786 var1525!1)))
(assert true)
(define-const var1233 String (toString/-2075883882 var3993)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3033 var1233)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var3033!1 var984)
(declare-const var1233!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2344_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var3231=([java.lang.String], java.lang.Object), cast-from-var2637-to-var2637=([okhttp3.HttpUrl$Builder], okhttp3.HttpUrl$Builder), var3309_equals/-561782163=([java.lang.String, java.lang.String, boolean], boolean), var984-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2637=okhttp3.HttpUrl$Builder, var223=r1, var1525=r0, var2843=null_type, var2344=kotlin.jvm.internal.Intrinsics, var3231=java.lang.Object, var3652="scheme", var1980=$r2, var3309=kotlin.text.StringsKt, var3061=$z0, var2029=$z1, var984=java.lang.IllegalArgumentException, var3033=$r3, var3220=$r4, var2786=$r5, var3993=$r6, var1233=$r7}
; {okhttp3.HttpUrl$Builder=var2637, r1=var223, r0=var1525, null_type=var2843, kotlin.jvm.internal.Intrinsics=var2344, java.lang.Object=var3231, "scheme"=var3652, $r2=var1980, kotlin.text.StringsKt=var3309, $z0=var3061, $z1=var2029, java.lang.IllegalArgumentException=var984, $r3=var3033, $r4=var3220, $r5=var2786, $r6=var3993, $r7=var1233}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "scheme");	$r2 = (okhttp3.HttpUrl$Builder) r1;	$z0 = staticinvoke <kotlin.text.StringsKt: boolean equals(java.lang.String,java.lang.String,boolean)>(r0, "http", 1);	if $z0 == 0 goto $z1 = staticinvoke <kotlin.text.StringsKt: boolean equals(java.lang.String,java.lang.String,boolean)>(r0, "https", 1);	$z1 = staticinvoke <kotlin.text.StringsKt: boolean equals(java.lang.String,java.lang.String,boolean)>(r0, "https", 1);	if $z1 == 0 goto $r3 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected scheme: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 3