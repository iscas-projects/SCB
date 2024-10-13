(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var778 0)
(declare-sort var3649 0)
(declare-sort var3507 0)
(declare-sort var2517 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun dateTime/-1681509957 (var778) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun when/-1681509957 (var778) var3649)
(declare-fun getValue/-1445752687 (var3507) String)
(declare-fun cast-from-var3649-to-var3507 (var3649) var3507)
(declare-fun granularity/-1681509957 (var778) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun pattern/-1681509957 (var778) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var778 var778)
(declare-const null-String String)
(declare-const var262 var778) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DateSelector 
(assert (not (= var262 null-var778)))
(define-const var222 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var222 "{dateselector date: ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{dateselector date: ") 
(declare-const var222!1 String)
(assert (= var222!1 "{dateselector date: "))
(define-const var2443 String (dateTime/-1681509957 var262)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DateSelector: java.lang.String dateTime> 
(assert true)
;(assert (append/672562846 var222!1 var2443)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var222!2 String)
(assert (= var222!2 (str.++ var222!1 var2443)))
(assert true)
(define-const var2085 String (append/672562846 var222!2 " compare: ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" compare: ") 
(declare-const var222!3 String)
(assert (= var222!3 (str.++ var222!2 " compare: ")))
(define-const var7 var3649 (when/-1681509957 var262)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DateSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TimeComparison when> 
(assert true)
(define-const var231 String (getValue/-1445752687 (cast-from-var3649-to-var3507 var7))) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TimeComparison: java.lang.String getValue()>() 
(assert true)
;(assert (append/672562846 var2085 var231)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2085!1 String)
(assert (= var2085!1 (str.++ var2085 var231)))
(assert true)
(define-const var371 String (append/672562846 var222!3 " granularity: ")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" granularity: ") 
(declare-const var222!4 String)
(assert (= var222!4 (str.++ var222!3 " granularity: ")))
(define-const var3014 Int (granularity/-1681509957 var262)) ; Statement: $l0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DateSelector: long granularity> 
(assert true)
;(assert (append/-901862667 var371 var3014)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var371!1 String)
(assert (str.prefixof var371 var371!1))
(define-const var3551 String (pattern/-1681509957 var262)) ; Statement: $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DateSelector: java.lang.String pattern> 
 ; Statement: if $r7 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(assert (= var3551 null-String)) ; Cond: $r7 == null 
(assert true)
;(assert (append/672562846 var222!4 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var222!5 String)
(assert (= var222!5 (str.++ var222!4 "}")))
(assert true)
(define-const var3814 String (toString/-2075883882 var222!5)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), dateTime/-1681509957=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DateSelector], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), when/-1681509957=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DateSelector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TimeComparison), getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var3649-to-var3507=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TimeComparison], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), granularity/-1681509957=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DateSelector], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), pattern/-1681509957=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DateSelector], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var778=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DateSelector, var262=r1, var222=$r0, var2443=$r2, var2085=$r5, var3649=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TimeComparison, var7=$r3, var3507=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var231=$r4, var371=$r6, var3014=$l0, var3551=$r7, var2517=null_type, var3814=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DateSelector=var778, r1=var262, $r0=var222, $r2=var2443, $r5=var2085, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TimeComparison=var3649, $r3=var7, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var3507, $r4=var231, $r6=var371, $l0=var3014, $r7=var3551, null_type=var2517, $r8=var3814}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DateSelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{dateselector date: ");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DateSelector: java.lang.String dateTime>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" compare: ");	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DateSelector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TimeComparison when>;	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TimeComparison: java.lang.String getValue()>();	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" granularity: ");	$l0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DateSelector: long granularity>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.DateSelector: java.lang.String pattern>;	if $r7 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2