(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1383 0)
(declare-sort var1551 0)
(declare-sort var3074 0)
(declare-sort var2056 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getJavaThreadId/-1900371683 (var1551) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getJavaName/1401172878 (var1551) String)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-650826721 (var2056 String) void)
(declare-fun cast-from-var1383-to-var2056 (var1383) var2056)
(declare-const null-var1383 var1383)
(declare-const null-var1551 var1551)
(declare-const null-String String)
(declare-const var977 var1383) ; Statement: r1 := @this: jdk.jfr.internal.tool.PrettyWriter 
(assert (not (= var977 null-var1383)))
(declare-const var3243 var1551) ; Statement: r0 := @parameter0: jdk.jfr.consumer.RecordedThread 
(assert (not (= var3243 null-var1551)))
(declare-const var1587 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var1587 null-String)))
(assert true)
(define-const var40 Int (getJavaThreadId/-1900371683 var3243)) ; Statement: l0 = virtualinvoke r0.<jdk.jfr.consumer.RecordedThread: long getJavaThreadId()>() 
(define-const var2313 Int (ite (> var40 0) 1 (ite (< var40 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var3836 Int (cast-from-Int-to-Int var2313)) ; Statement: $i4 = (int) $b1 
 ; Statement: if $i4 <= 0 goto $r22 = new java.lang.StringBuilder 
(assert (not (<= var3836 0))) ; Negate: Cond: $i4 <= 0  
(define-const var512 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var512)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var512!1 String)
(assert (= var512!1 ""))
(assert true)
(define-const var3818 String (append/672562846 var512!1 "\u0022")) ; Statement: $r14 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var512!2 String)
(assert (= var512!2 (str.++ var512!1 "\u0022")))
(assert true)
(define-const var459 String (getJavaName/1401172878 var3243)) ; Statement: $r13 = virtualinvoke r0.<jdk.jfr.consumer.RecordedThread: java.lang.String getJavaName()>() 
(assert true)
(define-const var1410 String (append/672562846 var3818 var459)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3818!1 String)
(assert (= var3818!1 (str.++ var3818 var459)))
(assert true)
(define-const var2779 String (append/672562846 var1410 "\u0022 (javaThreadId = ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (javaThreadId = ") 
(declare-const var1410!1 String)
(assert (= var1410!1 (str.++ var1410 "\u0022 (javaThreadId = ")))
(assert true)
(define-const var1158 Int (getJavaThreadId/-1900371683 var3243)) ; Statement: $l3 = virtualinvoke r0.<jdk.jfr.consumer.RecordedThread: long getJavaThreadId()>() 
(assert true)
(define-const var729 String (append/-901862667 var2779 var1158)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var2779!1 String)
(assert (str.prefixof var2779 var2779!1))
(assert true)
(define-const var3386 String (append/672562846 var729 ")")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var729!1 String)
(assert (= var729!1 (str.++ var729 ")")))
(assert true)
(define-const var2355 String (append/672562846 var3386 var1587)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var3386!1 String)
(assert (= var3386!1 (str.++ var3386 var1587)))
(assert true)
(define-const var2770 String (toString/-2075883882 var2355)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-650826721 (cast-from-var1383-to-var2056 var977) var2770)) ; Statement: virtualinvoke r1.<jdk.jfr.internal.tool.PrettyWriter: void println(java.lang.String)>($r20) 

(declare-const var977!1 var1383)
(declare-const var2770!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getJavaThreadId/-1900371683=([jdk.jfr.consumer.RecordedThread], long), cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getJavaName/1401172878=([jdk.jfr.consumer.RecordedThread], java.lang.String), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-650826721=([jdk.jfr.internal.tool.StructuredWriter, java.lang.String], void), cast-from-var1383-to-var2056=([jdk.jfr.internal.tool.PrettyWriter], jdk.jfr.internal.tool.StructuredWriter)}
; {var1383=jdk.jfr.internal.tool.PrettyWriter, var977=r1, var1551=jdk.jfr.consumer.RecordedThread, var3243=r0, var1587=r8, var3074=null_type, var40=l0, var2313=$b1, var3836=$i4, var512=$r21, var3818=$r14, var459=$r13, var1410=$r15, var2779=$r16, var1158=$l3, var729=$r17, var3386=$r18, var2355=$r19, var2770=$r20, var2056=jdk.jfr.internal.tool.StructuredWriter}
; {jdk.jfr.internal.tool.PrettyWriter=var1383, r1=var977, jdk.jfr.consumer.RecordedThread=var1551, r0=var3243, r8=var1587, null_type=var3074, l0=var40, $b1=var2313, $i4=var3836, $r21=var512, $r14=var3818, $r13=var459, $r15=var1410, $r16=var2779, $l3=var1158, $r17=var729, $r18=var3386, $r19=var2355, $r20=var2770, jdk.jfr.internal.tool.StructuredWriter=var2056}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.tool.PrettyWriter;	r0 := @parameter0: jdk.jfr.consumer.RecordedThread;	r8 := @parameter1: java.lang.String;	l0 = virtualinvoke r0.<jdk.jfr.consumer.RecordedThread: long getJavaThreadId()>();	$b1 = l0 cmp 0L;	$i4 = (int) $b1;	if $i4 <= 0 goto $r22 = new java.lang.StringBuilder;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r13 = virtualinvoke r0.<jdk.jfr.consumer.RecordedThread: java.lang.String getJavaName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" (javaThreadId = ");	$l3 = virtualinvoke r0.<jdk.jfr.consumer.RecordedThread: long getJavaThreadId()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<jdk.jfr.internal.tool.PrettyWriter: void println(java.lang.String)>($r20);	goto [?= return];	return
;block_num 3