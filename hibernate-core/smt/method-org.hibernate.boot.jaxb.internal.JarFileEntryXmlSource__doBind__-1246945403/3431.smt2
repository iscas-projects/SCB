(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2370 0)
(declare-sort var3937 0)
(declare-sort var2031 0)
(declare-sort var3393 0)
(declare-sort var1581 0)
(declare-sort var2649 0)
(declare-sort var3778 0)
(declare-sort var538 0)
(declare-sort var2849 0)
(declare-sort var1469 0)
(declare-sort var2386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jarFile/-746459683 (var2370) var2031)
(declare-fun jarFileEntry/-746459683 (var2370) var3393)
(declare-fun var2649-init () var2649)
(declare-fun arr-var3778-init () (Array Int var3778))
(declare-fun getName/1935952125 (var538) String)
(declare-fun cast-from-var2031-to-var538 (var2031) var538)
(declare-fun cast-from-String-to-var3778 (String) var3778)
(declare-fun getName/726562231 (var3393) String)
(declare-fun String_format/1339386452 (String (Array Int var3778)) String)
(declare-fun getOrigin/-1251783327 (var1469) var2849)
(declare-fun cast-from-var2370-to-var1469 (var2370) var1469)
(declare-fun <init>/1227528494 (var2649 String var2386 var2849) void)
(declare-fun cast-from-var1581-to-var2386 (var1581) var2386)
(declare-fun cast-from-var2649-to-var2386 (var2649) var2386)
(declare-const null-var2370 var2370)
(declare-const null-var3937 var3937)
(declare-const null-var1581 var1581)
(declare-const null-__Array__Int__var3778__ (Array Int var3778))
(declare-const var2892 var2370) ; Statement: r0 := @this: org.hibernate.boot.jaxb.internal.JarFileEntryXmlSource 
(assert (not (= var2892 null-var2370)))
(declare-const var2015 var3937) ; Statement: r4 := @parameter0: org.hibernate.boot.jaxb.spi.Binder 
(assert (not (= var2015 null-var3937)))
(define-const var303 var2031 (jarFile/-746459683 var2892)) ; Statement: $r2 = r0.<org.hibernate.boot.jaxb.internal.JarFileEntryXmlSource: java.util.jar.JarFile jarFile> 
(define-const var1115 var3393 (jarFileEntry/-746459683 var2892)) ; Statement: $r1 = r0.<org.hibernate.boot.jaxb.internal.JarFileEntryXmlSource: java.util.zip.ZipEntry jarFileEntry> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var950 var1581) ; Statement: $r7 := @caughtexception 
(assert (not (= var950 null-var1581)))
(define-const var492 var2649 var2649-init) ; Statement: $r16 = new org.hibernate.boot.MappingException 
(define-const var752 (Array Int var3778) arr-var3778-init) ; Statement: $r9 = newarray (java.lang.Object)[2] 
(define-const var1 var2031 (jarFile/-746459683 var2892)) ; Statement: $r10 = r0.<org.hibernate.boot.jaxb.internal.JarFileEntryXmlSource: java.util.jar.JarFile jarFile> 
(assert true)
(define-const var3134 String (getName/1935952125 (cast-from-var2031-to-var538 var1))) ; Statement: $r11 = virtualinvoke $r10.<java.util.jar.JarFile: java.lang.String getName()>() 
(declare-const var752!1 (Array Int var3778))
(assert (not (= var752!1 null-__Array__Int__var3778__)))
(assert (= (select var752!1 0) (cast-from-String-to-var3778 var3134))) ; Statement: $r9[0] = $r11 
(define-const var1174 var3393 (jarFileEntry/-746459683 var2892)) ; Statement: $r12 = r0.<org.hibernate.boot.jaxb.internal.JarFileEntryXmlSource: java.util.zip.ZipEntry jarFileEntry> 
(assert true)
(define-const var2028 String (getName/726562231 var1174)) ; Statement: $r13 = virtualinvoke $r12.<java.util.zip.ZipEntry: java.lang.String getName()>() 
(declare-const var752!2 (Array Int var3778))
(assert (not (= var752!2 null-__Array__Int__var3778__)))
(assert (= (select var752!2 1) (cast-from-String-to-var3778 var2028))) ; Statement: $r9[1] = $r13 
(define-const var2829 String (String_format/1339386452 "Unable to open InputStream for jar file entry [%s : %s]" var752!2)) ; Statement: $r15 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to open InputStream for jar file entry [%s : %s]", $r9) 
(assert true)
(define-const var2949 var2849 (getOrigin/-1251783327 (cast-from-var2370-to-var1469 var2892))) ; Statement: $r14 = virtualinvoke r0.<org.hibernate.boot.jaxb.internal.JarFileEntryXmlSource: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/1227528494 var492 var2829 (cast-from-var1581-to-var2386 var950) var2949)) ; Statement: specialinvoke $r16.<org.hibernate.boot.MappingException: void <init>(java.lang.String,java.lang.Throwable,org.hibernate.boot.jaxb.Origin)>($r15, $r7, $r14) 

(declare-const var492!1 var2649)
(declare-const var2829!1 String)
(declare-const var950!1 var1581)
(declare-const var2949!1 var2849)
(define-const var1642 var2386 (cast-from-var2649-to-var2386 var492!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {jarFile/-746459683=([org.hibernate.boot.jaxb.internal.JarFileEntryXmlSource], java.util.jar.JarFile), jarFileEntry/-746459683=([org.hibernate.boot.jaxb.internal.JarFileEntryXmlSource], java.util.zip.ZipEntry), var2649-init=([], org.hibernate.boot.MappingException), arr-var3778-init=([], java.lang.Object[]), getName/1935952125=([java.util.zip.ZipFile], java.lang.String), cast-from-var2031-to-var538=([java.util.jar.JarFile], java.util.zip.ZipFile), cast-from-String-to-var3778=([java.lang.String], java.lang.Object), getName/726562231=([java.util.zip.ZipEntry], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), getOrigin/-1251783327=([org.hibernate.boot.jaxb.spi.XmlSource], org.hibernate.boot.jaxb.Origin), cast-from-var2370-to-var1469=([org.hibernate.boot.jaxb.internal.JarFileEntryXmlSource], org.hibernate.boot.jaxb.spi.XmlSource), <init>/1227528494=([org.hibernate.boot.MappingException, java.lang.String, java.lang.Throwable, org.hibernate.boot.jaxb.Origin], void), cast-from-var1581-to-var2386=([java.io.IOException], java.lang.Throwable), cast-from-var2649-to-var2386=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var2370=org.hibernate.boot.jaxb.internal.JarFileEntryXmlSource, var2892=r0, var3937=org.hibernate.boot.jaxb.spi.Binder, var2015=r4, var2031=java.util.jar.JarFile, var303=$r2, var3393=java.util.zip.ZipEntry, var1115=$r1, var1581=java.io.IOException, var950=$r7, var2649=org.hibernate.boot.MappingException, var492=$r16, var3778=java.lang.Object, var752=$r9, var1=$r10, var538=java.util.zip.ZipFile, var3134=$r11, var1174=$r12, var2028=$r13, var2829=$r15, var2849=org.hibernate.boot.jaxb.Origin, var1469=org.hibernate.boot.jaxb.spi.XmlSource, var2949=$r14, var2386=java.lang.Throwable, var1642=$r17}
; {org.hibernate.boot.jaxb.internal.JarFileEntryXmlSource=var2370, r0=var2892, org.hibernate.boot.jaxb.spi.Binder=var3937, r4=var2015, java.util.jar.JarFile=var2031, $r2=var303, java.util.zip.ZipEntry=var3393, $r1=var1115, java.io.IOException=var1581, $r7=var950, org.hibernate.boot.MappingException=var2649, $r16=var492, java.lang.Object=var3778, $r9=var752, $r10=var1, java.util.zip.ZipFile=var538, $r11=var3134, $r12=var1174, $r13=var2028, $r15=var2829, org.hibernate.boot.jaxb.Origin=var2849, org.hibernate.boot.jaxb.spi.XmlSource=var1469, $r14=var2949, java.lang.Throwable=var2386, $r17=var1642}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.jaxb.internal.JarFileEntryXmlSource;	r4 := @parameter0: org.hibernate.boot.jaxb.spi.Binder;	$r2 = r0.<org.hibernate.boot.jaxb.internal.JarFileEntryXmlSource: java.util.jar.JarFile jarFile>;	$r1 = r0.<org.hibernate.boot.jaxb.internal.JarFileEntryXmlSource: java.util.zip.ZipEntry jarFileEntry>;	$r7 := @caughtexception;	$r16 = new org.hibernate.boot.MappingException;	$r9 = newarray (java.lang.Object)[2];	$r10 = r0.<org.hibernate.boot.jaxb.internal.JarFileEntryXmlSource: java.util.jar.JarFile jarFile>;	$r11 = virtualinvoke $r10.<java.util.jar.JarFile: java.lang.String getName()>();	$r9[0] = $r11;	$r12 = r0.<org.hibernate.boot.jaxb.internal.JarFileEntryXmlSource: java.util.zip.ZipEntry jarFileEntry>;	$r13 = virtualinvoke $r12.<java.util.zip.ZipEntry: java.lang.String getName()>();	$r9[1] = $r13;	$r15 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to open InputStream for jar file entry [%s : %s]", $r9);	$r14 = virtualinvoke r0.<org.hibernate.boot.jaxb.internal.JarFileEntryXmlSource: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r16.<org.hibernate.boot.MappingException: void <init>(java.lang.String,java.lang.Throwable,org.hibernate.boot.jaxb.Origin)>($r15, $r7, $r14);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 2