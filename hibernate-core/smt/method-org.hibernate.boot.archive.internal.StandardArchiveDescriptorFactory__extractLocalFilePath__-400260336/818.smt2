(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var377 0)
(declare-sort var2367 0)
(declare-sort var2498 0)
(declare-sort var1783 0)
(declare-sort var1982 0)
(declare-sort var3624 0)
(declare-sort var1617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFile/10099890 (var2367) String)
(declare-fun var1982-init () var1982)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3624) String)
(declare-fun cast-from-var2367-to-var3624 (var2367) var3624)
(declare-fun getMessage/-698202024 (var1783) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var1982 String var1617) void)
(declare-fun cast-from-var1783-to-var1617 (var1783) var1617)
(declare-const null-var377 var377)
(declare-const null-var2367 var2367)
(declare-const null-String String)
(declare-const null-var1783 var1783)
(declare-const var3930 var377) ; Statement: r13 := @this: org.hibernate.boot.archive.internal.StandardArchiveDescriptorFactory 
(assert (not (= var3930 null-var377)))
(declare-const var436 var2367) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var436 null-var2367)))
(assert true)
(define-const var551 String (getFile/10099890 var436)) ; Statement: r1 = virtualinvoke r0.<java.net.URL: java.lang.String getFile()>() 
 ; Statement: if r1 == null goto $r2 = virtualinvoke r0.<java.net.URL: java.net.URI toURI()>() 
(assert (not (= var551 null-String))) ; Negate: Cond: r1 == null  
(declare-const var2327 var1783) ; Statement: $r4 := @caughtexception 
(assert (not (= var2327 null-var1783)))
(define-const var3635 var1982 var1982-init) ; Statement: $r15 = new java.lang.IllegalArgumentException 
(define-const var652 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var652)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var652!1 String)
(assert (= var652!1 ""))
(assert true)
(define-const var1826 String (append/672562846 var652!1 "Unable to visit JAR ")) ; Statement: $r7 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to visit JAR ") 
(declare-const var652!2 String)
(assert (= var652!2 (str.++ var652!1 "Unable to visit JAR ")))
(assert true)
(define-const var140 String (append/-1031950772 var1826 (cast-from-var2367-to-var3624 var436))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1826!1 String)
(assert (str.prefixof var1826 var1826!1))
(assert true)
(define-const var1921 String (append/672562846 var140 ". Cause: ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Cause: ") 
(declare-const var140!1 String)
(assert (= var140!1 (str.++ var140 ". Cause: ")))
(assert true)
(define-const var1620 String (getMessage/-698202024 var2327)) ; Statement: $r9 = virtualinvoke $r4.<java.net.URISyntaxException: java.lang.String getMessage()>() 
(assert true)
(define-const var3299 String (append/672562846 var1921 var1620)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1921!1 String)
(assert (= var1921!1 (str.++ var1921 var1620)))
(assert true)
(define-const var1437 String (toString/-2075883882 var3299)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var3635 var1437 (cast-from-var1783-to-var1617 var2327))) ; Statement: specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r4) 

(declare-const var3635!1 var1982)
(declare-const var1437!1 String)
(declare-const var2327!1 var1783)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getFile/10099890=([java.net.URL], java.lang.String), var1982-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2367-to-var3624=([java.net.URL], java.lang.Object), getMessage/-698202024=([java.net.URISyntaxException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var1783-to-var1617=([java.net.URISyntaxException], java.lang.Throwable)}
; {var377=org.hibernate.boot.archive.internal.StandardArchiveDescriptorFactory, var3930=r13, var2367=java.net.URL, var436=r0, var551=r1, var2498=null_type, var1783=java.net.URISyntaxException, var2327=$r4, var1982=java.lang.IllegalArgumentException, var3635=$r15, var652=$r14, var1826=$r7, var3624=java.lang.Object, var140=$r8, var1921=$r10, var1620=$r9, var3299=$r11, var1437=$r12, var1617=java.lang.Throwable}
; {org.hibernate.boot.archive.internal.StandardArchiveDescriptorFactory=var377, r13=var3930, java.net.URL=var2367, r0=var436, r1=var551, null_type=var2498, java.net.URISyntaxException=var1783, $r4=var2327, java.lang.IllegalArgumentException=var1982, $r15=var3635, $r14=var652, $r7=var1826, java.lang.Object=var3624, $r8=var140, $r10=var1921, $r9=var1620, $r11=var3299, $r12=var1437, java.lang.Throwable=var1617}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: org.hibernate.boot.archive.internal.StandardArchiveDescriptorFactory;	r0 := @parameter0: java.net.URL;	r1 = virtualinvoke r0.<java.net.URL: java.lang.String getFile()>();	if r1 == null goto $r2 = virtualinvoke r0.<java.net.URL: java.net.URI toURI()>();	$r4 := @caughtexception;	$r15 = new java.lang.IllegalArgumentException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to visit JAR ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Cause: ");	$r9 = virtualinvoke $r4.<java.net.URISyntaxException: java.lang.String getMessage()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r4);	throw $r15
;block_num 2