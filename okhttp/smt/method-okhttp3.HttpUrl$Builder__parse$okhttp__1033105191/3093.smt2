(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2926 0)
(declare-sort var2909 0)
(declare-sort var1967 0)
(declare-sort var2991 0)
(declare-sort var815 0)
(declare-sort var381 0)
(declare-sort var1210 0)
(declare-sort var1472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2991_checkNotNullParameter/-2060636419 (var815 String) void)
(declare-fun cast-from-String-to-var815 (String) var815)
(declare-fun var381_indexOfFirstNonAsciiWhitespace$default/1788129714 (String Int Int Int var815) Int)
(declare-fun var381_indexOfLastNonAsciiWhitespace$default/453564748 (String Int Int Int var815) Int)
(declare-fun var1210_access$schemeDelimiterOffset/-1082311082 (var1210 String Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1472-init () var1472)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1472 String) void)
(declare-const null-var2926 var2926)
(declare-const null-var2909 var2909)
(declare-const null-String String)
(declare-const null-var815 var815)
(declare-const var2926-Companion var1210)
(declare-const var537 var2926) ; Statement: r12 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var537 null-var2926)))
(declare-const var2192 var2909) ; Statement: r2 := @parameter0: okhttp3.HttpUrl 
(assert (not (= var2192 null-var2909)))
(declare-const var352 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var352 null-String)))
;(assert (var2991_checkNotNullParameter/-2060636419 (cast-from-String-to-var815 var352) "input")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "input") 

(declare-const var352!1 String)
(declare-const var1256 String)
(define-const var882 Int (var381_indexOfFirstNonAsciiWhitespace$default/1788129714 var352!1 0 0 3 null-var815)) ; Statement: i16 = staticinvoke <okhttp3.internal.Util: int indexOfFirstNonAsciiWhitespace$default(java.lang.String,int,int,int,java.lang.Object)>(r0, 0, 0, 3, null) 
(define-const var3844 Int (var381_indexOfLastNonAsciiWhitespace$default/453564748 var352!1 var882 0 2 null-var815)) ; Statement: i0 = staticinvoke <okhttp3.internal.Util: int indexOfLastNonAsciiWhitespace$default(java.lang.String,int,int,int,java.lang.Object)>(r0, i16, 0, 2, null) 
(define-const var2 var1210 var2926-Companion) ; Statement: $r1 = <okhttp3.HttpUrl$Builder: okhttp3.HttpUrl$Builder$Companion Companion> 
(define-const var1366 Int (var1210_access$schemeDelimiterOffset/-1082311082 var2 var352!1 var882 var3844)) ; Statement: i1 = staticinvoke <okhttp3.HttpUrl$Builder$Companion: int access$schemeDelimiterOffset(okhttp3.HttpUrl$Builder$Companion,java.lang.String,int,int)>($r1, r0, i16, i0) 
(define-const var2461 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i27 = (int) -1 
 ; Statement: if i1 == $i27 goto (branch) 
(assert (= var1366 var2461)) ; Cond: i1 == $i27 
 ; Statement: if r2 == null goto $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (= var2192 null-var2909)) ; Cond: r2 == null 
(assert true)
(define-const var2747 Int (length/-134980193 var352!1)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i2 <= 6 goto $r79 = r0 
(assert (<= var2747 6)) ; Cond: $i2 <= 6 
(define-const var1264 String var352!1) ; Statement: $r79 = r0 
(assert true) ; Non Conditional
(define-const var1140 var1472 var1472-init) ; Statement: $r88 = new java.lang.IllegalArgumentException 
(define-const var596 String String-init) ; Statement: $r87 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var596)) ; Statement: specialinvoke $r87.<java.lang.StringBuilder: void <init>()>() 
(declare-const var596!1 String)
(assert (= var596!1 ""))
(assert true)
(define-const var2671 String (append/672562846 var596!1 "Expected URL scheme \u0027http\u0027 or \u0027https\u0027 but no scheme was found for ")) ; Statement: $r5 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected URL scheme \'http\' or \'https\' but no scheme was found for ") 
(declare-const var596!2 String)
(assert (= var596!2 (str.++ var596!1 "Expected URL scheme \u0027http\u0027 or \u0027https\u0027 but no scheme was found for ")))
(assert true)
(define-const var3293 String (append/672562846 var2671 var1264)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r79) 
(declare-const var2671!1 String)
(assert (= var2671!1 (str.++ var2671 var1264)))
(assert true)
(define-const var3224 String (toString/-2075883882 var3293)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1140 var3224)) ; Statement: specialinvoke $r88.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var1140!1 var1472)
(declare-const var3224!1 String)
 ; Statement: throw $r88 
(check-sat)
(get-model)
(get-unsat-core)
; {var2991_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var815=([java.lang.String], java.lang.Object), var381_indexOfFirstNonAsciiWhitespace$default/1788129714=([java.lang.String, int, int, int, java.lang.Object], int), var381_indexOfLastNonAsciiWhitespace$default/453564748=([java.lang.String, int, int, int, java.lang.Object], int), var1210_access$schemeDelimiterOffset/-1082311082=([okhttp3.HttpUrl$Builder$Companion, java.lang.String, int, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), var1472-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2926=okhttp3.HttpUrl$Builder, var537=r12, var2909=okhttp3.HttpUrl, var2192=r2, var352=r0, var1967=null_type, var2991=kotlin.jvm.internal.Intrinsics, var815=java.lang.Object, var1256="input", var381=okhttp3.internal.Util, var882=i16, var3844=i0, var1210=okhttp3.HttpUrl$Builder$Companion, var2=$r1, var1366=i1, var2461=$i27, var2747=$i2, var1264=$r79, var1472=java.lang.IllegalArgumentException, var1140=$r88, var596=$r87, var2671=$r5, var3293=$r6, var3224=$r7}
; {okhttp3.HttpUrl$Builder=var2926, r12=var537, okhttp3.HttpUrl=var2909, r2=var2192, r0=var352, null_type=var1967, kotlin.jvm.internal.Intrinsics=var2991, java.lang.Object=var815, "input"=var1256, okhttp3.internal.Util=var381, i16=var882, i0=var3844, okhttp3.HttpUrl$Builder$Companion=var1210, $r1=var2, i1=var1366, $i27=var2461, $i2=var2747, $r79=var1264, java.lang.IllegalArgumentException=var1472, $r88=var1140, $r87=var596, $r5=var2671, $r6=var3293, $r7=var3224}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: okhttp3.HttpUrl$Builder;	r2 := @parameter0: okhttp3.HttpUrl;	r0 := @parameter1: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "input");	i16 = staticinvoke <okhttp3.internal.Util: int indexOfFirstNonAsciiWhitespace$default(java.lang.String,int,int,int,java.lang.Object)>(r0, 0, 0, 3, null);	i0 = staticinvoke <okhttp3.internal.Util: int indexOfLastNonAsciiWhitespace$default(java.lang.String,int,int,int,java.lang.Object)>(r0, i16, 0, 2, null);	$r1 = <okhttp3.HttpUrl$Builder: okhttp3.HttpUrl$Builder$Companion Companion>;	i1 = staticinvoke <okhttp3.HttpUrl$Builder$Companion: int access$schemeDelimiterOffset(okhttp3.HttpUrl$Builder$Companion,java.lang.String,int,int)>($r1, r0, i16, i0);	$i27 = (int) -1;	if i1 == $i27 goto (branch);	if r2 == null goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	if $i2 <= 6 goto $r79 = r0;	$r79 = r0;	$r88 = new java.lang.IllegalArgumentException;	$r87 = new java.lang.StringBuilder;	specialinvoke $r87.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected URL scheme \'http\' or \'https\' but no scheme was found for ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r79);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r88.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r88
;block_num 5