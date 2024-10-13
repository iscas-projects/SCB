(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var549 0)
(declare-sort var3451 0)
(declare-sort var655 0)
(declare-sort var3356 0)
(declare-sort var1753 0)
(declare-sort var3149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var655-init () var655)
(declare-fun <init>/-788057745 (var655) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTarget/-32916101 (var3451) var3356)
(declare-fun getName/589876253 (var3356) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logStart/1452740241 (var549 var3451 var655 String) void)
(declare-fun profileData/2059991966 (var549) var1753)
(declare-fun var1753_put/1464166817 (var1753 var3149 var3149) var3149)
(declare-fun cast-from-var3356-to-var3149 (var3356) var3149)
(declare-fun cast-from-var655-to-var3149 (var655) var3149)
(declare-const null-var549 var549)
(declare-const null-var3451 var3451)
(declare-const var2379 var549) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger 
(assert (not (= var2379 null-var549)))
(declare-const var3593 var3451) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var3593 null-var3451)))
(define-const var90 var655 var655-init) ; Statement: $r0 = new java.util.Date 
(assert true)
;(assert (<init>/-788057745 var90)) ; Statement: specialinvoke $r0.<java.util.Date: void <init>()>() 

(declare-const var90!1 var655)
(define-const var3529 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3529)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3529!1 String)
(assert (= var3529!1 ""))
(assert true)
(define-const var3423 String (append/672562846 var3529!1 "Target ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Target ") 
(declare-const var3529!2 String)
(assert (= var3529!2 (str.++ var3529!1 "Target ")))
(assert true)
(define-const var506 var3356 (getTarget/-32916101 var3593)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getTarget()>() 
(assert true)
(define-const var136 String (getName/589876253 var506)) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String getName()>() 
(assert true)
(define-const var2645 String (append/672562846 var3423 var136)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3423!1 String)
(assert (= var3423!1 (str.++ var3423 var136)))
(assert true)
(define-const var2189 String (toString/-2075883882 var2645)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (logStart/1452740241 var2379 var3593 var90!1 var2189)) ; Statement: specialinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: void logStart(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent,java.util.Date,java.lang.String)>(r2, $r0, r7) 

(declare-const var2379!1 var549)
(declare-const var3593!1 var3451)
(declare-const var90!2 var655)
(declare-const var2189!1 String)
(define-const var1397 var1753 (profileData/2059991966 var2379!1)) ; Statement: $r9 = r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: java.util.Map profileData> 
(assert true)
(define-const var2307 var3356 (getTarget/-32916101 var3593!1)) ; Statement: $r10 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getTarget()>() 
;(assert (var1753_put/1464166817 var1397 (cast-from-var3356-to-var3149 var2307) (cast-from-var655-to-var3149 var90!2))) ; Statement: interfaceinvoke $r9.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r10, $r0) 

(declare-const var1397!1 var1753)
(declare-const var2307!1 var3356)
(declare-const var90!3 var655)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var655-init=([], java.util.Date), <init>/-788057745=([java.util.Date], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTarget/-32916101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target), getName/589876253=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logStart/1452740241=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, java.util.Date, java.lang.String], void), profileData/2059991966=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger], java.util.Map), var1753_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3356-to-var3149=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], java.lang.Object), cast-from-var655-to-var3149=([java.util.Date], java.lang.Object)}
; {var549=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger, var2379=r8, var3451=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var3593=r2, var655=java.util.Date, var90=$r0, var3529=$r1, var3423=$r5, var3356=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var506=$r3, var136=$r4, var2645=$r6, var2189=r7, var1753=java.util.Map, var1397=$r9, var2307=$r10, var3149=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger=var549, r8=var2379, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var3451, r2=var3593, java.util.Date=var655, $r0=var90, $r1=var3529, $r5=var3423, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var3356, $r3=var506, $r4=var136, $r6=var2645, r7=var2189, java.util.Map=var1753, $r9=var1397, $r10=var2307, java.lang.Object=var3149}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	$r0 = new java.util.Date;	specialinvoke $r0.<java.util.Date: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Target ");	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getTarget()>();	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: void logStart(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent,java.util.Date,java.lang.String)>(r2, $r0, r7);	$r9 = r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.ProfileLogger: java.util.Map profileData>;	$r10 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getTarget()>();	interfaceinvoke $r9.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r10, $r0);	return
;block_num 1