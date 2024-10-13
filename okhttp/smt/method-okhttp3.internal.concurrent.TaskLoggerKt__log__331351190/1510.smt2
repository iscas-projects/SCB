(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2954 0)
(declare-sort var310 0)
(declare-sort var2891 0)
(declare-sort var268 0)
(declare-sort var888 0)
(declare-sort var3793 0)
(declare-sort var411 0)
(declare-sort var1461 0)
(declare-sort var786 0)
(declare-sort var736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLogger/1503101908 (var268) var3793)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName$okhttp/992751404 (var310) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun arr-var1461-init () (Array Int var1461))
(declare-fun cast-from-String-to-var1461 (String) var1461)
(declare-fun getLength-Arr-var1461-1 ((Array Int var1461)) Int)
(declare-fun var786_copyOf/-1140654950 ((Array Int var1461) Int) (Array Int var1461))
(declare-fun String_format/1339386452 (String (Array Int var1461)) String)
(declare-fun var736_checkNotNullExpressionValue/47304269 (var1461 String) void)
(declare-fun getName/2006982891 (var2954) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun fine/-535273507 (var3793 String) void)
(declare-const null-var2954 var2954)
(declare-const null-var310 var310)
(declare-const null-String String)
(declare-const var888-Companion var268)
(declare-const var411-INSTANCE var411)
(declare-const null-__Array__Int__var1461__ (Array Int var1461))
(declare-const var2614 var2954) ; Statement: r11 := @parameter0: okhttp3.internal.concurrent.Task 
(assert (not (= var2614 null-var2954)))
(declare-const var2608 var310) ; Statement: r2 := @parameter1: okhttp3.internal.concurrent.TaskQueue 
(assert (not (= var2608 null-var310)))
(declare-const var3002 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var3002 null-String)))
(define-const var1380 var268 var888-Companion) ; Statement: $r0 = <okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskRunner$Companion Companion> 
(assert true)
(define-const var2363 var3793 (getLogger/1503101908 var1380)) ; Statement: $r16 = virtualinvoke $r0.<okhttp3.internal.concurrent.TaskRunner$Companion: java.util.logging.Logger getLogger()>() 
(define-const var3133 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3133)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3133!1 String)
(assert (= var3133!1 ""))
(assert true)
(define-const var251 String (getName$okhttp/992751404 var2608)) ; Statement: $r3 = virtualinvoke r2.<okhttp3.internal.concurrent.TaskQueue: java.lang.String getName$okhttp()>() 
(assert true)
(define-const var1856 String (append/672562846 var3133!1 var251)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3133!2 String)
(assert (= var3133!2 (str.++ var3133!1 var251)))
(assert true)
(define-const var432 String (append/-1166366385 var1856 32)) ; Statement: $r9 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1856!1 String)
(assert (str.prefixof var1856 var1856!1))
(define-const var1886 var411 var411-INSTANCE) ; Statement: $r5 = <kotlin.jvm.internal.StringCompanionObject: kotlin.jvm.internal.StringCompanionObject INSTANCE> 
(define-const var3607 (Array Int var1461) arr-var1461-init) ; Statement: r17 = newarray (java.lang.Object)[1] 
(declare-const var3607!1 (Array Int var1461))
(assert (not (= var3607!1 null-__Array__Int__var1461__)))
(assert (= (select var3607!1 0) (cast-from-String-to-var1461 var3002))) ; Statement: r17[0] = r6 
(define-const var1216 Int (getLength-Arr-var1461-1 var3607!1)) ; Statement: $i0 = lengthof r17 
(define-const var3116 (Array Int var1461) (var786_copyOf/-1140654950 var3607!1 var1216)) ; Statement: $r7 = staticinvoke <java.util.Arrays: java.lang.Object[] copyOf(java.lang.Object[],int)>(r17, $i0) 
(define-const var244 String (String_format/1339386452 "%-22s" var3116)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%-22s", $r7) 
;(assert (var736_checkNotNullExpressionValue/47304269 (cast-from-String-to-var1461 var244) "format(format, *args)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r8, "format(format, *args)") 

(declare-const var244!1 String)
(declare-const var807 String)
(assert true)
(define-const var619 String (append/672562846 var432 var244!1)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var432!1 String)
(assert (= var432!1 (str.++ var432 var244!1)))
(assert true)
(define-const var2769 String (append/672562846 var619 ": ")) ; Statement: $r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var619!1 String)
(assert (= var619!1 (str.++ var619 ": ")))
(assert true)
(define-const var3426 String (getName/2006982891 var2614)) ; Statement: $r12 = virtualinvoke r11.<okhttp3.internal.concurrent.Task: java.lang.String getName()>() 
(assert true)
(define-const var3122 String (append/672562846 var2769 var3426)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2769!1 String)
(assert (= var2769!1 (str.++ var2769 var3426)))
(assert true)
(define-const var3746 String (toString/-2075883882 var3122)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (fine/-535273507 var2363 var3746)) ; Statement: virtualinvoke $r16.<java.util.logging.Logger: void fine(java.lang.String)>($r15) 

(declare-const var2363!1 var3793)
(declare-const var3746!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLogger/1503101908=([okhttp3.internal.concurrent.TaskRunner$Companion], java.util.logging.Logger), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName$okhttp/992751404=([okhttp3.internal.concurrent.TaskQueue], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), arr-var1461-init=([], java.lang.Object[]), cast-from-String-to-var1461=([java.lang.String], java.lang.Object), getLength-Arr-var1461-1=([java.lang.Object[]], int), var786_copyOf/-1140654950=([java.lang.Object[], int], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var736_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), getName/2006982891=([okhttp3.internal.concurrent.Task], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), fine/-535273507=([java.util.logging.Logger, java.lang.String], void)}
; {var2954=okhttp3.internal.concurrent.Task, var2614=r11, var310=okhttp3.internal.concurrent.TaskQueue, var2608=r2, var3002=r6, var2891=null_type, var268=okhttp3.internal.concurrent.TaskRunner$Companion, var888=okhttp3.internal.concurrent.TaskRunner, var1380=$r0, var3793=java.util.logging.Logger, var2363=$r16, var3133=$r1, var251=$r3, var1856=$r4, var432=$r9, var411=kotlin.jvm.internal.StringCompanionObject, var1886=$r5, var1461=java.lang.Object, var3607=r17, var1216=$i0, var786=java.util.Arrays, var3116=$r7, var244=$r8, var736=kotlin.jvm.internal.Intrinsics, var807="format(format, *args)", var619=$r10, var2769=$r13, var3426=$r12, var3122=$r14, var3746=$r15}
; {okhttp3.internal.concurrent.Task=var2954, r11=var2614, okhttp3.internal.concurrent.TaskQueue=var310, r2=var2608, r6=var3002, null_type=var2891, okhttp3.internal.concurrent.TaskRunner$Companion=var268, okhttp3.internal.concurrent.TaskRunner=var888, $r0=var1380, java.util.logging.Logger=var3793, $r16=var2363, $r1=var3133, $r3=var251, $r4=var1856, $r9=var432, kotlin.jvm.internal.StringCompanionObject=var411, $r5=var1886, java.lang.Object=var1461, r17=var3607, $i0=var1216, java.util.Arrays=var786, $r7=var3116, $r8=var244, kotlin.jvm.internal.Intrinsics=var736, "format(format, *args)"=var807, $r10=var619, $r13=var2769, $r12=var3426, $r14=var3122, $r15=var3746}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @parameter0: okhttp3.internal.concurrent.Task;	r2 := @parameter1: okhttp3.internal.concurrent.TaskQueue;	r6 := @parameter2: java.lang.String;	$r0 = <okhttp3.internal.concurrent.TaskRunner: okhttp3.internal.concurrent.TaskRunner$Companion Companion>;	$r16 = virtualinvoke $r0.<okhttp3.internal.concurrent.TaskRunner$Companion: java.util.logging.Logger getLogger()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<okhttp3.internal.concurrent.TaskQueue: java.lang.String getName$okhttp()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r9 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r5 = <kotlin.jvm.internal.StringCompanionObject: kotlin.jvm.internal.StringCompanionObject INSTANCE>;	r17 = newarray (java.lang.Object)[1];	r17[0] = r6;	$i0 = lengthof r17;	$r7 = staticinvoke <java.util.Arrays: java.lang.Object[] copyOf(java.lang.Object[],int)>(r17, $i0);	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%-22s", $r7);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r8, "format(format, *args)");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r12 = virtualinvoke r11.<okhttp3.internal.concurrent.Task: java.lang.String getName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r16.<java.util.logging.Logger: void fine(java.lang.String)>($r15);	return
;block_num 1