(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var62 0)
(declare-sort var2899 0)
(declare-sort var534 0)
(declare-sort var1121 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun eventTime/766332272 (var62) Int)
(declare-fun var534_longToPaddedString/1993330429 (Int Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var534_formatTime/-286518130 (Int) String)
(declare-fun isStart/-1458345216 (var62) Bool)
(declare-fun tracer/-1458345216 (var62) var534)
(declare-fun stopTimeMs/1367660970 (var534) Int)
(declare-fun startTimeMs/1367660970 (var534) Int)
(declare-fun extraTracingValues/1367660970 (var534) (Array Int Int))
(declare-fun append/-1031950772 (String var1121) String)
(declare-fun cast-from-var534-to-var1121 (var534) var1121)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var62 var62)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3907 var62) ; Statement: r1 := @this: com.google.javascript.jscomp.Tracer$Event 
(assert (not (= var3907 null-var62)))
(declare-const var2277 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var2277 null-Int)))
(declare-const var2333 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var2333 null-String)))
(declare-const var3372 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var3372 null-Int)))
(define-const var1003 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1003 120)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(120) 

(declare-const var1003!1 String)
(declare-const var2008 Int)
(define-const var2272 Int (ite (> var2277 (- 1)) 1 (ite (< var2277 (- 1)) (- 1) 0))) ; Statement: $b1 = l0 cmp -1L 
 ; Statement: if $b1 != 0 goto $l2 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>() 
(assert (not (= var2272 0))) ; Cond: $b1 != 0 
(assert true)
(define-const var2540 Int (eventTime/766332272 var3907)) ; Statement: $l2 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>() 
(define-const var270 Int (- var2540 var2277)) ; Statement: $l4 = $l2 - l0 
(define-const var438 String (var534_longToPaddedString/1993330429 var270 var3372)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.Tracer: java.lang.String longToPaddedString(long,int)>($l4, i3) 
(assert true)
;(assert (append/672562846 var1003!1 var438)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1003!2 String)
(assert (= var1003!2 (str.++ var1003!1 var438)))
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var1003!2 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1003!3 String)
(assert (str.prefixof var1003!2 var1003!3))
(assert true)
(define-const var2913 Int (eventTime/766332272 var3907)) ; Statement: $l5 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>() 
(define-const var2599 String (var534_formatTime/-286518130 var2913)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.Tracer: java.lang.String formatTime(long)>($l5) 
(assert true)
;(assert (append/672562846 var1003!3 var2599)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1003!4 String)
(assert (= var1003!4 (str.++ var1003!3 var2599)))
(define-const var2852 Bool (isStart/-1458345216 var3907)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.Tracer$Event: boolean isStart> 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Done ") 
(assert (= (ite var2852 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var1003!4 " Done ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Done ") 
(declare-const var1003!5 String)
(assert (= var1003!5 (str.++ var1003!4 " Done ")))
(define-const var2182 var534 (tracer/-1458345216 var3907)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer> 
(define-const var2383 Int (stopTimeMs/1367660970 var2182)) ; Statement: $l7 = $r4.<com.google.javascript.jscomp.Tracer: long stopTimeMs> 
(define-const var1095 var534 (tracer/-1458345216 var3907)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer> 
(define-const var742 Int (startTimeMs/1367660970 var1095)) ; Statement: $l6 = $r5.<com.google.javascript.jscomp.Tracer: long startTimeMs> 
(define-const var2004 Int (- var2383 var742)) ; Statement: l9 = $l7 - $l6 
(define-const var2325 String (var534_longToPaddedString/1993330429 var2004 var3372)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.Tracer: java.lang.String longToPaddedString(long,int)>(l9, i3) 
(assert true)
;(assert (append/672562846 var1003!5 var2325)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1003!6 String)
(assert (= var1003!6 (str.++ var1003!5 var2325)))
(assert true)
;(assert (append/672562846 var1003!6 " ms ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ms ") 
(declare-const var1003!7 String)
(assert (= var1003!7 (str.++ var1003!6 " ms ")))
(define-const var2884 var534 (tracer/-1458345216 var3907)) ; Statement: $r7 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer> 
(define-const var3183 (Array Int Int) (extraTracingValues/1367660970 var2884)) ; Statement: $r8 = $r7.<com.google.javascript.jscomp.Tracer: long[] extraTracingValues> 
 ; Statement: if $r8 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(assert (= var3183 null-__Array__Int__Int__)) ; Cond: $r8 == null 
(assert true)
;(assert (append/672562846 var1003!7 var2333)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var1003!8 String)
(assert (= var1003!8 (str.++ var1003!7 var2333)))
(define-const var3032 var534 (tracer/-1458345216 var3907)) ; Statement: $r21 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer> 
(assert true)
;(assert (append/-1031950772 var1003!8 (cast-from-var534-to-var1121 var3032))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21) 
(declare-const var1003!9 String)
(assert (str.prefixof var1003!8 var1003!9))
(assert true)
(define-const var433 String (toString/-2075883882 var1003!9)) ; Statement: $r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), eventTime/766332272=([com.google.javascript.jscomp.Tracer$Event], long), var534_longToPaddedString/1993330429=([long, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var534_formatTime/-286518130=([long], java.lang.String), isStart/-1458345216=([com.google.javascript.jscomp.Tracer$Event], boolean), tracer/-1458345216=([com.google.javascript.jscomp.Tracer$Event], com.google.javascript.jscomp.Tracer), stopTimeMs/1367660970=([com.google.javascript.jscomp.Tracer], long), startTimeMs/1367660970=([com.google.javascript.jscomp.Tracer], long), extraTracingValues/1367660970=([com.google.javascript.jscomp.Tracer], long[]), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var534-to-var1121=([com.google.javascript.jscomp.Tracer], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var62=com.google.javascript.jscomp.Tracer$Event, var3907=r1, var2277=l0, var2333=r9, var2899=null_type, var3372=i3, var1003=$r0, var2008=120, var2272=$b1, var2540=$l2, var270=$l4, var534=com.google.javascript.jscomp.Tracer, var438=$r2, var2913=$l5, var2599=$r3, var2852=$z0, var2182=$r4, var2383=$l7, var1095=$r5, var742=$l6, var2004=l9, var2325=$r6, var2884=$r7, var3183=$r8, var3032=$r21, var1121=java.lang.Object, var433=$r22}
; {com.google.javascript.jscomp.Tracer$Event=var62, r1=var3907, l0=var2277, r9=var2333, null_type=var2899, i3=var3372, $r0=var1003, 120=var2008, $b1=var2272, $l2=var2540, $l4=var270, com.google.javascript.jscomp.Tracer=var534, $r2=var438, $l5=var2913, $r3=var2599, $z0=var2852, $r4=var2182, $l7=var2383, $r5=var1095, $l6=var742, l9=var2004, $r6=var2325, $r7=var2884, $r8=var3183, $r21=var3032, java.lang.Object=var1121, $r22=var433}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.Tracer$Event;	l0 := @parameter0: long;	r9 := @parameter1: java.lang.String;	i3 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(120);	$b1 = l0 cmp -1L;	if $b1 != 0 goto $l2 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>();	$l2 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>();	$l4 = $l2 - l0;	$r2 = staticinvoke <com.google.javascript.jscomp.Tracer: java.lang.String longToPaddedString(long,int)>($l4, i3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$l5 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>();	$r3 = staticinvoke <com.google.javascript.jscomp.Tracer: java.lang.String formatTime(long)>($l5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$z0 = r1.<com.google.javascript.jscomp.Tracer$Event: boolean isStart>;	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Done ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Done ");	$r4 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer>;	$l7 = $r4.<com.google.javascript.jscomp.Tracer: long stopTimeMs>;	$r5 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer>;	$l6 = $r5.<com.google.javascript.jscomp.Tracer: long startTimeMs>;	l9 = $l7 - $l6;	$r6 = staticinvoke <com.google.javascript.jscomp.Tracer: java.lang.String longToPaddedString(long,int)>(l9, i3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ms ");	$r7 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer>;	$r8 = $r7.<com.google.javascript.jscomp.Tracer: long[] extraTracingValues>;	if $r8 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r21 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21);	$r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r22
;block_num 5