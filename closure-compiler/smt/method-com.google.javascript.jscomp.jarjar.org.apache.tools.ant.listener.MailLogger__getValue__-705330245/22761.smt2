(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1615 0)
(declare-sort var2362 0)
(declare-sort var270 0)
(declare-sort var3791 0)
(declare-sort var2813 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2362_get/1088891777 (var2362 var3791) var3791)
(declare-fun cast-from-String-to-var3791 (String) var3791)
(declare-fun cast-from-var3791-to-String (var3791) String)
(declare-fun var2813-init () var2813)
(declare-fun <init>/-1084991535 (var2813 String) void)
(declare-const null-var1615 var1615)
(declare-const null-var2362 var2362)
(declare-const null-String String)
(declare-const var3668 var1615) ; Statement: r13 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger 
(assert (not (= var3668 null-var1615)))
(declare-const var878 var2362) ; Statement: r5 := @parameter0: java.util.Map 
(assert (not (= var878 null-var2362)))
(declare-const var897 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var897 null-String)))
(declare-const var1816 String) ; Statement: r12 := @parameter2: java.lang.String 
(assert (not (= var1816 null-String)))
(define-const var1479 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1479)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1479!1 String)
(assert (= var1479!1 ""))
(assert true)
(define-const var2960 String (append/672562846 var1479!1 "MailLogger.")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MailLogger.") 
(declare-const var1479!2 String)
(assert (= var1479!2 (str.++ var1479!1 "MailLogger.")))
(assert true)
(define-const var1518 String (append/672562846 var2960 var897)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2960!1 String)
(assert (= var2960!1 (str.++ var2960 var897)))
(assert true)
(define-const var2071 String (toString/-2075883882 var1518)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1244 var3791 (var2362_get/1088891777 var878 (cast-from-String-to-var3791 var2071))) ; Statement: $r6 = interfaceinvoke r5.<java.util.Map: java.lang.Object get(java.lang.Object)>(r4) 
(define-const var2285 String (cast-from-var3791-to-String var1244)) ; Statement: r14 = (java.lang.String) $r6 
 ; Statement: if r14 != null goto (branch) 
(assert (not (= var2285 null-String))) ; Cond: r14 != null 
 ; Statement: if r14 != null goto return r14 
(assert (not (not (= var2285 null-String)))) ; Negate: Cond: r14 != null  
(define-const var3562 var2813 var2813-init) ; Statement: $r7 = new java.lang.RuntimeException 
(define-const var3855 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3855)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3855!1 String)
(assert (= var3855!1 ""))
(assert true)
(define-const var2245 String (append/672562846 var3855!1 "Missing required parameter: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Missing required parameter: ") 
(declare-const var3855!2 String)
(assert (= var3855!2 (str.++ var3855!1 "Missing required parameter: ")))
(assert true)
(define-const var2532 String (append/672562846 var2245 var2071)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2245!1 String)
(assert (= var2245!1 (str.++ var2245 var2071)))
(assert true)
(define-const var2039 String (toString/-2075883882 var2532)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3562 var2039)) ; Statement: specialinvoke $r7.<java.lang.RuntimeException: void <init>(java.lang.String)>($r11) 

(declare-const var3562!1 var2813)
(declare-const var2039!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2362_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3791=([java.lang.String], java.lang.Object), cast-from-var3791-to-String=([java.lang.Object], java.lang.String), var2813-init=([], java.lang.RuntimeException), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1615=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger, var3668=r13, var2362=java.util.Map, var878=r5, var897=r1, var270=null_type, var1816=r12, var1479=$r0, var2960=$r2, var1518=$r3, var2071=r4, var3791=java.lang.Object, var1244=$r6, var2285=r14, var2813=java.lang.RuntimeException, var3562=$r7, var3855=$r8, var2245=$r9, var2532=$r10, var2039=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger=var1615, r13=var3668, java.util.Map=var2362, r5=var878, r1=var897, null_type=var270, r12=var1816, $r0=var1479, $r2=var2960, $r3=var1518, r4=var2071, java.lang.Object=var3791, $r6=var1244, r14=var2285, java.lang.RuntimeException=var2813, $r7=var3562, $r8=var3855, $r9=var2245, $r10=var2532, $r11=var2039}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r13 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger;	r5 := @parameter0: java.util.Map;	r1 := @parameter1: java.lang.String;	r12 := @parameter2: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MailLogger.");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = interfaceinvoke r5.<java.util.Map: java.lang.Object get(java.lang.Object)>(r4);	r14 = (java.lang.String) $r6;	if r14 != null goto (branch);	if r14 != null goto return r14;	$r7 = new java.lang.RuntimeException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Missing required parameter: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.RuntimeException: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 3