(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2337 0)
(declare-sort var634 0)
(declare-sort var1492 0)
(declare-sort var673 0)
(declare-sort var1206 0)
(declare-sort var644 0)
(declare-sort var1564 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1206_debug/381960894 (String) void)
(declare-fun var644-init () var644)
(declare-fun <init>/1909349671 (var644 String String) void)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun removeAllAppenders/313640692 (var1564) void)
(declare-fun cast-from-var1492-to-var1564 (var1492) var1564)
(declare-fun hasMoreTokens/711654492 (var644) Bool)
(declare-const null-var2337 var2337)
(declare-const null-var634 var634)
(declare-const null-var1492 var1492)
(declare-const null-String String)
(declare-const var1119 var2337) ; Statement: r18 := @this: org.apache.log4j.PropertyConfigurator 
(assert (not (= var1119 null-var2337)))
(declare-const var2487 var634) ; Statement: r19 := @parameter0: java.util.Properties 
(assert (not (= var2487 null-var634)))
(declare-const var833 var1492) ; Statement: r10 := @parameter1: org.apache.log4j.Logger 
(assert (not (= var833 null-var1492)))
(declare-const var2814 String) ; Statement: r29 := @parameter2: java.lang.String 
(assert (not (= var2814 null-String)))
(declare-const var1958 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var1958 null-String)))
(declare-const var236 String) ; Statement: r4 := @parameter4: java.lang.String 
(assert (not (= var236 null-String)))
(define-const var166 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var166)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var166!1 String)
(assert true)
(define-const var1858 String (append/1560614132 var166!1 "Parsing for [")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing for [") 
(declare-const var166!2 String)
(assert (str.prefixof var166!1 var166!2))
(assert true)
(define-const var3678 String (append/1560614132 var1858 var1958)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var1858!1 String)
(assert (str.prefixof var1858 var1858!1))
(assert true)
(define-const var386 String (append/1560614132 var3678 "] with value=[")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] with value=[") 
(declare-const var3678!1 String)
(assert (str.prefixof var3678 var3678!1))
(assert true)
(define-const var2931 String (append/1560614132 var386 var236)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r4) 
(declare-const var386!1 String)
(assert (str.prefixof var386 var386!1))
(assert true)
(define-const var3960 String (append/1560614132 var2931 "].")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var2931!1 String)
(assert (str.prefixof var2931 var2931!1))
(assert true)
(define-const var1265 String (toString/-222306083 var3960)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1206_debug/381960894 var1265)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var1265!1 String)
(define-const var470 var644 var644-init) ; Statement: $r9 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/1909349671 var470 var236 ",")) ; Statement: specialinvoke $r9.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r4, ",") 

(declare-const var470!1 var644)
(declare-const var236!1 String)
(declare-const var2797 String)
(assert true)
(define-const var2652 Bool (startsWith/-1785782452 var236!1 ",")) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean startsWith(java.lang.String)>(",") 
 ; Statement: if $z0 != 0 goto virtualinvoke r10.<org.apache.log4j.Logger: void removeAllAppenders()>() 
(assert (not (= (ite var2652 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (removeAllAppenders/313640692 (cast-from-var1492-to-var1564 var833))) ; Statement: virtualinvoke r10.<org.apache.log4j.Logger: void removeAllAppenders()>() 

(declare-const var833!1 var1492)
(assert true) ; Non Conditional
(assert true)
(define-const var3702 Bool (hasMoreTokens/711654492 var470!1)) ; Statement: $z7 = virtualinvoke $r9.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z7 == 0 goto return 
(assert (= (ite var3702 1 0) 0)) ; Cond: $z7 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1206_debug/381960894=([java.lang.String], void), var644-init=([], java.util.StringTokenizer), <init>/1909349671=([java.util.StringTokenizer, java.lang.String, java.lang.String], void), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), removeAllAppenders/313640692=([org.apache.log4j.Category], void), cast-from-var1492-to-var1564=([org.apache.log4j.Logger], org.apache.log4j.Category), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean)}
; {var2337=org.apache.log4j.PropertyConfigurator, var1119=r18, var634=java.util.Properties, var2487=r19, var1492=org.apache.log4j.Logger, var833=r10, var2814=r29, var673=null_type, var1958=r1, var236=r4, var166=$r0, var1858=$r2, var3678=$r3, var386=$r5, var2931=$r6, var3960=$r7, var1265=$r8, var1206=org.apache.log4j.helpers.LogLog, var644=java.util.StringTokenizer, var470=$r9, var2797=",", var2652=$z0, var1564=org.apache.log4j.Category, var3702=$z7}
; {org.apache.log4j.PropertyConfigurator=var2337, r18=var1119, java.util.Properties=var634, r19=var2487, org.apache.log4j.Logger=var1492, r10=var833, r29=var2814, null_type=var673, r1=var1958, r4=var236, $r0=var166, $r2=var1858, $r3=var3678, $r5=var386, $r6=var2931, $r7=var3960, $r8=var1265, org.apache.log4j.helpers.LogLog=var1206, java.util.StringTokenizer=var644, $r9=var470, ","=var2797, $z0=var2652, org.apache.log4j.Category=var1564, $z7=var3702}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.String toString()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r18 := @this: org.apache.log4j.PropertyConfigurator;	r19 := @parameter0: java.util.Properties;	r10 := @parameter1: org.apache.log4j.Logger;	r29 := @parameter2: java.lang.String;	r1 := @parameter3: java.lang.String;	r4 := @parameter4: java.lang.String;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing for [");	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] with value=[");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r9 = new java.util.StringTokenizer;	specialinvoke $r9.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r4, ",");	$z0 = virtualinvoke r4.<java.lang.String: boolean startsWith(java.lang.String)>(",");	if $z0 != 0 goto virtualinvoke r10.<org.apache.log4j.Logger: void removeAllAppenders()>();	virtualinvoke r10.<org.apache.log4j.Logger: void removeAllAppenders()>();	$z7 = virtualinvoke $r9.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z7 == 0 goto return;	return
;block_num 4