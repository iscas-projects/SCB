(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3219 0)
(declare-sort var2620 0)
(declare-sort var212 0)
(declare-sort var319 0)
(declare-sort var2517 0)
(declare-sort var159 0)
(declare-sort var879 0)
(declare-sort var2953 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun put/1981026245 (var212 var159 var159) var159)
(declare-fun cast-from-String-to-var159 (String) var159)
(declare-fun push/1515821691 (var319 var159) var159)
(declare-fun get/-1721276195 (var212 var159) var159)
(declare-fun cast-from-var159-to-var879 (var159) var879)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/173117946 (var3219) String)
(declare-fun pop/1012470055 (var319) var159)
(declare-fun empty/1002846490 (var319) Bool)
(declare-fun var2953-init () var2953)
(declare-fun <init>/592609754 (String String) void)
(declare-fun <init>/1864341934 (var2953 String) void)
(declare-const null-var3219 var3219)
(declare-const null-String String)
(declare-const null-var212 var212)
(declare-const null-var319 var319)
(declare-const null-var2517 var2517)
(declare-const null-var879 var879)
(declare-const var560 var3219) ; Statement: r21 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var560 null-var3219)))
(declare-const var1272 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1272 null-String)))
(declare-const var2503 var212) ; Statement: r3 := @parameter1: java.util.Hashtable 
(assert (not (= var2503 null-var212)))
(declare-const var1856 var212) ; Statement: r0 := @parameter2: java.util.Hashtable 
(assert (not (= var1856 null-var212)))
(declare-const var363 var319) ; Statement: r2 := @parameter3: java.util.Stack 
(assert (not (= var363 null-var319)))
(declare-const var1264 var2517) ; Statement: r9 := @parameter4: java.util.Vector 
(assert (not (= var1264 null-var2517)))
(assert true)
;(assert (put/1981026245 var1856 (cast-from-String-to-var159 var1272) (cast-from-String-to-var159 "VISITING"))) ; Statement: virtualinvoke r0.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, "VISITING") 

(declare-const var1856!1 var212)
(declare-const var1272!1 String)
(declare-const var2547 String)
(assert true)
;(assert (push/1515821691 var363 (cast-from-String-to-var159 var1272!1))) ; Statement: virtualinvoke r2.<java.util.Stack: java.lang.Object push(java.lang.Object)>(r1) 

(declare-const var363!1 var319)
(declare-const var1272!2 String)
(assert true)
(define-const var884 var159 (get/-1721276195 var2503 (cast-from-String-to-var159 var1272!2))) ; Statement: $r4 = virtualinvoke r3.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var316 var879 (cast-from-var159-to-var879 var884)) ; Statement: r5 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target) $r4 
 ; Statement: if r5 != null goto $r6 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.util.Enumeration getDependencies()>() 
(assert (not (not (= var316 null-var879)))) ; Negate: Cond: r5 != null  
(define-const var1594 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1594 "Target \u0022")) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>(java.lang.String)>("Target \"") 
(declare-const var1594!1 String)
(assert (= var1594!1 "Target \u0022"))
(assert true)
;(assert (append/672562846 var1594!1 var1272!2)) ; Statement: virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1594!2 String)
(assert (= var1594!2 (str.++ var1594!1 var1272!2)))
(assert true)
;(assert (append/672562846 var1594!2 "\u0022 does not exist in the project \u0022")) ; Statement: virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" does not exist in the project \"") 
(declare-const var1594!3 String)
(assert (= var1594!3 (str.++ var1594!2 "\u0022 does not exist in the project \u0022")))
(define-const var1090 String (name/173117946 var560)) ; Statement: $r23 = r21.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String name> 
(assert true)
;(assert (append/672562846 var1594!3 var1090)) ; Statement: virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var1594!4 String)
(assert (= var1594!4 (str.++ var1594!3 var1090)))
(assert true)
;(assert (append/672562846 var1594!4 "\u0022. ")) ; Statement: virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\". ") 
(declare-const var1594!5 String)
(assert (= var1594!5 (str.++ var1594!4 "\u0022. ")))
(assert true)
;(assert (pop/1012470055 var363!1)) ; Statement: virtualinvoke r2.<java.util.Stack: java.lang.Object pop()>() 

(declare-const var363!2 var319)
(assert true)
(define-const var678 Bool (empty/1002846490 var363!2)) ; Statement: $z1 = virtualinvoke r2.<java.util.Stack: boolean empty()>() 
 ; Statement: if $z1 != 0 goto $r24 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (not (= (ite var678 1 0) 0))) ; Cond: $z1 != 0 
(define-const var129 var2953 var2953-init) ; Statement: $r24 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2625 String String-init) ; Statement: $r25 = new java.lang.String 
(assert true)
;(assert (<init>/592609754 var2625 var1594!5)) ; Statement: specialinvoke $r25.<java.lang.String: void <init>(java.lang.StringBuilder)>($r22) 

(declare-const var2625!1 String)
(declare-const var1594!6 String)
(assert true)
;(assert (<init>/1864341934 var129 var2625!1)) ; Statement: specialinvoke $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r25) 

(declare-const var129!1 var2953)
(declare-const var2625!2 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var159=([java.lang.String], java.lang.Object), push/1515821691=([java.util.Stack, java.lang.Object], java.lang.Object), get/-1721276195=([java.util.Hashtable, java.lang.Object], java.lang.Object), cast-from-var159-to-var879=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/173117946=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.lang.String), pop/1012470055=([java.util.Stack], java.lang.Object), empty/1002846490=([java.util.Stack], boolean), var2953-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/592609754=([java.lang.String, java.lang.StringBuilder], void), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3219=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var560=r21, var1272=r1, var2620=null_type, var212=java.util.Hashtable, var2503=r3, var1856=r0, var319=java.util.Stack, var363=r2, var2517=java.util.Vector, var1264=r9, var159=java.lang.Object, var2547="VISITING", var884=$r4, var879=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var316=r5, var1594=$r22, var1090=$r23, var678=$z1, var2953=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var129=$r24, var2625=$r25}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3219, r21=var560, r1=var1272, null_type=var2620, java.util.Hashtable=var212, r3=var2503, r0=var1856, java.util.Stack=var319, r2=var363, java.util.Vector=var2517, r9=var1264, java.lang.Object=var159, "VISITING"=var2547, $r4=var884, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var879, r5=var316, $r22=var1594, $r23=var1090, $z1=var678, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2953, $r24=var129, $r25=var2625}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(java.lang.StringBuilder)>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: void <init>(java.lang.StringBuilder)>": 1}
;stmts r21 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.util.Hashtable;	r0 := @parameter2: java.util.Hashtable;	r2 := @parameter3: java.util.Stack;	r9 := @parameter4: java.util.Vector;	virtualinvoke r0.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, "VISITING");	virtualinvoke r2.<java.util.Stack: java.lang.Object push(java.lang.Object)>(r1);	$r4 = virtualinvoke r3.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r1);	r5 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target) $r4;	if r5 != null goto $r6 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.util.Enumeration getDependencies()>();	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>(java.lang.String)>("Target \"");	virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" does not exist in the project \"");	$r23 = r21.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String name>;	virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\". ");	virtualinvoke r2.<java.util.Stack: java.lang.Object pop()>();	$z1 = virtualinvoke r2.<java.util.Stack: boolean empty()>();	if $z1 != 0 goto $r24 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r24 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r25 = new java.lang.String;	specialinvoke $r25.<java.lang.String: void <init>(java.lang.StringBuilder)>($r22);	specialinvoke $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r25);	throw $r24
;block_num 3