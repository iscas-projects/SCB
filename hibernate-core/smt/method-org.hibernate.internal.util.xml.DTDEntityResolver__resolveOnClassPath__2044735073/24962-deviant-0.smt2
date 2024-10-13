(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2054 0)
(declare-sort var1654 0)
(declare-sort var1021 0)
(declare-sort var898 0)
(declare-sort var1148 0)
(declare-sort var1271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun resolveInHibernateNamespace/880302857 (var2054 String) var898)
(declare-fun var1148_debugf/585189783 (var1148 String var1271) void)
(declare-fun cast-from-String-to-var1271 (String) var1271)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2054 var2054)
(declare-const null-String String)
(declare-const null-var1021 var1021)
(declare-const null-var898 var898)
(declare-const var2054-LOG var1148)
(declare-const var3901 var2054) ; Statement: r7 := @this: org.hibernate.internal.util.xml.DTDEntityResolver 
(assert (not (= var3901 null-var2054)))
(declare-const var1464 String) ; Statement: r11 := @parameter0: java.lang.String 
(assert (not (= var1464 null-String)))
(declare-const var2734 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2734 null-String)))
(declare-const var1700 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1700 null-String)))
(define-const var2944 var1021 null-var1021) ; Statement: r15 = null 
(define-const var2140 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2140)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2140!1 String)
(assert (= var2140!1 ""))
(assert true)
(define-const var1917 String (append/672562846 var2140!1 "org/hibernate/")) ; Statement: $r4 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org/hibernate/") 
(declare-const var2140!2 String)
(assert (= var2140!2 (str.++ var2140!1 "org/hibernate/")))
(assert true)
(define-const var3552 Int (length/-134980193 var1700)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert (not (and true (and (>= var3552 0) (>= (str.len var2734) var3552)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), resolveInHibernateNamespace/880302857=([org.hibernate.internal.util.xml.DTDEntityResolver, java.lang.String], java.io.InputStream), var1148_debugf/585189783=([org.hibernate.internal.CoreMessageLogger, java.lang.String, java.lang.Object], void), cast-from-String-to-var1271=([java.lang.String], java.lang.Object), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var2054=org.hibernate.internal.util.xml.DTDEntityResolver, var3901=r7, var1464=r11, var1654=null_type, var2734=r1, var1700=r2, var1021=org.xml.sax.InputSource, var2944=r15, var2140=$r16, var1917=$r4, var3552=$i0, var3195=$r3, var2749=$r5, var677=r6, var898=java.io.InputStream, var3589=r8, var1148=org.hibernate.internal.CoreMessageLogger, var371=$r12, var1271=java.lang.Object, var1475="Unable to locate [%s] on classpath", var1548=$i1, var2312=$r13, var749=$i2, var580=$i4}
; {org.hibernate.internal.util.xml.DTDEntityResolver=var2054, r7=var3901, r11=var1464, null_type=var1654, r1=var2734, r2=var1700, org.xml.sax.InputSource=var1021, r15=var2944, $r16=var2140, $r4=var1917, $i0=var3552, $r3=var3195, $r5=var2749, r6=var677, java.io.InputStream=var898, r8=var3589, org.hibernate.internal.CoreMessageLogger=var1148, $r12=var371, java.lang.Object=var1271, "Unable to locate [%s] on classpath"=var1475, $i1=var1548, $r13=var2312, $i2=var749, $i4=var580}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r7 := @this: org.hibernate.internal.util.xml.DTDEntityResolver;	r11 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r15 = null;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org/hibernate/");	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r8 = virtualinvoke r7.<org.hibernate.internal.util.xml.DTDEntityResolver: java.io.InputStream resolveInHibernateNamespace(java.lang.String)>(r6);	if r8 != null goto $r9 = <org.hibernate.internal.util.xml.DTDEntityResolver: org.hibernate.internal.CoreMessageLogger LOG>;	$r12 = <org.hibernate.internal.util.xml.DTDEntityResolver: org.hibernate.internal.CoreMessageLogger LOG>;	interfaceinvoke $r12.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object)>("Unable to locate [%s] on classpath", r1);	$i1 = virtualinvoke r2.<java.lang.String: int length()>();	$r13 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i1);	$i2 = virtualinvoke $r13.<java.lang.String: int indexOf(java.lang.String)>("2.0");	$i4 = (int) -1;	if $i2 <= $i4 goto return r15;	return r15
;block_num 3