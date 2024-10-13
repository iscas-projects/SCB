(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1990 0)
(declare-sort var1883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun reset/340613496 (var1990) var1990)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun find/830231932 (var1990) Bool)
(declare-fun appendTail/-1262488627 (var1990 String) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1990 var1990)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3896 var1990) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher 
(assert (not (= var3896 null-var1990)))
(declare-const var873 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var873 null-String)))
(declare-const var3441 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3441 null-Bool)))
(assert true)
;(assert (reset/340613496 var3896)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher reset()>() 

(declare-const var3896!1 var1990)
(define-const var3990 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3990)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3990!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var820 Bool (find/830231932 var3896!1)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r1) 
(assert (= (ite var820 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (appendTail/-1262488627 var3896!1 var3990!1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r1) 

(declare-const var3896!2 var1990)
(declare-const var3990!2 String)
(assert true)
(define-const var1033 String (toString/-222306083 var3990!2)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {reset/340613496=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher], com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), find/830231932=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher], boolean), appendTail/-1262488627=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, java.lang.StringBuffer], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1990=com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, var3896=r0, var873=r3, var1883=null_type, var3441=z1, var3990=$r1, var820=$z0, var1033=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher=var1990, r0=var3896, r3=var873, null_type=var1883, z1=var3441, $r1=var3990, $z0=var820, $r2=var1033}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher;	r3 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher reset()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: boolean find()>();	if $z0 == 0 goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r1);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r1);	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 3