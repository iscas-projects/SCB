(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var654 0)
(declare-sort var797 0)
(declare-sort var2778 0)
(declare-sort var653 0)
(declare-sort var113 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2778-init () var2778)
(declare-fun server/2127040199 (var654) String)
(declare-fun port/2127040199 (var654) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1884135189 (var2778 String String Int String) void)
(declare-fun openConnection/1646032697 (var2778) var653)
(declare-fun connect/257033325 (var653) void)
(declare-fun getContentLength/1254720049 (var653) Int)
(declare-fun getInputStream/1664976517 (var653) var113)
(declare-fun readStream/1194823294 (var654 var113) (Array Int Int))
(declare-fun close/-190175943 (var113) void)
(declare-const null-var654 var654)
(declare-const null-String String)
(declare-const var3212 var654) ; Statement: r1 := @this: org.apache.ibatis.javassist.tools.web.Viewer 
(assert (not (= var3212 null-var654)))
(declare-const var182 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var182 null-String)))
(define-const var1321 var2778 var2778-init) ; Statement: $r0 = new java.net.URL 
(define-const var1559 String (server/2127040199 var3212)) ; Statement: $r3 = r1.<org.apache.ibatis.javassist.tools.web.Viewer: java.lang.String server> 
(define-const var466 Int (port/2127040199 var3212)) ; Statement: $i0 = r1.<org.apache.ibatis.javassist.tools.web.Viewer: int port> 
(define-const var1201 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1201)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1201!1 String)
(assert (= var1201!1 ""))
(assert true)
(define-const var1298 String (append/672562846 var1201!1 "/")) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var1201!2 String)
(assert (= var1201!2 (str.++ var1201!1 "/")))
(assert true)
(define-const var1553 String (replace/1524665721 var182 46 47)) ; Statement: $r5 = virtualinvoke r4.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var583 String (append/672562846 var1298 var1553)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1298!1 String)
(assert (= var1298!1 (str.++ var1298 var1553)))
(assert true)
(define-const var454 String (append/672562846 var583 ".class")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var583!1 String)
(assert (= var583!1 (str.++ var583 ".class")))
(assert true)
(define-const var2885 String (toString/-2075883882 var454)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1884135189 var1321 "http" var1559 var466 var2885)) ; Statement: specialinvoke $r0.<java.net.URL: void <init>(java.lang.String,java.lang.String,int,java.lang.String)>("http", $r3, $i0, $r9) 

(declare-const var1321!1 var2778)
(declare-const var2241 String)
(declare-const var1559!1 String)
(declare-const var466!1 Int)
(declare-const var2885!1 String)
(assert true)
(define-const var3155 var653 (openConnection/1646032697 var1321!1)) ; Statement: r10 = virtualinvoke $r0.<java.net.URL: java.net.URLConnection openConnection()>() 
(assert true)
;(assert (connect/257033325 var3155)) ; Statement: virtualinvoke r10.<java.net.URLConnection: void connect()>() 

(declare-const var3155!1 var653)
(assert true)
(define-const var704 Int (getContentLength/1254720049 var3155!1)) ; Statement: i1 = virtualinvoke r10.<java.net.URLConnection: int getContentLength()>() 
(assert true)
(define-const var3491 var113 (getInputStream/1664976517 var3155!1)) ; Statement: r11 = virtualinvoke r10.<java.net.URLConnection: java.io.InputStream getInputStream()>() 
 ; Statement: if i1 > 0 goto r17 = newarray (byte)[i1] 
(assert (not (> var704 0))) ; Negate: Cond: i1 > 0  
(assert true)
(define-const var3148 (Array Int Int) (readStream/1194823294 var3212 var3491)) ; Statement: r17 = specialinvoke r1.<org.apache.ibatis.javassist.tools.web.Viewer: byte[] readStream(java.io.InputStream)>(r11) 
 ; Statement: goto [?= virtualinvoke r11.<java.io.InputStream: void close()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (close/-190175943 var3491)) ; Statement: virtualinvoke r11.<java.io.InputStream: void close()>() 

(declare-const var3491!1 var113)
 ; Statement: return r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var2778-init=([], java.net.URL), server/2127040199=([org.apache.ibatis.javassist.tools.web.Viewer], java.lang.String), port/2127040199=([org.apache.ibatis.javassist.tools.web.Viewer], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1884135189=([java.net.URL, java.lang.String, java.lang.String, int, java.lang.String], void), openConnection/1646032697=([java.net.URL], java.net.URLConnection), connect/257033325=([java.net.URLConnection], void), getContentLength/1254720049=([java.net.URLConnection], int), getInputStream/1664976517=([java.net.URLConnection], java.io.InputStream), readStream/1194823294=([org.apache.ibatis.javassist.tools.web.Viewer, java.io.InputStream], byte[]), close/-190175943=([java.io.InputStream], void)}
; {var654=org.apache.ibatis.javassist.tools.web.Viewer, var3212=r1, var182=r4, var797=null_type, var2778=java.net.URL, var1321=$r0, var1559=$r3, var466=$i0, var1201=$r2, var1298=$r6, var1553=$r5, var583=$r7, var454=$r8, var2885=$r9, var2241="http", var653=java.net.URLConnection, var3155=r10, var704=i1, var113=java.io.InputStream, var3491=r11, var3148=r17}
; {org.apache.ibatis.javassist.tools.web.Viewer=var654, r1=var3212, r4=var182, null_type=var797, java.net.URL=var2778, $r0=var1321, $r3=var1559, $i0=var466, $r2=var1201, $r6=var1298, $r5=var1553, $r7=var583, $r8=var454, $r9=var2885, "http"=var2241, java.net.URLConnection=var653, r10=var3155, i1=var704, java.io.InputStream=var113, r11=var3491, r17=var3148}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.tools.web.Viewer;	r4 := @parameter0: java.lang.String;	$r0 = new java.net.URL;	$r3 = r1.<org.apache.ibatis.javassist.tools.web.Viewer: java.lang.String server>;	$i0 = r1.<org.apache.ibatis.javassist.tools.web.Viewer: int port>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r5 = virtualinvoke r4.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.net.URL: void <init>(java.lang.String,java.lang.String,int,java.lang.String)>("http", $r3, $i0, $r9);	r10 = virtualinvoke $r0.<java.net.URL: java.net.URLConnection openConnection()>();	virtualinvoke r10.<java.net.URLConnection: void connect()>();	i1 = virtualinvoke r10.<java.net.URLConnection: int getContentLength()>();	r11 = virtualinvoke r10.<java.net.URLConnection: java.io.InputStream getInputStream()>();	if i1 > 0 goto r17 = newarray (byte)[i1];	r17 = specialinvoke r1.<org.apache.ibatis.javassist.tools.web.Viewer: byte[] readStream(java.io.InputStream)>(r11);	goto [?= virtualinvoke r11.<java.io.InputStream: void close()>()];	virtualinvoke r11.<java.io.InputStream: void close()>();	return r17
;block_num 3