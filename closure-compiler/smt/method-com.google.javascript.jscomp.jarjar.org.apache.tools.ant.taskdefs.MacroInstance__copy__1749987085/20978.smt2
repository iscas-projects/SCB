(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3556 0)
(declare-sort var3217 0)
(declare-sort var1289 0)
(declare-sort var3853 0)
(declare-sort var2009 0)
(declare-sort var1484 0)
(declare-sort var2525 0)
(declare-sort var1995 0)
(declare-sort var1419 0)
(declare-sort var2520 0)
(declare-sort var1802 0)
(declare-sort var1725 0)
(declare-sort var2757 0)
(declare-sort var709 0)
(declare-sort var3834 0)
(declare-sort var1982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3217-init () var3217)
(declare-fun getTag/540513337 (var3217) String)
(declare-fun <init>/-634645633 (var3217 String) void)
(declare-fun getNamespace/-1550894504 (var3217) String)
(declare-fun setNamespace/1846732856 (var3217 String) void)
(declare-fun getProject/416672769 (var3853) var1289)
(declare-fun cast-from-var3556-to-var3853 (var3556) var3853)
(declare-fun setProject/-854120159 (var3853 var1289) void)
(declare-fun cast-from-var3217-to-var3853 (var3217) var3853)
(declare-fun getQName/-980174729 (var3217) String)
(declare-fun setQName/113892823 (var3217 String) void)
(declare-fun getTaskType/1957558293 (var2009) String)
(declare-fun cast-from-var3217-to-var2009 (var3217) var2009)
(declare-fun setTaskType/-427557217 (var2009 String) void)
(declare-fun getTaskName/1660669623 (var3217) String)
(declare-fun setTaskName/1728448430 (var2009 String) void)
(declare-fun macroDef/1060277413 (var3556) var1484)
(declare-fun getBackTrace/-70208378 (var1484) Bool)
(declare-fun getLocation/851674571 (var3853) var2525)
(declare-fun setLocation/1662727289 (var3853 var2525) void)
(declare-fun getOwningTarget/-333899912 (var2009) var1995)
(declare-fun cast-from-var3556-to-var2009 (var3556) var2009)
(declare-fun setOwningTarget/-1202856882 (var2009 var1995) void)
(declare-fun var1419-init () var1419)
(declare-fun <init>/-1073117067 (var1419 var2520 String) void)
(declare-fun cast-from-var3217-to-var2520 (var3217) var2520)
(declare-fun getWrapper/1014161037 (var3217) var1419)
(declare-fun getPolyType/2029148520 (var1419) String)
(declare-fun setPolyType/181289202 (var1419 String) void)
(declare-fun getAttributeMap/-1655105061 (var1419) var1802)
(declare-fun var2757_entrySet/1101202697 (var2757) var1725)
(declare-fun cast-from-var1802-to-var2757 (var1802) var2757)
(declare-fun var1725_iterator/1911472585 (var1725) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun getText/1699429089 (var1419) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun localAttributes/1060277413 (var3556) var2757)
(declare-fun macroSubs/-1746111009 (var3556 String var2757) String)
(declare-fun addText/-494488212 (var1419 String) void)
(declare-fun getChildren/350252277 (var1419) var709)
(declare-fun var1982_list/915947546 (var709) var3834)
(declare-fun iterator/529268990 (var3834) Iterator)
(declare-const null-var3556 var3556)
(declare-const null-var3217 var3217)
(declare-const null-Bool Bool)
(declare-const null-var1995 var1995)
(declare-const var466 var3556) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance 
(assert (not (= var466 null-var3556)))
(declare-const var758 var3217) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement 
(assert (not (= var758 null-var3217)))
(declare-const var3727 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3727 null-Bool)))
(define-const var788 var3217 var3217-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement 
(assert true)
(define-const var3731 String (getTag/540513337 var758)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getTag()>() 
(assert true)
;(assert (<init>/-634645633 var788 var3731)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void <init>(java.lang.String)>($r2) 

(declare-const var788!1 var3217)
(declare-const var3731!1 String)
(assert true)
(define-const var1265 String (getNamespace/-1550894504 var758)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getNamespace()>() 
(assert true)
;(assert (setNamespace/1846732856 var788!1 var1265)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setNamespace(java.lang.String)>($r3) 

(declare-const var788!2 var3217)
(declare-const var1265!1 String)
(assert true)
(define-const var707 var1289 (getProject/416672769 (cast-from-var3556-to-var3853 var466))) ; Statement: $r5 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
;(assert (setProject/-854120159 (cast-from-var3217-to-var3853 var788!2) var707)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setProject(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>($r5) 

(declare-const var788!3 var3217)
(declare-const var707!1 var1289)
(assert true)
(define-const var2269 String (getQName/-980174729 var758)) ; Statement: $r6 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getQName()>() 
(assert true)
;(assert (setQName/113892823 var788!3 var2269)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setQName(java.lang.String)>($r6) 

(declare-const var788!4 var3217)
(declare-const var2269!1 String)
(assert true)
(define-const var1383 String (getTaskType/1957558293 (cast-from-var3217-to-var2009 var758))) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getTaskType()>() 
(assert true)
;(assert (setTaskType/-427557217 (cast-from-var3217-to-var2009 var788!4) var1383)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setTaskType(java.lang.String)>($r7) 

(declare-const var788!5 var3217)
(declare-const var1383!1 String)
(assert true)
(define-const var3974 String (getTaskName/1660669623 var758)) ; Statement: $r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getTaskName()>() 
(assert true)
;(assert (setTaskName/1728448430 (cast-from-var3217-to-var2009 var788!5) var3974)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setTaskName(java.lang.String)>($r8) 

(declare-const var788!6 var3217)
(declare-const var3974!1 String)
(define-const var3693 var1484 (macroDef/1060277413 var466)) ; Statement: $r9 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef macroDef> 
(assert true)
(define-const var1049 Bool (getBackTrace/-70208378 var3693)) ; Statement: $z0 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef: boolean getBackTrace()>() 
 ; Statement: if $z0 == 0 goto $r70 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert (not (= (ite var1049 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var757 var2525 (getLocation/851674571 (cast-from-var3217-to-var3853 var758))) ; Statement: $r70 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
 ; Statement: goto [?= virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setLocation(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r70)] 
(assert true) ; Non Conditional
(assert true)
;(assert (setLocation/1662727289 (cast-from-var3217-to-var3853 var788!6) var757)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setLocation(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r70) 

(declare-const var788!7 var3217)
(declare-const var757!1 var2525)
(assert true)
(define-const var333 var1995 (getOwningTarget/-333899912 (cast-from-var3556-to-var2009 var466))) ; Statement: $r10 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getOwningTarget()>() 
 ; Statement: if $r10 != null goto $r11 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getOwningTarget()>() 
(assert (not (= var333 null-var1995))) ; Cond: $r10 != null 
(assert true)
(define-const var3153 var1995 (getOwningTarget/-333899912 (cast-from-var3556-to-var2009 var466))) ; Statement: $r11 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getOwningTarget()>() 
(assert true)
;(assert (setOwningTarget/-1202856882 (cast-from-var3217-to-var2009 var788!7) var3153)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setOwningTarget(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target)>($r11) 

(declare-const var788!8 var3217)
(declare-const var3153!1 var1995)
(assert true) ; Non Conditional
(define-const var3668 var1419 var1419-init) ; Statement: $r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable 
(assert true)
(define-const var2653 String (getTaskName/1660669623 var758)) ; Statement: $r13 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getTaskName()>() 
(assert true)
;(assert (<init>/-1073117067 var3668 (cast-from-var3217-to-var2520 var788!8) var2653)) ; Statement: specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: void <init>(java.lang.Object,java.lang.String)>($r0, $r13) 

(declare-const var3668!1 var1419)
(declare-const var788!9 var3217)
(declare-const var2653!1 String)
(assert true)
(define-const var1757 var1419 (getWrapper/1014161037 var758)) ; Statement: $r14 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>() 
(assert true)
(define-const var2078 String (getPolyType/2029148520 var1757)) ; Statement: $r15 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.String getPolyType()>() 
(assert true)
;(assert (setPolyType/181289202 var3668!1 var2078)) ; Statement: virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: void setPolyType(java.lang.String)>($r15) 

(declare-const var3668!2 var1419)
(declare-const var2078!1 String)
(assert true)
(define-const var1900 var1419 (getWrapper/1014161037 var758)) ; Statement: $r16 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>() 
(assert true)
(define-const var1053 var1802 (getAttributeMap/-1655105061 var1900)) ; Statement: $r68 = virtualinvoke $r16.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.util.Hashtable getAttributeMap()>() 
(define-const var2861 var1725 (var2757_entrySet/1101202697 (cast-from-var1802-to-var2757 var1053))) ; Statement: $r17 = interfaceinvoke $r68.<java.util.Map: java.util.Set entrySet()>() 
(define-const var1327 Iterator (var1725_iterator/1911472585 var2861)) ; Statement: $r69 = interfaceinvoke $r17.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3849 Bool (Iterator_hasNext/-1669924200 var1327)) ; Statement: $z8 = interfaceinvoke $r69.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z8 == 0 goto $r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>() 
(assert (= (ite var3849 1 0) 0)) ; Cond: $z8 == 0 
(assert true)
(define-const var3343 var1419 (getWrapper/1014161037 var758)) ; Statement: $r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>() 
(assert true)
(define-const var3212 String (getText/1699429089 var3343)) ; Statement: $r19 = virtualinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.StringBuffer getText()>() 
(assert true)
(define-const var1177 String (toString/-222306083 var3212)) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var1753 var2757 (localAttributes/1060277413 var466)) ; Statement: $r20 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.util.Map localAttributes> 
(assert true)
(define-const var649 String (macroSubs/-1746111009 var466 var1177 var1753)) ; Statement: $r22 = specialinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.lang.String macroSubs(java.lang.String,java.util.Map)>($r21, $r20) 
(assert true)
;(assert (addText/-494488212 var3668!2 var649)) ; Statement: virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: void addText(java.lang.String)>($r22) 

(declare-const var3668!3 var1419)
(declare-const var649!1 String)
(assert true)
(define-const var3825 var1419 (getWrapper/1014161037 var758)) ; Statement: $r23 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>() 
(assert true)
(define-const var3557 var709 (getChildren/350252277 var3825)) ; Statement: $r24 = virtualinvoke $r23.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.util.Enumeration getChildren()>() 
(define-const var669 var3834 (var1982_list/915947546 var3557)) ; Statement: $r25 = staticinvoke <java.util.Collections: java.util.ArrayList list(java.util.Enumeration)>($r24) 
(assert true)
(define-const var394 Iterator (iterator/529268990 var669)) ; Statement: r72 = virtualinvoke $r25.<java.util.ArrayList: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1051 Bool (Iterator_hasNext/-1669924200 var394)) ; Statement: $z9 = interfaceinvoke r72.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z9 == 0 goto return $r0 
(assert (= (ite var1051 1 0) 0)) ; Cond: $z9 == 0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3217-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement), getTag/540513337=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], java.lang.String), <init>/-634645633=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement, java.lang.String], void), getNamespace/-1550894504=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], java.lang.String), setNamespace/1846732856=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement, java.lang.String], void), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var3556-to-var3853=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), setProject/-854120159=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), cast-from-var3217-to-var3853=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), getQName/-980174729=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], java.lang.String), setQName/113892823=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement, java.lang.String], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var3217-to-var2009=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), setTaskType/-427557217=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String], void), getTaskName/1660669623=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], java.lang.String), setTaskName/1728448430=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String], void), macroDef/1060277413=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef), getBackTrace/-70208378=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef], boolean), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), setLocation/1662727289=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), getOwningTarget/-333899912=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target), cast-from-var3556-to-var2009=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), setOwningTarget/-1202856882=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], void), var1419-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable), <init>/-1073117067=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable, java.lang.Object, java.lang.String], void), cast-from-var3217-to-var2520=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], java.lang.Object), getWrapper/1014161037=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable), getPolyType/2029148520=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable], java.lang.String), setPolyType/181289202=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable, java.lang.String], void), getAttributeMap/-1655105061=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable], java.util.Hashtable), var2757_entrySet/1101202697=([java.util.Map], java.util.Set), cast-from-var1802-to-var2757=([java.util.Hashtable], java.util.Map), var1725_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), getText/1699429089=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), localAttributes/1060277413=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance], java.util.Map), macroSubs/-1746111009=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance, java.lang.String, java.util.Map], java.lang.String), addText/-494488212=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable, java.lang.String], void), getChildren/350252277=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable], java.util.Enumeration), var1982_list/915947546=([java.util.Enumeration], java.util.ArrayList), iterator/529268990=([java.util.ArrayList], java.util.Iterator)}
; {var3556=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance, var466=r4, var3217=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement, var758=r1, var3727=z1, var788=$r0, var3731=$r2, var1265=$r3, var1289=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3853=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var707=$r5, var2269=$r6, var2009=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1383=$r7, var3974=$r8, var1484=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef, var3693=$r9, var1049=$z0, var2525=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var757=$r70, var1995=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var333=$r10, var3153=$r11, var1419=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable, var3668=$r12, var2653=$r13, var2520=java.lang.Object, var1757=$r14, var2078=$r15, var1900=$r16, var1802=java.util.Hashtable, var1053=$r68, var1725=java.util.Set, var2757=java.util.Map, var2861=$r17, var1327=$r69, var3849=$z8, var3343=$r18, var3212=$r19, var1177=$r21, var1753=$r20, var649=$r22, var3825=$r23, var709=java.util.Enumeration, var3557=$r24, var3834=java.util.ArrayList, var1982=java.util.Collections, var669=$r25, var394=r72, var1051=$z9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance=var3556, r4=var466, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement=var3217, r1=var758, z1=var3727, $r0=var788, $r2=var3731, $r3=var1265, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1289, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3853, $r5=var707, $r6=var2269, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2009, $r7=var1383, $r8=var3974, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef=var1484, $r9=var3693, $z0=var1049, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2525, $r70=var757, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var1995, $r10=var333, $r11=var3153, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable=var1419, $r12=var3668, $r13=var2653, java.lang.Object=var2520, $r14=var1757, $r15=var2078, $r16=var1900, java.util.Hashtable=var1802, $r68=var1053, java.util.Set=var1725, java.util.Map=var2757, $r17=var2861, $r69=var1327, $z8=var3849, $r18=var3343, $r19=var3212, $r21=var1177, $r20=var1753, $r22=var649, $r23=var3825, java.util.Enumeration=var709, $r24=var3557, java.util.ArrayList=var3834, java.util.Collections=var1982, $r25=var669, r72=var394, $z9=var1051}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement;	z1 := @parameter1: boolean;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getTag()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void <init>(java.lang.String)>($r2);	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getNamespace()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setNamespace(java.lang.String)>($r3);	$r5 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setProject(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>($r5);	$r6 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getQName()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setQName(java.lang.String)>($r6);	$r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getTaskType()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setTaskType(java.lang.String)>($r7);	$r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getTaskName()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setTaskName(java.lang.String)>($r8);	$r9 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef macroDef>;	$z0 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef: boolean getBackTrace()>();	if $z0 == 0 goto $r70 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	$r70 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	goto [?= virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setLocation(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r70)];	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setLocation(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r70);	$r10 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getOwningTarget()>();	if $r10 != null goto $r11 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getOwningTarget()>();	$r11 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getOwningTarget()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setOwningTarget(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target)>($r11);	$r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable;	$r13 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getTaskName()>();	specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: void <init>(java.lang.Object,java.lang.String)>($r0, $r13);	$r14 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>();	$r15 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.String getPolyType()>();	virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: void setPolyType(java.lang.String)>($r15);	$r16 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>();	$r68 = virtualinvoke $r16.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.util.Hashtable getAttributeMap()>();	$r17 = interfaceinvoke $r68.<java.util.Map: java.util.Set entrySet()>();	$r69 = interfaceinvoke $r17.<java.util.Set: java.util.Iterator iterator()>();	$z8 = interfaceinvoke $r69.<java.util.Iterator: boolean hasNext()>();	if $z8 == 0 goto $r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>();	$r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>();	$r19 = virtualinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.StringBuffer getText()>();	$r21 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.String toString()>();	$r20 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.util.Map localAttributes>;	$r22 = specialinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.lang.String macroSubs(java.lang.String,java.util.Map)>($r21, $r20);	virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: void addText(java.lang.String)>($r22);	$r23 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>();	$r24 = virtualinvoke $r23.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.util.Enumeration getChildren()>();	$r25 = staticinvoke <java.util.Collections: java.util.ArrayList list(java.util.Enumeration)>($r24);	r72 = virtualinvoke $r25.<java.util.ArrayList: java.util.Iterator iterator()>();	$z9 = interfaceinvoke r72.<java.util.Iterator: boolean hasNext()>();	if $z9 == 0 goto return $r0;	return $r0
;block_num 9