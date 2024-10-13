(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1042 0)
(declare-sort var1636 0)
(declare-sort var609 0)
(declare-sort var205 0)
(declare-sort var1404 0)
(declare-sort var3345 0)
(declare-sort var378 0)
(declare-sort var76 0)
(declare-sort var3536 0)
(declare-sort var2868 0)
(declare-sort var3227 0)
(declare-sort var3503 0)
(declare-sort var504 0)
(declare-sort var2531 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1636-init () var1636)
(declare-fun <init>/-201242697 (var1636) void)
(declare-fun cast-from-var1636-to-var609 (var1636) var609)
(declare-fun presentElements/1060277413 (var1042) var609)
(declare-fun getNsElements/-1036005922 (var1042) var609)
(declare-fun processTasks/1938470497 (var1042) void)
(declare-fun var205-init () var205)
(declare-fun <init>/-849847095 (var205) void)
(declare-fun cast-from-var205-to-var609 (var205) var609)
(declare-fun localAttributes/1060277413 (var1042) var609)
(declare-fun var1404-init () var1404)
(declare-fun map/1060277413 (var1042) var609)
(declare-fun var609_keySet/-712633290 (var609) var3345)
(declare-fun <init>/1161881499 (var1404 var378) void)
(declare-fun cast-from-var3345-to-var378 (var3345) var378)
(declare-fun macroDef/1060277413 (var1042) var76)
(declare-fun getAttributes/241074043 (var76) var3536)
(declare-fun var3536_iterator/-912451715 (var3536) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3345_remove/-1726854360 (var3345 var2868) Bool)
(declare-fun cast-from-var1404-to-var3345 (var1404) var3345)
(declare-fun cast-from-String-to-var2868 (String) var2868)
(declare-fun getText/833461813 (var76) var3227)
(declare-fun text/1060277413 (var1042) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var504-init () var504)
(declare-fun arr-var2868-init () (Array Int var2868))
(declare-fun getTaskName/237633316 (var2531) String)
(declare-fun cast-from-var1042-to-var2531 (var1042) var2531)
(declare-fun <init>/1887414589 (var504 String (Array Int var2868)) void)
(declare-const null-var1042 var1042)
(declare-const null-var3227 var3227)
(declare-const null-String String)
(declare-const null-__Array__Int__var2868__ (Array Int var2868))
(declare-const var221 var1042) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance 
(assert (not (= var221 null-var1042)))
(define-const var2911 var1636 var1636-init) ; Statement: $r1 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2911)) ; Statement: specialinvoke $r1.<java.util.HashMap: void <init>()>() 

(declare-const var2911!1 var1636)
(declare-const var221!1 var1042)
(assert (not (= var221!1 null-var1042)))
(assert (= (presentElements/1060277413 var221!1) (cast-from-var1636-to-var609 var2911!1))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.util.Map presentElements> = $r1 
(assert true)
;(assert (getNsElements/-1036005922 var221!1)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.util.Map getNsElements()>() 

(declare-const var221!2 var1042)
(assert true)
;(assert (processTasks/1938470497 var221!2)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: void processTasks()>() 

(declare-const var221!3 var1042)
(define-const var736 var205 var205-init) ; Statement: $r2 = new java.util.Hashtable 
(assert true)
;(assert (<init>/-849847095 var736)) ; Statement: specialinvoke $r2.<java.util.Hashtable: void <init>()>() 

(declare-const var736!1 var205)
(declare-const var221!4 var1042)
(assert (not (= var221!4 null-var1042)))
(assert (= (localAttributes/1060277413 var221!4) (cast-from-var205-to-var609 var736!1))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.util.Map localAttributes> = $r2 
(define-const var2374 var1404 var1404-init) ; Statement: $r3 = new java.util.HashSet 
(define-const var937 var609 (map/1060277413 var221!4)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.util.Map map> 
(define-const var771 var3345 (var609_keySet/-712633290 var937)) ; Statement: $r5 = interfaceinvoke $r4.<java.util.Map: java.util.Set keySet()>() 
(assert true)
;(assert (<init>/1161881499 var2374 (cast-from-var3345-to-var378 var771))) ; Statement: specialinvoke $r3.<java.util.HashSet: void <init>(java.util.Collection)>($r5) 

(declare-const var2374!1 var1404)
(declare-const var771!1 var3345)
(define-const var2875 var76 (macroDef/1060277413 var221!4)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef macroDef> 
(assert true)
(define-const var197 var3536 (getAttributes/241074043 var2875)) ; Statement: $r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef: java.util.List getAttributes()>() 
(define-const var3886 Iterator (var3536_iterator/-912451715 var197)) ; Statement: r57 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2938 Bool (Iterator_hasNext/-1669924200 var3886)) ; Statement: $z0 = interfaceinvoke r57.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto interfaceinvoke $r3.<java.util.Set: boolean remove(java.lang.Object)>("id") 
(assert (= (ite var2938 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var3345_remove/-1726854360 (cast-from-var1404-to-var3345 var2374!1) (cast-from-String-to-var2868 "id"))) ; Statement: interfaceinvoke $r3.<java.util.Set: boolean remove(java.lang.Object)>("id") 

(declare-const var2374!2 var1404)
(declare-const var275 String)
(define-const var3529 var76 (macroDef/1060277413 var221!4)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef macroDef> 
(assert true)
(define-const var3064 var3227 (getText/833461813 var3529)) ; Statement: $r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Text getText()>() 
 ; Statement: if $r9 == null goto $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.lang.String text> 
(assert (= var3064 null-var3227)) ; Cond: $r9 == null 
(define-const var2865 String (text/1060277413 var221!4)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.lang.String text> 
 ; Statement: if $r10 == null goto $z6 = interfaceinvoke $r3.<java.util.Set: boolean isEmpty()>() 
(assert (not (= var2865 null-String))) ; Negate: Cond: $r10 == null  
(define-const var1789 String (text/1060277413 var221!4)) ; Statement: $r20 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.lang.String text> 
(assert true)
(define-const var357 String (trim/-847153721 var1789)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2887 Bool (isEmpty/-1285796103 var357)) ; Statement: $z1 = virtualinvoke $r21.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto $z6 = interfaceinvoke $r3.<java.util.Set: boolean isEmpty()>() 
(assert (not (not (= (ite var2887 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1737 var504 var504-init) ; Statement: $r22 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2290 (Array Int var2868) arr-var2868-init) ; Statement: $r23 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var319 String (getTaskName/237633316 (cast-from-var1042-to-var2531 var221!4))) ; Statement: $r24 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.lang.String getTaskName()>() 
(declare-const var2290!1 (Array Int var2868))
(assert (not (= var2290!1 null-__Array__Int__var2868__)))
(assert (= (select var2290!1 0) (cast-from-String-to-var2868 var319))) ; Statement: $r23[0] = $r24 
(assert true)
;(assert (<init>/1887414589 var1737 "The \u0022%s\u0022 macro does not support nested text data." var2290!1)) ; Statement: specialinvoke $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Object[])>("The \"%s\" macro does not support nested text data.", $r23) 

(declare-const var1737!1 var504)
(declare-const var3167 String)
(declare-const var2290!2 (Array Int var2868))
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {var1636-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var1636-to-var609=([java.util.HashMap], java.util.Map), presentElements/1060277413=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance], java.util.Map), getNsElements/-1036005922=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance], java.util.Map), processTasks/1938470497=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance], void), var205-init=([], java.util.Hashtable), <init>/-849847095=([java.util.Hashtable], void), cast-from-var205-to-var609=([java.util.Hashtable], java.util.Map), localAttributes/1060277413=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance], java.util.Map), var1404-init=([], java.util.HashSet), map/1060277413=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance], java.util.Map), var609_keySet/-712633290=([java.util.Map], java.util.Set), <init>/1161881499=([java.util.HashSet, java.util.Collection], void), cast-from-var3345-to-var378=([java.util.Set], java.util.Collection), macroDef/1060277413=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef), getAttributes/241074043=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef], java.util.List), var3536_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3345_remove/-1726854360=([java.util.Set, java.lang.Object], boolean), cast-from-var1404-to-var3345=([java.util.HashSet], java.util.Set), cast-from-String-to-var2868=([java.lang.String], java.lang.Object), getText/833461813=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Text), text/1060277413=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var504-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), arr-var2868-init=([], java.lang.Object[]), getTaskName/237633316=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var1042-to-var2531=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), <init>/1887414589=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Object[]], void)}
; {var1042=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance, var221=r0, var1636=java.util.HashMap, var2911=$r1, var609=java.util.Map, var205=java.util.Hashtable, var736=$r2, var1404=java.util.HashSet, var2374=$r3, var937=$r4, var3345=java.util.Set, var771=$r5, var378=java.util.Collection, var76=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef, var2875=$r6, var3536=java.util.List, var197=$r7, var3886=r57, var2938=$z0, var2868=java.lang.Object, var275="id", var3529=$r8, var3227=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Text, var3064=$r9, var2865=$r10, var3503=null_type, var1789=$r20, var357=$r21, var2887=$z1, var504=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1737=$r22, var2290=$r23, var2531=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var319=$r24, var3167="The \"%s\" macro does not support nested text data."}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance=var1042, r0=var221, java.util.HashMap=var1636, $r1=var2911, java.util.Map=var609, java.util.Hashtable=var205, $r2=var736, java.util.HashSet=var1404, $r3=var2374, $r4=var937, java.util.Set=var3345, $r5=var771, java.util.Collection=var378, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef=var76, $r6=var2875, java.util.List=var3536, $r7=var197, r57=var3886, $z0=var2938, java.lang.Object=var2868, "id"=var275, $r8=var3529, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Text=var3227, $r9=var3064, $r10=var2865, null_type=var3503, $r20=var1789, $r21=var357, $z1=var2887, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var504, $r22=var1737, $r23=var2290, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2531, $r24=var319, "The \"%s\" macro does not support nested text data."=var3167}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance;	$r1 = new java.util.HashMap;	specialinvoke $r1.<java.util.HashMap: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.util.Map presentElements> = $r1;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.util.Map getNsElements()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: void processTasks()>();	$r2 = new java.util.Hashtable;	specialinvoke $r2.<java.util.Hashtable: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.util.Map localAttributes> = $r2;	$r3 = new java.util.HashSet;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.util.Map map>;	$r5 = interfaceinvoke $r4.<java.util.Map: java.util.Set keySet()>();	specialinvoke $r3.<java.util.HashSet: void <init>(java.util.Collection)>($r5);	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef macroDef>;	$r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef: java.util.List getAttributes()>();	r57 = interfaceinvoke $r7.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r57.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto interfaceinvoke $r3.<java.util.Set: boolean remove(java.lang.Object)>("id");	interfaceinvoke $r3.<java.util.Set: boolean remove(java.lang.Object)>("id");	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef macroDef>;	$r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Text getText()>();	if $r9 == null goto $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.lang.String text>;	$r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.lang.String text>;	if $r10 == null goto $z6 = interfaceinvoke $r3.<java.util.Set: boolean isEmpty()>();	$r20 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.lang.String text>;	$r21 = virtualinvoke $r20.<java.lang.String: java.lang.String trim()>();	$z1 = virtualinvoke $r21.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto $z6 = interfaceinvoke $r3.<java.util.Set: boolean isEmpty()>();	$r22 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r23 = newarray (java.lang.Object)[1];	$r24 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.lang.String getTaskName()>();	$r23[0] = $r24;	specialinvoke $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Object[])>("The \"%s\" macro does not support nested text data.", $r23);	throw $r22
;block_num 6