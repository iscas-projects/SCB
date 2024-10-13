(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3518 0)
(declare-sort var1961 0)
(declare-sort var3986 0)
(declare-sort var1973 0)
(declare-sort var700 0)
(declare-sort var938 0)
(declare-sort var216 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var3986 String Int) void)
(declare-fun cast-from-var3518-to-var3986 (var3518) var3986)
(declare-fun addedAttributes/112281648 (var3518) var1973)
(declare-fun var1973_containsKey/1715618542 (var1973 var700) Bool)
(declare-fun cast-from-String-to-var700 (String) var700)
(declare-fun var1973_get/1088891777 (var1973 var700) var700)
(declare-fun cast-from-var700-to-String (var700) String)
(declare-fun getDelimiter/-704857525 (var3518) String)
(declare-fun getProject/416672769 (var216) var938)
(declare-fun cast-from-var3518-to-var216 (var3518) var216)
(declare-fun setProperty/-1752666112 (var938 String String) void)
(declare-fun var1973_put/1464166817 (var1973 var700 var700) var700)
(declare-const null-var3518 var3518)
(declare-const null-String String)
(declare-const var1235 var3518) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty 
(assert (not (= var1235 null-var3518)))
(declare-const var2323 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2323 null-String)))
(declare-const var3861 String) ; Statement: r32 := @parameter1: java.lang.String 
(assert (not (= var3861 null-String)))
(declare-const var1154 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var1154 null-String)))
(define-const var1423 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1423)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1423!1 String)
(assert (= var1423!1 ""))
(assert true)
(define-const var2419 String (append/672562846 var1423!1 var2323)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1423!2 String)
(assert (= var1423!2 (str.++ var1423!1 var2323)))
(assert true)
(define-const var3100 String (append/672562846 var2419 ":")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2419!1 String)
(assert (= var2419!1 (str.++ var2419 ":")))
(assert true)
(define-const var3057 String (append/672562846 var3100 var3861)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r32) 
(declare-const var3100!1 String)
(assert (= var3100!1 (str.++ var3100 var3861)))
(assert true)
(define-const var3851 String (toString/-2075883882 var3057)) ; Statement: r33 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if r5 == null goto virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: void log(java.lang.String,int)>(r33, 4) 
(assert (= var1154 null-String)) ; Cond: r5 == null 
(assert true)
;(assert (log/456963423 (cast-from-var3518-to-var3986 var1235) var3851 4)) ; Statement: virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: void log(java.lang.String,int)>(r33, 4) 

(declare-const var1235!1 var3518)
(declare-const var3851!1 String)
(declare-const var2895 Int)
(define-const var1453 var1973 (addedAttributes/112281648 var1235!1)) ; Statement: $r7 = r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: java.util.Map addedAttributes> 
(define-const var3159 Bool (var1973_containsKey/1715618542 var1453 (cast-from-String-to-var700 var2323))) ; Statement: $z0 = interfaceinvoke $r7.<java.util.Map: boolean containsKey(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r8 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert (not (= (ite var3159 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3762 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3762)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3762!1 String)
(assert (= var3762!1 ""))
(define-const var3784 var1973 (addedAttributes/112281648 var1235!1)) ; Statement: $r18 = r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: java.util.Map addedAttributes> 
(define-const var1546 var700 (var1973_get/1088891777 var3784 (cast-from-String-to-var700 var2323))) ; Statement: $r19 = interfaceinvoke $r18.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3587 String (cast-from-var700-to-String var1546)) ; Statement: $r20 = (java.lang.String) $r19 
(assert true)
(define-const var596 String (append/672562846 var3762!1 var3587)) ; Statement: $r22 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var3762!2 String)
(assert (= var3762!2 (str.++ var3762!1 var3587)))
(assert true)
(define-const var252 String (getDelimiter/-704857525 var1235!1)) ; Statement: $r21 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: java.lang.String getDelimiter()>() 
(assert true)
(define-const var2280 String (append/672562846 var596 var252)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var596!1 String)
(assert (= var596!1 (str.++ var596 var252)))
(assert true)
(define-const var1439 String (append/672562846 var2280 var3861)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r32) 
(declare-const var2280!1 String)
(assert (= var2280!1 (str.++ var2280 var3861)))
(assert true)
(define-const var3861!1 String (toString/-2075883882 var1439)) ; Statement: r32 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2162 var938 (getProject/416672769 (cast-from-var3518-to-var216 var1235!1))) ; Statement: $r25 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
;(assert (setProperty/-1752666112 var2162 var2323 var3861!1)) ; Statement: virtualinvoke $r25.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setProperty(java.lang.String,java.lang.String)>(r1, r32) 

(declare-const var2162!1 var938)
(declare-const var2323!1 String)
(declare-const var3861!2 String)
(define-const var3612 var1973 (addedAttributes/112281648 var1235!1)) ; Statement: $r26 = r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: java.util.Map addedAttributes> 
;(assert (var1973_put/1464166817 var3612 (cast-from-String-to-var700 var2323!1) (cast-from-String-to-var700 var3861!2))) ; Statement: interfaceinvoke $r26.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r32) 

(declare-const var3612!1 var1973)
(declare-const var2323!2 String)
(declare-const var3861!3 String)
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r5 == null goto return 
(assert (= var1154 null-String)) ; Cond: r5 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3518-to-var3986=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), addedAttributes/112281648=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty], java.util.Map), var1973_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var700=([java.lang.String], java.lang.Object), var1973_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var700-to-String=([java.lang.Object], java.lang.String), getDelimiter/-704857525=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty], java.lang.String), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var3518-to-var216=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), setProperty/-1752666112=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, java.lang.String], void), var1973_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object)}
; {var3518=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty, var1235=r6, var2323=r1, var1961=null_type, var3861=r32, var1154=r5, var1423=$r0, var2419=$r2, var3100=$r3, var3057=$r4, var3851=r33, var3986=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2895=4, var1973=java.util.Map, var1453=$r7, var700=java.lang.Object, var3159=$z0, var3762=$r17, var3784=$r18, var1546=$r19, var3587=$r20, var596=$r22, var252=$r21, var2280=$r23, var1439=$r24, var938=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var216=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2162=$r25, var3612=$r26}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty=var3518, r6=var1235, r1=var2323, null_type=var1961, r32=var3861, r5=var1154, $r0=var1423, $r2=var2419, $r3=var3100, $r4=var3057, r33=var3851, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3986, 4=var2895, java.util.Map=var1973, $r7=var1453, java.lang.Object=var700, $z0=var3159, $r17=var3762, $r18=var3784, $r19=var1546, $r20=var3587, $r22=var596, $r21=var252, $r23=var2280, $r24=var1439, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var938, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var216, $r25=var2162, $r26=var3612}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty;	r1 := @parameter0: java.lang.String;	r32 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r32);	r33 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	if r5 == null goto virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: void log(java.lang.String,int)>(r33, 4);	virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: void log(java.lang.String,int)>(r33, 4);	$r7 = r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: java.util.Map addedAttributes>;	$z0 = interfaceinvoke $r7.<java.util.Map: boolean containsKey(java.lang.Object)>(r1);	if $z0 == 0 goto $r8 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r18 = r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: java.util.Map addedAttributes>;	$r19 = interfaceinvoke $r18.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	$r20 = (java.lang.String) $r19;	$r22 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r21 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: java.lang.String getDelimiter()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r32);	r32 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	$r25 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	virtualinvoke $r25.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setProperty(java.lang.String,java.lang.String)>(r1, r32);	$r26 = r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: java.util.Map addedAttributes>;	interfaceinvoke $r26.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r32);	goto [?= (branch)];	if r5 == null goto return;	return
;block_num 5