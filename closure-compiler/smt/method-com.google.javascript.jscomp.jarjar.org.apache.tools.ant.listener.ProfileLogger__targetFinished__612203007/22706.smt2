(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1128 0)
(declare-sort var2438 0)
(declare-sort var579 0)
(declare-sort var3212 0)
(declare-sort var2343 0)
(declare-sort var226 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun profileData/2059991966 (var1128) var579)
(declare-fun getTarget/-32916101 (var2438) var3212)
(declare-fun var579_remove/-1201052315 (var579 var2343) var2343)
(declare-fun cast-from-var3212-to-var2343 (var3212) var2343)
(declare-fun cast-from-var2343-to-var226 (var2343) var226)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/589876253 (var3212) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logFinish/1725642946 (var1128 var2438 var226 String) void)
(declare-const null-var1128 var1128)
(declare-const null-var2438 var2438)
(declare-const var3565 var1128) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger 
(assert (not (= var3565 null-var1128)))
(declare-const var341 var2438) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var341 null-var2438)))
(define-const var2201 var579 (profileData/2059991966 var3565)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: java.util.Map profileData> 
(assert true)
(define-const var3764 var3212 (getTarget/-32916101 var341)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getTarget()>() 
(define-const var3195 var2343 (var579_remove/-1201052315 var2201 (cast-from-var3212-to-var2343 var3764))) ; Statement: $r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object remove(java.lang.Object)>($r3) 
(define-const var328 var226 (cast-from-var2343-to-var226 var3195)) ; Statement: r5 = (java.util.Date) $r4 
(define-const var2236 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2236)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2236!1 String)
(assert (= var2236!1 ""))
(assert true)
(define-const var20 String (append/672562846 var2236!1 "Target ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Target ") 
(declare-const var2236!2 String)
(assert (= var2236!2 (str.++ var2236!1 "Target ")))
(assert true)
(define-const var2762 var3212 (getTarget/-32916101 var341)) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getTarget()>() 
(assert true)
(define-const var1478 String (getName/589876253 var2762)) ; Statement: $r8 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String getName()>() 
(assert true)
(define-const var1088 String (append/672562846 var20 var1478)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var20!1 String)
(assert (= var20!1 (str.++ var20 var1478)))
(assert true)
(define-const var111 String (toString/-2075883882 var1088)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (logFinish/1725642946 var3565 var341 var328 var111)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: void logFinish(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent,java.util.Date,java.lang.String)>(r1, r5, r11) 

(declare-const var3565!1 var1128)
(declare-const var341!1 var2438)
(declare-const var328!1 var226)
(declare-const var111!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {profileData/2059991966=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger], java.util.Map), getTarget/-32916101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target), var579_remove/-1201052315=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var3212-to-var2343=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], java.lang.Object), cast-from-var2343-to-var226=([java.lang.Object], java.util.Date), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/589876253=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logFinish/1725642946=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, java.util.Date, java.lang.String], void)}
; {var1128=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger, var3565=r0, var2438=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var341=r1, var579=java.util.Map, var2201=$r2, var3212=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var3764=$r3, var2343=java.lang.Object, var3195=$r4, var226=java.util.Date, var328=r5, var2236=$r6, var20=$r9, var2762=$r7, var1478=$r8, var1088=$r10, var111=r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger=var1128, r0=var3565, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var2438, r1=var341, java.util.Map=var579, $r2=var2201, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var3212, $r3=var3764, java.lang.Object=var2343, $r4=var3195, java.util.Date=var226, r5=var328, $r6=var2236, $r9=var20, $r7=var2762, $r8=var1478, $r10=var1088, r11=var111}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: java.util.Map profileData>;	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getTarget()>();	$r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object remove(java.lang.Object)>($r3);	r5 = (java.util.Date) $r4;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Target ");	$r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getTarget()>();	$r8 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: void logFinish(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent,java.util.Date,java.lang.String)>(r1, r5, r11);	return
;block_num 1