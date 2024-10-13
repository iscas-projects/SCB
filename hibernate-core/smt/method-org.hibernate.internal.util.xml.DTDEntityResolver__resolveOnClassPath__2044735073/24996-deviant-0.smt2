(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1484 0)
(declare-sort var2781 0)
(declare-sort var376 0)
(declare-sort var1401 0)
(declare-sort var2959 0)
(declare-sort var1935 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun resolveInHibernateNamespace/880302857 (var1484 String) var1401)
(declare-fun var2959_debugf/585189783 (var2959 String var1935) void)
(declare-fun cast-from-String-to-var1935 (String) var1935)
(declare-fun var376-init () var376)
(declare-fun <init>/-1889831121 (var376 var1401) void)
(declare-fun setPublicId/-915846722 (var376 String) void)
(declare-fun setSystemId/1014383032 (var376 String) void)
(declare-const null-var1484 var1484)
(declare-const null-String String)
(declare-const null-var376 var376)
(declare-const null-var1401 var1401)
(declare-const var1484-LOG var2959)
(declare-const var1200 var1484) ; Statement: r7 := @this: org.hibernate.internal.util.xml.DTDEntityResolver 
(assert (not (= var1200 null-var1484)))
(declare-const var82 String) ; Statement: r11 := @parameter0: java.lang.String 
(assert (not (= var82 null-String)))
(declare-const var2617 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2617 null-String)))
(declare-const var1117 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1117 null-String)))
(define-const var1961 var376 null-var376) ; Statement: r15 = null 
(define-const var930 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var930)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var930!1 String)
(assert (= var930!1 ""))
(assert true)
(define-const var1145 String (append/672562846 var930!1 "org/hibernate/")) ; Statement: $r4 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org/hibernate/") 
(declare-const var930!2 String)
(assert (= var930!2 (str.++ var930!1 "org/hibernate/")))
(assert true)
(define-const var1022 Int (length/-134980193 var1117)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert (not (and true (and (>= var1022 0) (>= (str.len var2617) var1022)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), resolveInHibernateNamespace/880302857=([org.hibernate.internal.util.xml.DTDEntityResolver, java.lang.String], java.io.InputStream), var2959_debugf/585189783=([org.hibernate.internal.CoreMessageLogger, java.lang.String, java.lang.Object], void), cast-from-String-to-var1935=([java.lang.String], java.lang.Object), var376-init=([], org.xml.sax.InputSource), <init>/-1889831121=([org.xml.sax.InputSource, java.io.InputStream], void), setPublicId/-915846722=([org.xml.sax.InputSource, java.lang.String], void), setSystemId/1014383032=([org.xml.sax.InputSource, java.lang.String], void)}
; {var1484=org.hibernate.internal.util.xml.DTDEntityResolver, var1200=r7, var82=r11, var2781=null_type, var2617=r1, var1117=r2, var376=org.xml.sax.InputSource, var1961=r15, var930=$r16, var1145=$r4, var1022=$i0, var65=$r3, var102=$r5, var2559=r6, var1401=java.io.InputStream, var2596=r8, var2959=org.hibernate.internal.CoreMessageLogger, var663=$r9, var1935=java.lang.Object, var3181="Located [%s] in classpath", var3599=$r17}
; {org.hibernate.internal.util.xml.DTDEntityResolver=var1484, r7=var1200, r11=var82, null_type=var2781, r1=var2617, r2=var1117, org.xml.sax.InputSource=var376, r15=var1961, $r16=var930, $r4=var1145, $i0=var1022, $r3=var65, $r5=var102, r6=var2559, java.io.InputStream=var1401, r8=var2596, org.hibernate.internal.CoreMessageLogger=var2959, $r9=var663, java.lang.Object=var1935, "Located [%s] in classpath"=var3181, $r17=var3599}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.internal.util.xml.DTDEntityResolver;	r11 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r15 = null;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org/hibernate/");	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r8 = virtualinvoke r7.<org.hibernate.internal.util.xml.DTDEntityResolver: java.io.InputStream resolveInHibernateNamespace(java.lang.String)>(r6);	if r8 != null goto $r9 = <org.hibernate.internal.util.xml.DTDEntityResolver: org.hibernate.internal.CoreMessageLogger LOG>;	$r9 = <org.hibernate.internal.util.xml.DTDEntityResolver: org.hibernate.internal.CoreMessageLogger LOG>;	interfaceinvoke $r9.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object)>("Located [%s] in classpath", r1);	$r17 = new org.xml.sax.InputSource;	specialinvoke $r17.<org.xml.sax.InputSource: void <init>(java.io.InputStream)>(r8);	r15 = $r17;	virtualinvoke $r17.<org.xml.sax.InputSource: void setPublicId(java.lang.String)>(r11);	virtualinvoke $r17.<org.xml.sax.InputSource: void setSystemId(java.lang.String)>(r1);	return r15
;block_num 3