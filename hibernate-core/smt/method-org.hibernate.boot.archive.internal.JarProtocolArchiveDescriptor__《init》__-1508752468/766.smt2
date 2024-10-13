(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2913 0)
(declare-sort var1176 0)
(declare-sort var3516 0)
(declare-sort var544 0)
(declare-sort var1857 0)
(declare-sort var3661 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1857) void)
(declare-fun cast-from-var2913-to-var1857 (var2913) var1857)
(declare-fun getFile/10099890 (var3516) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3661-init () var3661)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1857) String)
(declare-fun cast-from-var3516-to-var1857 (var3516) var1857)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var3661 String) void)
(declare-const null-var2913 var2913)
(declare-const null-var1176 var1176)
(declare-const null-var3516 var3516)
(declare-const null-String String)
(declare-const var3868 var2913) ; Statement: r0 := @this: org.hibernate.boot.archive.internal.JarProtocolArchiveDescriptor 
(assert (not (= var3868 null-var2913)))
(declare-const var2058 var1176) ; Statement: r3 := @parameter0: org.hibernate.boot.archive.spi.ArchiveDescriptorFactory 
(assert (not (= var2058 null-var1176)))
(declare-const var1729 var3516) ; Statement: r2 := @parameter1: java.net.URL 
(assert (not (= var1729 null-var3516)))
(declare-const var346 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var346 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2913-to-var1857 var3868))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3868!1 var2913)
 ; Statement: if r1 == null goto $r11 = virtualinvoke r2.<java.net.URL: java.lang.String getFile()>() 
(assert (= var346 null-String)) ; Cond: r1 == null 
(assert true)
(define-const var2677 String (getFile/10099890 var1729)) ; Statement: $r11 = virtualinvoke r2.<java.net.URL: java.lang.String getFile()>() 
(assert true)
(define-const var2875 Int (lastIndexOf/-1292097097 var2677 33)) ; Statement: $i4 = virtualinvoke $r11.<java.lang.String: int lastIndexOf(int)>(33) 
(define-const var1423 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if $i4 != $i6 goto $i1 = $i4 + 1 
(assert (not (not (= var2875 var1423)))) ; Negate: Cond: $i4 != $i6  
(define-const var1287 var3661 var3661-init) ; Statement: $r21 = new org.hibernate.AssertionFailure 
(define-const var1954 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1954)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1954!1 String)
(assert (= var1954!1 ""))
(assert true)
(define-const var235 String (append/672562846 var1954!1 "JAR URL does not contain \u0027!/\u0027 :")) ; Statement: $r8 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JAR URL does not contain \'!/\' :") 
(declare-const var1954!2 String)
(assert (= var1954!2 (str.++ var1954!1 "JAR URL does not contain \u0027!/\u0027 :")))
(assert true)
(define-const var3133 String (append/-1031950772 var235 (cast-from-var3516-to-var1857 var1729))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var235!1 String)
(assert (str.prefixof var235 var235!1))
(assert true)
(define-const var2409 String (toString/-2075883882 var3133)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var1287 var2409)) ; Statement: specialinvoke $r21.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r10) 

(declare-const var1287!1 var3661)
(declare-const var2409!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2913-to-var1857=([org.hibernate.boot.archive.internal.JarProtocolArchiveDescriptor], java.lang.Object), getFile/10099890=([java.net.URL], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var3661-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3516-to-var1857=([java.net.URL], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var2913=org.hibernate.boot.archive.internal.JarProtocolArchiveDescriptor, var3868=r0, var1176=org.hibernate.boot.archive.spi.ArchiveDescriptorFactory, var2058=r3, var3516=java.net.URL, var1729=r2, var346=r1, var544=null_type, var1857=java.lang.Object, var2677=$r11, var2875=$i4, var1423=$i6, var3661=org.hibernate.AssertionFailure, var1287=$r21, var1954=$r20, var235=$r8, var3133=$r9, var2409=$r10}
; {org.hibernate.boot.archive.internal.JarProtocolArchiveDescriptor=var2913, r0=var3868, org.hibernate.boot.archive.spi.ArchiveDescriptorFactory=var1176, r3=var2058, java.net.URL=var3516, r2=var1729, r1=var346, null_type=var544, java.lang.Object=var1857, $r11=var2677, $i4=var2875, $i6=var1423, org.hibernate.AssertionFailure=var3661, $r21=var1287, $r20=var1954, $r8=var235, $r9=var3133, $r10=var2409}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.archive.internal.JarProtocolArchiveDescriptor;	r3 := @parameter0: org.hibernate.boot.archive.spi.ArchiveDescriptorFactory;	r2 := @parameter1: java.net.URL;	r1 := @parameter2: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	if r1 == null goto $r11 = virtualinvoke r2.<java.net.URL: java.lang.String getFile()>();	$r11 = virtualinvoke r2.<java.net.URL: java.lang.String getFile()>();	$i4 = virtualinvoke $r11.<java.lang.String: int lastIndexOf(int)>(33);	$i6 = (int) -1;	if $i4 != $i6 goto $i1 = $i4 + 1;	$r21 = new org.hibernate.AssertionFailure;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JAR URL does not contain \'!/\' :");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r10);	throw $r21
;block_num 3