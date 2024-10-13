(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3929 0)
(declare-sort var43 0)
(declare-sort var2788 0)
(declare-sort var2767 0)
(declare-sort var407 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2788_fetchClass0/1543394096 (String Int String) var43)
(declare-fun getContentLength/1254720049 (var43) Int)
(declare-fun getInputStream/1664976517 (var43) var2767)
(declare-fun close/-190175943 (var2767) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var407 var407)
(declare-const var3228 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3228 null-String)))
(declare-const var365 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var365 null-Int)))
(declare-const var679 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var679 null-String)))
(declare-const var1239 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var1239 null-String)))
(define-const var73 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var73)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var73!1 String)
(assert (= var73!1 ""))
(assert true)
(define-const var3984 String (append/672562846 var73!1 var679)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var73!2 String)
(assert (= var73!2 (str.++ var73!1 var679)))
(assert true)
(define-const var2002 String (replace/1524665721 var1239 46 47)) ; Statement: $r4 = virtualinvoke r3.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var1757 String (append/672562846 var3984 var2002)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3984!1 String)
(assert (= var3984!1 (str.++ var3984 var2002)))
(assert true)
(define-const var1556 String (append/672562846 var1757 ".class")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var1757!1 String)
(assert (= var1757!1 (str.++ var1757 ".class")))
(assert true)
(define-const var2558 String (toString/-2075883882 var1556)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3801 var43 (var2788_fetchClass0/1543394096 var3228 var365 var2558)) ; Statement: r9 = staticinvoke <org.apache.ibatis.javassist.URLClassPath: java.net.URLConnection fetchClass0(java.lang.String,int,java.lang.String)>(r0, i0, $r8) 
(assert true)
(define-const var1581 Int (getContentLength/1254720049 var3801)) ; Statement: i1 = virtualinvoke r9.<java.net.URLConnection: int getContentLength()>() 
(assert true)
(define-const var1151 var2767 (getInputStream/1664976517 var3801)) ; Statement: r10 = virtualinvoke r9.<java.net.URLConnection: java.io.InputStream getInputStream()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1200 var407) ; Statement: $r16 := @caughtexception 
(assert (not (= var1200 null-var407)))
(assert true) ; Non Conditional
(assert true)
;(assert (close/-190175943 var1151)) ; Statement: virtualinvoke r10.<java.io.InputStream: void close()>() 

(declare-const var1151!1 var2767)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2788_fetchClass0/1543394096=([java.lang.String, int, java.lang.String], java.net.URLConnection), getContentLength/1254720049=([java.net.URLConnection], int), getInputStream/1664976517=([java.net.URLConnection], java.io.InputStream), close/-190175943=([java.io.InputStream], void)}
; {var3228=r0, var3929=null_type, var365=i0, var679=r2, var1239=r3, var73=$r1, var3984=$r5, var2002=$r4, var1757=$r6, var1556=$r7, var2558=$r8, var43=java.net.URLConnection, var2788=org.apache.ibatis.javassist.URLClassPath, var3801=r9, var1581=i1, var2767=java.io.InputStream, var1151=r10, var407=java.lang.Throwable, var1200=$r16}
; {r0=var3228, null_type=var3929, i0=var365, r2=var679, r3=var1239, $r1=var73, $r5=var3984, $r4=var2002, $r6=var1757, $r7=var1556, $r8=var2558, java.net.URLConnection=var43, org.apache.ibatis.javassist.URLClassPath=var2788, r9=var3801, i1=var1581, java.io.InputStream=var2767, r10=var1151, java.lang.Throwable=var407, $r16=var1200}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r2 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke r3.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r9 = staticinvoke <org.apache.ibatis.javassist.URLClassPath: java.net.URLConnection fetchClass0(java.lang.String,int,java.lang.String)>(r0, i0, $r8);	i1 = virtualinvoke r9.<java.net.URLConnection: int getContentLength()>();	r10 = virtualinvoke r9.<java.net.URLConnection: java.io.InputStream getInputStream()>();	$r16 := @caughtexception;	virtualinvoke r10.<java.io.InputStream: void close()>();	throw $r16
;block_num 3