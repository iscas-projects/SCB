(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var999 0)
(declare-sort var3592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun orgServername/903901612 (var999) String)
(declare-fun orgPort/903901612 (var999) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun lookupCommand/903901612 (var999) (Array Int Int))
(declare-fun rmiCommand/903901612 (var999) (Array Int Int))
(declare-fun servername/903901612 (var999) String)
(declare-fun port/903901612 (var999) Int)
(declare-const null-var999 var999)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3120 var999) ; Statement: r1 := @this: org.apache.ibatis.javassist.tools.rmi.ObjectImporter 
(assert (not (= var3120 null-var999)))
(declare-const var826 String) ; Statement: r16 := @parameter0: java.lang.String 
(assert (not (= var826 null-String)))
(declare-const var1851 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1851 null-Int)))
(define-const var2333 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2333)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2333!1 String)
(assert (= var2333!1 ""))
(assert true)
(define-const var102 String (append/672562846 var2333!1 "POST http://")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("POST http://") 
(declare-const var2333!2 String)
(assert (= var2333!2 (str.++ var2333!1 "POST http://")))
(define-const var577 String (orgServername/903901612 var3120)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: java.lang.String orgServername> 
(assert true)
(define-const var79 String (append/672562846 var102 var577)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var102!1 String)
(assert (= var102!1 (str.++ var102 var577)))
(assert true)
(define-const var1028 String (append/672562846 var79 ":")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var79!1 String)
(assert (= var79!1 (str.++ var79 ":")))
(define-const var2490 Int (orgPort/903901612 var3120)) ; Statement: $i0 = r1.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: int orgPort> 
(assert true)
(define-const var818 String (append/-1001720160 var1028 var2490)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1028!1 String)
(assert (str.prefixof var1028 var1028!1))
(assert true)
(define-const var1025 String (toString/-2075883882 var818)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1786 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1786)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1786!1 String)
(assert (= var1786!1 ""))
(assert true)
(define-const var673 String (append/672562846 var1786!1 var1025)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1786!2 String)
(assert (= var1786!2 (str.++ var1786!1 var1025)))
(assert true)
(define-const var2662 String (append/672562846 var673 "/lookup HTTP/1.0")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/lookup HTTP/1.0") 
(declare-const var673!1 String)
(assert (= var673!1 (str.++ var673 "/lookup HTTP/1.0")))
(assert true)
(define-const var2631 String (toString/-2075883882 var2662)) ; Statement: r17 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var442 (Array Int Int) (getBytes/1068683673 var2631)) ; Statement: $r11 = virtualinvoke r17.<java.lang.String: byte[] getBytes()>() 
(declare-const var3120!1 var999)
(assert (not (= var3120!1 null-var999)))
(assert (= (lookupCommand/903901612 var3120!1) var442)) ; Statement: r1.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: byte[] lookupCommand> = $r11 
(define-const var1905 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1905)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1905!1 String)
(assert (= var1905!1 ""))
(assert true)
(define-const var2532 String (append/672562846 var1905!1 var1025)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1905!2 String)
(assert (= var1905!2 (str.++ var1905!1 var1025)))
(assert true)
(define-const var2929 String (append/672562846 var2532 "/rmi HTTP/1.0")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/rmi HTTP/1.0") 
(declare-const var2532!1 String)
(assert (= var2532!1 (str.++ var2532 "/rmi HTTP/1.0")))
(assert true)
(define-const var566 String (toString/-2075883882 var2929)) ; Statement: r18 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3643 (Array Int Int) (getBytes/1068683673 var566)) ; Statement: $r15 = virtualinvoke r18.<java.lang.String: byte[] getBytes()>() 
(declare-const var3120!2 var999)
(assert (not (= var3120!2 null-var999)))
(assert (= (rmiCommand/903901612 var3120!2) var3643)) ; Statement: r1.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: byte[] rmiCommand> = $r15 
(declare-const var3120!3 var999)
(assert (not (= var3120!3 null-var999)))
(assert (= (servername/903901612 var3120!3) var826)) ; Statement: r1.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: java.lang.String servername> = r16 
(declare-const var3120!4 var999)
(assert (not (= var3120!4 null-var999)))
(assert (= (port/903901612 var3120!4) var1851)) ; Statement: r1.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: int port> = i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), orgServername/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], java.lang.String), orgPort/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), lookupCommand/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], byte[]), rmiCommand/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], byte[]), servername/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], java.lang.String), port/903901612=([org.apache.ibatis.javassist.tools.rmi.ObjectImporter], int)}
; {var999=org.apache.ibatis.javassist.tools.rmi.ObjectImporter, var3120=r1, var826=r16, var3592=null_type, var1851=i1, var2333=$r0, var102=$r3, var577=$r2, var79=$r4, var1028=$r5, var2490=$i0, var818=$r6, var1025=r7, var1786=$r8, var673=$r9, var2662=$r10, var2631=r17, var442=$r11, var1905=$r12, var2532=$r13, var2929=$r14, var566=r18, var3643=$r15}
; {org.apache.ibatis.javassist.tools.rmi.ObjectImporter=var999, r1=var3120, r16=var826, null_type=var3592, i1=var1851, $r0=var2333, $r3=var102, $r2=var577, $r4=var79, $r5=var1028, $i0=var2490, $r6=var818, r7=var1025, $r8=var1786, $r9=var673, $r10=var2662, r17=var2631, $r11=var442, $r12=var1905, $r13=var2532, $r14=var2929, r18=var566, $r15=var3643}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: byte[] getBytes()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: byte[] getBytes()>": 2}
;stmts r1 := @this: org.apache.ibatis.javassist.tools.rmi.ObjectImporter;	r16 := @parameter0: java.lang.String;	i1 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("POST http://");	$r2 = r1.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: java.lang.String orgServername>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i0 = r1.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: int orgPort>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/lookup HTTP/1.0");	r17 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke r17.<java.lang.String: byte[] getBytes()>();	r1.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: byte[] lookupCommand> = $r11;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/rmi HTTP/1.0");	r18 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke r18.<java.lang.String: byte[] getBytes()>();	r1.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: byte[] rmiCommand> = $r15;	r1.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: java.lang.String servername> = r16;	r1.<org.apache.ibatis.javassist.tools.rmi.ObjectImporter: int port> = i1;	return
;block_num 1