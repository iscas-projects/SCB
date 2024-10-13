(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1681 0)
(declare-sort var927 0)
(declare-sort var3189 0)
(declare-sort var401 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var401) void)
(declare-fun cast-from-var1681-to-var401 (var1681) var401)
(declare-fun format/-1559571708 (var1681) String)
(declare-fun locale/-1559571708 (var1681) var3189)
(declare-fun yyyyMMddhhmmss14/-1559571708 (var1681) Bool)
(declare-fun yyyyMMddhhmmss19/-1559571708 (var1681) Bool)
(declare-fun yyyyMMddhhmm16/-1559571708 (var1681) Bool)
(declare-fun yyyyMMdd10/-1559571708 (var1681) Bool)
(declare-fun yyyyMMdd8/-1559571708 (var1681) Bool)
(declare-fun useSimpleDateFormat/-1559571708 (var1681) Bool)
(declare-fun formatUnixTime/-1559571708 (var1681) Bool)
(declare-fun formatMillis/-1559571708 (var1681) Bool)
(declare-fun formatISO8601/-1559571708 (var1681) Bool)
(declare-fun formatHasDay/-1559571708 (var1681) Bool)
(declare-fun formatHasHour/-1559571708 (var1681) Bool)
(declare-fun useSimpleFormatter/-1559571708 (var1681) Bool)
(declare-const null-var1681 var1681)
(declare-const null-String String)
(declare-const null-var3189 var3189)
(declare-const var2396 var1681) ; Statement: r0 := @this: com.alibaba.fastjson2.codec.DateTimeCodec 
(assert (not (= var2396 null-var1681)))
(declare-const var712 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var712 null-String)))
(declare-const var3729 var3189) ; Statement: r1 := @parameter1: java.util.Locale 
(assert (not (= var3729 null-var3189)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1681-to-var401 var2396))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2396!1 var1681)
 ; Statement: if r8 == null goto r0.<com.alibaba.fastjson2.codec.DateTimeCodec: java.lang.String format> = r8 
(assert (= var712 null-String)) ; Cond: r8 == null 
(declare-const var2396!2 var1681)
(assert (not (= var2396!2 null-var1681)))
(assert (= (format/-1559571708 var2396!2) var712)) ; Statement: r0.<com.alibaba.fastjson2.codec.DateTimeCodec: java.lang.String format> = r8 
(declare-const var2396!3 var1681)
(assert (not (= var2396!3 null-var1681)))
(assert (= (locale/-1559571708 var2396!3) var3729)) ; Statement: r0.<com.alibaba.fastjson2.codec.DateTimeCodec: java.util.Locale locale> = r1 
(define-const var882 String "yyyyMMddHHmmss") ; Statement: $r2 = "yyyyMMddHHmmss" 
(assert true)
(define-const var3443 Bool (= var882 var712)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r8) 
(declare-const var2396!4 var1681)
(assert (not (= var2396!4 null-var1681)))
(assert (= (yyyyMMddhhmmss14/-1559571708 var2396!4) var3443)) ; Statement: r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean yyyyMMddhhmmss14> = $z0 
(define-const var1289 String "yyyy-MM-dd HH:mm:ss") ; Statement: $r3 = "yyyy-MM-dd HH:mm:ss" 
(assert true)
(define-const var1746 Bool (= var1289 var712)) ; Statement: $z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r8) 
(declare-const var2396!5 var1681)
(assert (not (= var2396!5 null-var1681)))
(assert (= (yyyyMMddhhmmss19/-1559571708 var2396!5) var1746)) ; Statement: r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean yyyyMMddhhmmss19> = $z1 
(define-const var1841 String "yyyy-MM-dd HH:mm") ; Statement: $r4 = "yyyy-MM-dd HH:mm" 
(assert true)
(define-const var178 Bool (= var1841 var712)) ; Statement: $z2 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r8) 
(declare-const var2396!6 var1681)
(assert (not (= var2396!6 null-var1681)))
(assert (= (yyyyMMddhhmm16/-1559571708 var2396!6) var178)) ; Statement: r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean yyyyMMddhhmm16> = $z2 
(define-const var3062 String "yyyy-MM-dd") ; Statement: $r5 = "yyyy-MM-dd" 
(assert true)
(define-const var2844 Bool (= var3062 var712)) ; Statement: $z3 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r8) 
(declare-const var2396!7 var1681)
(assert (not (= var2396!7 null-var1681)))
(assert (= (yyyyMMdd10/-1559571708 var2396!7) var2844)) ; Statement: r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean yyyyMMdd10> = $z3 
(define-const var3117 String "yyyyMMdd") ; Statement: $r6 = "yyyyMMdd" 
(assert true)
(define-const var3668 Bool (= var3117 var712)) ; Statement: $z4 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r8) 
(declare-const var2396!8 var1681)
(assert (not (= var2396!8 null-var1681)))
(assert (= (yyyyMMdd8/-1559571708 var2396!8) var3668)) ; Statement: r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean yyyyMMdd8> = $z4 
(define-const var1094 String "yyyy-MM-dd\u0027T\u0027HH:mm:ssXXX") ; Statement: $r7 = "yyyy-MM-dd\'T\'HH:mm:ssXXX" 
(assert true)
(define-const var3127 Bool (= var1094 var712)) ; Statement: $z5 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>(r8) 
(declare-const var2396!9 var1681)
(assert (not (= var2396!9 null-var1681)))
(assert (= (useSimpleDateFormat/-1559571708 var2396!9) var3127)) ; Statement: r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean useSimpleDateFormat> = $z5 
(define-const var3747 Bool (ite (= 1 0) true false)) ; Statement: z9 = 0 
(define-const var259 Bool (ite (= 1 0) true false)) ; Statement: z10 = 0 
(define-const var1662 Bool (ite (= 1 0) true false)) ; Statement: z11 = 0 
(define-const var3850 Bool (ite (= 1 0) true false)) ; Statement: z12 = 0 
(define-const var65 Bool (ite (= 1 0) true false)) ; Statement: z13 = 0 
 ; Statement: if r8 == null goto r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean formatUnixTime> = z9 
(assert (= var712 null-String)) ; Cond: r8 == null 
(declare-const var2396!10 var1681)
(assert (not (= var2396!10 null-var1681)))
(assert (= (formatUnixTime/-1559571708 var2396!10) var3747)) ; Statement: r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean formatUnixTime> = z9 
(declare-const var2396!11 var1681)
(assert (not (= var2396!11 null-var1681)))
(assert (= (formatMillis/-1559571708 var2396!11) var1662)) ; Statement: r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean formatMillis> = z11 
(declare-const var2396!12 var1681)
(assert (not (= var2396!12 null-var1681)))
(assert (= (formatISO8601/-1559571708 var2396!12) var259)) ; Statement: r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean formatISO8601> = z10 
(declare-const var2396!13 var1681)
(assert (not (= var2396!13 null-var1681)))
(assert (= (formatHasDay/-1559571708 var2396!13) var3850)) ; Statement: r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean formatHasDay> = z12 
(declare-const var2396!14 var1681)
(assert (not (= var2396!14 null-var1681)))
(assert (= (formatHasHour/-1559571708 var2396!14) var65)) ; Statement: r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean formatHasHour> = z13 
(define-const var2782 String "yyyyMMddHHmmssSSSZ") ; Statement: $r9 = "yyyyMMddHHmmssSSSZ" 
(assert true)
(define-const var2060 Bool (= var2782 var712)) ; Statement: $z16 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>(r8) 
(declare-const var2396!15 var1681)
(assert (not (= var2396!15 null-var1681)))
(assert (= (useSimpleFormatter/-1559571708 var2396!15) var2060)) ; Statement: r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean useSimpleFormatter> = $z16 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1681-to-var401=([com.alibaba.fastjson2.codec.DateTimeCodec], java.lang.Object), format/-1559571708=([com.alibaba.fastjson2.codec.DateTimeCodec], java.lang.String), locale/-1559571708=([com.alibaba.fastjson2.codec.DateTimeCodec], java.util.Locale), yyyyMMddhhmmss14/-1559571708=([com.alibaba.fastjson2.codec.DateTimeCodec], boolean), yyyyMMddhhmmss19/-1559571708=([com.alibaba.fastjson2.codec.DateTimeCodec], boolean), yyyyMMddhhmm16/-1559571708=([com.alibaba.fastjson2.codec.DateTimeCodec], boolean), yyyyMMdd10/-1559571708=([com.alibaba.fastjson2.codec.DateTimeCodec], boolean), yyyyMMdd8/-1559571708=([com.alibaba.fastjson2.codec.DateTimeCodec], boolean), useSimpleDateFormat/-1559571708=([com.alibaba.fastjson2.codec.DateTimeCodec], boolean), formatUnixTime/-1559571708=([com.alibaba.fastjson2.codec.DateTimeCodec], boolean), formatMillis/-1559571708=([com.alibaba.fastjson2.codec.DateTimeCodec], boolean), formatISO8601/-1559571708=([com.alibaba.fastjson2.codec.DateTimeCodec], boolean), formatHasDay/-1559571708=([com.alibaba.fastjson2.codec.DateTimeCodec], boolean), formatHasHour/-1559571708=([com.alibaba.fastjson2.codec.DateTimeCodec], boolean), useSimpleFormatter/-1559571708=([com.alibaba.fastjson2.codec.DateTimeCodec], boolean)}
; {var1681=com.alibaba.fastjson2.codec.DateTimeCodec, var2396=r0, var712=r8, var927=null_type, var3189=java.util.Locale, var3729=r1, var401=java.lang.Object, var882=$r2, var3443=$z0, var1289=$r3, var1746=$z1, var1841=$r4, var178=$z2, var3062=$r5, var2844=$z3, var3117=$r6, var3668=$z4, var1094=$r7, var3127=$z5, var3747=z9, var259=z10, var1662=z11, var3850=z12, var65=z13, var2782=$r9, var2060=$z16}
; {com.alibaba.fastjson2.codec.DateTimeCodec=var1681, r0=var2396, r8=var712, null_type=var927, java.util.Locale=var3189, r1=var3729, java.lang.Object=var401, $r2=var882, $z0=var3443, $r3=var1289, $z1=var1746, $r4=var1841, $z2=var178, $r5=var3062, $z3=var2844, $r6=var3117, $z4=var3668, $r7=var1094, $z5=var3127, z9=var3747, z10=var259, z11=var1662, z12=var3850, z13=var65, $r9=var2782, $z16=var2060}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 7}
;stmts r0 := @this: com.alibaba.fastjson2.codec.DateTimeCodec;	r8 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.Locale;	specialinvoke r0.<java.lang.Object: void <init>()>();	if r8 == null goto r0.<com.alibaba.fastjson2.codec.DateTimeCodec: java.lang.String format> = r8;	r0.<com.alibaba.fastjson2.codec.DateTimeCodec: java.lang.String format> = r8;	r0.<com.alibaba.fastjson2.codec.DateTimeCodec: java.util.Locale locale> = r1;	$r2 = "yyyyMMddHHmmss";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r8);	r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean yyyyMMddhhmmss14> = $z0;	$r3 = "yyyy-MM-dd HH:mm:ss";	$z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r8);	r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean yyyyMMddhhmmss19> = $z1;	$r4 = "yyyy-MM-dd HH:mm";	$z2 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r8);	r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean yyyyMMddhhmm16> = $z2;	$r5 = "yyyy-MM-dd";	$z3 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r8);	r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean yyyyMMdd10> = $z3;	$r6 = "yyyyMMdd";	$z4 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r8);	r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean yyyyMMdd8> = $z4;	$r7 = "yyyy-MM-dd\'T\'HH:mm:ssXXX";	$z5 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>(r8);	r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean useSimpleDateFormat> = $z5;	z9 = 0;	z10 = 0;	z11 = 0;	z12 = 0;	z13 = 0;	if r8 == null goto r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean formatUnixTime> = z9;	r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean formatUnixTime> = z9;	r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean formatMillis> = z11;	r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean formatISO8601> = z10;	r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean formatHasDay> = z12;	r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean formatHasHour> = z13;	$r9 = "yyyyMMddHHmmssSSSZ";	$z16 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>(r8);	r0.<com.alibaba.fastjson2.codec.DateTimeCodec: boolean useSimpleFormatter> = $z16;	return
;block_num 3