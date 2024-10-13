(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3264 0)
(declare-sort var3650 0)
(declare-sort var3745 0)
(declare-sort var2255 0)
(declare-sort var2373 0)
(declare-sort var2243 0)
(declare-sort var972 0)
(declare-sort var591 0)
(declare-sort var2621 0)
(declare-sort var1138 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openConnection/1646032697 (var3650) var3745)
(declare-fun hasTimestamp/1971558710 (var3264) Bool)
(declare-fun userAgent/1971558710 (var3264) String)
(declare-fun addRequestProperty/-318133194 (var3745 String String) void)
(declare-fun this$0/1971558710 (var3264) var2255)
(declare-fun var2255_access$200/874692656 (var2255) String)
(declare-fun var2255_access$300/1741744881 (var2255) String)
(declare-fun var2255_access$400/-1426484393 (var2255) Bool)
(declare-fun var2255_access$500/222555940 (var2255) var2243)
(declare-fun var2243_entrySet/1101202697 (var2243) var972)
(declare-fun var972_iterator/1911472585 (var972) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2621-init () var2621)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun source/1971558710 (var3264) var3650)
(declare-fun toString/-1839352374 (var3650) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var2621 String var1138) void)
(declare-fun cast-from-var591-to-var1138 (var591) var1138)
(declare-const null-var3264 var3264)
(declare-const null-var3650 var3650)
(declare-const null-String String)
(declare-const null-var591 var591)
(declare-const var2656 var3264) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread 
(assert (not (= var2656 null-var3264)))
(declare-const var2404 var3650) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var2404 null-var3650)))
(assert true)
(define-const var3182 var3745 (openConnection/1646032697 var2404)) ; Statement: r1 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>() 
(define-const var2339 Bool (hasTimestamp/1971558710 var2656)) ; Statement: $z0 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: boolean hasTimestamp> 
 ; Statement: if $z0 == 0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.lang.String userAgent> 
(assert (= (ite var2339 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2257 String (userAgent/1971558710 var2656)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.lang.String userAgent> 
(assert true)
;(assert (addRequestProperty/-318133194 var3182 "User-Agent" var2257)) ; Statement: virtualinvoke r1.<java.net.URLConnection: void addRequestProperty(java.lang.String,java.lang.String)>("User-Agent", $r3) 

(declare-const var3182!1 var3745)
(declare-const var1532 String)
(declare-const var2257!1 String)
(define-const var484 var2255 (this$0/1971558710 var2656)) ; Statement: $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(define-const var754 String (var2255_access$200/874692656 var484)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.lang.String access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r4) 
 ; Statement: if $r5 != null goto $r65 = new java.lang.StringBuilder 
(assert (not (not (= var754 null-String)))) ; Negate: Cond: $r5 != null  
(define-const var3848 var2255 (this$0/1971558710 var2656)) ; Statement: $r48 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(define-const var2848 String (var2255_access$300/1741744881 var3848)) ; Statement: $r49 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.lang.String access$300(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r48) 
 ; Statement: if $r49 == null goto $r60 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(assert (= var2848 null-String)) ; Cond: $r49 == null 
(define-const var777 var2255 (this$0/1971558710 var2656)) ; Statement: $r60 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(define-const var1238 Bool (var2255_access$400/-1426484393 var777)) ; Statement: $z8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean access$400(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r60) 
 ; Statement: if $z8 == 0 goto $r20 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(assert (= (ite var1238 1 0) 0)) ; Cond: $z8 == 0 
(define-const var3660 var2255 (this$0/1971558710 var2656)) ; Statement: $r20 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(define-const var1027 var2243 (var2255_access$500/222555940 var3660)) ; Statement: $r21 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.util.Map access$500(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r20) 
(define-const var2571 var972 (var2243_entrySet/1101202697 var1027)) ; Statement: $r22 = interfaceinvoke $r21.<java.util.Map: java.util.Set entrySet()>() 
(define-const var3878 Iterator (var972_iterator/1911472585 var2571)) ; Statement: $r47 = interfaceinvoke $r22.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var797 Bool (Iterator_hasNext/-1669924200 var3878)) ; Statement: $z9 = interfaceinvoke $r47.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z9 == 0 goto $z1 = r1 instanceof java.net.HttpURLConnection 
(assert (= (ite var797 1 0) 0)) ; Cond: $z9 == 0 
(define-const var3605 Bool false) ; Statement: $z1 = r1 instanceof java.net.HttpURLConnection 
 ; Statement: if $z1 == 0 goto virtualinvoke r1.<java.net.URLConnection: void connect()>() 
(assert (not (= (ite var3605 1 0) 0))) ; Negate: Cond: $z1 == 0  
(declare-const var1041 var591) ; Statement: $r52 := @caughtexception 
(assert (not (= var1041 null-var591)))
(define-const var3647 var2621 var2621-init) ; Statement: $r69 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var390 String String-init) ; Statement: $r68 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var390)) ; Statement: specialinvoke $r68.<java.lang.StringBuilder: void <init>()>() 
(declare-const var390!1 String)
(assert (= var390!1 ""))
(assert true)
(define-const var1889 String (append/672562846 var390!1 "Failed to parse ")) ; Statement: $r57 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse ") 
(declare-const var390!2 String)
(assert (= var390!2 (str.++ var390!1 "Failed to parse ")))
(define-const var2837 var3650 (source/1971558710 var2656)) ; Statement: $r55 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.net.URL source> 
(assert true)
(define-const var367 String (toString/-1839352374 var2837)) ; Statement: $r56 = virtualinvoke $r55.<java.net.URL: java.lang.String toString()>() 
(assert true)
(define-const var342 String (append/672562846 var1889 var367)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var1889!1 String)
(assert (= var1889!1 (str.++ var1889 var367)))
(assert true)
(define-const var373 String (toString/-2075883882 var342)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var3647 var373 (cast-from-var591-to-var1138 var1041))) ; Statement: specialinvoke $r69.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r59, $r52) 

(declare-const var3647!1 var2621)
(declare-const var373!1 String)
(declare-const var1041!1 var591)
 ; Statement: throw $r69 
(check-sat)
(get-model)
(get-unsat-core)
; {openConnection/1646032697=([java.net.URL], java.net.URLConnection), hasTimestamp/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], boolean), userAgent/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], java.lang.String), addRequestProperty/-318133194=([java.net.URLConnection, java.lang.String, java.lang.String], void), this$0/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get), var2255_access$200/874692656=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], java.lang.String), var2255_access$300/1741744881=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], java.lang.String), var2255_access$400/-1426484393=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], boolean), var2255_access$500/222555940=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], java.util.Map), var2243_entrySet/1101202697=([java.util.Map], java.util.Set), var972_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2621-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), source/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], java.net.URL), toString/-1839352374=([java.net.URL], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var591-to-var1138=([java.lang.NullPointerException], java.lang.Throwable)}
; {var3264=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread, var2656=r2, var3650=java.net.URL, var2404=r0, var3745=java.net.URLConnection, var3182=r1, var2339=$z0, var2257=$r3, var1532="User-Agent", var2255=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get, var484=$r4, var754=$r5, var2373=null_type, var3848=$r48, var2848=$r49, var777=$r60, var1238=$z8, var3660=$r20, var2243=java.util.Map, var1027=$r21, var972=java.util.Set, var2571=$r22, var3878=$r47, var797=$z9, var3605=$z1, var591=java.lang.NullPointerException, var1041=$r52, var2621=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3647=$r69, var390=$r68, var1889=$r57, var2837=$r55, var367=$r56, var342=$r58, var373=$r59, var1138=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread=var3264, r2=var2656, java.net.URL=var3650, r0=var2404, java.net.URLConnection=var3745, r1=var3182, $z0=var2339, $r3=var2257, "User-Agent"=var1532, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get=var2255, $r4=var484, $r5=var754, null_type=var2373, $r48=var3848, $r49=var2848, $r60=var777, $z8=var1238, $r20=var3660, java.util.Map=var2243, $r21=var1027, java.util.Set=var972, $r22=var2571, $r47=var3878, $z9=var797, $z1=var3605, java.lang.NullPointerException=var591, $r52=var1041, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2621, $r69=var3647, $r68=var390, $r57=var1889, $r55=var2837, $r56=var367, $r58=var342, $r59=var373, java.lang.Throwable=var1138}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.net.URL: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread;	r0 := @parameter0: java.net.URL;	r1 = virtualinvoke r0.<java.net.URL: java.net.URLConnection openConnection()>();	$z0 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: boolean hasTimestamp>;	if $z0 == 0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.lang.String userAgent>;	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.lang.String userAgent>;	virtualinvoke r1.<java.net.URLConnection: void addRequestProperty(java.lang.String,java.lang.String)>("User-Agent", $r3);	$r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.lang.String access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r4);	if $r5 != null goto $r65 = new java.lang.StringBuilder;	$r48 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$r49 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.lang.String access$300(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r48);	if $r49 == null goto $r60 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$r60 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$z8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean access$400(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r60);	if $z8 == 0 goto $r20 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$r20 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$r21 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: java.util.Map access$500(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r20);	$r22 = interfaceinvoke $r21.<java.util.Map: java.util.Set entrySet()>();	$r47 = interfaceinvoke $r22.<java.util.Set: java.util.Iterator iterator()>();	$z9 = interfaceinvoke $r47.<java.util.Iterator: boolean hasNext()>();	if $z9 == 0 goto $z1 = r1 instanceof java.net.HttpURLConnection;	$z1 = r1 instanceof java.net.HttpURLConnection;	if $z1 == 0 goto virtualinvoke r1.<java.net.URLConnection: void connect()>();	$r52 := @caughtexception;	$r69 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r68 = new java.lang.StringBuilder;	specialinvoke $r68.<java.lang.StringBuilder: void <init>()>();	$r57 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse ");	$r55 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.net.URL source>;	$r56 = virtualinvoke $r55.<java.net.URL: java.lang.String toString()>();	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r69.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r59, $r52);	throw $r69
;block_num 8