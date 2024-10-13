(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2966 0)
(declare-sort var2800 0)
(declare-sort var2758 0)
(declare-sort var2213 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2800_get/1088891777 (var2800 var2213) var2213)
(declare-fun cast-from-String-to-var2213 (String) var2213)
(declare-fun cast-from-var2213-to-String (var2213) String)
(declare-const null-var2966 var2966)
(declare-const null-var2800 var2800)
(declare-const null-String String)
(declare-const var1304 var2966) ; Statement: r13 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger 
(assert (not (= var1304 null-var2966)))
(declare-const var1601 var2800) ; Statement: r5 := @parameter0: java.util.Map 
(assert (not (= var1601 null-var2800)))
(declare-const var1705 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1705 null-String)))
(declare-const var65 String) ; Statement: r12 := @parameter2: java.lang.String 
(assert (not (= var65 null-String)))
(define-const var3669 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3669)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3669!1 String)
(assert (= var3669!1 ""))
(assert true)
(define-const var3542 String (append/672562846 var3669!1 "MailLogger.")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MailLogger.") 
(declare-const var3669!2 String)
(assert (= var3669!2 (str.++ var3669!1 "MailLogger.")))
(assert true)
(define-const var1962 String (append/672562846 var3542 var1705)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3542!1 String)
(assert (= var3542!1 (str.++ var3542 var1705)))
(assert true)
(define-const var130 String (toString/-2075883882 var1962)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1127 var2213 (var2800_get/1088891777 var1601 (cast-from-String-to-var2213 var130))) ; Statement: $r6 = interfaceinvoke r5.<java.util.Map: java.lang.Object get(java.lang.Object)>(r4) 
(define-const var2838 String (cast-from-var2213-to-String var1127)) ; Statement: r14 = (java.lang.String) $r6 
 ; Statement: if r14 != null goto (branch) 
(assert (not (= var2838 null-String))) ; Cond: r14 != null 
 ; Statement: if r14 != null goto return r14 
(assert (not (= var2838 null-String))) ; Cond: r14 != null 
 ; Statement: return r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2800_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2213=([java.lang.String], java.lang.Object), cast-from-var2213-to-String=([java.lang.Object], java.lang.String)}
; {var2966=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger, var1304=r13, var2800=java.util.Map, var1601=r5, var1705=r1, var2758=null_type, var65=r12, var3669=$r0, var3542=$r2, var1962=$r3, var130=r4, var2213=java.lang.Object, var1127=$r6, var2838=r14}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger=var2966, r13=var1304, java.util.Map=var2800, r5=var1601, r1=var1705, null_type=var2758, r12=var65, $r0=var3669, $r2=var3542, $r3=var1962, r4=var130, java.lang.Object=var2213, $r6=var1127, r14=var2838}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger;	r5 := @parameter0: java.util.Map;	r1 := @parameter1: java.lang.String;	r12 := @parameter2: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MailLogger.");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = interfaceinvoke r5.<java.util.Map: java.lang.Object get(java.lang.Object)>(r4);	r14 = (java.lang.String) $r6;	if r14 != null goto (branch);	if r14 != null goto return r14;	return r14
;block_num 3