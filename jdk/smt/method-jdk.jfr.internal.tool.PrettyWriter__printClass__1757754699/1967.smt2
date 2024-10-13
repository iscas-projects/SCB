(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3870 0)
(declare-sort var3001 0)
(declare-sort var3410 0)
(declare-sort var1525 0)
(declare-sort var2182 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClassLoader/-1920033081 (var3001) var1525)
(declare-fun getName/127192176 (var3001) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-650826721 (var2182 String) void)
(declare-fun cast-from-var3870-to-var2182 (var3870) var2182)
(declare-const null-var3870 var3870)
(declare-const null-var3001 var3001)
(declare-const null-String String)
(declare-const null-var1525 var1525)
(declare-const var2769 var3870) ; Statement: r2 := @this: jdk.jfr.internal.tool.PrettyWriter 
(assert (not (= var2769 null-var3870)))
(declare-const var1852 var3001) ; Statement: r0 := @parameter0: jdk.jfr.consumer.RecordedClass 
(assert (not (= var1852 null-var3001)))
(declare-const var1389 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var1389 null-String)))
(assert true)
(define-const var1591 var1525 (getClassLoader/-1920033081 var1852)) ; Statement: r1 = virtualinvoke r0.<jdk.jfr.consumer.RecordedClass: jdk.jfr.consumer.RecordedClassLoader getClassLoader()>() 
(define-const var2927 String "null") ; Statement: r15 = "null" 
 ; Statement: if r1 == null goto $r16 = virtualinvoke r0.<jdk.jfr.consumer.RecordedClass: java.lang.String getName()>() 
(assert (= var1591 null-var1525)) ; Cond: r1 == null 
(assert true)
(define-const var3702 String (getName/127192176 var1852)) ; Statement: $r16 = virtualinvoke r0.<jdk.jfr.consumer.RecordedClass: java.lang.String getName()>() 
(define-const var3108 String var3702) ; Statement: r17 = $r16 
(assert true)
(define-const var742 Bool (startsWith/-1785782452 var3702 "[")) ; Statement: $z0 = virtualinvoke $r16.<java.lang.String: boolean startsWith(java.lang.String)>("[") 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var742 1 0) 0)) ; Cond: $z0 == 0 
(define-const var991 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var991)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var991!1 String)
(assert (= var991!1 ""))
(assert true)
(define-const var3494 String (append/672562846 var991!1 var3108)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r17) 
(declare-const var991!2 String)
(assert (= var991!2 (str.++ var991!1 var3108)))
(assert true)
(define-const var2217 String (append/672562846 var3494 " (classLoader = ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (classLoader = ") 
(declare-const var3494!1 String)
(assert (= var3494!1 (str.++ var3494 " (classLoader = ")))
(assert true)
(define-const var2931 String (append/672562846 var2217 var2927)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15) 
(declare-const var2217!1 String)
(assert (= var2217!1 (str.++ var2217 var2927)))
(assert true)
(define-const var2741 String (append/672562846 var2931 ")")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2931!1 String)
(assert (= var2931!1 (str.++ var2931 ")")))
(assert true)
(define-const var3341 String (append/672562846 var2741 var1389)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var2741!1 String)
(assert (= var2741!1 (str.++ var2741 var1389)))
(assert true)
(define-const var477 String (toString/-2075883882 var3341)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-650826721 (cast-from-var3870-to-var2182 var2769) var477)) ; Statement: virtualinvoke r2.<jdk.jfr.internal.tool.PrettyWriter: void println(java.lang.String)>($r10) 

(declare-const var2769!1 var3870)
(declare-const var477!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getClassLoader/-1920033081=([jdk.jfr.consumer.RecordedClass], jdk.jfr.consumer.RecordedClassLoader), getName/127192176=([jdk.jfr.consumer.RecordedClass], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-650826721=([jdk.jfr.internal.tool.StructuredWriter, java.lang.String], void), cast-from-var3870-to-var2182=([jdk.jfr.internal.tool.PrettyWriter], jdk.jfr.internal.tool.StructuredWriter)}
; {var3870=jdk.jfr.internal.tool.PrettyWriter, var2769=r2, var3001=jdk.jfr.consumer.RecordedClass, var1852=r0, var1389=r7, var3410=null_type, var1525=jdk.jfr.consumer.RecordedClassLoader, var1591=r1, var2927=r15, var3702=$r16, var3108=r17, var742=$z0, var991=$r3, var3494=$r4, var2217=$r5, var2931=$r6, var2741=$r8, var3341=$r9, var477=$r10, var2182=jdk.jfr.internal.tool.StructuredWriter}
; {jdk.jfr.internal.tool.PrettyWriter=var3870, r2=var2769, jdk.jfr.consumer.RecordedClass=var3001, r0=var1852, r7=var1389, null_type=var3410, jdk.jfr.consumer.RecordedClassLoader=var1525, r1=var1591, r15=var2927, $r16=var3702, r17=var3108, $z0=var742, $r3=var991, $r4=var3494, $r5=var2217, $r6=var2931, $r8=var2741, $r9=var3341, $r10=var477, jdk.jfr.internal.tool.StructuredWriter=var2182}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: jdk.jfr.internal.tool.PrettyWriter;	r0 := @parameter0: jdk.jfr.consumer.RecordedClass;	r7 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<jdk.jfr.consumer.RecordedClass: jdk.jfr.consumer.RecordedClassLoader getClassLoader()>();	r15 = "null";	if r1 == null goto $r16 = virtualinvoke r0.<jdk.jfr.consumer.RecordedClass: java.lang.String getName()>();	$r16 = virtualinvoke r0.<jdk.jfr.consumer.RecordedClass: java.lang.String getName()>();	r17 = $r16;	$z0 = virtualinvoke $r16.<java.lang.String: boolean startsWith(java.lang.String)>("[");	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r17);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (classLoader = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r2.<jdk.jfr.internal.tool.PrettyWriter: void println(java.lang.String)>($r10);	return
;block_num 3