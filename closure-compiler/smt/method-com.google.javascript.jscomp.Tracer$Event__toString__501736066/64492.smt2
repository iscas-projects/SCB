(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1619 0)
(declare-sort var3733 0)
(declare-sort var3823 0)
(declare-sort var1548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun var3823_appendSpaces/2026083365 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun eventTime/766332272 (var1619) Int)
(declare-fun var3823_formatTime/-286518130 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isStart/-1458345216 (var1619) Bool)
(declare-fun tracer/-1458345216 (var1619) var3823)
(declare-fun stopTimeMs/1367660970 (var3823) Int)
(declare-fun startTimeMs/1367660970 (var3823) Int)
(declare-fun var3823_longToPaddedString/1993330429 (Int Int) String)
(declare-fun extraTracingValues/1367660970 (var3823) (Array Int Int))
(declare-fun append/-1031950772 (String var1548) String)
(declare-fun cast-from-var3823-to-var1548 (var3823) var1548)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1619 var1619)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1271 var1619) ; Statement: r1 := @this: com.google.javascript.jscomp.Tracer$Event 
(assert (not (= var1271 null-var1619)))
(declare-const var1261 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1261 null-Int)))
(declare-const var3659 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var3659 null-String)))
(declare-const var3603 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var3603 null-Int)))
(define-const var308 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var308 120)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(120) 

(declare-const var308!1 String)
(declare-const var2556 Int)
(define-const var875 Int (ite (> var1261 (- 1)) 1 (ite (< var1261 (- 1)) (- 1) 0))) ; Statement: $b1 = l0 cmp -1L 
 ; Statement: if $b1 != 0 goto $l2 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>() 
(assert (not (not (= var875 0)))) ; Negate: Cond: $b1 != 0  
;(assert (var3823_appendSpaces/2026083365 var308!1 var3603)) ; Statement: staticinvoke <com.google.javascript.jscomp.Tracer: void appendSpaces(java.lang.StringBuilder,int)>($r0, i3) 

(declare-const var308!2 String)
(declare-const var3603!1 Int)
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var308!2 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var308!3 String)
(assert (str.prefixof var308!2 var308!3))
(assert true)
(define-const var2404 Int (eventTime/766332272 var1271)) ; Statement: $l5 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>() 
(define-const var37 String (var3823_formatTime/-286518130 var2404)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.Tracer: java.lang.String formatTime(long)>($l5) 
(assert true)
;(assert (append/672562846 var308!3 var37)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var308!4 String)
(assert (= var308!4 (str.++ var308!3 var37)))
(define-const var1245 Bool (isStart/-1458345216 var1271)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.Tracer$Event: boolean isStart> 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Done ") 
(assert (= (ite var1245 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var308!4 " Done ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Done ") 
(declare-const var308!5 String)
(assert (= var308!5 (str.++ var308!4 " Done ")))
(define-const var1146 var3823 (tracer/-1458345216 var1271)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer> 
(define-const var3005 Int (stopTimeMs/1367660970 var1146)) ; Statement: $l7 = $r4.<com.google.javascript.jscomp.Tracer: long stopTimeMs> 
(define-const var581 var3823 (tracer/-1458345216 var1271)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer> 
(define-const var3570 Int (startTimeMs/1367660970 var581)) ; Statement: $l6 = $r5.<com.google.javascript.jscomp.Tracer: long startTimeMs> 
(define-const var3293 Int (- var3005 var3570)) ; Statement: l9 = $l7 - $l6 
(define-const var713 String (var3823_longToPaddedString/1993330429 var3293 var3603!1)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.Tracer: java.lang.String longToPaddedString(long,int)>(l9, i3) 
(assert true)
;(assert (append/672562846 var308!5 var713)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var308!6 String)
(assert (= var308!6 (str.++ var308!5 var713)))
(assert true)
;(assert (append/672562846 var308!6 " ms ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ms ") 
(declare-const var308!7 String)
(assert (= var308!7 (str.++ var308!6 " ms ")))
(define-const var2023 var3823 (tracer/-1458345216 var1271)) ; Statement: $r7 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer> 
(define-const var2178 (Array Int Int) (extraTracingValues/1367660970 var2023)) ; Statement: $r8 = $r7.<com.google.javascript.jscomp.Tracer: long[] extraTracingValues> 
 ; Statement: if $r8 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(assert (= var2178 null-__Array__Int__Int__)) ; Cond: $r8 == null 
(assert true)
;(assert (append/672562846 var308!7 var3659)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var308!8 String)
(assert (= var308!8 (str.++ var308!7 var3659)))
(define-const var2061 var3823 (tracer/-1458345216 var1271)) ; Statement: $r21 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer> 
(assert true)
;(assert (append/-1031950772 var308!8 (cast-from-var3823-to-var1548 var2061))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21) 
(declare-const var308!9 String)
(assert (str.prefixof var308!8 var308!9))
(assert true)
(define-const var19 String (toString/-2075883882 var308!9)) ; Statement: $r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), var3823_appendSpaces/2026083365=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), eventTime/766332272=([com.google.javascript.jscomp.Tracer$Event], long), var3823_formatTime/-286518130=([long], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isStart/-1458345216=([com.google.javascript.jscomp.Tracer$Event], boolean), tracer/-1458345216=([com.google.javascript.jscomp.Tracer$Event], com.google.javascript.jscomp.Tracer), stopTimeMs/1367660970=([com.google.javascript.jscomp.Tracer], long), startTimeMs/1367660970=([com.google.javascript.jscomp.Tracer], long), var3823_longToPaddedString/1993330429=([long, int], java.lang.String), extraTracingValues/1367660970=([com.google.javascript.jscomp.Tracer], long[]), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3823-to-var1548=([com.google.javascript.jscomp.Tracer], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1619=com.google.javascript.jscomp.Tracer$Event, var1271=r1, var1261=l0, var3659=r9, var3733=null_type, var3603=i3, var308=$r0, var2556=120, var875=$b1, var3823=com.google.javascript.jscomp.Tracer, var2404=$l5, var37=$r3, var1245=$z0, var1146=$r4, var3005=$l7, var581=$r5, var3570=$l6, var3293=l9, var713=$r6, var2023=$r7, var2178=$r8, var2061=$r21, var1548=java.lang.Object, var19=$r22}
; {com.google.javascript.jscomp.Tracer$Event=var1619, r1=var1271, l0=var1261, r9=var3659, null_type=var3733, i3=var3603, $r0=var308, 120=var2556, $b1=var875, com.google.javascript.jscomp.Tracer=var3823, $l5=var2404, $r3=var37, $z0=var1245, $r4=var1146, $l7=var3005, $r5=var581, $l6=var3570, l9=var3293, $r6=var713, $r7=var2023, $r8=var2178, $r21=var2061, java.lang.Object=var1548, $r22=var19}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.Tracer$Event;	l0 := @parameter0: long;	r9 := @parameter1: java.lang.String;	i3 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(120);	$b1 = l0 cmp -1L;	if $b1 != 0 goto $l2 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>();	staticinvoke <com.google.javascript.jscomp.Tracer: void appendSpaces(java.lang.StringBuilder,int)>($r0, i3);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$l5 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>();	$r3 = staticinvoke <com.google.javascript.jscomp.Tracer: java.lang.String formatTime(long)>($l5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$z0 = r1.<com.google.javascript.jscomp.Tracer$Event: boolean isStart>;	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Done ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Done ");	$r4 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer>;	$l7 = $r4.<com.google.javascript.jscomp.Tracer: long stopTimeMs>;	$r5 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer>;	$l6 = $r5.<com.google.javascript.jscomp.Tracer: long startTimeMs>;	l9 = $l7 - $l6;	$r6 = staticinvoke <com.google.javascript.jscomp.Tracer: java.lang.String longToPaddedString(long,int)>(l9, i3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ms ");	$r7 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer>;	$r8 = $r7.<com.google.javascript.jscomp.Tracer: long[] extraTracingValues>;	if $r8 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r21 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21);	$r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r22
;block_num 5