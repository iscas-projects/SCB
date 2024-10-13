(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2943 0)
(declare-sort var3218 0)
(declare-sort var3624 0)
(declare-sort var509 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun eventTime/766332272 (var2943) Int)
(declare-fun var3624_longToPaddedString/1993330429 (Int Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var3624_formatTime/-286518130 (Int) String)
(declare-fun isStart/-1458345216 (var2943) Bool)
(declare-fun var3624_appendSpaces/2026083365 (String Int) void)
(declare-fun tracer/-1458345216 (var2943) var3624)
(declare-fun append/-1031950772 (String var509) String)
(declare-fun cast-from-var3624-to-var509 (var3624) var509)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2943 var2943)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2093 var2943) ; Statement: r1 := @this: com.google.javascript.jscomp.Tracer$Event 
(assert (not (= var2093 null-var2943)))
(declare-const var1341 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1341 null-Int)))
(declare-const var2579 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var2579 null-String)))
(declare-const var3110 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var3110 null-Int)))
(define-const var684 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var684 120)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(120) 

(declare-const var684!1 String)
(declare-const var3455 Int)
(define-const var2355 Int (ite (> var1341 (- 1)) 1 (ite (< var1341 (- 1)) (- 1) 0))) ; Statement: $b1 = l0 cmp -1L 
 ; Statement: if $b1 != 0 goto $l2 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>() 
(assert (not (= var2355 0))) ; Cond: $b1 != 0 
(assert true)
(define-const var2447 Int (eventTime/766332272 var2093)) ; Statement: $l2 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>() 
(define-const var3707 Int (- var2447 var1341)) ; Statement: $l4 = $l2 - l0 
(define-const var2566 String (var3624_longToPaddedString/1993330429 var3707 var3110)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.Tracer: java.lang.String longToPaddedString(long,int)>($l4, i3) 
(assert true)
;(assert (append/672562846 var684!1 var2566)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var684!2 String)
(assert (= var684!2 (str.++ var684!1 var2566)))
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var684!2 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var684!3 String)
(assert (str.prefixof var684!2 var684!3))
(assert true)
(define-const var3280 Int (eventTime/766332272 var2093)) ; Statement: $l5 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>() 
(define-const var1477 String (var3624_formatTime/-286518130 var3280)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.Tracer: java.lang.String formatTime(long)>($l5) 
(assert true)
;(assert (append/672562846 var684!3 var1477)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var684!4 String)
(assert (= var684!4 (str.++ var684!3 var1477)))
(define-const var3694 Bool (isStart/-1458345216 var2093)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.Tracer$Event: boolean isStart> 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Done ") 
(assert (not (= (ite var3694 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (append/672562846 var684!4 " Start ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Start ") 
(declare-const var684!5 String)
(assert (= var684!5 (str.++ var684!4 " Start ")))
;(assert (var3624_appendSpaces/2026083365 var684!5 var3110)) ; Statement: staticinvoke <com.google.javascript.jscomp.Tracer: void appendSpaces(java.lang.StringBuilder,int)>($r0, i3) 

(declare-const var684!6 String)
(declare-const var3110!1 Int)
(assert true)
;(assert (append/672562846 var684!6 "   ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("   ") 
(declare-const var684!7 String)
(assert (= var684!7 (str.++ var684!6 "   ")))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var684!7 var2579)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var684!8 String)
(assert (= var684!8 (str.++ var684!7 var2579)))
(define-const var2757 var3624 (tracer/-1458345216 var2093)) ; Statement: $r21 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer> 
(assert true)
;(assert (append/-1031950772 var684!8 (cast-from-var3624-to-var509 var2757))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21) 
(declare-const var684!9 String)
(assert (str.prefixof var684!8 var684!9))
(assert true)
(define-const var3515 String (toString/-2075883882 var684!9)) ; Statement: $r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), eventTime/766332272=([com.google.javascript.jscomp.Tracer$Event], long), var3624_longToPaddedString/1993330429=([long, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var3624_formatTime/-286518130=([long], java.lang.String), isStart/-1458345216=([com.google.javascript.jscomp.Tracer$Event], boolean), var3624_appendSpaces/2026083365=([java.lang.StringBuilder, int], void), tracer/-1458345216=([com.google.javascript.jscomp.Tracer$Event], com.google.javascript.jscomp.Tracer), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3624-to-var509=([com.google.javascript.jscomp.Tracer], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2943=com.google.javascript.jscomp.Tracer$Event, var2093=r1, var1341=l0, var2579=r9, var3218=null_type, var3110=i3, var684=$r0, var3455=120, var2355=$b1, var2447=$l2, var3707=$l4, var3624=com.google.javascript.jscomp.Tracer, var2566=$r2, var3280=$l5, var1477=$r3, var3694=$z0, var2757=$r21, var509=java.lang.Object, var3515=$r22}
; {com.google.javascript.jscomp.Tracer$Event=var2943, r1=var2093, l0=var1341, r9=var2579, null_type=var3218, i3=var3110, $r0=var684, 120=var3455, $b1=var2355, $l2=var2447, $l4=var3707, com.google.javascript.jscomp.Tracer=var3624, $r2=var2566, $l5=var3280, $r3=var1477, $z0=var3694, $r21=var2757, java.lang.Object=var509, $r22=var3515}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.Tracer$Event;	l0 := @parameter0: long;	r9 := @parameter1: java.lang.String;	i3 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(120);	$b1 = l0 cmp -1L;	if $b1 != 0 goto $l2 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>();	$l2 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>();	$l4 = $l2 - l0;	$r2 = staticinvoke <com.google.javascript.jscomp.Tracer: java.lang.String longToPaddedString(long,int)>($l4, i3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$l5 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>();	$r3 = staticinvoke <com.google.javascript.jscomp.Tracer: java.lang.String formatTime(long)>($l5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$z0 = r1.<com.google.javascript.jscomp.Tracer$Event: boolean isStart>;	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Done ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Start ");	staticinvoke <com.google.javascript.jscomp.Tracer: void appendSpaces(java.lang.StringBuilder,int)>($r0, i3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("   ");	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r21 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21);	$r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r22
;block_num 5