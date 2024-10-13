(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var978 0)
(declare-sort var3509 0)
(declare-sort var3019 0)
(declare-sort var1228 0)
(declare-sort var766 0)
(declare-sort var2931 0)
(declare-sort var422 0)
(declare-sort var1084 0)
(declare-sort var417 0)
(declare-sort var3212 0)
(declare-sort var2005 0)
(declare-sort var1213 0)
(declare-sort var340 0)
(declare-sort var3824 0)
(declare-sort var3080 0)
(declare-sort var45 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3509-init () var3509)
(declare-fun getTag/540513337 (var3509) String)
(declare-fun <init>/-634645633 (var3509 String) void)
(declare-fun getNamespace/-1550894504 (var3509) String)
(declare-fun setNamespace/1846732856 (var3509 String) void)
(declare-fun getProject/416672769 (var1228) var3019)
(declare-fun cast-from-var978-to-var1228 (var978) var1228)
(declare-fun setProject/-854120159 (var1228 var3019) void)
(declare-fun cast-from-var3509-to-var1228 (var3509) var1228)
(declare-fun getQName/-980174729 (var3509) String)
(declare-fun setQName/113892823 (var3509 String) void)
(declare-fun getTaskType/1957558293 (var766) String)
(declare-fun cast-from-var3509-to-var766 (var3509) var766)
(declare-fun setTaskType/-427557217 (var766 String) void)
(declare-fun getTaskName/1660669623 (var3509) String)
(declare-fun setTaskName/1728448430 (var766 String) void)
(declare-fun macroDef/1060277413 (var978) var2931)
(declare-fun getBackTrace/-70208378 (var2931) Bool)
(declare-fun getLocation/851674571 (var1228) var422)
(declare-fun setLocation/1662727289 (var1228 var422) void)
(declare-fun getOwningTarget/-333899912 (var766) var1084)
(declare-fun cast-from-var978-to-var766 (var978) var766)
(declare-fun setOwningTarget/-1202856882 (var766 var1084) void)
(declare-fun var417-init () var417)
(declare-fun <init>/-1073117067 (var417 var3212 String) void)
(declare-fun cast-from-var3509-to-var3212 (var3509) var3212)
(declare-fun getWrapper/1014161037 (var3509) var417)
(declare-fun getPolyType/2029148520 (var417) String)
(declare-fun setPolyType/181289202 (var417 String) void)
(declare-fun getAttributeMap/-1655105061 (var417) var2005)
(declare-fun var340_entrySet/1101202697 (var340) var1213)
(declare-fun cast-from-var2005-to-var340 (var2005) var340)
(declare-fun var1213_iterator/1911472585 (var1213) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun getText/1699429089 (var417) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun localAttributes/1060277413 (var978) var340)
(declare-fun macroSubs/-1746111009 (var978 String var340) String)
(declare-fun addText/-494488212 (var417 String) void)
(declare-fun getChildren/350252277 (var417) var3824)
(declare-fun var45_list/915947546 (var3824) var3080)
(declare-fun iterator/529268990 (var3080) Iterator)
(declare-const null-var978 var978)
(declare-const null-var3509 var3509)
(declare-const null-Bool Bool)
(declare-const null-var1084 var1084)
(declare-const var2312 var978) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance 
(assert (not (= var2312 null-var978)))
(declare-const var339 var3509) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement 
(assert (not (= var339 null-var3509)))
(declare-const var292 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var292 null-Bool)))
(define-const var2177 var3509 var3509-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement 
(assert true)
(define-const var855 String (getTag/540513337 var339)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getTag()>() 
(assert true)
;(assert (<init>/-634645633 var2177 var855)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void <init>(java.lang.String)>($r2) 

(declare-const var2177!1 var3509)
(declare-const var855!1 String)
(assert true)
(define-const var3541 String (getNamespace/-1550894504 var339)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getNamespace()>() 
(assert true)
;(assert (setNamespace/1846732856 var2177!1 var3541)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setNamespace(java.lang.String)>($r3) 

(declare-const var2177!2 var3509)
(declare-const var3541!1 String)
(assert true)
(define-const var208 var3019 (getProject/416672769 (cast-from-var978-to-var1228 var2312))) ; Statement: $r5 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
;(assert (setProject/-854120159 (cast-from-var3509-to-var1228 var2177!2) var208)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setProject(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>($r5) 

(declare-const var2177!3 var3509)
(declare-const var208!1 var3019)
(assert true)
(define-const var2010 String (getQName/-980174729 var339)) ; Statement: $r6 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getQName()>() 
(assert true)
;(assert (setQName/113892823 var2177!3 var2010)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setQName(java.lang.String)>($r6) 

(declare-const var2177!4 var3509)
(declare-const var2010!1 String)
(assert true)
(define-const var2054 String (getTaskType/1957558293 (cast-from-var3509-to-var766 var339))) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getTaskType()>() 
(assert true)
;(assert (setTaskType/-427557217 (cast-from-var3509-to-var766 var2177!4) var2054)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setTaskType(java.lang.String)>($r7) 

(declare-const var2177!5 var3509)
(declare-const var2054!1 String)
(assert true)
(define-const var1258 String (getTaskName/1660669623 var339)) ; Statement: $r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getTaskName()>() 
(assert true)
;(assert (setTaskName/1728448430 (cast-from-var3509-to-var766 var2177!5) var1258)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setTaskName(java.lang.String)>($r8) 

(declare-const var2177!6 var3509)
(declare-const var1258!1 String)
(define-const var2385 var2931 (macroDef/1060277413 var2312)) ; Statement: $r9 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef macroDef> 
(assert true)
(define-const var1403 Bool (getBackTrace/-70208378 var2385)) ; Statement: $z0 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef: boolean getBackTrace()>() 
 ; Statement: if $z0 == 0 goto $r70 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert (= (ite var1403 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var984 var422 (getLocation/851674571 (cast-from-var978-to-var1228 var2312))) ; Statement: $r70 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (setLocation/1662727289 (cast-from-var3509-to-var1228 var2177!6) var984)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setLocation(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r70) 

(declare-const var2177!7 var3509)
(declare-const var984!1 var422)
(assert true)
(define-const var3094 var1084 (getOwningTarget/-333899912 (cast-from-var978-to-var766 var2312))) ; Statement: $r10 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getOwningTarget()>() 
 ; Statement: if $r10 != null goto $r11 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getOwningTarget()>() 
(assert (not (= var3094 null-var1084))) ; Cond: $r10 != null 
(assert true)
(define-const var759 var1084 (getOwningTarget/-333899912 (cast-from-var978-to-var766 var2312))) ; Statement: $r11 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getOwningTarget()>() 
(assert true)
;(assert (setOwningTarget/-1202856882 (cast-from-var3509-to-var766 var2177!7) var759)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setOwningTarget(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target)>($r11) 

(declare-const var2177!8 var3509)
(declare-const var759!1 var1084)
(assert true) ; Non Conditional
(define-const var472 var417 var417-init) ; Statement: $r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable 
(assert true)
(define-const var1262 String (getTaskName/1660669623 var339)) ; Statement: $r13 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getTaskName()>() 
(assert true)
;(assert (<init>/-1073117067 var472 (cast-from-var3509-to-var3212 var2177!8) var1262)) ; Statement: specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: void <init>(java.lang.Object,java.lang.String)>($r0, $r13) 

(declare-const var472!1 var417)
(declare-const var2177!9 var3509)
(declare-const var1262!1 String)
(assert true)
(define-const var2551 var417 (getWrapper/1014161037 var339)) ; Statement: $r14 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>() 
(assert true)
(define-const var3695 String (getPolyType/2029148520 var2551)) ; Statement: $r15 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.String getPolyType()>() 
(assert true)
;(assert (setPolyType/181289202 var472!1 var3695)) ; Statement: virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: void setPolyType(java.lang.String)>($r15) 

(declare-const var472!2 var417)
(declare-const var3695!1 String)
(assert true)
(define-const var1928 var417 (getWrapper/1014161037 var339)) ; Statement: $r16 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>() 
(assert true)
(define-const var2784 var2005 (getAttributeMap/-1655105061 var1928)) ; Statement: $r68 = virtualinvoke $r16.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.util.Hashtable getAttributeMap()>() 
(define-const var2924 var1213 (var340_entrySet/1101202697 (cast-from-var2005-to-var340 var2784))) ; Statement: $r17 = interfaceinvoke $r68.<java.util.Map: java.util.Set entrySet()>() 
(define-const var1741 Iterator (var1213_iterator/1911472585 var2924)) ; Statement: $r69 = interfaceinvoke $r17.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2162 Bool (Iterator_hasNext/-1669924200 var1741)) ; Statement: $z8 = interfaceinvoke $r69.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z8 == 0 goto $r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>() 
(assert (= (ite var2162 1 0) 0)) ; Cond: $z8 == 0 
(assert true)
(define-const var179 var417 (getWrapper/1014161037 var339)) ; Statement: $r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>() 
(assert true)
(define-const var3269 String (getText/1699429089 var179)) ; Statement: $r19 = virtualinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.StringBuffer getText()>() 
(assert true)
(define-const var898 String (toString/-222306083 var3269)) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var1924 var340 (localAttributes/1060277413 var2312)) ; Statement: $r20 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.util.Map localAttributes> 
(assert true)
(define-const var495 String (macroSubs/-1746111009 var2312 var898 var1924)) ; Statement: $r22 = specialinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.lang.String macroSubs(java.lang.String,java.util.Map)>($r21, $r20) 
(assert true)
;(assert (addText/-494488212 var472!2 var495)) ; Statement: virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: void addText(java.lang.String)>($r22) 

(declare-const var472!3 var417)
(declare-const var495!1 String)
(assert true)
(define-const var391 var417 (getWrapper/1014161037 var339)) ; Statement: $r23 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>() 
(assert true)
(define-const var195 var3824 (getChildren/350252277 var391)) ; Statement: $r24 = virtualinvoke $r23.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.util.Enumeration getChildren()>() 
(define-const var143 var3080 (var45_list/915947546 var195)) ; Statement: $r25 = staticinvoke <java.util.Collections: java.util.ArrayList list(java.util.Enumeration)>($r24) 
(assert true)
(define-const var3709 Iterator (iterator/529268990 var143)) ; Statement: r72 = virtualinvoke $r25.<java.util.ArrayList: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3027 Bool (Iterator_hasNext/-1669924200 var3709)) ; Statement: $z9 = interfaceinvoke r72.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z9 == 0 goto return $r0 
(assert (= (ite var3027 1 0) 0)) ; Cond: $z9 == 0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3509-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement), getTag/540513337=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], java.lang.String), <init>/-634645633=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement, java.lang.String], void), getNamespace/-1550894504=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], java.lang.String), setNamespace/1846732856=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement, java.lang.String], void), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var978-to-var1228=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), setProject/-854120159=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), cast-from-var3509-to-var1228=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), getQName/-980174729=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], java.lang.String), setQName/113892823=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement, java.lang.String], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var3509-to-var766=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), setTaskType/-427557217=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String], void), getTaskName/1660669623=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], java.lang.String), setTaskName/1728448430=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String], void), macroDef/1060277413=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef), getBackTrace/-70208378=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef], boolean), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), setLocation/1662727289=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), getOwningTarget/-333899912=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target), cast-from-var978-to-var766=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), setOwningTarget/-1202856882=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], void), var417-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable), <init>/-1073117067=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable, java.lang.Object, java.lang.String], void), cast-from-var3509-to-var3212=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], java.lang.Object), getWrapper/1014161037=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable), getPolyType/2029148520=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable], java.lang.String), setPolyType/181289202=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable, java.lang.String], void), getAttributeMap/-1655105061=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable], java.util.Hashtable), var340_entrySet/1101202697=([java.util.Map], java.util.Set), cast-from-var2005-to-var340=([java.util.Hashtable], java.util.Map), var1213_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), getText/1699429089=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), localAttributes/1060277413=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance], java.util.Map), macroSubs/-1746111009=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance, java.lang.String, java.util.Map], java.lang.String), addText/-494488212=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable, java.lang.String], void), getChildren/350252277=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable], java.util.Enumeration), var45_list/915947546=([java.util.Enumeration], java.util.ArrayList), iterator/529268990=([java.util.ArrayList], java.util.Iterator)}
; {var978=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance, var2312=r4, var3509=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement, var339=r1, var292=z1, var2177=$r0, var855=$r2, var3541=$r3, var3019=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1228=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var208=$r5, var2010=$r6, var766=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2054=$r7, var1258=$r8, var2931=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef, var2385=$r9, var1403=$z0, var422=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var984=$r70, var1084=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var3094=$r10, var759=$r11, var417=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable, var472=$r12, var1262=$r13, var3212=java.lang.Object, var2551=$r14, var3695=$r15, var1928=$r16, var2005=java.util.Hashtable, var2784=$r68, var1213=java.util.Set, var340=java.util.Map, var2924=$r17, var1741=$r69, var2162=$z8, var179=$r18, var3269=$r19, var898=$r21, var1924=$r20, var495=$r22, var391=$r23, var3824=java.util.Enumeration, var195=$r24, var3080=java.util.ArrayList, var45=java.util.Collections, var143=$r25, var3709=r72, var3027=$z9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance=var978, r4=var2312, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement=var3509, r1=var339, z1=var292, $r0=var2177, $r2=var855, $r3=var3541, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3019, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1228, $r5=var208, $r6=var2010, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var766, $r7=var2054, $r8=var1258, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef=var2931, $r9=var2385, $z0=var1403, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var422, $r70=var984, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var1084, $r10=var3094, $r11=var759, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable=var417, $r12=var472, $r13=var1262, java.lang.Object=var3212, $r14=var2551, $r15=var3695, $r16=var1928, java.util.Hashtable=var2005, $r68=var2784, java.util.Set=var1213, java.util.Map=var340, $r17=var2924, $r69=var1741, $z8=var2162, $r18=var179, $r19=var3269, $r21=var898, $r20=var1924, $r22=var495, $r23=var391, java.util.Enumeration=var3824, $r24=var195, java.util.ArrayList=var3080, java.util.Collections=var45, $r25=var143, r72=var3709, $z9=var3027}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement;	z1 := @parameter1: boolean;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getTag()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void <init>(java.lang.String)>($r2);	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getNamespace()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setNamespace(java.lang.String)>($r3);	$r5 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setProject(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>($r5);	$r6 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getQName()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setQName(java.lang.String)>($r6);	$r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getTaskType()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setTaskType(java.lang.String)>($r7);	$r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getTaskName()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setTaskName(java.lang.String)>($r8);	$r9 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef macroDef>;	$z0 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef: boolean getBackTrace()>();	if $z0 == 0 goto $r70 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	$r70 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setLocation(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r70);	$r10 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getOwningTarget()>();	if $r10 != null goto $r11 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getOwningTarget()>();	$r11 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getOwningTarget()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: void setOwningTarget(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target)>($r11);	$r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable;	$r13 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String getTaskName()>();	specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: void <init>(java.lang.Object,java.lang.String)>($r0, $r13);	$r14 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>();	$r15 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.String getPolyType()>();	virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: void setPolyType(java.lang.String)>($r15);	$r16 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>();	$r68 = virtualinvoke $r16.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.util.Hashtable getAttributeMap()>();	$r17 = interfaceinvoke $r68.<java.util.Map: java.util.Set entrySet()>();	$r69 = interfaceinvoke $r17.<java.util.Set: java.util.Iterator iterator()>();	$z8 = interfaceinvoke $r69.<java.util.Iterator: boolean hasNext()>();	if $z8 == 0 goto $r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>();	$r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>();	$r19 = virtualinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.StringBuffer getText()>();	$r21 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.String toString()>();	$r20 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.util.Map localAttributes>;	$r22 = specialinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.lang.String macroSubs(java.lang.String,java.util.Map)>($r21, $r20);	virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: void addText(java.lang.String)>($r22);	$r23 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable getWrapper()>();	$r24 = virtualinvoke $r23.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.util.Enumeration getChildren()>();	$r25 = staticinvoke <java.util.Collections: java.util.ArrayList list(java.util.Enumeration)>($r24);	r72 = virtualinvoke $r25.<java.util.ArrayList: java.util.Iterator iterator()>();	$z9 = interfaceinvoke r72.<java.util.Iterator: boolean hasNext()>();	if $z9 == 0 goto return $r0;	return $r0
;block_num 9