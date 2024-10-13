(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1413 0)
(declare-sort var2116 0)
(declare-sort var2952 0)
(declare-sort var1145 0)
(declare-sort var3855 0)
(declare-sort var3720 0)
(declare-sort var2208 0)
(declare-sort var2292 0)
(declare-sort var906 0)
(declare-sort var3290 0)
(declare-sort var3510 0)
(declare-sort var151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openConnection/1646032697 (var2116) var2952)
(declare-fun hasTimestamp/1971558710 (var1413) Bool)
(declare-fun userAgent/1971558710 (var1413) String)
(declare-fun addRequestProperty/-318133194 (var2952 String String) void)
(declare-fun this$0/1971558710 (var1413) var1145)
(declare-fun var1145_access$200/874692656 (var1145) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1145_access$300/1741744881 (var1145) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3720-init () var3720)
(declare-fun <init>/-1724716848 (var3720) void)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun encode/-1774706620 (var2208 (Array Int Int)) String)
(declare-fun cast-from-var3720-to-var2208 (var3720) var2208)
(declare-fun setRequestProperty/767355605 (var2952 String String) void)
(declare-fun var1145_access$400/-1426484393 (var1145) Bool)
(declare-fun var1145_access$500/222555940 (var1145) var2292)
(declare-fun var2292_entrySet/1101202697 (var2292) var906)
(declare-fun var906_iterator/1911472585 (var906) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3510-init () var3510)
(declare-fun source/1971558710 (var1413) var2116)
(declare-fun toString/-1839352374 (var2116) String)
(declare-fun <init>/-191906322 (var3510 String var151) void)
(declare-fun cast-from-var3290-to-var151 (var3290) var151)
(declare-const null-var1413 var1413)
(declare-const null-var2116 var2116)
(declare-const null-String String)
(declare-const null-var3290 var3290)
(declare-const var1469 var1413) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread 
(assert (not (= var1469 null-var1413)))
(declare-const var1363 var2116) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var1363 null-var2116)))
(assert true)
(define-const var3818 var2952 (openConnection/1646032697 var1363)) ; Statement: r1 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>() 
(define-const var273 Bool (hasTimestamp/1971558710 var1469)) ; Statement: $z0 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: boolean hasTimestamp> 
 ; Statement: if $z0 == 0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.lang.String userAgent> 
(assert (= (ite var273 1 0) 0)) ; Cond: $z0 == 0 
(define-const var791 String (userAgent/1971558710 var1469)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.lang.String userAgent> 
(assert true)
;(assert (addRequestProperty/-318133194 var3818 "User-Agent" var791)) ; Statement: virtualinvoke r1.<java.net.URLConnection: void addRequestProperty(java.lang.String,java.lang.String)>("User-Agent", $r3) 

(declare-const var3818!1 var2952)
(declare-const var678 String)
(declare-const var791!1 String)
(define-const var1106 var1145 (this$0/1971558710 var1469)) ; Statement: $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(define-const var2133 String (var1145_access$200/874692656 var1106)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.lang.String access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r4) 
 ; Statement: if $r5 != null goto $r65 = new java.lang.StringBuilder 
(assert (not (= var2133 null-String))) ; Cond: $r5 != null 
(define-const var2758 String String-init) ; Statement: $r65 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2758)) ; Statement: specialinvoke $r65.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2758!1 String)
(assert (= var2758!1 ""))
(define-const var2363 var1145 (this$0/1971558710 var1469)) ; Statement: $r7 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(define-const var2768 String (var1145_access$200/874692656 var2363)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.lang.String access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r7) 
(assert true)
(define-const var2199 String (append/672562846 var2758!1 var2768)) ; Statement: $r9 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2758!2 String)
(assert (= var2758!2 (str.++ var2758!1 var2768)))
(assert true)
(define-const var1839 String (append/672562846 var2199 ":")) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2199!1 String)
(assert (= var2199!1 (str.++ var2199 ":")))
(define-const var2201 var1145 (this$0/1971558710 var1469)) ; Statement: $r10 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(define-const var3102 String (var1145_access$300/1741744881 var2201)) ; Statement: $r11 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.lang.String access$300(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r10) 
(assert true)
(define-const var3616 String (append/672562846 var1839 var3102)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1839!1 String)
(assert (= var1839!1 (str.++ var1839 var3102)))
(assert true)
(define-const var1653 String (toString/-2075883882 var3616)) ; Statement: $r50 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1159 var3720 var3720-init) ; Statement: $r66 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$Base64Converter 
(assert true)
;(assert (<init>/-1724716848 var1159)) ; Statement: specialinvoke $r66.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$Base64Converter: void <init>()>() 

(declare-const var1159!1 var3720)
(assert true)
(define-const var2396 (Array Int Int) (getBytes/1068683673 var1653)) ; Statement: $r15 = virtualinvoke $r50.<java.lang.String: byte[] getBytes()>() 
(assert true)
(define-const var1894 String (encode/-1774706620 (cast-from-var3720-to-var2208 var1159!1) var2396)) ; Statement: $r51 = virtualinvoke $r66.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$Base64Converter: java.lang.String encode(byte[])>($r15) 
(define-const var2040 String String-init) ; Statement: $r67 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2040)) ; Statement: specialinvoke $r67.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2040!1 String)
(assert (= var2040!1 ""))
(assert true)
(define-const var363 String (append/672562846 var2040!1 "Basic ")) ; Statement: $r17 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Basic ") 
(declare-const var2040!2 String)
(assert (= var2040!2 (str.++ var2040!1 "Basic ")))
(assert true)
(define-const var2137 String (append/672562846 var363 var1894)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r51) 
(declare-const var363!1 String)
(assert (= var363!1 (str.++ var363 var1894)))
(assert true)
(define-const var3997 String (toString/-2075883882 var2137)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setRequestProperty/767355605 var3818!1 "Authorization" var3997)) ; Statement: virtualinvoke r1.<java.net.URLConnection: void setRequestProperty(java.lang.String,java.lang.String)>("Authorization", $r19) 

(declare-const var3818!2 var2952)
(declare-const var228 String)
(declare-const var3997!1 String)
(assert true) ; Non Conditional
(define-const var976 var1145 (this$0/1971558710 var1469)) ; Statement: $r60 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(define-const var3559 Bool (var1145_access$400/-1426484393 var976)) ; Statement: $z8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean access$400(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r60) 
 ; Statement: if $z8 == 0 goto $r20 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(assert (= (ite var3559 1 0) 0)) ; Cond: $z8 == 0 
(define-const var1584 var1145 (this$0/1971558710 var1469)) ; Statement: $r20 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(define-const var1964 var2292 (var1145_access$500/222555940 var1584)) ; Statement: $r21 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.util.Map access$500(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r20) 
(define-const var3197 var906 (var2292_entrySet/1101202697 var1964)) ; Statement: $r22 = interfaceinvoke $r21.<java.util.Map: java.util.Set entrySet()>() 
(define-const var2619 Iterator (var906_iterator/1911472585 var3197)) ; Statement: $r47 = interfaceinvoke $r22.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1546 Bool (Iterator_hasNext/-1669924200 var2619)) ; Statement: $z9 = interfaceinvoke $r47.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z9 == 0 goto $z1 = r1 instanceof java.net.HttpURLConnection 
(assert (= (ite var1546 1 0) 0)) ; Cond: $z9 == 0 
(define-const var1247 Bool false) ; Statement: $z1 = r1 instanceof java.net.HttpURLConnection 
 ; Statement: if $z1 == 0 goto virtualinvoke r1.<java.net.URLConnection: void connect()>() 
(assert (not (= (ite var1247 1 0) 0))) ; Negate: Cond: $z1 == 0  
(declare-const var969 var3290) ; Statement: $r52 := @caughtexception 
(assert (not (= var969 null-var3290)))
(define-const var2659 var3510 var3510-init) ; Statement: $r69 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2647 String String-init) ; Statement: $r68 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2647)) ; Statement: specialinvoke $r68.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2647!1 String)
(assert (= var2647!1 ""))
(assert true)
(define-const var3990 String (append/672562846 var2647!1 "Failed to parse ")) ; Statement: $r57 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse ") 
(declare-const var2647!2 String)
(assert (= var2647!2 (str.++ var2647!1 "Failed to parse ")))
(define-const var2481 var2116 (source/1971558710 var1469)) ; Statement: $r55 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.net.URL source> 
(assert true)
(define-const var1324 String (toString/-1839352374 var2481)) ; Statement: $r56 = virtualinvoke $r55.<java.net.URL: java.lang.String toString()>() 
(assert true)
(define-const var1580 String (append/672562846 var3990 var1324)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var3990!1 String)
(assert (= var3990!1 (str.++ var3990 var1324)))
(assert true)
(define-const var842 String (toString/-2075883882 var1580)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var2659 var842 (cast-from-var3290-to-var151 var969))) ; Statement: specialinvoke $r69.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r59, $r52) 

(declare-const var2659!1 var3510)
(declare-const var842!1 String)
(declare-const var969!1 var3290)
 ; Statement: throw $r69 
(check-sat)
(get-model)
(get-unsat-core)
; {openConnection/1646032697=([java.net.URL], java.net.URLConnection), hasTimestamp/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], boolean), userAgent/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], java.lang.String), addRequestProperty/-318133194=([java.net.URLConnection, java.lang.String, java.lang.String], void), this$0/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get), var1145_access$200/874692656=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1145_access$300/1741744881=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3720-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$Base64Converter), <init>/-1724716848=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$Base64Converter], void), getBytes/1068683673=([java.lang.String], byte[]), encode/-1774706620=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter, byte[]], java.lang.String), cast-from-var3720-to-var2208=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$Base64Converter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter), setRequestProperty/767355605=([java.net.URLConnection, java.lang.String, java.lang.String], void), var1145_access$400/-1426484393=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], boolean), var1145_access$500/222555940=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], java.util.Map), var2292_entrySet/1101202697=([java.util.Map], java.util.Set), var906_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3510-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), source/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], java.net.URL), toString/-1839352374=([java.net.URL], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var3290-to-var151=([java.lang.NullPointerException], java.lang.Throwable)}
; {var1413=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread, var1469=r2, var2116=java.net.URL, var1363=r0, var2952=java.net.URLConnection, var3818=r1, var273=$z0, var791=$r3, var678="User-Agent", var1145=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get, var1106=$r4, var2133=$r5, var3855=null_type, var2758=$r65, var2363=$r7, var2768=$r8, var2199=$r9, var1839=$r12, var2201=$r10, var3102=$r11, var3616=$r13, var1653=$r50, var3720=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$Base64Converter, var1159=$r66, var2396=$r15, var2208=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter, var1894=$r51, var2040=$r67, var363=$r17, var2137=$r18, var3997=$r19, var228="Authorization", var976=$r60, var3559=$z8, var1584=$r20, var2292=java.util.Map, var1964=$r21, var906=java.util.Set, var3197=$r22, var2619=$r47, var1546=$z9, var1247=$z1, var3290=java.lang.NullPointerException, var969=$r52, var3510=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2659=$r69, var2647=$r68, var3990=$r57, var2481=$r55, var1324=$r56, var1580=$r58, var842=$r59, var151=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread=var1413, r2=var1469, java.net.URL=var2116, r0=var1363, java.net.URLConnection=var2952, r1=var3818, $z0=var273, $r3=var791, "User-Agent"=var678, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get=var1145, $r4=var1106, $r5=var2133, null_type=var3855, $r65=var2758, $r7=var2363, $r8=var2768, $r9=var2199, $r12=var1839, $r10=var2201, $r11=var3102, $r13=var3616, $r50=var1653, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$Base64Converter=var3720, $r66=var1159, $r15=var2396, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter=var2208, $r51=var1894, $r67=var2040, $r17=var363, $r18=var2137, $r19=var3997, "Authorization"=var228, $r60=var976, $z8=var3559, $r20=var1584, java.util.Map=var2292, $r21=var1964, java.util.Set=var906, $r22=var3197, $r47=var2619, $z9=var1546, $z1=var1247, java.lang.NullPointerException=var3290, $r52=var969, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3510, $r69=var2659, $r68=var2647, $r57=var3990, $r55=var2481, $r56=var1324, $r58=var1580, $r59=var842, java.lang.Throwable=var151}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: byte[] getBytes()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.net.URL: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread;	r0 := @parameter0: java.net.URL;	r1 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>();	$z0 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: boolean hasTimestamp>;	if $z0 == 0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.lang.String userAgent>;	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.lang.String userAgent>;	virtualinvoke r1.<java.net.URLConnection: void addRequestProperty(java.lang.String,java.lang.String)>("User-Agent", $r3);	$r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.lang.String access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r4);	if $r5 != null goto $r65 = new java.lang.StringBuilder;	$r65 = new java.lang.StringBuilder;	specialinvoke $r65.<java.lang.StringBuilder: void <init>()>();	$r7 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.lang.String access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r7);	$r9 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r10 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$r11 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.lang.String access$300(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r50 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r66 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$Base64Converter;	specialinvoke $r66.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$Base64Converter: void <init>()>();	$r15 = virtualinvoke $r50.<java.lang.String: byte[] getBytes()>();	$r51 = virtualinvoke $r66.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$Base64Converter: java.lang.String encode(byte[])>($r15);	$r67 = new java.lang.StringBuilder;	specialinvoke $r67.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Basic ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r51);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.net.URLConnection: void setRequestProperty(java.lang.String,java.lang.String)>("Authorization", $r19);	$r60 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$z8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean access$400(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r60);	if $z8 == 0 goto $r20 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$r20 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$r21 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.util.Map access$500(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r20);	$r22 = interfaceinvoke $r21.<java.util.Map: java.util.Set entrySet()>();	$r47 = interfaceinvoke $r22.<java.util.Set: java.util.Iterator iterator()>();	$z9 = interfaceinvoke $r47.<java.util.Iterator: boolean hasNext()>();	if $z9 == 0 goto $z1 = r1 instanceof java.net.HttpURLConnection;	$z1 = r1 instanceof java.net.HttpURLConnection;	if $z1 == 0 goto virtualinvoke r1.<java.net.URLConnection: void connect()>();	$r52 := @caughtexception;	$r69 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r68 = new java.lang.StringBuilder;	specialinvoke $r68.<java.lang.StringBuilder: void <init>()>();	$r57 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse ");	$r55 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.net.URL source>;	$r56 = virtualinvoke $r55.<java.net.URL: java.lang.String toString()>();	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r69.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r59, $r52);	throw $r69
;block_num 8