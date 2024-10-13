(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2180 0)
(declare-sort var2188 0)
(declare-sort var692 0)
(declare-sort var2839 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun var692_appendSpaces/2026083365 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun eventTime/766332272 (var2180) Int)
(declare-fun var692_formatTime/-286518130 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isStart/-1458345216 (var2180) Bool)
(declare-fun tracer/-1458345216 (var2180) var692)
(declare-fun append/-1031950772 (String var2839) String)
(declare-fun cast-from-var692-to-var2839 (var692) var2839)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2180 var2180)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var208 var2180) ; Statement: r1 := @this: com.google.javascript.jscomp.Tracer$Event 
(assert (not (= var208 null-var2180)))
(declare-const var3918 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3918 null-Int)))
(declare-const var1756 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var1756 null-String)))
(declare-const var1102 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var1102 null-Int)))
(define-const var2071 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2071 120)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(120) 

(declare-const var2071!1 String)
(declare-const var106 Int)
(define-const var660 Int (ite (> var3918 (- 1)) 1 (ite (< var3918 (- 1)) (- 1) 0))) ; Statement: $b1 = l0 cmp -1L 
 ; Statement: if $b1 != 0 goto $l2 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>() 
(assert (not (not (= var660 0)))) ; Negate: Cond: $b1 != 0  
;(assert (var692_appendSpaces/2026083365 var2071!1 var1102)) ; Statement: staticinvoke <com.google.javascript.jscomp.Tracer: void appendSpaces(java.lang.StringBuilder,int)>($r0, i3) 

(declare-const var2071!2 String)
(declare-const var1102!1 Int)
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var2071!2 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2071!3 String)
(assert (str.prefixof var2071!2 var2071!3))
(assert true)
(define-const var3527 Int (eventTime/766332272 var208)) ; Statement: $l5 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>() 
(define-const var772 String (var692_formatTime/-286518130 var3527)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.Tracer: java.lang.String formatTime(long)>($l5) 
(assert true)
;(assert (append/672562846 var2071!3 var772)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2071!4 String)
(assert (= var2071!4 (str.++ var2071!3 var772)))
(define-const var801 Bool (isStart/-1458345216 var208)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.Tracer$Event: boolean isStart> 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Done ") 
(assert (not (= (ite var801 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (append/672562846 var2071!4 " Start ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Start ") 
(declare-const var2071!5 String)
(assert (= var2071!5 (str.++ var2071!4 " Start ")))
;(assert (var692_appendSpaces/2026083365 var2071!5 var1102!1)) ; Statement: staticinvoke <com.google.javascript.jscomp.Tracer: void appendSpaces(java.lang.StringBuilder,int)>($r0, i3) 

(declare-const var2071!6 String)
(declare-const var1102!2 Int)
(assert true)
;(assert (append/672562846 var2071!6 "   ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("   ") 
(declare-const var2071!7 String)
(assert (= var2071!7 (str.++ var2071!6 "   ")))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2071!7 var1756)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var2071!8 String)
(assert (= var2071!8 (str.++ var2071!7 var1756)))
(define-const var2607 var692 (tracer/-1458345216 var208)) ; Statement: $r21 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer> 
(assert true)
;(assert (append/-1031950772 var2071!8 (cast-from-var692-to-var2839 var2607))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21) 
(declare-const var2071!9 String)
(assert (str.prefixof var2071!8 var2071!9))
(assert true)
(define-const var3753 String (toString/-2075883882 var2071!9)) ; Statement: $r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), var692_appendSpaces/2026083365=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), eventTime/766332272=([com.google.javascript.jscomp.Tracer$Event], long), var692_formatTime/-286518130=([long], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isStart/-1458345216=([com.google.javascript.jscomp.Tracer$Event], boolean), tracer/-1458345216=([com.google.javascript.jscomp.Tracer$Event], com.google.javascript.jscomp.Tracer), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var692-to-var2839=([com.google.javascript.jscomp.Tracer], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2180=com.google.javascript.jscomp.Tracer$Event, var208=r1, var3918=l0, var1756=r9, var2188=null_type, var1102=i3, var2071=$r0, var106=120, var660=$b1, var692=com.google.javascript.jscomp.Tracer, var3527=$l5, var772=$r3, var801=$z0, var2607=$r21, var2839=java.lang.Object, var3753=$r22}
; {com.google.javascript.jscomp.Tracer$Event=var2180, r1=var208, l0=var3918, r9=var1756, null_type=var2188, i3=var1102, $r0=var2071, 120=var106, $b1=var660, com.google.javascript.jscomp.Tracer=var692, $l5=var3527, $r3=var772, $z0=var801, $r21=var2607, java.lang.Object=var2839, $r22=var3753}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.Tracer$Event;	l0 := @parameter0: long;	r9 := @parameter1: java.lang.String;	i3 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(120);	$b1 = l0 cmp -1L;	if $b1 != 0 goto $l2 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>();	staticinvoke <com.google.javascript.jscomp.Tracer: void appendSpaces(java.lang.StringBuilder,int)>($r0, i3);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$l5 = virtualinvoke r1.<com.google.javascript.jscomp.Tracer$Event: long eventTime()>();	$r3 = staticinvoke <com.google.javascript.jscomp.Tracer: java.lang.String formatTime(long)>($l5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$z0 = r1.<com.google.javascript.jscomp.Tracer$Event: boolean isStart>;	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Done ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Start ");	staticinvoke <com.google.javascript.jscomp.Tracer: void appendSpaces(java.lang.StringBuilder,int)>($r0, i3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("   ");	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r21 = r1.<com.google.javascript.jscomp.Tracer$Event: com.google.javascript.jscomp.Tracer tracer>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21);	$r22 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r22
;block_num 5