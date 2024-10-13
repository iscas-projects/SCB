(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3868 0)
(declare-sort var2108 0)
(declare-sort var1817 0)
(declare-sort var3879 0)
(declare-sort var533 0)
(declare-sort var360 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-143899486 (String var3879) String)
(declare-fun cast-from-var2108-to-var3879 (var2108) var3879)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun info/949906248 (var533 var3879) void)
(declare-fun cast-from-var1817-to-var533 (var1817) var533)
(declare-fun cast-from-String-to-var3879 (String) var3879)
(declare-fun toString/-512974245 (var2108) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun warn/571735664 (var533 var3879) void)
(declare-fun genericHierarchy/-1467694262 (var3868) var360)
(declare-const null-var3868 var3868)
(declare-const null-var2108 var2108)
(declare-const var3868-cat var1817)
(declare-const var2847 var3868) ; Statement: r9 := @this: org.apache.log4j.net.SocketServer 
(assert (not (= var2847 null-var3868)))
(declare-const var34 var2108) ; Statement: r2 := @parameter0: java.net.InetAddress 
(assert (not (= var34 null-var2108)))
(define-const var1685 var1817 var3868-cat) ; Statement: $r1 = <org.apache.log4j.net.SocketServer: org.apache.log4j.Logger cat> 
(define-const var3072 String String-init) ; Statement: $r36 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3072)) ; Statement: specialinvoke $r36.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3072!1 String)
(assert true)
(define-const var1061 String (append/1560614132 var3072!1 "Locating configuration file for ")) ; Statement: $r3 = virtualinvoke $r36.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Locating configuration file for ") 
(declare-const var3072!2 String)
(assert (str.prefixof var3072!1 var3072!2))
(assert true)
(define-const var779 String (append/-143899486 var1061 (cast-from-var2108-to-var3879 var34))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r2) 
(assert true)
(define-const var3187 String (toString/-222306083 var779)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (info/949906248 (cast-from-var1817-to-var533 var1685) (cast-from-String-to-var3879 var3187))) ; Statement: virtualinvoke $r1.<org.apache.log4j.Logger: void info(java.lang.Object)>($r5) 

(declare-const var1685!1 var1817)
(declare-const var3187!1 String)
(assert true)
(define-const var3032 String (toString/-512974245 var34)) ; Statement: r6 = virtualinvoke r2.<java.net.InetAddress: java.lang.String toString()>() 
(assert true)
(define-const var1923 Int (indexOf/-1209756239 var3032 "/")) ; Statement: i0 = virtualinvoke r6.<java.lang.String: int indexOf(java.lang.String)>("/") 
(define-const var684 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto r7 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= var1923 var684)))) ; Negate: Cond: i0 != $i2  
(define-const var2579 var1817 var3868-cat) ; Statement: $r30 = <org.apache.log4j.net.SocketServer: org.apache.log4j.Logger cat> 
(define-const var1157 String String-init) ; Statement: $r37 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1157)) ; Statement: specialinvoke $r37.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1157!1 String)
(assert true)
(define-const var1941 String (append/1560614132 var1157!1 "Could not parse the inetAddress [")) ; Statement: $r31 = virtualinvoke $r37.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not parse the inetAddress [") 
(declare-const var1157!2 String)
(assert (str.prefixof var1157!1 var1157!2))
(assert true)
(define-const var83 String (append/-143899486 var1941 (cast-from-var2108-to-var3879 var34))) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r2) 
(assert true)
(define-const var166 String (append/1560614132 var83 "]. Using default hierarchy.")) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]. Using default hierarchy.") 
(declare-const var83!1 String)
(assert (str.prefixof var83 var83!1))
(assert true)
(define-const var3856 String (toString/-222306083 var166)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (warn/571735664 (cast-from-var1817-to-var533 var2579) (cast-from-String-to-var3879 var3856))) ; Statement: virtualinvoke $r30.<org.apache.log4j.Logger: void warn(java.lang.Object)>($r34) 

(declare-const var2579!1 var1817)
(declare-const var3856!1 String)
(assert true)
(define-const var2315 var360 (genericHierarchy/-1467694262 var2847)) ; Statement: $r35 = virtualinvoke r9.<org.apache.log4j.net.SocketServer: org.apache.log4j.spi.LoggerRepository genericHierarchy()>() 
 ; Statement: return $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var2108-to-var3879=([java.net.InetAddress], java.lang.Object), toString/-222306083=([java.lang.StringBuffer], java.lang.String), info/949906248=([org.apache.log4j.Category, java.lang.Object], void), cast-from-var1817-to-var533=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var3879=([java.lang.String], java.lang.Object), toString/-512974245=([java.net.InetAddress], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), warn/571735664=([org.apache.log4j.Category, java.lang.Object], void), genericHierarchy/-1467694262=([org.apache.log4j.net.SocketServer], org.apache.log4j.spi.LoggerRepository)}
; {var3868=org.apache.log4j.net.SocketServer, var2847=r9, var2108=java.net.InetAddress, var34=r2, var1817=org.apache.log4j.Logger, var1685=$r1, var3072=$r36, var1061=$r3, var3879=java.lang.Object, var779=$r4, var3187=$r5, var533=org.apache.log4j.Category, var3032=r6, var1923=i0, var684=$i2, var2579=$r30, var1157=$r37, var1941=$r31, var83=$r32, var166=$r33, var3856=$r34, var360=org.apache.log4j.spi.LoggerRepository, var2315=$r35}
; {org.apache.log4j.net.SocketServer=var3868, r9=var2847, java.net.InetAddress=var2108, r2=var34, org.apache.log4j.Logger=var1817, $r1=var1685, $r36=var3072, $r3=var1061, java.lang.Object=var3879, $r4=var779, $r5=var3187, org.apache.log4j.Category=var533, r6=var3032, i0=var1923, $i2=var684, $r30=var2579, $r37=var1157, $r31=var1941, $r32=var83, $r33=var166, $r34=var3856, org.apache.log4j.spi.LoggerRepository=var360, $r35=var2315}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.net.InetAddress: java.lang.String toString()>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 2,"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r9 := @this: org.apache.log4j.net.SocketServer;	r2 := @parameter0: java.net.InetAddress;	$r1 = <org.apache.log4j.net.SocketServer: org.apache.log4j.Logger cat>;	$r36 = new java.lang.StringBuffer;	specialinvoke $r36.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r36.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Locating configuration file for ");	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r1.<org.apache.log4j.Logger: void info(java.lang.Object)>($r5);	r6 = virtualinvoke r2.<java.net.InetAddress: java.lang.String toString()>();	i0 = virtualinvoke r6.<java.lang.String: int indexOf(java.lang.String)>("/");	$i2 = (int) -1;	if i0 != $i2 goto r7 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r30 = <org.apache.log4j.net.SocketServer: org.apache.log4j.Logger cat>;	$r37 = new java.lang.StringBuffer;	specialinvoke $r37.<java.lang.StringBuffer: void <init>()>();	$r31 = virtualinvoke $r37.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not parse the inetAddress [");	$r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r2);	$r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]. Using default hierarchy.");	$r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r30.<org.apache.log4j.Logger: void warn(java.lang.Object)>($r34);	$r35 = virtualinvoke r9.<org.apache.log4j.net.SocketServer: org.apache.log4j.spi.LoggerRepository genericHierarchy()>();	return $r35
;block_num 2