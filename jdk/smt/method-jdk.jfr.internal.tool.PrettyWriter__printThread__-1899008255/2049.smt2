(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var451 0)
(declare-sort var1783 0)
(declare-sort var3979 0)
(declare-sort var3599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getJavaThreadId/-1900371683 (var1783) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getOSName/536872236 (var1783) String)
(declare-fun getOSThreadId/-1819614725 (var1783) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-650826721 (var3599 String) void)
(declare-fun cast-from-var451-to-var3599 (var451) var3599)
(declare-const null-var451 var451)
(declare-const null-var1783 var1783)
(declare-const null-String String)
(declare-const var978 var451) ; Statement: r1 := @this: jdk.jfr.internal.tool.PrettyWriter 
(assert (not (= var978 null-var451)))
(declare-const var1649 var1783) ; Statement: r0 := @parameter0: jdk.jfr.consumer.RecordedThread 
(assert (not (= var1649 null-var1783)))
(declare-const var1739 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var1739 null-String)))
(assert true)
(define-const var3344 Int (getJavaThreadId/-1900371683 var1649)) ; Statement: l0 = virtualinvoke r0.<jdk.jfr.consumer.RecordedThread: long getJavaThreadId()>() 
(define-const var3197 Int (ite (> var3344 0) 1 (ite (< var3344 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var2704 Int (cast-from-Int-to-Int var3197)) ; Statement: $i4 = (int) $b1 
 ; Statement: if $i4 <= 0 goto $r22 = new java.lang.StringBuilder 
(assert (<= var2704 0)) ; Cond: $i4 <= 0 
(define-const var763 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var763)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var763!1 String)
(assert (= var763!1 ""))
(assert true)
(define-const var3746 String (append/672562846 var763!1 "\u0022")) ; Statement: $r4 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var763!2 String)
(assert (= var763!2 (str.++ var763!1 "\u0022")))
(assert true)
(define-const var3267 String (getOSName/536872236 var1649)) ; Statement: $r3 = virtualinvoke r0.<jdk.jfr.consumer.RecordedThread: java.lang.String getOSName()>() 
(assert true)
(define-const var1851 String (append/672562846 var3746 var3267)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3746!1 String)
(assert (= var3746!1 (str.++ var3746 var3267)))
(assert true)
(define-const var821 String (append/672562846 var1851 "\u0022 (osThreadId = ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (osThreadId = ") 
(declare-const var1851!1 String)
(assert (= var1851!1 (str.++ var1851 "\u0022 (osThreadId = ")))
(assert true)
(define-const var881 Int (getOSThreadId/-1819614725 var1649)) ; Statement: $l2 = virtualinvoke r0.<jdk.jfr.consumer.RecordedThread: long getOSThreadId()>() 
(assert true)
(define-const var2953 String (append/-901862667 var821 var881)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2) 
(declare-const var821!1 String)
(assert (str.prefixof var821 var821!1))
(assert true)
(define-const var1665 String (append/672562846 var2953 ")")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2953!1 String)
(assert (= var2953!1 (str.++ var2953 ")")))
(assert true)
(define-const var2049 String (append/672562846 var1665 var1739)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var1665!1 String)
(assert (= var1665!1 (str.++ var1665 var1739)))
(assert true)
(define-const var2151 String (toString/-2075883882 var2049)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-650826721 (cast-from-var451-to-var3599 var978) var2151)) ; Statement: virtualinvoke r1.<jdk.jfr.internal.tool.PrettyWriter: void println(java.lang.String)>($r11) 

(declare-const var978!1 var451)
(declare-const var2151!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getJavaThreadId/-1900371683=([jdk.jfr.consumer.RecordedThread], long), cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getOSName/536872236=([jdk.jfr.consumer.RecordedThread], java.lang.String), getOSThreadId/-1819614725=([jdk.jfr.consumer.RecordedThread], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-650826721=([jdk.jfr.internal.tool.StructuredWriter, java.lang.String], void), cast-from-var451-to-var3599=([jdk.jfr.internal.tool.PrettyWriter], jdk.jfr.internal.tool.StructuredWriter)}
; {var451=jdk.jfr.internal.tool.PrettyWriter, var978=r1, var1783=jdk.jfr.consumer.RecordedThread, var1649=r0, var1739=r8, var3979=null_type, var3344=l0, var3197=$b1, var2704=$i4, var763=$r22, var3746=$r4, var3267=$r3, var1851=$r5, var821=$r6, var881=$l2, var2953=$r7, var1665=$r9, var2049=$r10, var2151=$r11, var3599=jdk.jfr.internal.tool.StructuredWriter}
; {jdk.jfr.internal.tool.PrettyWriter=var451, r1=var978, jdk.jfr.consumer.RecordedThread=var1783, r0=var1649, r8=var1739, null_type=var3979, l0=var3344, $b1=var3197, $i4=var2704, $r22=var763, $r4=var3746, $r3=var3267, $r5=var1851, $r6=var821, $l2=var881, $r7=var2953, $r9=var1665, $r10=var2049, $r11=var2151, jdk.jfr.internal.tool.StructuredWriter=var3599}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.tool.PrettyWriter;	r0 := @parameter0: jdk.jfr.consumer.RecordedThread;	r8 := @parameter1: java.lang.String;	l0 = virtualinvoke r0.<jdk.jfr.consumer.RecordedThread: long getJavaThreadId()>();	$b1 = l0 cmp 0L;	$i4 = (int) $b1;	if $i4 <= 0 goto $r22 = new java.lang.StringBuilder;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r3 = virtualinvoke r0.<jdk.jfr.consumer.RecordedThread: java.lang.String getOSName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (osThreadId = ");	$l2 = virtualinvoke r0.<jdk.jfr.consumer.RecordedThread: long getOSThreadId()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<jdk.jfr.internal.tool.PrettyWriter: void println(java.lang.String)>($r11);	return
;block_num 3