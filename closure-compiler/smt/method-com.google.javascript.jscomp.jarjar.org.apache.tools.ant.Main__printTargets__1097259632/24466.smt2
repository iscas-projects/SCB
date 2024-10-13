(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1859 0)
(declare-sort var1985 0)
(declare-sort var396 0)
(declare-sort var1202 0)
(declare-sort var1320 0)
(declare-sort var2695 0)
(declare-sort var3678 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTargets/-79476651 (var1859) var1985)
(declare-fun var1202_removeDuplicateTargets/1086159018 (var396) var396)
(declare-fun cast-from-var1985-to-var396 (var1985) var396)
(declare-fun var1320-init () var1320)
(declare-fun <init>/-1913910780 (var1320) void)
(declare-fun var396_values/371402559 (var396) var2695)
(declare-fun var2695_iterator/-1617794947 (var2695) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var1202_printTargets/2135861149 (var1859 var1320 var1320 var1320 String Int) void)
(declare-fun isEmpty/633059479 (var1320) Bool)
(declare-fun getDefaultTarget/973914626 (var1859) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1859 var1859)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var1238 var1859) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1238 null-var1859)))
(declare-const var362 Bool) ; Statement: z4 := @parameter1: boolean 
(assert (not (= var362 null-Bool)))
(declare-const var244 Bool) ; Statement: z3 := @parameter2: boolean 
(assert (not (= var244 null-Bool)))
(define-const var3129 Int 0) ; Statement: i1 = 0 
(assert true)
(define-const var2824 var1985 (getTargets/-79476651 var1238)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.util.Hashtable getTargets()>() 
(define-const var3723 var396 (var1202_removeDuplicateTargets/1086159018 (cast-from-var1985-to-var396 var2824))) ; Statement: r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: java.util.Map removeDuplicateTargets(java.util.Map)>($r1) 
(define-const var1089 var1320 var1320-init) ; Statement: $r3 = new java.util.Vector 
(assert true)
;(assert (<init>/-1913910780 var1089)) ; Statement: specialinvoke $r3.<java.util.Vector: void <init>()>() 

(declare-const var1089!1 var1320)
(define-const var3082 var1320 var1320-init) ; Statement: $r4 = new java.util.Vector 
(assert true)
;(assert (<init>/-1913910780 var3082)) ; Statement: specialinvoke $r4.<java.util.Vector: void <init>()>() 

(declare-const var3082!1 var1320)
(define-const var3694 var1320 var1320-init) ; Statement: $r5 = new java.util.Vector 
(assert true)
;(assert (<init>/-1913910780 var3694)) ; Statement: specialinvoke $r5.<java.util.Vector: void <init>()>() 

(declare-const var3694!1 var1320)
(define-const var3212 var1320 var1320-init) ; Statement: $r6 = new java.util.Vector 
(assert true)
;(assert (<init>/-1913910780 var3212)) ; Statement: specialinvoke $r6.<java.util.Vector: void <init>()>() 

(declare-const var3212!1 var1320)
(define-const var1204 var1320 var1320-init) ; Statement: $r7 = new java.util.Vector 
(assert true)
;(assert (<init>/-1913910780 var1204)) ; Statement: specialinvoke $r7.<java.util.Vector: void <init>()>() 

(declare-const var1204!1 var1320)
(define-const var3463 var2695 (var396_values/371402559 var3723)) ; Statement: $r8 = interfaceinvoke r2.<java.util.Map: java.util.Collection values()>() 
(define-const var3661 Iterator (var2695_iterator/-1617794947 var3463)) ; Statement: r20 = interfaceinvoke $r8.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2239 Bool (Iterator_hasNext/-1669924200 var3661)) ; Statement: $z5 = interfaceinvoke r20.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z5 == 0 goto staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: void printTargets(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.util.Vector,java.util.Vector,java.util.Vector,java.lang.String,int)>(r0, $r3, $r4, $r5, "Main targets:", i1) 
(assert (= (ite var2239 1 0) 0)) ; Cond: $z5 == 0 
;(assert (var1202_printTargets/2135861149 var1238 var1089!1 var3082!1 var3694!1 "Main targets:" var3129)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: void printTargets(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.util.Vector,java.util.Vector,java.util.Vector,java.lang.String,int)>(r0, $r3, $r4, $r5, "Main targets:", i1) 

(declare-const var1238!1 var1859)
(declare-const var1089!2 var1320)
(declare-const var3082!2 var1320)
(declare-const var3694!2 var1320)
(declare-const var3591 String)
(declare-const var3129!1 Int)
(assert true)
(define-const var2649 Bool (isEmpty/633059479 var1089!2)) ; Statement: $z0 = virtualinvoke $r3.<java.util.Vector: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var2649 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if z4 == 0 goto $r13 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getDefaultTarget()>() 
(assert (= (ite var362 1 0) 0)) ; Cond: z4 == 0 
(assert true)
(define-const var3354 String (getDefaultTarget/973914626 var1238!1)) ; Statement: $r13 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getDefaultTarget()>() 
 ; Statement: if $r13 == null goto return 
(assert (not (= var3354 null-String))) ; Negate: Cond: $r13 == null  
(assert true)
(define-const var2436 Bool (isEmpty/-1285796103 var3354)) ; Statement: $z1 = virtualinvoke $r13.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto return 
(assert (not (= (ite var2436 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getTargets/-79476651=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.util.Hashtable), var1202_removeDuplicateTargets/1086159018=([java.util.Map], java.util.Map), cast-from-var1985-to-var396=([java.util.Hashtable], java.util.Map), var1320-init=([], java.util.Vector), <init>/-1913910780=([java.util.Vector], void), var396_values/371402559=([java.util.Map], java.util.Collection), var2695_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var1202_printTargets/2135861149=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.util.Vector, java.util.Vector, java.util.Vector, java.lang.String, int], void), isEmpty/633059479=([java.util.Vector], boolean), getDefaultTarget/973914626=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1859=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1238=r0, var362=z4, var244=z3, var3129=i1, var1985=java.util.Hashtable, var2824=$r1, var396=java.util.Map, var1202=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main, var3723=r2, var1320=java.util.Vector, var1089=$r3, var3082=$r4, var3694=$r5, var3212=$r6, var1204=$r7, var2695=java.util.Collection, var3463=$r8, var3661=r20, var2239=$z5, var3591="Main targets:", var2649=$z0, var3354=$r13, var3678=null_type, var2436=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1859, r0=var1238, z4=var362, z3=var244, i1=var3129, java.util.Hashtable=var1985, $r1=var2824, java.util.Map=var396, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main=var1202, r2=var3723, java.util.Vector=var1320, $r3=var1089, $r4=var3082, $r5=var3694, $r6=var3212, $r7=var1204, java.util.Collection=var2695, $r8=var3463, r20=var3661, $z5=var2239, "Main targets:"=var3591, $z0=var2649, $r13=var3354, null_type=var3678, $z1=var2436}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	z4 := @parameter1: boolean;	z3 := @parameter2: boolean;	i1 = 0;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.util.Hashtable getTargets()>();	r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: java.util.Map removeDuplicateTargets(java.util.Map)>($r1);	$r3 = new java.util.Vector;	specialinvoke $r3.<java.util.Vector: void <init>()>();	$r4 = new java.util.Vector;	specialinvoke $r4.<java.util.Vector: void <init>()>();	$r5 = new java.util.Vector;	specialinvoke $r5.<java.util.Vector: void <init>()>();	$r6 = new java.util.Vector;	specialinvoke $r6.<java.util.Vector: void <init>()>();	$r7 = new java.util.Vector;	specialinvoke $r7.<java.util.Vector: void <init>()>();	$r8 = interfaceinvoke r2.<java.util.Map: java.util.Collection values()>();	r20 = interfaceinvoke $r8.<java.util.Collection: java.util.Iterator iterator()>();	$z5 = interfaceinvoke r20.<java.util.Iterator: boolean hasNext()>();	if $z5 == 0 goto staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: void printTargets(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.util.Vector,java.util.Vector,java.util.Vector,java.lang.String,int)>(r0, $r3, $r4, $r5, "Main targets:", i1);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: void printTargets(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.util.Vector,java.util.Vector,java.util.Vector,java.lang.String,int)>(r0, $r3, $r4, $r5, "Main targets:", i1);	$z0 = virtualinvoke $r3.<java.util.Vector: boolean isEmpty()>();	if $z0 == 0 goto (branch);	if z4 == 0 goto $r13 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getDefaultTarget()>();	$r13 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getDefaultTarget()>();	if $r13 == null goto return;	$z1 = virtualinvoke $r13.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto return;	return
;block_num 7